



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cleanroomsml.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("cleanroomsml.schemas")
local traits = require("smithy.traits")
local types = require("cleanroomsml.types")
local sdk_defaults = require("aws.sdk_defaults")

































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSStarkControlService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cleanrooms-ml", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:cancelTrainedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTrainedModel, input, options)
end

function C:cancelTrainedModelInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTrainedModelInferenceJob, input, options)
end

function C:createAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAudienceModel, input, options)
end

function C:createConfiguredAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredAudienceModel, input, options)
end

function C:createConfiguredModelAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredModelAlgorithm, input, options)
end

function C:createConfiguredModelAlgorithmAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredModelAlgorithmAssociation, input, options)
end

function C:createMLInputChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMLInputChannel, input, options)
end

function C:createTrainedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrainedModel, input, options)
end

function C:createTrainingDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrainingDataset, input, options)
end

function C:deleteAudienceGenerationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAudienceGenerationJob, input, options)
end

function C:deleteAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAudienceModel, input, options)
end

function C:deleteConfiguredAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredAudienceModel, input, options)
end

function C:deleteConfiguredAudienceModelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredAudienceModelPolicy, input, options)
end

function C:deleteConfiguredModelAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredModelAlgorithm, input, options)
end

function C:deleteConfiguredModelAlgorithmAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredModelAlgorithmAssociation, input, options)
end

function C:deleteMLConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMLConfiguration, input, options)
end

function C:deleteMLInputChannelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMLInputChannelData, input, options)
end

function C:deleteTrainedModelOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrainedModelOutput, input, options)
end

function C:deleteTrainingDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrainingDataset, input, options)
end

function C:getAudienceGenerationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAudienceGenerationJob, input, options)
end

function C:getAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAudienceModel, input, options)
end

function C:getCollaborationConfiguredModelAlgorithmAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationConfiguredModelAlgorithmAssociation, input, options)
end

function C:getCollaborationMLInputChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationMLInputChannel, input, options)
end

function C:getCollaborationTrainedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationTrainedModel, input, options)
end

function C:getConfiguredAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredAudienceModel, input, options)
end

function C:getConfiguredAudienceModelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredAudienceModelPolicy, input, options)
end

function C:getConfiguredModelAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredModelAlgorithm, input, options)
end

function C:getConfiguredModelAlgorithmAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredModelAlgorithmAssociation, input, options)
end

function C:getMLConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLConfiguration, input, options)
end

function C:getMLInputChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLInputChannel, input, options)
end

function C:getTrainedModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrainedModel, input, options)
end

function C:getTrainedModelInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrainedModelInferenceJob, input, options)
end

function C:getTrainingDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrainingDataset, input, options)
end

function C:listAudienceExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAudienceExportJobs, input, options)
end

function C:listAudienceGenerationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAudienceGenerationJobs, input, options)
end

function C:listAudienceModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAudienceModels, input, options)
end

function C:listCollaborationConfiguredModelAlgorithmAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationConfiguredModelAlgorithmAssociations, input, options)
end

function C:listCollaborationMLInputChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationMLInputChannels, input, options)
end

function C:listCollaborationTrainedModelExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationTrainedModelExportJobs, input, options)
end

function C:listCollaborationTrainedModelInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationTrainedModelInferenceJobs, input, options)
end

function C:listCollaborationTrainedModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationTrainedModels, input, options)
end

function C:listConfiguredAudienceModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredAudienceModels, input, options)
end

function C:listConfiguredModelAlgorithmAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredModelAlgorithmAssociations, input, options)
end

function C:listConfiguredModelAlgorithms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredModelAlgorithms, input, options)
end

function C:listMLInputChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLInputChannels, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrainedModelInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainedModelInferenceJobs, input, options)
end

function C:listTrainedModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainedModels, input, options)
end

function C:listTrainedModelVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainedModelVersions, input, options)
end

function C:listTrainingDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainingDatasets, input, options)
end

function C:putConfiguredAudienceModelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfiguredAudienceModelPolicy, input, options)
end

function C:putMLConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMLConfiguration, input, options)
end

function C:startAudienceExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAudienceExportJob, input, options)
end

function C:startAudienceGenerationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAudienceGenerationJob, input, options)
end

function C:startTrainedModelExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTrainedModelExportJob, input, options)
end

function C:startTrainedModelInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTrainedModelInferenceJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConfiguredAudienceModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredAudienceModel, input, options)
end

return M
