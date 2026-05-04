local types = require("comprehend.types")

local record Client
    batchDetectDominantLanguage: function(Client, types.BatchDetectDominantLanguageInput): types.BatchDetectDominantLanguageOutput, table
    batchDetectEntities: function(Client, types.BatchDetectEntitiesInput): types.BatchDetectEntitiesOutput, table
    batchDetectKeyPhrases: function(Client, types.BatchDetectKeyPhrasesInput): types.BatchDetectKeyPhrasesOutput, table
    batchDetectSentiment: function(Client, types.BatchDetectSentimentInput): types.BatchDetectSentimentOutput, table
    batchDetectSyntax: function(Client, types.BatchDetectSyntaxInput): types.BatchDetectSyntaxOutput, table
    batchDetectTargetedSentiment: function(Client, types.BatchDetectTargetedSentimentInput): types.BatchDetectTargetedSentimentOutput, table
    classifyDocument: function(Client, types.ClassifyDocumentInput): types.ClassifyDocumentOutput, table
    containsPiiEntities: function(Client, types.ContainsPiiEntitiesInput): types.ContainsPiiEntitiesOutput, table
    createDataset: function(Client, types.CreateDatasetInput): types.CreateDatasetOutput, table
    createDocumentClassifier: function(Client, types.CreateDocumentClassifierInput): types.CreateDocumentClassifierOutput, table
    createEndpoint: function(Client, types.CreateEndpointInput): types.CreateEndpointOutput, table
    createEntityRecognizer: function(Client, types.CreateEntityRecognizerInput): types.CreateEntityRecognizerOutput, table
    createFlywheel: function(Client, types.CreateFlywheelInput): types.CreateFlywheelOutput, table
    deleteDocumentClassifier: function(Client, types.DeleteDocumentClassifierInput): types.DeleteDocumentClassifierOutput, table
    deleteEndpoint: function(Client, types.DeleteEndpointInput): types.DeleteEndpointOutput, table
    deleteEntityRecognizer: function(Client, types.DeleteEntityRecognizerInput): types.DeleteEntityRecognizerOutput, table
    deleteFlywheel: function(Client, types.DeleteFlywheelInput): types.DeleteFlywheelOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    describeDataset: function(Client, types.DescribeDatasetInput): types.DescribeDatasetOutput, table
    describeDocumentClassificationJob: function(Client, types.DescribeDocumentClassificationJobInput): types.DescribeDocumentClassificationJobOutput, table
    describeDocumentClassifier: function(Client, types.DescribeDocumentClassifierInput): types.DescribeDocumentClassifierOutput, table
    describeDominantLanguageDetectionJob: function(Client, types.DescribeDominantLanguageDetectionJobInput): types.DescribeDominantLanguageDetectionJobOutput, table
    describeEndpoint: function(Client, types.DescribeEndpointInput): types.DescribeEndpointOutput, table
    describeEntitiesDetectionJob: function(Client, types.DescribeEntitiesDetectionJobInput): types.DescribeEntitiesDetectionJobOutput, table
    describeEntityRecognizer: function(Client, types.DescribeEntityRecognizerInput): types.DescribeEntityRecognizerOutput, table
    describeEventsDetectionJob: function(Client, types.DescribeEventsDetectionJobInput): types.DescribeEventsDetectionJobOutput, table
    describeFlywheel: function(Client, types.DescribeFlywheelInput): types.DescribeFlywheelOutput, table
    describeFlywheelIteration: function(Client, types.DescribeFlywheelIterationInput): types.DescribeFlywheelIterationOutput, table
    describeKeyPhrasesDetectionJob: function(Client, types.DescribeKeyPhrasesDetectionJobInput): types.DescribeKeyPhrasesDetectionJobOutput, table
    describePiiEntitiesDetectionJob: function(Client, types.DescribePiiEntitiesDetectionJobInput): types.DescribePiiEntitiesDetectionJobOutput, table
    describeResourcePolicy: function(Client, types.DescribeResourcePolicyInput): types.DescribeResourcePolicyOutput, table
    describeSentimentDetectionJob: function(Client, types.DescribeSentimentDetectionJobInput): types.DescribeSentimentDetectionJobOutput, table
    describeTargetedSentimentDetectionJob: function(Client, types.DescribeTargetedSentimentDetectionJobInput): types.DescribeTargetedSentimentDetectionJobOutput, table
    describeTopicsDetectionJob: function(Client, types.DescribeTopicsDetectionJobInput): types.DescribeTopicsDetectionJobOutput, table
    detectDominantLanguage: function(Client, types.DetectDominantLanguageInput): types.DetectDominantLanguageOutput, table
    detectEntities: function(Client, types.DetectEntitiesInput): types.DetectEntitiesOutput, table
    detectKeyPhrases: function(Client, types.DetectKeyPhrasesInput): types.DetectKeyPhrasesOutput, table
    detectPiiEntities: function(Client, types.DetectPiiEntitiesInput): types.DetectPiiEntitiesOutput, table
    detectSentiment: function(Client, types.DetectSentimentInput): types.DetectSentimentOutput, table
    detectSyntax: function(Client, types.DetectSyntaxInput): types.DetectSyntaxOutput, table
    detectTargetedSentiment: function(Client, types.DetectTargetedSentimentInput): types.DetectTargetedSentimentOutput, table
    detectToxicContent: function(Client, types.DetectToxicContentInput): types.DetectToxicContentOutput, table
    importModel: function(Client, types.ImportModelInput): types.ImportModelOutput, table
    listDatasets: function(Client, types.ListDatasetsInput): types.ListDatasetsOutput, table
    listDocumentClassificationJobs: function(Client, types.ListDocumentClassificationJobsInput): types.ListDocumentClassificationJobsOutput, table
    listDocumentClassifiers: function(Client, types.ListDocumentClassifiersInput): types.ListDocumentClassifiersOutput, table
    listDocumentClassifierSummaries: function(Client, types.ListDocumentClassifierSummariesInput): types.ListDocumentClassifierSummariesOutput, table
    listDominantLanguageDetectionJobs: function(Client, types.ListDominantLanguageDetectionJobsInput): types.ListDominantLanguageDetectionJobsOutput, table
    listEndpoints: function(Client, types.ListEndpointsInput): types.ListEndpointsOutput, table
    listEntitiesDetectionJobs: function(Client, types.ListEntitiesDetectionJobsInput): types.ListEntitiesDetectionJobsOutput, table
    listEntityRecognizers: function(Client, types.ListEntityRecognizersInput): types.ListEntityRecognizersOutput, table
    listEntityRecognizerSummaries: function(Client, types.ListEntityRecognizerSummariesInput): types.ListEntityRecognizerSummariesOutput, table
    listEventsDetectionJobs: function(Client, types.ListEventsDetectionJobsInput): types.ListEventsDetectionJobsOutput, table
    listFlywheelIterationHistory: function(Client, types.ListFlywheelIterationHistoryInput): types.ListFlywheelIterationHistoryOutput, table
    listFlywheels: function(Client, types.ListFlywheelsInput): types.ListFlywheelsOutput, table
    listKeyPhrasesDetectionJobs: function(Client, types.ListKeyPhrasesDetectionJobsInput): types.ListKeyPhrasesDetectionJobsOutput, table
    listPiiEntitiesDetectionJobs: function(Client, types.ListPiiEntitiesDetectionJobsInput): types.ListPiiEntitiesDetectionJobsOutput, table
    listSentimentDetectionJobs: function(Client, types.ListSentimentDetectionJobsInput): types.ListSentimentDetectionJobsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargetedSentimentDetectionJobs: function(Client, types.ListTargetedSentimentDetectionJobsInput): types.ListTargetedSentimentDetectionJobsOutput, table
    listTopicsDetectionJobs: function(Client, types.ListTopicsDetectionJobsInput): types.ListTopicsDetectionJobsOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    startDocumentClassificationJob: function(Client, types.StartDocumentClassificationJobInput): types.StartDocumentClassificationJobOutput, table
    startDominantLanguageDetectionJob: function(Client, types.StartDominantLanguageDetectionJobInput): types.StartDominantLanguageDetectionJobOutput, table
    startEntitiesDetectionJob: function(Client, types.StartEntitiesDetectionJobInput): types.StartEntitiesDetectionJobOutput, table
    startEventsDetectionJob: function(Client, types.StartEventsDetectionJobInput): types.StartEventsDetectionJobOutput, table
    startFlywheelIteration: function(Client, types.StartFlywheelIterationInput): types.StartFlywheelIterationOutput, table
    startKeyPhrasesDetectionJob: function(Client, types.StartKeyPhrasesDetectionJobInput): types.StartKeyPhrasesDetectionJobOutput, table
    startPiiEntitiesDetectionJob: function(Client, types.StartPiiEntitiesDetectionJobInput): types.StartPiiEntitiesDetectionJobOutput, table
    startSentimentDetectionJob: function(Client, types.StartSentimentDetectionJobInput): types.StartSentimentDetectionJobOutput, table
    startTargetedSentimentDetectionJob: function(Client, types.StartTargetedSentimentDetectionJobInput): types.StartTargetedSentimentDetectionJobOutput, table
    startTopicsDetectionJob: function(Client, types.StartTopicsDetectionJobInput): types.StartTopicsDetectionJobOutput, table
    stopDominantLanguageDetectionJob: function(Client, types.StopDominantLanguageDetectionJobInput): types.StopDominantLanguageDetectionJobOutput, table
    stopEntitiesDetectionJob: function(Client, types.StopEntitiesDetectionJobInput): types.StopEntitiesDetectionJobOutput, table
    stopEventsDetectionJob: function(Client, types.StopEventsDetectionJobInput): types.StopEventsDetectionJobOutput, table
    stopKeyPhrasesDetectionJob: function(Client, types.StopKeyPhrasesDetectionJobInput): types.StopKeyPhrasesDetectionJobOutput, table
    stopPiiEntitiesDetectionJob: function(Client, types.StopPiiEntitiesDetectionJobInput): types.StopPiiEntitiesDetectionJobOutput, table
    stopSentimentDetectionJob: function(Client, types.StopSentimentDetectionJobInput): types.StopSentimentDetectionJobOutput, table
    stopTargetedSentimentDetectionJob: function(Client, types.StopTargetedSentimentDetectionJobInput): types.StopTargetedSentimentDetectionJobOutput, table
    stopTrainingDocumentClassifier: function(Client, types.StopTrainingDocumentClassifierInput): types.StopTrainingDocumentClassifierOutput, table
    stopTrainingEntityRecognizer: function(Client, types.StopTrainingEntityRecognizerInput): types.StopTrainingEntityRecognizerOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateEndpoint: function(Client, types.UpdateEndpointInput): types.UpdateEndpointOutput, table
    updateFlywheel: function(Client, types.UpdateFlywheelInput): types.UpdateFlywheelOutput, table
end

local record M
    new: function(table): Client
end

return M
