local record CreateBatchInferenceJobInput
    jobName: string
    solutionVersionArn: string
    filterArn: string
    numResults: number
    jobInput: BatchInferenceJobInput
    jobOutput: BatchInferenceJobOutput
    roleArn: string
    batchInferenceJobConfig: BatchInferenceJobConfig
    tags: {Tag}
    batchInferenceJobMode: string
    themeGenerationConfig: ThemeGenerationConfig
end

local record CreateBatchInferenceJobOutput
    batchInferenceJobArn: string
end

local record CreateBatchSegmentJobInput
    jobName: string
    solutionVersionArn: string
    filterArn: string
    numResults: number
    jobInput: BatchSegmentJobInput
    jobOutput: BatchSegmentJobOutput
    roleArn: string
    tags: {Tag}
end

local record CreateBatchSegmentJobOutput
    batchSegmentJobArn: string
end

local record CreateCampaignInput
    name: string
    solutionVersionArn: string
    minProvisionedTPS: number
    campaignConfig: CampaignConfig
    tags: {Tag}
end

local record CreateCampaignOutput
    campaignArn: string
end

local record CreateDataDeletionJobInput
    jobName: string
    datasetGroupArn: string
    dataSource: DataSource
    roleArn: string
    tags: {Tag}
end

local record CreateDataDeletionJobOutput
    dataDeletionJobArn: string
end

local record CreateDatasetInput
    name: string
    schemaArn: string
    datasetGroupArn: string
    datasetType: string
    tags: {Tag}
end

local record CreateDatasetOutput
    datasetArn: string
end

local record CreateDatasetExportJobInput
    jobName: string
    datasetArn: string
    ingestionMode: string
    roleArn: string
    jobOutput: DatasetExportJobOutput
    tags: {Tag}
end

local record CreateDatasetExportJobOutput
    datasetExportJobArn: string
end

local record CreateDatasetGroupInput
    name: string
    roleArn: string
    kmsKeyArn: string
    domain: string
    tags: {Tag}
end

local record CreateDatasetGroupOutput
    datasetGroupArn: string
    domain: string
end

local record CreateDatasetImportJobInput
    jobName: string
    datasetArn: string
    dataSource: DataSource
    roleArn: string
    tags: {Tag}
    importMode: string
    publishAttributionMetricsToS3: boolean
end

local record CreateDatasetImportJobOutput
    datasetImportJobArn: string
end

local record CreateEventTrackerInput
    name: string
    datasetGroupArn: string
    tags: {Tag}
end

local record CreateEventTrackerOutput
    eventTrackerArn: string
    trackingId: string
end

local record CreateFilterInput
    name: string
    datasetGroupArn: string
    filterExpression: string
    tags: {Tag}
end

local record CreateFilterOutput
    filterArn: string
end

local record CreateMetricAttributionInput
    name: string
    datasetGroupArn: string
    metrics: {MetricAttribute}
    metricsOutputConfig: MetricAttributionOutput
end

local record CreateMetricAttributionOutput
    metricAttributionArn: string
end

local record CreateRecommenderInput
    name: string
    datasetGroupArn: string
    recipeArn: string
    recommenderConfig: RecommenderConfig
    tags: {Tag}
end

local record CreateRecommenderOutput
    recommenderArn: string
end

local record CreateSchemaInput
    name: string
    schema: string
    domain: string
end

local record CreateSchemaOutput
    schemaArn: string
end

local record CreateSolutionInput
    name: string
    performHPO: boolean
    performAutoML: boolean
    performAutoTraining: boolean
    performIncrementalUpdate: boolean
    recipeArn: string
    datasetGroupArn: string
    eventType: string
    solutionConfig: SolutionConfig
    tags: {Tag}
end

local record CreateSolutionOutput
    solutionArn: string
end

local record CreateSolutionVersionInput
    name: string
    solutionArn: string
    trainingMode: string
    tags: {Tag}
end

local record CreateSolutionVersionOutput
    solutionVersionArn: string
end

local record DeleteCampaignInput
    campaignArn: string
end

local record DeleteCampaignOutput
end

local record DeleteDatasetInput
    datasetArn: string
end

local record DeleteDatasetOutput
end

local record DeleteDatasetGroupInput
    datasetGroupArn: string
end

local record DeleteDatasetGroupOutput
end

local record DeleteEventTrackerInput
    eventTrackerArn: string
end

local record DeleteEventTrackerOutput
end

local record DeleteFilterInput
    filterArn: string
end

local record DeleteFilterOutput
end

local record DeleteMetricAttributionInput
    metricAttributionArn: string
end

local record DeleteMetricAttributionOutput
end

local record DeleteRecommenderInput
    recommenderArn: string
end

local record DeleteRecommenderOutput
end

local record DeleteSchemaInput
    schemaArn: string
end

local record DeleteSchemaOutput
end

local record DeleteSolutionInput
    solutionArn: string
end

local record DeleteSolutionOutput
end

local record DescribeAlgorithmInput
    algorithmArn: string
end

local record DescribeAlgorithmOutput
    algorithm: Algorithm
end

local record DescribeBatchInferenceJobInput
    batchInferenceJobArn: string
end

local record DescribeBatchInferenceJobOutput
    batchInferenceJob: BatchInferenceJob
end

local record DescribeBatchSegmentJobInput
    batchSegmentJobArn: string
end

local record DescribeBatchSegmentJobOutput
    batchSegmentJob: BatchSegmentJob
end

local record DescribeCampaignInput
    campaignArn: string
end

local record DescribeCampaignOutput
    campaign: Campaign
end

local record DescribeDataDeletionJobInput
    dataDeletionJobArn: string
end

local record DescribeDataDeletionJobOutput
    dataDeletionJob: DataDeletionJob
end

local record DescribeDatasetInput
    datasetArn: string
end

local record DescribeDatasetOutput
    dataset: Dataset
end

local record DescribeDatasetExportJobInput
    datasetExportJobArn: string
end

local record DescribeDatasetExportJobOutput
    datasetExportJob: DatasetExportJob
end

local record DescribeDatasetGroupInput
    datasetGroupArn: string
end

local record DescribeDatasetGroupOutput
    datasetGroup: DatasetGroup
end

local record DescribeDatasetImportJobInput
    datasetImportJobArn: string
end

local record DescribeDatasetImportJobOutput
    datasetImportJob: DatasetImportJob
end

local record DescribeEventTrackerInput
    eventTrackerArn: string
end

local record DescribeEventTrackerOutput
    eventTracker: EventTracker
end

local record DescribeFeatureTransformationInput
    featureTransformationArn: string
end

local record DescribeFeatureTransformationOutput
    featureTransformation: FeatureTransformation
end

local record DescribeFilterInput
    filterArn: string
end

local record DescribeFilterOutput
    filter: Filter
end

local record DescribeMetricAttributionInput
    metricAttributionArn: string
end

local record DescribeMetricAttributionOutput
    metricAttribution: MetricAttribution
end

local record DescribeRecipeInput
    recipeArn: string
end

local record DescribeRecipeOutput
    recipe: Recipe
end

local record DescribeRecommenderInput
    recommenderArn: string
end

local record DescribeRecommenderOutput
    recommender: Recommender
end

local record DescribeSchemaInput
    schemaArn: string
end

local record DescribeSchemaOutput
    schema: DatasetSchema
end

local record DescribeSolutionInput
    solutionArn: string
end

local record DescribeSolutionOutput
    solution: Solution
end

local record DescribeSolutionVersionInput
    solutionVersionArn: string
end

local record DescribeSolutionVersionOutput
    solutionVersion: SolutionVersion
end

local record GetSolutionMetricsInput
    solutionVersionArn: string
end

local record GetSolutionMetricsOutput
    solutionVersionArn: string
    metrics: {string : number}
end

local record ListBatchInferenceJobsInput
    solutionVersionArn: string
    nextToken: string
    maxResults: number
end

local record ListBatchInferenceJobsOutput
    batchInferenceJobs: {BatchInferenceJobSummary}
    nextToken: string
end

local record ListBatchSegmentJobsInput
    solutionVersionArn: string
    nextToken: string
    maxResults: number
end

local record ListBatchSegmentJobsOutput
    batchSegmentJobs: {BatchSegmentJobSummary}
    nextToken: string
end

local record ListCampaignsInput
    solutionArn: string
    nextToken: string
    maxResults: number
end

local record ListCampaignsOutput
    campaigns: {CampaignSummary}
    nextToken: string
end

local record ListDataDeletionJobsInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListDataDeletionJobsOutput
    dataDeletionJobs: {DataDeletionJobSummary}
    nextToken: string
end

local record ListDatasetExportJobsInput
    datasetArn: string
    nextToken: string
    maxResults: number
end

local record ListDatasetExportJobsOutput
    datasetExportJobs: {DatasetExportJobSummary}
    nextToken: string
end

local record ListDatasetGroupsInput
    nextToken: string
    maxResults: number
end

local record ListDatasetGroupsOutput
    datasetGroups: {DatasetGroupSummary}
    nextToken: string
end

local record ListDatasetImportJobsInput
    datasetArn: string
    nextToken: string
    maxResults: number
end

local record ListDatasetImportJobsOutput
    datasetImportJobs: {DatasetImportJobSummary}
    nextToken: string
end

local record ListDatasetsInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListDatasetsOutput
    datasets: {DatasetSummary}
    nextToken: string
end

local record ListEventTrackersInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListEventTrackersOutput
    eventTrackers: {EventTrackerSummary}
    nextToken: string
end

local record ListFiltersInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListFiltersOutput
    Filters: {FilterSummary}
    nextToken: string
end

local record ListMetricAttributionMetricsInput
    metricAttributionArn: string
    nextToken: string
    maxResults: number
end

local record ListMetricAttributionMetricsOutput
    metrics: {MetricAttribute}
    nextToken: string
end

local record ListMetricAttributionsInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListMetricAttributionsOutput
    metricAttributions: {MetricAttributionSummary}
    nextToken: string
end

local record ListRecipesInput
    recipeProvider: string
    nextToken: string
    maxResults: number
    domain: string
end

local record ListRecipesOutput
    recipes: {RecipeSummary}
    nextToken: string
end

local record ListRecommendersInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListRecommendersOutput
    recommenders: {RecommenderSummary}
    nextToken: string
end

local record ListSchemasInput
    nextToken: string
    maxResults: number
end

local record ListSchemasOutput
    schemas: {DatasetSchemaSummary}
    nextToken: string
end

local record ListSolutionsInput
    datasetGroupArn: string
    nextToken: string
    maxResults: number
end

local record ListSolutionsOutput
    solutions: {SolutionSummary}
    nextToken: string
end

local record ListSolutionVersionsInput
    solutionArn: string
    nextToken: string
    maxResults: number
end

local record ListSolutionVersionsOutput
    solutionVersions: {SolutionVersionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record StartRecommenderInput
    recommenderArn: string
end

local record StartRecommenderOutput
    recommenderArn: string
end

local record StopRecommenderInput
    recommenderArn: string
end

local record StopRecommenderOutput
    recommenderArn: string
end

local record StopSolutionVersionCreationInput
    solutionVersionArn: string
end

local record StopSolutionVersionCreationOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCampaignInput
    campaignArn: string
    solutionVersionArn: string
    minProvisionedTPS: number
    campaignConfig: CampaignConfig
end

local record UpdateCampaignOutput
    campaignArn: string
end

local record UpdateDatasetInput
    datasetArn: string
    schemaArn: string
end

local record UpdateDatasetOutput
    datasetArn: string
end

local record UpdateMetricAttributionInput
    addMetrics: {MetricAttribute}
    removeMetrics: {string}
    metricsOutputConfig: MetricAttributionOutput
    metricAttributionArn: string
end

local record UpdateMetricAttributionOutput
    metricAttributionArn: string
end

local record UpdateRecommenderInput
    recommenderArn: string
    recommenderConfig: RecommenderConfig
end

local record UpdateRecommenderOutput
    recommenderArn: string
end

local record UpdateSolutionInput
    solutionArn: string
    performAutoTraining: boolean
    performIncrementalUpdate: boolean
    solutionUpdateConfig: SolutionUpdateConfig
end

local record UpdateSolutionOutput
    solutionArn: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagKeysException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type Domain = "ECOMMERCE" | "VIDEO_ON_DEMAND"

local type IngestionMode = "BULK" | "PUT" | "ALL"

local type ImportMode = "FULL" | "INCREMENTAL"

local type RecipeProvider = "SERVICE"

local type BatchInferenceJobMode = "BATCH_INFERENCE" | "THEME_GENERATION"

local type TrainingMode = "FULL" | "UPDATE" | "AUTOTRAIN"

local record M
    CreateBatchInferenceJobInput: CreateBatchInferenceJobInput
    CreateBatchInferenceJobOutput: CreateBatchInferenceJobOutput
    CreateBatchSegmentJobInput: CreateBatchSegmentJobInput
    CreateBatchSegmentJobOutput: CreateBatchSegmentJobOutput
    CreateCampaignInput: CreateCampaignInput
    CreateCampaignOutput: CreateCampaignOutput
    CreateDataDeletionJobInput: CreateDataDeletionJobInput
    CreateDataDeletionJobOutput: CreateDataDeletionJobOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateDatasetExportJobInput: CreateDatasetExportJobInput
    CreateDatasetExportJobOutput: CreateDatasetExportJobOutput
    CreateDatasetGroupInput: CreateDatasetGroupInput
    CreateDatasetGroupOutput: CreateDatasetGroupOutput
    CreateDatasetImportJobInput: CreateDatasetImportJobInput
    CreateDatasetImportJobOutput: CreateDatasetImportJobOutput
    CreateEventTrackerInput: CreateEventTrackerInput
    CreateEventTrackerOutput: CreateEventTrackerOutput
    CreateFilterInput: CreateFilterInput
    CreateFilterOutput: CreateFilterOutput
    CreateMetricAttributionInput: CreateMetricAttributionInput
    CreateMetricAttributionOutput: CreateMetricAttributionOutput
    CreateRecommenderInput: CreateRecommenderInput
    CreateRecommenderOutput: CreateRecommenderOutput
    CreateSchemaInput: CreateSchemaInput
    CreateSchemaOutput: CreateSchemaOutput
    CreateSolutionInput: CreateSolutionInput
    CreateSolutionOutput: CreateSolutionOutput
    CreateSolutionVersionInput: CreateSolutionVersionInput
    CreateSolutionVersionOutput: CreateSolutionVersionOutput
    DeleteCampaignInput: DeleteCampaignInput
    DeleteCampaignOutput: DeleteCampaignOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteDatasetGroupInput: DeleteDatasetGroupInput
    DeleteDatasetGroupOutput: DeleteDatasetGroupOutput
    DeleteEventTrackerInput: DeleteEventTrackerInput
    DeleteEventTrackerOutput: DeleteEventTrackerOutput
    DeleteFilterInput: DeleteFilterInput
    DeleteFilterOutput: DeleteFilterOutput
    DeleteMetricAttributionInput: DeleteMetricAttributionInput
    DeleteMetricAttributionOutput: DeleteMetricAttributionOutput
    DeleteRecommenderInput: DeleteRecommenderInput
    DeleteRecommenderOutput: DeleteRecommenderOutput
    DeleteSchemaInput: DeleteSchemaInput
    DeleteSchemaOutput: DeleteSchemaOutput
    DeleteSolutionInput: DeleteSolutionInput
    DeleteSolutionOutput: DeleteSolutionOutput
    DescribeAlgorithmInput: DescribeAlgorithmInput
    DescribeAlgorithmOutput: DescribeAlgorithmOutput
    DescribeBatchInferenceJobInput: DescribeBatchInferenceJobInput
    DescribeBatchInferenceJobOutput: DescribeBatchInferenceJobOutput
    DescribeBatchSegmentJobInput: DescribeBatchSegmentJobInput
    DescribeBatchSegmentJobOutput: DescribeBatchSegmentJobOutput
    DescribeCampaignInput: DescribeCampaignInput
    DescribeCampaignOutput: DescribeCampaignOutput
    DescribeDataDeletionJobInput: DescribeDataDeletionJobInput
    DescribeDataDeletionJobOutput: DescribeDataDeletionJobOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeDatasetExportJobInput: DescribeDatasetExportJobInput
    DescribeDatasetExportJobOutput: DescribeDatasetExportJobOutput
    DescribeDatasetGroupInput: DescribeDatasetGroupInput
    DescribeDatasetGroupOutput: DescribeDatasetGroupOutput
    DescribeDatasetImportJobInput: DescribeDatasetImportJobInput
    DescribeDatasetImportJobOutput: DescribeDatasetImportJobOutput
    DescribeEventTrackerInput: DescribeEventTrackerInput
    DescribeEventTrackerOutput: DescribeEventTrackerOutput
    DescribeFeatureTransformationInput: DescribeFeatureTransformationInput
    DescribeFeatureTransformationOutput: DescribeFeatureTransformationOutput
    DescribeFilterInput: DescribeFilterInput
    DescribeFilterOutput: DescribeFilterOutput
    DescribeMetricAttributionInput: DescribeMetricAttributionInput
    DescribeMetricAttributionOutput: DescribeMetricAttributionOutput
    DescribeRecipeInput: DescribeRecipeInput
    DescribeRecipeOutput: DescribeRecipeOutput
    DescribeRecommenderInput: DescribeRecommenderInput
    DescribeRecommenderOutput: DescribeRecommenderOutput
    DescribeSchemaInput: DescribeSchemaInput
    DescribeSchemaOutput: DescribeSchemaOutput
    DescribeSolutionInput: DescribeSolutionInput
    DescribeSolutionOutput: DescribeSolutionOutput
    DescribeSolutionVersionInput: DescribeSolutionVersionInput
    DescribeSolutionVersionOutput: DescribeSolutionVersionOutput
    GetSolutionMetricsInput: GetSolutionMetricsInput
    GetSolutionMetricsOutput: GetSolutionMetricsOutput
    ListBatchInferenceJobsInput: ListBatchInferenceJobsInput
    ListBatchInferenceJobsOutput: ListBatchInferenceJobsOutput
    ListBatchSegmentJobsInput: ListBatchSegmentJobsInput
    ListBatchSegmentJobsOutput: ListBatchSegmentJobsOutput
    ListCampaignsInput: ListCampaignsInput
    ListCampaignsOutput: ListCampaignsOutput
    ListDataDeletionJobsInput: ListDataDeletionJobsInput
    ListDataDeletionJobsOutput: ListDataDeletionJobsOutput
    ListDatasetExportJobsInput: ListDatasetExportJobsInput
    ListDatasetExportJobsOutput: ListDatasetExportJobsOutput
    ListDatasetGroupsInput: ListDatasetGroupsInput
    ListDatasetGroupsOutput: ListDatasetGroupsOutput
    ListDatasetImportJobsInput: ListDatasetImportJobsInput
    ListDatasetImportJobsOutput: ListDatasetImportJobsOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListEventTrackersInput: ListEventTrackersInput
    ListEventTrackersOutput: ListEventTrackersOutput
    ListFiltersInput: ListFiltersInput
    ListFiltersOutput: ListFiltersOutput
    ListMetricAttributionMetricsInput: ListMetricAttributionMetricsInput
    ListMetricAttributionMetricsOutput: ListMetricAttributionMetricsOutput
    ListMetricAttributionsInput: ListMetricAttributionsInput
    ListMetricAttributionsOutput: ListMetricAttributionsOutput
    ListRecipesInput: ListRecipesInput
    ListRecipesOutput: ListRecipesOutput
    ListRecommendersInput: ListRecommendersInput
    ListRecommendersOutput: ListRecommendersOutput
    ListSchemasInput: ListSchemasInput
    ListSchemasOutput: ListSchemasOutput
    ListSolutionsInput: ListSolutionsInput
    ListSolutionsOutput: ListSolutionsOutput
    ListSolutionVersionsInput: ListSolutionVersionsInput
    ListSolutionVersionsOutput: ListSolutionVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartRecommenderInput: StartRecommenderInput
    StartRecommenderOutput: StartRecommenderOutput
    StopRecommenderInput: StopRecommenderInput
    StopRecommenderOutput: StopRecommenderOutput
    StopSolutionVersionCreationInput: StopSolutionVersionCreationInput
    StopSolutionVersionCreationOutput: StopSolutionVersionCreationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCampaignInput: UpdateCampaignInput
    UpdateCampaignOutput: UpdateCampaignOutput
    UpdateDatasetInput: UpdateDatasetInput
    UpdateDatasetOutput: UpdateDatasetOutput
    UpdateMetricAttributionInput: UpdateMetricAttributionInput
    UpdateMetricAttributionOutput: UpdateMetricAttributionOutput
    UpdateRecommenderInput: UpdateRecommenderInput
    UpdateRecommenderOutput: UpdateRecommenderOutput
    UpdateSolutionInput: UpdateSolutionInput
    UpdateSolutionOutput: UpdateSolutionOutput
end

return M
