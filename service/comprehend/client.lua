local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("comprehend.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("comprehend.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Comprehend_20171127"
    cfg.signing_name = "comprehend_20171127"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:batchDetectDominantLanguage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectDominantLanguage",
        input_schema = types.BatchDetectDominantLanguageInput,
        output_schema = types.BatchDetectDominantLanguageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDetectEntities(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectEntities",
        input_schema = types.BatchDetectEntitiesInput,
        output_schema = types.BatchDetectEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDetectKeyPhrases(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectKeyPhrases",
        input_schema = types.BatchDetectKeyPhrasesInput,
        output_schema = types.BatchDetectKeyPhrasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDetectSentiment(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectSentiment",
        input_schema = types.BatchDetectSentimentInput,
        output_schema = types.BatchDetectSentimentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDetectSyntax(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectSyntax",
        input_schema = types.BatchDetectSyntaxInput,
        output_schema = types.BatchDetectSyntaxOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDetectTargetedSentiment(input, options)
    return self:invokeOperation(input, {
        name = "BatchDetectTargetedSentiment",
        input_schema = types.BatchDetectTargetedSentimentInput,
        output_schema = types.BatchDetectTargetedSentimentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:classifyDocument(input, options)
    return self:invokeOperation(input, {
        name = "ClassifyDocument",
        input_schema = types.ClassifyDocumentInput,
        output_schema = types.ClassifyDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:containsPiiEntities(input, options)
    return self:invokeOperation(input, {
        name = "ContainsPiiEntities",
        input_schema = types.ContainsPiiEntitiesInput,
        output_schema = types.ContainsPiiEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDocumentClassifier(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocumentClassifier",
        input_schema = types.CreateDocumentClassifierInput,
        output_schema = types.CreateDocumentClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpoint",
        input_schema = types.CreateEndpointInput,
        output_schema = types.CreateEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEntityRecognizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntityRecognizer",
        input_schema = types.CreateEntityRecognizerInput,
        output_schema = types.CreateEntityRecognizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFlywheel(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlywheel",
        input_schema = types.CreateFlywheelInput,
        output_schema = types.CreateFlywheelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDocumentClassifier(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentClassifier",
        input_schema = types.DeleteDocumentClassifierInput,
        output_schema = types.DeleteDocumentClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEntityRecognizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntityRecognizer",
        input_schema = types.DeleteEntityRecognizerInput,
        output_schema = types.DeleteEntityRecognizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFlywheel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlywheel",
        input_schema = types.DeleteFlywheelInput,
        output_schema = types.DeleteFlywheelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDocumentClassificationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentClassificationJob",
        input_schema = types.DescribeDocumentClassificationJobInput,
        output_schema = types.DescribeDocumentClassificationJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDocumentClassifier(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentClassifier",
        input_schema = types.DescribeDocumentClassifierInput,
        output_schema = types.DescribeDocumentClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDominantLanguageDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDominantLanguageDetectionJob",
        input_schema = types.DescribeDominantLanguageDetectionJobInput,
        output_schema = types.DescribeDominantLanguageDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoint",
        input_schema = types.DescribeEndpointInput,
        output_schema = types.DescribeEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntitiesDetectionJob",
        input_schema = types.DescribeEntitiesDetectionJobInput,
        output_schema = types.DescribeEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEntityRecognizer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntityRecognizer",
        input_schema = types.DescribeEntityRecognizerInput,
        output_schema = types.DescribeEntityRecognizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEventsDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventsDetectionJob",
        input_schema = types.DescribeEventsDetectionJobInput,
        output_schema = types.DescribeEventsDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFlywheel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlywheel",
        input_schema = types.DescribeFlywheelInput,
        output_schema = types.DescribeFlywheelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFlywheelIteration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlywheelIteration",
        input_schema = types.DescribeFlywheelIterationInput,
        output_schema = types.DescribeFlywheelIterationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeKeyPhrasesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyPhrasesDetectionJob",
        input_schema = types.DescribeKeyPhrasesDetectionJobInput,
        output_schema = types.DescribeKeyPhrasesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePiiEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribePiiEntitiesDetectionJob",
        input_schema = types.DescribePiiEntitiesDetectionJobInput,
        output_schema = types.DescribePiiEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSentimentDetectionJob",
        input_schema = types.DescribeSentimentDetectionJobInput,
        output_schema = types.DescribeSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTargetedSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTargetedSentimentDetectionJob",
        input_schema = types.DescribeTargetedSentimentDetectionJobInput,
        output_schema = types.DescribeTargetedSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTopicsDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTopicsDetectionJob",
        input_schema = types.DescribeTopicsDetectionJobInput,
        output_schema = types.DescribeTopicsDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectDominantLanguage(input, options)
    return self:invokeOperation(input, {
        name = "DetectDominantLanguage",
        input_schema = types.DetectDominantLanguageInput,
        output_schema = types.DetectDominantLanguageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectEntities(input, options)
    return self:invokeOperation(input, {
        name = "DetectEntities",
        input_schema = types.DetectEntitiesInput,
        output_schema = types.DetectEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectKeyPhrases(input, options)
    return self:invokeOperation(input, {
        name = "DetectKeyPhrases",
        input_schema = types.DetectKeyPhrasesInput,
        output_schema = types.DetectKeyPhrasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectPiiEntities(input, options)
    return self:invokeOperation(input, {
        name = "DetectPiiEntities",
        input_schema = types.DetectPiiEntitiesInput,
        output_schema = types.DetectPiiEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectSentiment(input, options)
    return self:invokeOperation(input, {
        name = "DetectSentiment",
        input_schema = types.DetectSentimentInput,
        output_schema = types.DetectSentimentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectSyntax(input, options)
    return self:invokeOperation(input, {
        name = "DetectSyntax",
        input_schema = types.DetectSyntaxInput,
        output_schema = types.DetectSyntaxOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectTargetedSentiment(input, options)
    return self:invokeOperation(input, {
        name = "DetectTargetedSentiment",
        input_schema = types.DetectTargetedSentimentInput,
        output_schema = types.DetectTargetedSentimentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectToxicContent(input, options)
    return self:invokeOperation(input, {
        name = "DetectToxicContent",
        input_schema = types.DetectToxicContentInput,
        output_schema = types.DetectToxicContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importModel(input, options)
    return self:invokeOperation(input, {
        name = "ImportModel",
        input_schema = types.ImportModelInput,
        output_schema = types.ImportModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocumentClassificationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentClassificationJobs",
        input_schema = types.ListDocumentClassificationJobsInput,
        output_schema = types.ListDocumentClassificationJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocumentClassifiers(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentClassifiers",
        input_schema = types.ListDocumentClassifiersInput,
        output_schema = types.ListDocumentClassifiersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocumentClassifierSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentClassifierSummaries",
        input_schema = types.ListDocumentClassifierSummariesInput,
        output_schema = types.ListDocumentClassifierSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDominantLanguageDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDominantLanguageDetectionJobs",
        input_schema = types.ListDominantLanguageDetectionJobsInput,
        output_schema = types.ListDominantLanguageDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpoints",
        input_schema = types.ListEndpointsInput,
        output_schema = types.ListEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntitiesDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitiesDetectionJobs",
        input_schema = types.ListEntitiesDetectionJobsInput,
        output_schema = types.ListEntitiesDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntityRecognizers(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityRecognizers",
        input_schema = types.ListEntityRecognizersInput,
        output_schema = types.ListEntityRecognizersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntityRecognizerSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityRecognizerSummaries",
        input_schema = types.ListEntityRecognizerSummariesInput,
        output_schema = types.ListEntityRecognizerSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventsDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListEventsDetectionJobs",
        input_schema = types.ListEventsDetectionJobsInput,
        output_schema = types.ListEventsDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFlywheelIterationHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListFlywheelIterationHistory",
        input_schema = types.ListFlywheelIterationHistoryInput,
        output_schema = types.ListFlywheelIterationHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFlywheels(input, options)
    return self:invokeOperation(input, {
        name = "ListFlywheels",
        input_schema = types.ListFlywheelsInput,
        output_schema = types.ListFlywheelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listKeyPhrasesDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyPhrasesDetectionJobs",
        input_schema = types.ListKeyPhrasesDetectionJobsInput,
        output_schema = types.ListKeyPhrasesDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPiiEntitiesDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListPiiEntitiesDetectionJobs",
        input_schema = types.ListPiiEntitiesDetectionJobsInput,
        output_schema = types.ListPiiEntitiesDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSentimentDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSentimentDetectionJobs",
        input_schema = types.ListSentimentDetectionJobsInput,
        output_schema = types.ListSentimentDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTargetedSentimentDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetedSentimentDetectionJobs",
        input_schema = types.ListTargetedSentimentDetectionJobsInput,
        output_schema = types.ListTargetedSentimentDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTopicsDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicsDetectionJobs",
        input_schema = types.ListTopicsDetectionJobsInput,
        output_schema = types.ListTopicsDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDocumentClassificationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDocumentClassificationJob",
        input_schema = types.StartDocumentClassificationJobInput,
        output_schema = types.StartDocumentClassificationJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDominantLanguageDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDominantLanguageDetectionJob",
        input_schema = types.StartDominantLanguageDetectionJobInput,
        output_schema = types.StartDominantLanguageDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartEntitiesDetectionJob",
        input_schema = types.StartEntitiesDetectionJobInput,
        output_schema = types.StartEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startEventsDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartEventsDetectionJob",
        input_schema = types.StartEventsDetectionJobInput,
        output_schema = types.StartEventsDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFlywheelIteration(input, options)
    return self:invokeOperation(input, {
        name = "StartFlywheelIteration",
        input_schema = types.StartFlywheelIterationInput,
        output_schema = types.StartFlywheelIterationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startKeyPhrasesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartKeyPhrasesDetectionJob",
        input_schema = types.StartKeyPhrasesDetectionJobInput,
        output_schema = types.StartKeyPhrasesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startPiiEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartPiiEntitiesDetectionJob",
        input_schema = types.StartPiiEntitiesDetectionJobInput,
        output_schema = types.StartPiiEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSentimentDetectionJob",
        input_schema = types.StartSentimentDetectionJobInput,
        output_schema = types.StartSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTargetedSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTargetedSentimentDetectionJob",
        input_schema = types.StartTargetedSentimentDetectionJobInput,
        output_schema = types.StartTargetedSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTopicsDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTopicsDetectionJob",
        input_schema = types.StartTopicsDetectionJobInput,
        output_schema = types.StartTopicsDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDominantLanguageDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopDominantLanguageDetectionJob",
        input_schema = types.StopDominantLanguageDetectionJobInput,
        output_schema = types.StopDominantLanguageDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopEntitiesDetectionJob",
        input_schema = types.StopEntitiesDetectionJobInput,
        output_schema = types.StopEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopEventsDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopEventsDetectionJob",
        input_schema = types.StopEventsDetectionJobInput,
        output_schema = types.StopEventsDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopKeyPhrasesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopKeyPhrasesDetectionJob",
        input_schema = types.StopKeyPhrasesDetectionJobInput,
        output_schema = types.StopKeyPhrasesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopPiiEntitiesDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopPiiEntitiesDetectionJob",
        input_schema = types.StopPiiEntitiesDetectionJobInput,
        output_schema = types.StopPiiEntitiesDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopSentimentDetectionJob",
        input_schema = types.StopSentimentDetectionJobInput,
        output_schema = types.StopSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTargetedSentimentDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopTargetedSentimentDetectionJob",
        input_schema = types.StopTargetedSentimentDetectionJobInput,
        output_schema = types.StopTargetedSentimentDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTrainingDocumentClassifier(input, options)
    return self:invokeOperation(input, {
        name = "StopTrainingDocumentClassifier",
        input_schema = types.StopTrainingDocumentClassifierInput,
        output_schema = types.StopTrainingDocumentClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTrainingEntityRecognizer(input, options)
    return self:invokeOperation(input, {
        name = "StopTrainingEntityRecognizer",
        input_schema = types.StopTrainingEntityRecognizerInput,
        output_schema = types.StopTrainingEntityRecognizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpoint",
        input_schema = types.UpdateEndpointInput,
        output_schema = types.UpdateEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFlywheel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlywheel",
        input_schema = types.UpdateFlywheelInput,
        output_schema = types.UpdateFlywheelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
