



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("comprehend.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("comprehend.schemas")
local traits = require("smithy.traits")
local types = require("comprehend.types")
local sdk_defaults = require("aws.sdk_defaults")



























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Comprehend_20171127"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "comprehend", signing_region = c.region } }
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

function C:batchDetectDominantLanguage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectDominantLanguage, input, options)
end

function C:batchDetectEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectEntities, input, options)
end

function C:batchDetectKeyPhrases(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectKeyPhrases, input, options)
end

function C:batchDetectSentiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectSentiment, input, options)
end

function C:batchDetectSyntax(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectSyntax, input, options)
end

function C:batchDetectTargetedSentiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDetectTargetedSentiment, input, options)
end

function C:classifyDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClassifyDocument, input, options)
end

function C:containsPiiEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ContainsPiiEntities, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createDocumentClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDocumentClassifier, input, options)
end

function C:createEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpoint, input, options)
end

function C:createEntityRecognizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEntityRecognizer, input, options)
end

function C:createFlywheel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlywheel, input, options)
end

function C:deleteDocumentClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocumentClassifier, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deleteEntityRecognizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEntityRecognizer, input, options)
end

function C:deleteFlywheel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlywheel, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeDocumentClassificationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDocumentClassificationJob, input, options)
end

function C:describeDocumentClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDocumentClassifier, input, options)
end

function C:describeDominantLanguageDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDominantLanguageDetectionJob, input, options)
end

function C:describeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoint, input, options)
end

function C:describeEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntitiesDetectionJob, input, options)
end

function C:describeEntityRecognizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntityRecognizer, input, options)
end

function C:describeEventsDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventsDetectionJob, input, options)
end

function C:describeFlywheel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlywheel, input, options)
end

function C:describeFlywheelIteration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlywheelIteration, input, options)
end

function C:describeKeyPhrasesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKeyPhrasesDetectionJob, input, options)
end

function C:describePiiEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePiiEntitiesDetectionJob, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSentimentDetectionJob, input, options)
end

function C:describeTargetedSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTargetedSentimentDetectionJob, input, options)
end

function C:describeTopicsDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopicsDetectionJob, input, options)
end

function C:detectDominantLanguage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectDominantLanguage, input, options)
end

function C:detectEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectEntities, input, options)
end

function C:detectKeyPhrases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectKeyPhrases, input, options)
end

function C:detectPiiEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectPiiEntities, input, options)
end

function C:detectSentiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectSentiment, input, options)
end

function C:detectSyntax(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectSyntax, input, options)
end

function C:detectTargetedSentiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectTargetedSentiment, input, options)
end

function C:detectToxicContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectToxicContent, input, options)
end

function C:importModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportModel, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listDocumentClassificationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocumentClassificationJobs, input, options)
end

function C:listDocumentClassifiers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocumentClassifiers, input, options)
end

function C:listDocumentClassifierSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocumentClassifierSummaries, input, options)
end

function C:listDominantLanguageDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDominantLanguageDetectionJobs, input, options)
end

function C:listEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpoints, input, options)
end

function C:listEntitiesDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitiesDetectionJobs, input, options)
end

function C:listEntityRecognizers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntityRecognizers, input, options)
end

function C:listEntityRecognizerSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntityRecognizerSummaries, input, options)
end

function C:listEventsDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventsDetectionJobs, input, options)
end

function C:listFlywheelIterationHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlywheelIterationHistory, input, options)
end

function C:listFlywheels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlywheels, input, options)
end

function C:listKeyPhrasesDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeyPhrasesDetectionJobs, input, options)
end

function C:listPiiEntitiesDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPiiEntitiesDetectionJobs, input, options)
end

function C:listSentimentDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSentimentDetectionJobs, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetedSentimentDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetedSentimentDetectionJobs, input, options)
end

function C:listTopicsDetectionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopicsDetectionJobs, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:startDocumentClassificationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDocumentClassificationJob, input, options)
end

function C:startDominantLanguageDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDominantLanguageDetectionJob, input, options)
end

function C:startEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEntitiesDetectionJob, input, options)
end

function C:startEventsDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEventsDetectionJob, input, options)
end

function C:startFlywheelIteration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlywheelIteration, input, options)
end

function C:startKeyPhrasesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartKeyPhrasesDetectionJob, input, options)
end

function C:startPiiEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPiiEntitiesDetectionJob, input, options)
end

function C:startSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSentimentDetectionJob, input, options)
end

function C:startTargetedSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTargetedSentimentDetectionJob, input, options)
end

function C:startTopicsDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTopicsDetectionJob, input, options)
end

function C:stopDominantLanguageDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDominantLanguageDetectionJob, input, options)
end

function C:stopEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEntitiesDetectionJob, input, options)
end

function C:stopEventsDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEventsDetectionJob, input, options)
end

function C:stopKeyPhrasesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopKeyPhrasesDetectionJob, input, options)
end

function C:stopPiiEntitiesDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPiiEntitiesDetectionJob, input, options)
end

function C:stopSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSentimentDetectionJob, input, options)
end

function C:stopTargetedSentimentDetectionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTargetedSentimentDetectionJob, input, options)
end

function C:stopTrainingDocumentClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTrainingDocumentClassifier, input, options)
end

function C:stopTrainingEntityRecognizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTrainingEntityRecognizer, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpoint, input, options)
end

function C:updateFlywheel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlywheel, input, options)
end

return M
