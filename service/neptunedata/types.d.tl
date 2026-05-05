local record CancelGremlinQueryInput
    queryId: string
end

local record CancelGremlinQueryOutput
    status: string
end

local record CancelLoaderJobInput
    loadId: string
end

local record CancelLoaderJobOutput
    status: string
end

local record CancelMLDataProcessingJobInput
    id: string
    neptuneIamRoleArn: string
    clean: boolean
end

local record CancelMLDataProcessingJobOutput
    status: string
end

local record CancelMLModelTrainingJobInput
    id: string
    neptuneIamRoleArn: string
    clean: boolean
end

local record CancelMLModelTrainingJobOutput
    status: string
end

local record CancelMLModelTransformJobInput
    id: string
    neptuneIamRoleArn: string
    clean: boolean
end

local record CancelMLModelTransformJobOutput
    status: string
end

local record CancelOpenCypherQueryInput
    queryId: string
    silent: boolean
end

local record CancelOpenCypherQueryOutput
    status: string
    payload: boolean
end

local record CreateMLEndpointInput
    id: string
    mlModelTrainingJobId: string
    mlModelTransformJobId: string
    update: boolean
    neptuneIamRoleArn: string
    modelName: string
    instanceType: string
    instanceCount: number
    volumeEncryptionKMSKey: string
end

local record CreateMLEndpointOutput
    id: string
    arn: string
    creationTimeInMillis: number
end

local record DeleteMLEndpointInput
    id: string
    neptuneIamRoleArn: string
    clean: boolean
end

local record DeleteMLEndpointOutput
    status: string
end

local record DeletePropertygraphStatisticsInput
end

local record DeletePropertygraphStatisticsOutput
    statusCode: number
    status: string
    payload: DeleteStatisticsValueMap
end

local record DeleteSparqlStatisticsInput
end

local record DeleteSparqlStatisticsOutput
    statusCode: number
    status: string
    payload: DeleteStatisticsValueMap
end

local record ExecuteFastResetInput
    action: string
    token: string
end

local record ExecuteFastResetOutput
    status: string
    payload: FastResetToken
end

local record ExecuteGremlinExplainQueryInput
    gremlinQuery: string
end

local record ExecuteGremlinExplainQueryOutput
    output: string
end

local record ExecuteGremlinProfileQueryInput
    gremlinQuery: string
    results: boolean
    chop: number
    serializer: string
    indexOps: boolean
end

local record ExecuteGremlinProfileQueryOutput
    output: string
end

local record ExecuteGremlinQueryInput
    gremlinQuery: string
    serializer: string
end

local record ExecuteGremlinQueryOutput
    requestId: string
    status: GremlinQueryStatusAttributes
    result: any
    meta: any
end

local record ExecuteOpenCypherExplainQueryInput
    openCypherQuery: string
    parameters: string
    explainMode: string
end

local record ExecuteOpenCypherExplainQueryOutput
    results: string
end

local record ExecuteOpenCypherQueryInput
    openCypherQuery: string
    parameters: string
end

local record ExecuteOpenCypherQueryOutput
    results: any
end

local record GetEngineStatusInput
end

local record GetEngineStatusOutput
    status: string
    startTime: string
    dbEngineVersion: string
    role: string
    dfeQueryEngine: string
    gremlin: QueryLanguageVersion
    sparql: QueryLanguageVersion
    opencypher: QueryLanguageVersion
    labMode: {string : string}
    rollingBackTrxCount: number
    rollingBackTrxEarliestStartTime: string
    features: {string : any}
    settings: {string : string}
end

local record GetGremlinQueryStatusInput
    queryId: string
end

local record GetGremlinQueryStatusOutput
    queryId: string
    queryString: string
    queryEvalStats: QueryEvalStats
end

local record GetLoaderJobStatusInput
    loadId: string
    details: boolean
    errors: boolean
    page: number
    errorsPerPage: number
end

local record GetLoaderJobStatusOutput
    status: string
    payload: any
end

local record GetMLDataProcessingJobInput
    id: string
    neptuneIamRoleArn: string
end

local record GetMLDataProcessingJobOutput
    status: string
    id: string
    processingJob: MlResourceDefinition
end

local record GetMLEndpointInput
    id: string
    neptuneIamRoleArn: string
end

local record GetMLEndpointOutput
    status: string
    id: string
    endpoint: MlResourceDefinition
    endpointConfig: MlConfigDefinition
end

local record GetMLModelTrainingJobInput
    id: string
    neptuneIamRoleArn: string
end

local record GetMLModelTrainingJobOutput
    status: string
    id: string
    processingJob: MlResourceDefinition
    hpoJob: MlResourceDefinition
    modelTransformJob: MlResourceDefinition
    mlModels: {MlConfigDefinition}
end

local record GetMLModelTransformJobInput
    id: string
    neptuneIamRoleArn: string
end

local record GetMLModelTransformJobOutput
    status: string
    id: string
    baseProcessingJob: MlResourceDefinition
    remoteModelTransformJob: MlResourceDefinition
    models: {MlConfigDefinition}
end

local record GetOpenCypherQueryStatusInput
    queryId: string
end

local record GetOpenCypherQueryStatusOutput
    queryId: string
    queryString: string
    queryEvalStats: QueryEvalStats
end

local record GetPropertygraphStatisticsInput
end

local record GetPropertygraphStatisticsOutput
    status: string
    payload: Statistics
end

local record GetPropertygraphStreamInput
    limit: number
    iteratorType: string
    commitNum: number
    opNum: number
    encoding: string
end

local record GetPropertygraphStreamOutput
    lastEventId: {string : string}
    lastTrxTimestampInMillis: number
    format: string
    records: {PropertygraphRecord}
    totalRecords: number
end

local record GetPropertygraphSummaryInput
    mode: string
end

local record GetPropertygraphSummaryOutput
    statusCode: number
    payload: PropertygraphSummaryValueMap
end

local record GetRDFGraphSummaryInput
    mode: string
end

local record GetRDFGraphSummaryOutput
    statusCode: number
    payload: RDFGraphSummaryValueMap
end

local record GetSparqlStatisticsInput
end

local record GetSparqlStatisticsOutput
    status: string
    payload: Statistics
end

local record GetSparqlStreamInput
    limit: number
    iteratorType: string
    commitNum: number
    opNum: number
    encoding: string
end

local record GetSparqlStreamOutput
    lastEventId: {string : string}
    lastTrxTimestampInMillis: number
    format: string
    records: {SparqlRecord}
    totalRecords: number
end

local record ListGremlinQueriesInput
    includeWaiting: boolean
end

local record ListGremlinQueriesOutput
    acceptedQueryCount: number
    runningQueryCount: number
    queries: {GremlinQueryStatus}
end

local record ListLoaderJobsInput
    limit: number
    includeQueuedLoads: boolean
end

local record ListLoaderJobsOutput
    status: string
    payload: LoaderIdResult
end

local record ListMLDataProcessingJobsInput
    maxItems: number
    neptuneIamRoleArn: string
end

local record ListMLDataProcessingJobsOutput
    ids: {string}
end

local record ListMLEndpointsInput
    maxItems: number
    neptuneIamRoleArn: string
end

local record ListMLEndpointsOutput
    ids: {string}
end

local record ListMLModelTrainingJobsInput
    maxItems: number
    neptuneIamRoleArn: string
end

local record ListMLModelTrainingJobsOutput
    ids: {string}
end

local record ListMLModelTransformJobsInput
    maxItems: number
    neptuneIamRoleArn: string
end

local record ListMLModelTransformJobsOutput
    ids: {string}
end

local record ListOpenCypherQueriesInput
    includeWaiting: boolean
end

local record ListOpenCypherQueriesOutput
    acceptedQueryCount: number
    runningQueryCount: number
    queries: {GremlinQueryStatus}
end

local record ManagePropertygraphStatisticsInput
    mode: string
end

local record ManagePropertygraphStatisticsOutput
    status: string
    payload: RefreshStatisticsIdMap
end

local record ManageSparqlStatisticsInput
    mode: string
end

local record ManageSparqlStatisticsOutput
    status: string
    payload: RefreshStatisticsIdMap
end

local record StartLoaderJobInput
    source: string
    format: string
    s3BucketRegion: string
    iamRoleArn: string
    mode: string
    failOnError: boolean
    parallelism: string
    parserConfiguration: {string : string}
    updateSingleCardinalityProperties: boolean
    queueRequest: boolean
    dependencies: {string}
    userProvidedEdgeIds: boolean
    edgeOnlyLoad: boolean
end

local record StartLoaderJobOutput
    status: string
    payload: {string : string}
end

local record StartMLDataProcessingJobInput
    id: string
    previousDataProcessingJobId: string
    inputDataS3Location: string
    processedDataS3Location: string
    sagemakerIamRoleArn: string
    neptuneIamRoleArn: string
    processingInstanceType: string
    processingInstanceVolumeSizeInGB: number
    processingTimeOutInSeconds: number
    modelType: string
    configFileName: string
    subnets: {string}
    securityGroupIds: {string}
    volumeEncryptionKMSKey: string
    s3OutputEncryptionKMSKey: string
end

local record StartMLDataProcessingJobOutput
    id: string
    arn: string
    creationTimeInMillis: number
end

local record StartMLModelTrainingJobInput
    id: string
    previousModelTrainingJobId: string
    dataProcessingJobId: string
    trainModelS3Location: string
    sagemakerIamRoleArn: string
    neptuneIamRoleArn: string
    baseProcessingInstanceType: string
    trainingInstanceType: string
    trainingInstanceVolumeSizeInGB: number
    trainingTimeOutInSeconds: number
    maxHPONumberOfTrainingJobs: number
    maxHPOParallelTrainingJobs: number
    subnets: {string}
    securityGroupIds: {string}
    volumeEncryptionKMSKey: string
    s3OutputEncryptionKMSKey: string
    enableManagedSpotTraining: boolean
    customModelTrainingParameters: CustomModelTrainingParameters
end

local record StartMLModelTrainingJobOutput
    id: string
    arn: string
    creationTimeInMillis: number
end

local record StartMLModelTransformJobInput
    id: string
    dataProcessingJobId: string
    mlModelTrainingJobId: string
    trainingJobName: string
    modelTransformOutputS3Location: string
    sagemakerIamRoleArn: string
    neptuneIamRoleArn: string
    customModelTransformParameters: CustomModelTransformParameters
    baseProcessingInstanceType: string
    baseProcessingInstanceVolumeSizeInGB: number
    subnets: {string}
    securityGroupIds: {string}
    volumeEncryptionKMSKey: string
    s3OutputEncryptionKMSKey: string
end

local record StartMLModelTransformJobOutput
    id: string
    arn: string
    creationTimeInMillis: number
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record BulkLoadIdNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InternalFailureException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record LoadUrlAccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidNumericDataException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MethodNotAllowedException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ServerShutdownException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record CancelledByUserException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MalformedQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryTooLargeException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record CancelledByUserException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MalformedQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryTooLargeException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record CancelledByUserException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MalformedQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryTooLargeException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record CancelledByUserException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidNumericDataException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MalformedQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryTooLargeException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record CancelledByUserException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidNumericDataException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MalformedQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryLimitException
    detailedMessage: string
    requestId: string
    code: string
end

local record QueryTooLargeException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InternalFailureException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record BulkLoadIdNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InternalFailureException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record LoadUrlAccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidNumericDataException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ExpiredStreamException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record StreamRecordsNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ThrottlingException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ExpiredStreamException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MemoryLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record StreamRecordsNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ThrottlingException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record BulkLoadIdNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InternalFailureException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record LoadUrlAccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConcurrentModificationException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record FailureByQueryException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidNumericDataException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record ParsingException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record TimeLimitExceededException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record AccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record ReadOnlyViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record StatisticsNotAvailableException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record BulkLoadIdNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InternalFailureException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record LoadUrlAccessDeniedException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record S3Exception
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local record BadRequestException
    detailedMessage: string
    requestId: string
    code: string
end

local record ClientTimeoutException
    detailedMessage: string
    requestId: string
    code: string
end

local record ConstraintViolationException
    detailedMessage: string
    requestId: string
    code: string
end

local record IllegalArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidArgumentException
    detailedMessage: string
    requestId: string
    code: string
end

local record InvalidParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MissingParameterException
    detailedMessage: string
    requestId: string
    code: string
end

local record MLResourceNotFoundException
    detailedMessage: string
    requestId: string
    code: string
end

local record PreconditionsFailedException
    detailedMessage: string
    requestId: string
    code: string
end

local record TooManyRequestsException
    detailedMessage: string
    requestId: string
    code: string
end

local record UnsupportedOperationException
    detailedMessage: string
    requestId: string
    code: string
end

local type Mode = "RESUME" | "NEW" | "AUTO"

local type S3BucketRegion = "us-east-1" | "us-east-2" | "us-west-1" | "us-west-2" | "ca-central-1" | "sa-east-1" | "eu-north-1" | "eu-west-1" | "eu-west-2" | "eu-west-3" | "eu-central-1" | "me-south-1" | "af-south-1" | "ap-east-1" | "ap-northeast-1" | "ap-northeast-2" | "ap-southeast-1" | "ap-southeast-2" | "ap-south-1" | "cn-north-1" | "cn-northwest-1" | "us-gov-west-1" | "us-gov-east-1" | "ca-west-1" | "eu-south-2" | "il-central-1" | "me-central-1" | "ap-northeast-3" | "ap-southeast-3" | "ap-southeast-4" | "ap-southeast-5" | "ap-southeast-7" | "mx-central-1" | "ap-east-2" | "ap-south-2" | "eu-central-2"

local type Action = "initiateDatabaseReset" | "performDatabaseReset"

local type StatisticsAutoGenerationMode = "disableAutoCompute" | "enableAutoCompute" | "refresh"

local type Parallelism = "LOW" | "MEDIUM" | "HIGH" | "OVERSUBSCRIBE"

local type IteratorType = "AT_SEQUENCE_NUMBER" | "AFTER_SEQUENCE_NUMBER" | "TRIM_HORIZON" | "LATEST"

local type Encoding = "gzip"

local type Format = "csv" | "opencypher" | "ntriples" | "nquads" | "rdfxml" | "turtle"

local type GraphSummaryType = "basic" | "detailed"

local type OpenCypherExplainMode = "static" | "dynamic" | "details"

local record M
    CancelGremlinQueryInput: CancelGremlinQueryInput
    CancelGremlinQueryOutput: CancelGremlinQueryOutput
    CancelLoaderJobInput: CancelLoaderJobInput
    CancelLoaderJobOutput: CancelLoaderJobOutput
    CancelMLDataProcessingJobInput: CancelMLDataProcessingJobInput
    CancelMLDataProcessingJobOutput: CancelMLDataProcessingJobOutput
    CancelMLModelTrainingJobInput: CancelMLModelTrainingJobInput
    CancelMLModelTrainingJobOutput: CancelMLModelTrainingJobOutput
    CancelMLModelTransformJobInput: CancelMLModelTransformJobInput
    CancelMLModelTransformJobOutput: CancelMLModelTransformJobOutput
    CancelOpenCypherQueryInput: CancelOpenCypherQueryInput
    CancelOpenCypherQueryOutput: CancelOpenCypherQueryOutput
    CreateMLEndpointInput: CreateMLEndpointInput
    CreateMLEndpointOutput: CreateMLEndpointOutput
    DeleteMLEndpointInput: DeleteMLEndpointInput
    DeleteMLEndpointOutput: DeleteMLEndpointOutput
    DeletePropertygraphStatisticsInput: DeletePropertygraphStatisticsInput
    DeletePropertygraphStatisticsOutput: DeletePropertygraphStatisticsOutput
    DeleteSparqlStatisticsInput: DeleteSparqlStatisticsInput
    DeleteSparqlStatisticsOutput: DeleteSparqlStatisticsOutput
    ExecuteFastResetInput: ExecuteFastResetInput
    ExecuteFastResetOutput: ExecuteFastResetOutput
    ExecuteGremlinExplainQueryInput: ExecuteGremlinExplainQueryInput
    ExecuteGremlinExplainQueryOutput: ExecuteGremlinExplainQueryOutput
    ExecuteGremlinProfileQueryInput: ExecuteGremlinProfileQueryInput
    ExecuteGremlinProfileQueryOutput: ExecuteGremlinProfileQueryOutput
    ExecuteGremlinQueryInput: ExecuteGremlinQueryInput
    ExecuteGremlinQueryOutput: ExecuteGremlinQueryOutput
    ExecuteOpenCypherExplainQueryInput: ExecuteOpenCypherExplainQueryInput
    ExecuteOpenCypherExplainQueryOutput: ExecuteOpenCypherExplainQueryOutput
    ExecuteOpenCypherQueryInput: ExecuteOpenCypherQueryInput
    ExecuteOpenCypherQueryOutput: ExecuteOpenCypherQueryOutput
    GetEngineStatusInput: GetEngineStatusInput
    GetEngineStatusOutput: GetEngineStatusOutput
    GetGremlinQueryStatusInput: GetGremlinQueryStatusInput
    GetGremlinQueryStatusOutput: GetGremlinQueryStatusOutput
    GetLoaderJobStatusInput: GetLoaderJobStatusInput
    GetLoaderJobStatusOutput: GetLoaderJobStatusOutput
    GetMLDataProcessingJobInput: GetMLDataProcessingJobInput
    GetMLDataProcessingJobOutput: GetMLDataProcessingJobOutput
    GetMLEndpointInput: GetMLEndpointInput
    GetMLEndpointOutput: GetMLEndpointOutput
    GetMLModelTrainingJobInput: GetMLModelTrainingJobInput
    GetMLModelTrainingJobOutput: GetMLModelTrainingJobOutput
    GetMLModelTransformJobInput: GetMLModelTransformJobInput
    GetMLModelTransformJobOutput: GetMLModelTransformJobOutput
    GetOpenCypherQueryStatusInput: GetOpenCypherQueryStatusInput
    GetOpenCypherQueryStatusOutput: GetOpenCypherQueryStatusOutput
    GetPropertygraphStatisticsInput: GetPropertygraphStatisticsInput
    GetPropertygraphStatisticsOutput: GetPropertygraphStatisticsOutput
    GetPropertygraphStreamInput: GetPropertygraphStreamInput
    GetPropertygraphStreamOutput: GetPropertygraphStreamOutput
    GetPropertygraphSummaryInput: GetPropertygraphSummaryInput
    GetPropertygraphSummaryOutput: GetPropertygraphSummaryOutput
    GetRDFGraphSummaryInput: GetRDFGraphSummaryInput
    GetRDFGraphSummaryOutput: GetRDFGraphSummaryOutput
    GetSparqlStatisticsInput: GetSparqlStatisticsInput
    GetSparqlStatisticsOutput: GetSparqlStatisticsOutput
    GetSparqlStreamInput: GetSparqlStreamInput
    GetSparqlStreamOutput: GetSparqlStreamOutput
    ListGremlinQueriesInput: ListGremlinQueriesInput
    ListGremlinQueriesOutput: ListGremlinQueriesOutput
    ListLoaderJobsInput: ListLoaderJobsInput
    ListLoaderJobsOutput: ListLoaderJobsOutput
    ListMLDataProcessingJobsInput: ListMLDataProcessingJobsInput
    ListMLDataProcessingJobsOutput: ListMLDataProcessingJobsOutput
    ListMLEndpointsInput: ListMLEndpointsInput
    ListMLEndpointsOutput: ListMLEndpointsOutput
    ListMLModelTrainingJobsInput: ListMLModelTrainingJobsInput
    ListMLModelTrainingJobsOutput: ListMLModelTrainingJobsOutput
    ListMLModelTransformJobsInput: ListMLModelTransformJobsInput
    ListMLModelTransformJobsOutput: ListMLModelTransformJobsOutput
    ListOpenCypherQueriesInput: ListOpenCypherQueriesInput
    ListOpenCypherQueriesOutput: ListOpenCypherQueriesOutput
    ManagePropertygraphStatisticsInput: ManagePropertygraphStatisticsInput
    ManagePropertygraphStatisticsOutput: ManagePropertygraphStatisticsOutput
    ManageSparqlStatisticsInput: ManageSparqlStatisticsInput
    ManageSparqlStatisticsOutput: ManageSparqlStatisticsOutput
    StartLoaderJobInput: StartLoaderJobInput
    StartLoaderJobOutput: StartLoaderJobOutput
    StartMLDataProcessingJobInput: StartMLDataProcessingJobInput
    StartMLDataProcessingJobOutput: StartMLDataProcessingJobOutput
    StartMLModelTrainingJobInput: StartMLModelTrainingJobInput
    StartMLModelTrainingJobOutput: StartMLModelTrainingJobOutput
    StartMLModelTransformJobInput: StartMLModelTransformJobInput
    StartMLModelTransformJobOutput: StartMLModelTransformJobOutput
end

return M
