local record CreateDatasetInput
    DatasetName: string
    DatasetSchema: DatasetSchema
    ServerSideKmsKeyId: string
    ClientToken: string
    Tags: {Tag}
end

local record CreateDatasetOutput
    DatasetName: string
    DatasetArn: string
    Status: string
end

local record CreateInferenceSchedulerInput
    ModelName: string
    InferenceSchedulerName: string
    DataDelayOffsetInMinutes: number
    DataUploadFrequency: string
    DataInputConfiguration: InferenceInputConfiguration
    DataOutputConfiguration: InferenceOutputConfiguration
    RoleArn: string
    ServerSideKmsKeyId: string
    ClientToken: string
    Tags: {Tag}
end

local record CreateInferenceSchedulerOutput
    InferenceSchedulerArn: string
    InferenceSchedulerName: string
    Status: string
    ModelQuality: string
end

local record CreateLabelInput
    LabelGroupName: string
    StartTime: number
    EndTime: number
    Rating: string
    FaultCode: string
    Notes: string
    Equipment: string
    ClientToken: string
end

local record CreateLabelOutput
    LabelId: string
end

local record CreateLabelGroupInput
    LabelGroupName: string
    FaultCodes: {string}
    ClientToken: string
    Tags: {Tag}
end

local record CreateLabelGroupOutput
    LabelGroupName: string
    LabelGroupArn: string
end

local record CreateModelInput
    ModelName: string
    DatasetName: string
    DatasetSchema: DatasetSchema
    LabelsInputConfiguration: LabelsInputConfiguration
    ClientToken: string
    TrainingDataStartTime: number
    TrainingDataEndTime: number
    EvaluationDataStartTime: number
    EvaluationDataEndTime: number
    RoleArn: string
    DataPreProcessingConfiguration: DataPreProcessingConfiguration
    ServerSideKmsKeyId: string
    Tags: {Tag}
    OffCondition: string
    ModelDiagnosticsOutputConfiguration: ModelDiagnosticsOutputConfiguration
end

local record CreateModelOutput
    ModelArn: string
    Status: string
end

local record CreateRetrainingSchedulerInput
    ModelName: string
    RetrainingStartDate: number
    RetrainingFrequency: string
    LookbackWindow: string
    PromoteMode: string
    ClientToken: string
end

local record CreateRetrainingSchedulerOutput
    ModelName: string
    ModelArn: string
    Status: string
end

local record DeleteDatasetInput
    DatasetName: string
end

local record DeleteDatasetOutput
end

local record DeleteInferenceSchedulerInput
    InferenceSchedulerName: string
end

local record DeleteInferenceSchedulerOutput
end

local record DeleteLabelInput
    LabelGroupName: string
    LabelId: string
end

local record DeleteLabelOutput
end

local record DeleteLabelGroupInput
    LabelGroupName: string
end

local record DeleteLabelGroupOutput
end

local record DeleteModelInput
    ModelName: string
end

local record DeleteModelOutput
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteRetrainingSchedulerInput
    ModelName: string
end

local record DeleteRetrainingSchedulerOutput
end

local record DescribeDataIngestionJobInput
    JobId: string
end

local record DescribeDataIngestionJobOutput
    JobId: string
    DatasetArn: string
    IngestionInputConfiguration: IngestionInputConfiguration
    RoleArn: string
    CreatedAt: number
    Status: string
    FailedReason: string
    DataQualitySummary: DataQualitySummary
    IngestedFilesSummary: IngestedFilesSummary
    StatusDetail: string
    IngestedDataSize: number
    DataStartTime: number
    DataEndTime: number
    SourceDatasetArn: string
end

local record DescribeDatasetInput
    DatasetName: string
end

local record DescribeDatasetOutput
    DatasetName: string
    DatasetArn: string
    CreatedAt: number
    LastUpdatedAt: number
    Status: string
    Schema: string
    ServerSideKmsKeyId: string
    IngestionInputConfiguration: IngestionInputConfiguration
    DataQualitySummary: DataQualitySummary
    IngestedFilesSummary: IngestedFilesSummary
    RoleArn: string
    DataStartTime: number
    DataEndTime: number
    SourceDatasetArn: string
end

local record DescribeInferenceSchedulerInput
    InferenceSchedulerName: string
end

local record DescribeInferenceSchedulerOutput
    ModelArn: string
    ModelName: string
    InferenceSchedulerName: string
    InferenceSchedulerArn: string
    Status: string
    DataDelayOffsetInMinutes: number
    DataUploadFrequency: string
    CreatedAt: number
    UpdatedAt: number
    DataInputConfiguration: InferenceInputConfiguration
    DataOutputConfiguration: InferenceOutputConfiguration
    RoleArn: string
    ServerSideKmsKeyId: string
    LatestInferenceResult: string
end

local record DescribeLabelInput
    LabelGroupName: string
    LabelId: string
end

local record DescribeLabelOutput
    LabelGroupName: string
    LabelGroupArn: string
    LabelId: string
    StartTime: number
    EndTime: number
    Rating: string
    FaultCode: string
    Notes: string
    Equipment: string
    CreatedAt: number
end

local record DescribeLabelGroupInput
    LabelGroupName: string
end

local record DescribeLabelGroupOutput
    LabelGroupName: string
    LabelGroupArn: string
    FaultCodes: {string}
    CreatedAt: number
    UpdatedAt: number
end

local record DescribeModelInput
    ModelName: string
end

local record DescribeModelOutput
    ModelName: string
    ModelArn: string
    DatasetName: string
    DatasetArn: string
    Schema: string
    LabelsInputConfiguration: LabelsInputConfiguration
    TrainingDataStartTime: number
    TrainingDataEndTime: number
    EvaluationDataStartTime: number
    EvaluationDataEndTime: number
    RoleArn: string
    DataPreProcessingConfiguration: DataPreProcessingConfiguration
    Status: string
    TrainingExecutionStartTime: number
    TrainingExecutionEndTime: number
    FailedReason: string
    ModelMetrics: string
    LastUpdatedTime: number
    CreatedAt: number
    ServerSideKmsKeyId: string
    OffCondition: string
    SourceModelVersionArn: string
    ImportJobStartTime: number
    ImportJobEndTime: number
    ActiveModelVersion: number
    ActiveModelVersionArn: string
    ModelVersionActivatedAt: number
    PreviousActiveModelVersion: number
    PreviousActiveModelVersionArn: string
    PreviousModelVersionActivatedAt: number
    PriorModelMetrics: string
    LatestScheduledRetrainingFailedReason: string
    LatestScheduledRetrainingStatus: string
    LatestScheduledRetrainingModelVersion: number
    LatestScheduledRetrainingStartTime: number
    LatestScheduledRetrainingAvailableDataInDays: number
    NextScheduledRetrainingStartDate: number
    AccumulatedInferenceDataStartTime: number
    AccumulatedInferenceDataEndTime: number
    RetrainingSchedulerStatus: string
    ModelDiagnosticsOutputConfiguration: ModelDiagnosticsOutputConfiguration
    ModelQuality: string
end

local record DescribeModelVersionInput
    ModelName: string
    ModelVersion: number
end

local record DescribeModelVersionOutput
    ModelName: string
    ModelArn: string
    ModelVersion: number
    ModelVersionArn: string
    Status: string
    SourceType: string
    DatasetName: string
    DatasetArn: string
    Schema: string
    LabelsInputConfiguration: LabelsInputConfiguration
    TrainingDataStartTime: number
    TrainingDataEndTime: number
    EvaluationDataStartTime: number
    EvaluationDataEndTime: number
    RoleArn: string
    DataPreProcessingConfiguration: DataPreProcessingConfiguration
    TrainingExecutionStartTime: number
    TrainingExecutionEndTime: number
    FailedReason: string
    ModelMetrics: string
    LastUpdatedTime: number
    CreatedAt: number
    ServerSideKmsKeyId: string
    OffCondition: string
    SourceModelVersionArn: string
    ImportJobStartTime: number
    ImportJobEndTime: number
    ImportedDataSizeInBytes: number
    PriorModelMetrics: string
    RetrainingAvailableDataInDays: number
    AutoPromotionResult: string
    AutoPromotionResultReason: string
    ModelDiagnosticsOutputConfiguration: ModelDiagnosticsOutputConfiguration
    ModelDiagnosticsResultsObject: S3Object
    ModelQuality: string
end

local record DescribeResourcePolicyInput
    ResourceArn: string
end

local record DescribeResourcePolicyOutput
    PolicyRevisionId: string
    ResourcePolicy: string
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeRetrainingSchedulerInput
    ModelName: string
end

local record DescribeRetrainingSchedulerOutput
    ModelName: string
    ModelArn: string
    RetrainingStartDate: number
    RetrainingFrequency: string
    LookbackWindow: string
    Status: string
    PromoteMode: string
    CreatedAt: number
    UpdatedAt: number
end

local record ImportDatasetInput
    SourceDatasetArn: string
    DatasetName: string
    ClientToken: string
    ServerSideKmsKeyId: string
    Tags: {Tag}
end

local record ImportDatasetOutput
    DatasetName: string
    DatasetArn: string
    Status: string
    JobId: string
end

local record ImportModelVersionInput
    SourceModelVersionArn: string
    ModelName: string
    DatasetName: string
    LabelsInputConfiguration: LabelsInputConfiguration
    ClientToken: string
    RoleArn: string
    ServerSideKmsKeyId: string
    Tags: {Tag}
    InferenceDataImportStrategy: string
end

local record ImportModelVersionOutput
    ModelName: string
    ModelArn: string
    ModelVersionArn: string
    ModelVersion: number
    Status: string
end

local record ListDataIngestionJobsInput
    DatasetName: string
    NextToken: string
    MaxResults: number
    Status: string
end

local record ListDataIngestionJobsOutput
    NextToken: string
    DataIngestionJobSummaries: {DataIngestionJobSummary}
end

local record ListDatasetsInput
    NextToken: string
    MaxResults: number
    DatasetNameBeginsWith: string
end

local record ListDatasetsOutput
    NextToken: string
    DatasetSummaries: {DatasetSummary}
end

local record ListInferenceEventsInput
    NextToken: string
    MaxResults: number
    InferenceSchedulerName: string
    IntervalStartTime: number
    IntervalEndTime: number
end

local record ListInferenceEventsOutput
    NextToken: string
    InferenceEventSummaries: {InferenceEventSummary}
end

local record ListInferenceExecutionsInput
    NextToken: string
    MaxResults: number
    InferenceSchedulerName: string
    DataStartTimeAfter: number
    DataEndTimeBefore: number
    Status: string
end

local record ListInferenceExecutionsOutput
    NextToken: string
    InferenceExecutionSummaries: {InferenceExecutionSummary}
end

local record ListInferenceSchedulersInput
    NextToken: string
    MaxResults: number
    InferenceSchedulerNameBeginsWith: string
    ModelName: string
    Status: string
end

local record ListInferenceSchedulersOutput
    NextToken: string
    InferenceSchedulerSummaries: {InferenceSchedulerSummary}
end

local record ListLabelGroupsInput
    LabelGroupNameBeginsWith: string
    NextToken: string
    MaxResults: number
end

local record ListLabelGroupsOutput
    NextToken: string
    LabelGroupSummaries: {LabelGroupSummary}
end

local record ListLabelsInput
    LabelGroupName: string
    IntervalStartTime: number
    IntervalEndTime: number
    FaultCode: string
    Equipment: string
    NextToken: string
    MaxResults: number
end

local record ListLabelsOutput
    NextToken: string
    LabelSummaries: {LabelSummary}
end

local record ListModelsInput
    NextToken: string
    MaxResults: number
    Status: string
    ModelNameBeginsWith: string
    DatasetNameBeginsWith: string
end

local record ListModelsOutput
    NextToken: string
    ModelSummaries: {ModelSummary}
end

local record ListModelVersionsInput
    ModelName: string
    NextToken: string
    MaxResults: number
    Status: string
    SourceType: string
    CreatedAtEndTime: number
    CreatedAtStartTime: number
    MaxModelVersion: number
    MinModelVersion: number
end

local record ListModelVersionsOutput
    NextToken: string
    ModelVersionSummaries: {ModelVersionSummary}
end

local record ListRetrainingSchedulersInput
    ModelNameBeginsWith: string
    Status: string
    NextToken: string
    MaxResults: number
end

local record ListRetrainingSchedulersOutput
    RetrainingSchedulerSummaries: {RetrainingSchedulerSummary}
    NextToken: string
end

local record ListSensorStatisticsInput
    DatasetName: string
    IngestionJobId: string
    MaxResults: number
    NextToken: string
end

local record ListSensorStatisticsOutput
    SensorStatisticsSummaries: {SensorStatisticsSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutResourcePolicyInput
    ResourceArn: string
    ResourcePolicy: string
    PolicyRevisionId: string
    ClientToken: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    PolicyRevisionId: string
end

local record StartDataIngestionJobInput
    DatasetName: string
    IngestionInputConfiguration: IngestionInputConfiguration
    RoleArn: string
    ClientToken: string
end

local record StartDataIngestionJobOutput
    JobId: string
    Status: string
end

local record StartInferenceSchedulerInput
    InferenceSchedulerName: string
end

local record StartInferenceSchedulerOutput
    ModelArn: string
    ModelName: string
    InferenceSchedulerName: string
    InferenceSchedulerArn: string
    Status: string
end

local record StartRetrainingSchedulerInput
    ModelName: string
end

local record StartRetrainingSchedulerOutput
    ModelName: string
    ModelArn: string
    Status: string
end

local record StopInferenceSchedulerInput
    InferenceSchedulerName: string
end

local record StopInferenceSchedulerOutput
    ModelArn: string
    ModelName: string
    InferenceSchedulerName: string
    InferenceSchedulerArn: string
    Status: string
end

local record StopRetrainingSchedulerInput
    ModelName: string
end

local record StopRetrainingSchedulerOutput
    ModelName: string
    ModelArn: string
    Status: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateActiveModelVersionInput
    ModelName: string
    ModelVersion: number
end

local record UpdateActiveModelVersionOutput
    ModelName: string
    ModelArn: string
    CurrentActiveVersion: number
    PreviousActiveVersion: number
    CurrentActiveVersionArn: string
    PreviousActiveVersionArn: string
end

local record UpdateInferenceSchedulerInput
    InferenceSchedulerName: string
    DataDelayOffsetInMinutes: number
    DataUploadFrequency: string
    DataInputConfiguration: InferenceInputConfiguration
    DataOutputConfiguration: InferenceOutputConfiguration
    RoleArn: string
end

local record UpdateInferenceSchedulerOutput
end

local record UpdateLabelGroupInput
    LabelGroupName: string
    FaultCodes: {string}
end

local record UpdateLabelGroupOutput
end

local record UpdateModelInput
    ModelName: string
    LabelsInputConfiguration: LabelsInputConfiguration
    RoleArn: string
    ModelDiagnosticsOutputConfiguration: ModelDiagnosticsOutputConfiguration
end

local record UpdateModelOutput
end

local record UpdateRetrainingSchedulerInput
    ModelName: string
    RetrainingStartDate: number
    RetrainingFrequency: string
    LookbackWindow: string
    PromoteMode: string
end

local record UpdateRetrainingSchedulerOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type IngestionJobStatus = "IN_PROGRESS" | "SUCCESS" | "FAILED" | "IMPORT_IN_PROGRESS"

local type DatasetStatus = "CREATED" | "INGESTION_IN_PROGRESS" | "ACTIVE" | "IMPORT_IN_PROGRESS"

local type ModelVersionSourceType = "TRAINING" | "RETRAINING" | "IMPORT"

local type LatestInferenceResult = "ANOMALOUS" | "NORMAL"

local type InferenceDataImportStrategy = "NO_IMPORT" | "ADD_WHEN_EMPTY" | "OVERWRITE"

local type ModelQuality = "QUALITY_THRESHOLD_MET" | "CANNOT_DETERMINE_QUALITY" | "POOR_QUALITY_DETECTED"

local type ModelVersionStatus = "IN_PROGRESS" | "SUCCESS" | "FAILED" | "IMPORT_IN_PROGRESS" | "CANCELED"

local type DataUploadFrequency = "PT5M" | "PT10M" | "PT15M" | "PT30M" | "PT1H"

local type InferenceSchedulerStatus = "PENDING" | "RUNNING" | "STOPPING" | "STOPPED"

local type InferenceExecutionStatus = "IN_PROGRESS" | "SUCCESS" | "FAILED"

local type LabelRating = "ANOMALY" | "NO_ANOMALY" | "NEUTRAL"

local type AutoPromotionResult = "MODEL_PROMOTED" | "MODEL_NOT_PROMOTED" | "RETRAINING_INTERNAL_ERROR" | "RETRAINING_CUSTOMER_ERROR" | "RETRAINING_CANCELLED"

local type RetrainingSchedulerStatus = "PENDING" | "RUNNING" | "STOPPING" | "STOPPED"

local type ModelStatus = "IN_PROGRESS" | "SUCCESS" | "FAILED" | "IMPORT_IN_PROGRESS"

local type ModelPromoteMode = "MANAGED" | "MANUAL"

local record M
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateInferenceSchedulerInput: CreateInferenceSchedulerInput
    CreateInferenceSchedulerOutput: CreateInferenceSchedulerOutput
    CreateLabelInput: CreateLabelInput
    CreateLabelOutput: CreateLabelOutput
    CreateLabelGroupInput: CreateLabelGroupInput
    CreateLabelGroupOutput: CreateLabelGroupOutput
    CreateModelInput: CreateModelInput
    CreateModelOutput: CreateModelOutput
    CreateRetrainingSchedulerInput: CreateRetrainingSchedulerInput
    CreateRetrainingSchedulerOutput: CreateRetrainingSchedulerOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteInferenceSchedulerInput: DeleteInferenceSchedulerInput
    DeleteInferenceSchedulerOutput: DeleteInferenceSchedulerOutput
    DeleteLabelInput: DeleteLabelInput
    DeleteLabelOutput: DeleteLabelOutput
    DeleteLabelGroupInput: DeleteLabelGroupInput
    DeleteLabelGroupOutput: DeleteLabelGroupOutput
    DeleteModelInput: DeleteModelInput
    DeleteModelOutput: DeleteModelOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteRetrainingSchedulerInput: DeleteRetrainingSchedulerInput
    DeleteRetrainingSchedulerOutput: DeleteRetrainingSchedulerOutput
    DescribeDataIngestionJobInput: DescribeDataIngestionJobInput
    DescribeDataIngestionJobOutput: DescribeDataIngestionJobOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeInferenceSchedulerInput: DescribeInferenceSchedulerInput
    DescribeInferenceSchedulerOutput: DescribeInferenceSchedulerOutput
    DescribeLabelInput: DescribeLabelInput
    DescribeLabelOutput: DescribeLabelOutput
    DescribeLabelGroupInput: DescribeLabelGroupInput
    DescribeLabelGroupOutput: DescribeLabelGroupOutput
    DescribeModelInput: DescribeModelInput
    DescribeModelOutput: DescribeModelOutput
    DescribeModelVersionInput: DescribeModelVersionInput
    DescribeModelVersionOutput: DescribeModelVersionOutput
    DescribeResourcePolicyInput: DescribeResourcePolicyInput
    DescribeResourcePolicyOutput: DescribeResourcePolicyOutput
    DescribeRetrainingSchedulerInput: DescribeRetrainingSchedulerInput
    DescribeRetrainingSchedulerOutput: DescribeRetrainingSchedulerOutput
    ImportDatasetInput: ImportDatasetInput
    ImportDatasetOutput: ImportDatasetOutput
    ImportModelVersionInput: ImportModelVersionInput
    ImportModelVersionOutput: ImportModelVersionOutput
    ListDataIngestionJobsInput: ListDataIngestionJobsInput
    ListDataIngestionJobsOutput: ListDataIngestionJobsOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListInferenceEventsInput: ListInferenceEventsInput
    ListInferenceEventsOutput: ListInferenceEventsOutput
    ListInferenceExecutionsInput: ListInferenceExecutionsInput
    ListInferenceExecutionsOutput: ListInferenceExecutionsOutput
    ListInferenceSchedulersInput: ListInferenceSchedulersInput
    ListInferenceSchedulersOutput: ListInferenceSchedulersOutput
    ListLabelGroupsInput: ListLabelGroupsInput
    ListLabelGroupsOutput: ListLabelGroupsOutput
    ListLabelsInput: ListLabelsInput
    ListLabelsOutput: ListLabelsOutput
    ListModelsInput: ListModelsInput
    ListModelsOutput: ListModelsOutput
    ListModelVersionsInput: ListModelVersionsInput
    ListModelVersionsOutput: ListModelVersionsOutput
    ListRetrainingSchedulersInput: ListRetrainingSchedulersInput
    ListRetrainingSchedulersOutput: ListRetrainingSchedulersOutput
    ListSensorStatisticsInput: ListSensorStatisticsInput
    ListSensorStatisticsOutput: ListSensorStatisticsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    StartDataIngestionJobInput: StartDataIngestionJobInput
    StartDataIngestionJobOutput: StartDataIngestionJobOutput
    StartInferenceSchedulerInput: StartInferenceSchedulerInput
    StartInferenceSchedulerOutput: StartInferenceSchedulerOutput
    StartRetrainingSchedulerInput: StartRetrainingSchedulerInput
    StartRetrainingSchedulerOutput: StartRetrainingSchedulerOutput
    StopInferenceSchedulerInput: StopInferenceSchedulerInput
    StopInferenceSchedulerOutput: StopInferenceSchedulerOutput
    StopRetrainingSchedulerInput: StopRetrainingSchedulerInput
    StopRetrainingSchedulerOutput: StopRetrainingSchedulerOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateActiveModelVersionInput: UpdateActiveModelVersionInput
    UpdateActiveModelVersionOutput: UpdateActiveModelVersionOutput
    UpdateInferenceSchedulerInput: UpdateInferenceSchedulerInput
    UpdateInferenceSchedulerOutput: UpdateInferenceSchedulerOutput
    UpdateLabelGroupInput: UpdateLabelGroupInput
    UpdateLabelGroupOutput: UpdateLabelGroupOutput
    UpdateModelInput: UpdateModelInput
    UpdateModelOutput: UpdateModelOutput
    UpdateRetrainingSchedulerInput: UpdateRetrainingSchedulerInput
    UpdateRetrainingSchedulerOutput: UpdateRetrainingSchedulerOutput
end

return M
