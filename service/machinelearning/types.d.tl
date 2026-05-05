local record AddTagsInput
    Tags: {Tag}
    ResourceId: string
    ResourceType: string
end

local record AddTagsOutput
    ResourceId: string
    ResourceType: string
end

local record CreateBatchPredictionInput
    BatchPredictionId: string
    BatchPredictionName: string
    MLModelId: string
    BatchPredictionDataSourceId: string
    OutputUri: string
end

local record CreateBatchPredictionOutput
    BatchPredictionId: string
end

local record CreateDataSourceFromRDSInput
    DataSourceId: string
    DataSourceName: string
    RDSData: RDSDataSpec
    RoleARN: string
    ComputeStatistics: boolean
end

local record CreateDataSourceFromRDSOutput
    DataSourceId: string
end

local record CreateDataSourceFromRedshiftInput
    DataSourceId: string
    DataSourceName: string
    DataSpec: RedshiftDataSpec
    RoleARN: string
    ComputeStatistics: boolean
end

local record CreateDataSourceFromRedshiftOutput
    DataSourceId: string
end

local record CreateDataSourceFromS3Input
    DataSourceId: string
    DataSourceName: string
    DataSpec: S3DataSpec
    ComputeStatistics: boolean
end

local record CreateDataSourceFromS3Output
    DataSourceId: string
end

local record CreateEvaluationInput
    EvaluationId: string
    EvaluationName: string
    MLModelId: string
    EvaluationDataSourceId: string
end

local record CreateEvaluationOutput
    EvaluationId: string
end

local record CreateMLModelInput
    MLModelId: string
    MLModelName: string
    MLModelType: string
    Parameters: {string : string}
    TrainingDataSourceId: string
    Recipe: string
    RecipeUri: string
end

local record CreateMLModelOutput
    MLModelId: string
end

local record CreateRealtimeEndpointInput
    MLModelId: string
end

local record CreateRealtimeEndpointOutput
    MLModelId: string
    RealtimeEndpointInfo: RealtimeEndpointInfo
end

local record DeleteBatchPredictionInput
    BatchPredictionId: string
end

local record DeleteBatchPredictionOutput
    BatchPredictionId: string
end

local record DeleteDataSourceInput
    DataSourceId: string
end

local record DeleteDataSourceOutput
    DataSourceId: string
end

local record DeleteEvaluationInput
    EvaluationId: string
end

local record DeleteEvaluationOutput
    EvaluationId: string
end

local record DeleteMLModelInput
    MLModelId: string
end

local record DeleteMLModelOutput
    MLModelId: string
end

local record DeleteRealtimeEndpointInput
    MLModelId: string
end

local record DeleteRealtimeEndpointOutput
    MLModelId: string
    RealtimeEndpointInfo: RealtimeEndpointInfo
end

local record DeleteTagsInput
    TagKeys: {string}
    ResourceId: string
    ResourceType: string
end

local record DeleteTagsOutput
    ResourceId: string
    ResourceType: string
end

local record DescribeBatchPredictionsInput
    FilterVariable: string
    EQ: string
    GT: string
    LT: string
    GE: string
    LE: string
    NE: string
    Prefix: string
    SortOrder: string
    NextToken: string
    Limit: number
end

local record DescribeBatchPredictionsOutput
    Results: {BatchPrediction}
    NextToken: string
end

local record DescribeDataSourcesInput
    FilterVariable: string
    EQ: string
    GT: string
    LT: string
    GE: string
    LE: string
    NE: string
    Prefix: string
    SortOrder: string
    NextToken: string
    Limit: number
end

local record DescribeDataSourcesOutput
    Results: {DataSource}
    NextToken: string
end

local record DescribeEvaluationsInput
    FilterVariable: string
    EQ: string
    GT: string
    LT: string
    GE: string
    LE: string
    NE: string
    Prefix: string
    SortOrder: string
    NextToken: string
    Limit: number
end

local record DescribeEvaluationsOutput
    Results: {Evaluation}
    NextToken: string
end

local record DescribeMLModelsInput
    FilterVariable: string
    EQ: string
    GT: string
    LT: string
    GE: string
    LE: string
    NE: string
    Prefix: string
    SortOrder: string
    NextToken: string
    Limit: number
end

local record DescribeMLModelsOutput
    Results: {MLModel}
    NextToken: string
end

local record DescribeTagsInput
    ResourceId: string
    ResourceType: string
end

local record DescribeTagsOutput
    ResourceId: string
    ResourceType: string
    Tags: {Tag}
end

local record GetBatchPredictionInput
    BatchPredictionId: string
end

local record GetBatchPredictionOutput
    BatchPredictionId: string
    MLModelId: string
    BatchPredictionDataSourceId: string
    InputDataLocationS3: string
    CreatedByIamUser: string
    CreatedAt: number
    LastUpdatedAt: number
    Name: string
    Status: string
    OutputUri: string
    LogUri: string
    Message: string
    ComputeTime: number
    FinishedAt: number
    StartedAt: number
    TotalRecordCount: number
    InvalidRecordCount: number
end

local record GetDataSourceInput
    DataSourceId: string
    Verbose: boolean
end

local record GetDataSourceOutput
    DataSourceId: string
    DataLocationS3: string
    DataRearrangement: string
    CreatedByIamUser: string
    CreatedAt: number
    LastUpdatedAt: number
    DataSizeInBytes: number
    NumberOfFiles: number
    Name: string
    Status: string
    LogUri: string
    Message: string
    RedshiftMetadata: RedshiftMetadata
    RDSMetadata: RDSMetadata
    RoleARN: string
    ComputeStatistics: boolean
    ComputeTime: number
    FinishedAt: number
    StartedAt: number
    DataSourceSchema: string
end

local record GetEvaluationInput
    EvaluationId: string
end

local record GetEvaluationOutput
    EvaluationId: string
    MLModelId: string
    EvaluationDataSourceId: string
    InputDataLocationS3: string
    CreatedByIamUser: string
    CreatedAt: number
    LastUpdatedAt: number
    Name: string
    Status: string
    PerformanceMetrics: PerformanceMetrics
    LogUri: string
    Message: string
    ComputeTime: number
    FinishedAt: number
    StartedAt: number
end

local record GetMLModelInput
    MLModelId: string
    Verbose: boolean
end

local record GetMLModelOutput
    MLModelId: string
    TrainingDataSourceId: string
    CreatedByIamUser: string
    CreatedAt: number
    LastUpdatedAt: number
    Name: string
    Status: string
    SizeInBytes: number
    EndpointInfo: RealtimeEndpointInfo
    TrainingParameters: {string : string}
    InputDataLocationS3: string
    MLModelType: string
    ScoreThreshold: number
    ScoreThresholdLastUpdatedAt: number
    LogUri: string
    Message: string
    ComputeTime: number
    FinishedAt: number
    StartedAt: number
    Recipe: string
    Schema: string
end

local record PredictInput
    MLModelId: string
    Record: {string : string}
    PredictEndpoint: string
end

local record PredictOutput
    Prediction: Prediction
end

local record UpdateBatchPredictionInput
    BatchPredictionId: string
    BatchPredictionName: string
end

local record UpdateBatchPredictionOutput
    BatchPredictionId: string
end

local record UpdateDataSourceInput
    DataSourceId: string
    DataSourceName: string
end

local record UpdateDataSourceOutput
    DataSourceId: string
end

local record UpdateEvaluationInput
    EvaluationId: string
    EvaluationName: string
end

local record UpdateEvaluationOutput
    EvaluationId: string
end

local record UpdateMLModelInput
    MLModelId: string
    MLModelName: string
    ScoreThreshold: number
end

local record UpdateMLModelOutput
    MLModelId: string
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record TagLimitExceededException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record IdempotentParameterMismatchException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InvalidTagException
    message: string
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record LimitExceededException
    message: string
    code: number
end

local record PredictorNotMountedException
    message: string
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local record InternalServerException
    message: string
    code: number
end

local record InvalidInputException
    message: string
    code: number
end

local record ResourceNotFoundException
    message: string
    code: number
end

local type SortOrder = "asc" | "dsc"

local type MLModelType = "REGRESSION" | "BINARY" | "MULTICLASS"

local type EntityStatus = "PENDING" | "INPROGRESS" | "FAILED" | "COMPLETED" | "DELETED"

local type TaggableResourceType = "BatchPrediction" | "DataSource" | "Evaluation" | "MLModel"

local type EvaluationFilterVariable = "CreatedAt" | "LastUpdatedAt" | "Status" | "Name" | "IAMUser" | "MLModelId" | "DataSourceId" | "DataURI"

local type MLModelFilterVariable = "CreatedAt" | "LastUpdatedAt" | "Status" | "Name" | "IAMUser" | "TrainingDataSourceId" | "RealtimeEndpointStatus" | "MLModelType" | "Algorithm" | "TrainingDataURI"

local type DataSourceFilterVariable = "CreatedAt" | "LastUpdatedAt" | "Status" | "Name" | "DataLocationS3" | "IAMUser"

local type BatchPredictionFilterVariable = "CreatedAt" | "LastUpdatedAt" | "Status" | "Name" | "IAMUser" | "MLModelId" | "DataSourceId" | "DataURI"

local record M
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    CreateBatchPredictionInput: CreateBatchPredictionInput
    CreateBatchPredictionOutput: CreateBatchPredictionOutput
    CreateDataSourceFromRDSInput: CreateDataSourceFromRDSInput
    CreateDataSourceFromRDSOutput: CreateDataSourceFromRDSOutput
    CreateDataSourceFromRedshiftInput: CreateDataSourceFromRedshiftInput
    CreateDataSourceFromRedshiftOutput: CreateDataSourceFromRedshiftOutput
    CreateDataSourceFromS3Input: CreateDataSourceFromS3Input
    CreateDataSourceFromS3Output: CreateDataSourceFromS3Output
    CreateEvaluationInput: CreateEvaluationInput
    CreateEvaluationOutput: CreateEvaluationOutput
    CreateMLModelInput: CreateMLModelInput
    CreateMLModelOutput: CreateMLModelOutput
    CreateRealtimeEndpointInput: CreateRealtimeEndpointInput
    CreateRealtimeEndpointOutput: CreateRealtimeEndpointOutput
    DeleteBatchPredictionInput: DeleteBatchPredictionInput
    DeleteBatchPredictionOutput: DeleteBatchPredictionOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteEvaluationInput: DeleteEvaluationInput
    DeleteEvaluationOutput: DeleteEvaluationOutput
    DeleteMLModelInput: DeleteMLModelInput
    DeleteMLModelOutput: DeleteMLModelOutput
    DeleteRealtimeEndpointInput: DeleteRealtimeEndpointInput
    DeleteRealtimeEndpointOutput: DeleteRealtimeEndpointOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DescribeBatchPredictionsInput: DescribeBatchPredictionsInput
    DescribeBatchPredictionsOutput: DescribeBatchPredictionsOutput
    DescribeDataSourcesInput: DescribeDataSourcesInput
    DescribeDataSourcesOutput: DescribeDataSourcesOutput
    DescribeEvaluationsInput: DescribeEvaluationsInput
    DescribeEvaluationsOutput: DescribeEvaluationsOutput
    DescribeMLModelsInput: DescribeMLModelsInput
    DescribeMLModelsOutput: DescribeMLModelsOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    GetBatchPredictionInput: GetBatchPredictionInput
    GetBatchPredictionOutput: GetBatchPredictionOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetEvaluationInput: GetEvaluationInput
    GetEvaluationOutput: GetEvaluationOutput
    GetMLModelInput: GetMLModelInput
    GetMLModelOutput: GetMLModelOutput
    PredictInput: PredictInput
    PredictOutput: PredictOutput
    UpdateBatchPredictionInput: UpdateBatchPredictionInput
    UpdateBatchPredictionOutput: UpdateBatchPredictionOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateEvaluationInput: UpdateEvaluationInput
    UpdateEvaluationOutput: UpdateEvaluationOutput
    UpdateMLModelInput: UpdateMLModelInput
    UpdateMLModelOutput: UpdateMLModelOutput
end

return M
