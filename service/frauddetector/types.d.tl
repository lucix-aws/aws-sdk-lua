local record BatchCreateVariableInput
    variableEntries: {VariableEntry}
    tags: {Tag}
end

local record BatchCreateVariableOutput
    errors: {BatchCreateVariableError}
end

local record BatchGetVariableInput
    names: {string}
end

local record BatchGetVariableOutput
    variables: {Variable}
    errors: {BatchGetVariableError}
end

local record CancelBatchImportJobInput
    jobId: string
end

local record CancelBatchImportJobOutput
end

local record CancelBatchPredictionJobInput
    jobId: string
end

local record CancelBatchPredictionJobOutput
end

local record CreateBatchImportJobInput
    jobId: string
    inputPath: string
    outputPath: string
    eventTypeName: string
    iamRoleArn: string
    tags: {Tag}
end

local record CreateBatchImportJobOutput
end

local record CreateBatchPredictionJobInput
    jobId: string
    inputPath: string
    outputPath: string
    eventTypeName: string
    detectorName: string
    detectorVersion: string
    iamRoleArn: string
    tags: {Tag}
end

local record CreateBatchPredictionJobOutput
end

local record CreateDetectorVersionInput
    detectorId: string
    description: string
    externalModelEndpoints: {string}
    rules: {Rule}
    modelVersions: {ModelVersion}
    ruleExecutionMode: string
    tags: {Tag}
end

local record CreateDetectorVersionOutput
    detectorId: string
    detectorVersionId: string
    status: string
end

local record CreateListInput
    name: string
    elements: {string}
    variableType: string
    description: string
    tags: {Tag}
end

local record CreateListOutput
end

local record CreateModelInput
    modelId: string
    modelType: string
    description: string
    eventTypeName: string
    tags: {Tag}
end

local record CreateModelOutput
end

local record CreateModelVersionInput
    modelId: string
    modelType: string
    trainingDataSource: string
    trainingDataSchema: TrainingDataSchema
    externalEventsDetail: ExternalEventsDetail
    ingestedEventsDetail: IngestedEventsDetail
    tags: {Tag}
end

local record CreateModelVersionOutput
    modelId: string
    modelType: string
    modelVersionNumber: string
    status: string
end

local record CreateRuleInput
    ruleId: string
    detectorId: string
    description: string
    expression: string
    language: string
    outcomes: {string}
    tags: {Tag}
end

local record CreateRuleOutput
    rule: Rule
end

local record CreateVariableInput
    name: string
    dataType: string
    dataSource: string
    defaultValue: string
    description: string
    variableType: string
    tags: {Tag}
end

local record CreateVariableOutput
end

local record DeleteBatchImportJobInput
    jobId: string
end

local record DeleteBatchImportJobOutput
end

local record DeleteBatchPredictionJobInput
    jobId: string
end

local record DeleteBatchPredictionJobOutput
end

local record DeleteDetectorInput
    detectorId: string
end

local record DeleteDetectorOutput
end

local record DeleteDetectorVersionInput
    detectorId: string
    detectorVersionId: string
end

local record DeleteDetectorVersionOutput
end

local record DeleteEntityTypeInput
    name: string
end

local record DeleteEntityTypeOutput
end

local record DeleteEventInput
    eventId: string
    eventTypeName: string
    deleteAuditHistory: boolean
end

local record DeleteEventOutput
end

local record DeleteEventsByEventTypeInput
    eventTypeName: string
end

local record DeleteEventsByEventTypeOutput
    eventTypeName: string
    eventsDeletionStatus: string
end

local record DeleteEventTypeInput
    name: string
end

local record DeleteEventTypeOutput
end

local record DeleteExternalModelInput
    modelEndpoint: string
end

local record DeleteExternalModelOutput
end

local record DeleteLabelInput
    name: string
end

local record DeleteLabelOutput
end

local record DeleteListInput
    name: string
end

local record DeleteListOutput
end

local record DeleteModelInput
    modelId: string
    modelType: string
end

local record DeleteModelOutput
end

local record DeleteModelVersionInput
    modelId: string
    modelType: string
    modelVersionNumber: string
end

local record DeleteModelVersionOutput
end

local record DeleteOutcomeInput
    name: string
end

local record DeleteOutcomeOutput
end

local record DeleteRuleInput
    rule: Rule
end

local record DeleteRuleOutput
end

local record DeleteVariableInput
    name: string
end

local record DeleteVariableOutput
end

local record DescribeDetectorInput
    detectorId: string
    nextToken: string
    maxResults: number
end

local record DescribeDetectorOutput
    detectorId: string
    detectorVersionSummaries: {DetectorVersionSummary}
    nextToken: string
    arn: string
end

local record DescribeModelVersionsInput
    modelId: string
    modelVersionNumber: string
    modelType: string
    nextToken: string
    maxResults: number
end

local record DescribeModelVersionsOutput
    modelVersionDetails: {ModelVersionDetail}
    nextToken: string
end

local record GetBatchImportJobsInput
    jobId: string
    maxResults: number
    nextToken: string
end

local record GetBatchImportJobsOutput
    batchImports: {BatchImport}
    nextToken: string
end

local record GetBatchPredictionJobsInput
    jobId: string
    maxResults: number
    nextToken: string
end

local record GetBatchPredictionJobsOutput
    batchPredictions: {BatchPrediction}
    nextToken: string
end

local record GetDeleteEventsByEventTypeStatusInput
    eventTypeName: string
end

local record GetDeleteEventsByEventTypeStatusOutput
    eventTypeName: string
    eventsDeletionStatus: string
end

local record GetDetectorsInput
    detectorId: string
    nextToken: string
    maxResults: number
end

local record GetDetectorsOutput
    detectors: {Detector}
    nextToken: string
end

local record GetDetectorVersionInput
    detectorId: string
    detectorVersionId: string
end

local record GetDetectorVersionOutput
    detectorId: string
    detectorVersionId: string
    description: string
    externalModelEndpoints: {string}
    modelVersions: {ModelVersion}
    rules: {Rule}
    status: string
    lastUpdatedTime: string
    createdTime: string
    ruleExecutionMode: string
    arn: string
end

local record GetEntityTypesInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetEntityTypesOutput
    entityTypes: {EntityType}
    nextToken: string
end

local record GetEventInput
    eventId: string
    eventTypeName: string
end

local record GetEventOutput
    event: Event
end

local record GetEventPredictionInput
    detectorId: string
    detectorVersionId: string
    eventId: string
    eventTypeName: string
    entities: {Entity}
    eventTimestamp: string
    eventVariables: {string : string}
    externalModelEndpointDataBlobs: {string : ModelEndpointDataBlob}
end

local record GetEventPredictionOutput
    modelScores: {ModelScores}
    ruleResults: {RuleResult}
    externalModelOutputs: {ExternalModelOutputs}
end

local record GetEventPredictionMetadataInput
    eventId: string
    eventTypeName: string
    detectorId: string
    detectorVersionId: string
    predictionTimestamp: string
end

local record GetEventPredictionMetadataOutput
    eventId: string
    eventTypeName: string
    entityId: string
    entityType: string
    eventTimestamp: string
    detectorId: string
    detectorVersionId: string
    detectorVersionStatus: string
    eventVariables: {EventVariableSummary}
    rules: {EvaluatedRule}
    ruleExecutionMode: string
    outcomes: {string}
    evaluatedModelVersions: {EvaluatedModelVersion}
    evaluatedExternalModels: {EvaluatedExternalModel}
    predictionTimestamp: string
end

local record GetEventTypesInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetEventTypesOutput
    eventTypes: {EventType}
    nextToken: string
end

local record GetExternalModelsInput
    modelEndpoint: string
    nextToken: string
    maxResults: number
end

local record GetExternalModelsOutput
    externalModels: {ExternalModel}
    nextToken: string
end

local record GetKMSEncryptionKeyInput
end

local record GetKMSEncryptionKeyOutput
    kmsKey: KMSKey
end

local record GetLabelsInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetLabelsOutput
    labels: {Label}
    nextToken: string
end

local record GetListElementsInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetListElementsOutput
    elements: {string}
    nextToken: string
end

local record GetListsMetadataInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetListsMetadataOutput
    lists: {AllowDenyList}
    nextToken: string
end

local record GetModelsInput
    modelId: string
    modelType: string
    nextToken: string
    maxResults: number
end

local record GetModelsOutput
    nextToken: string
    models: {Model}
end

local record GetModelVersionInput
    modelId: string
    modelType: string
    modelVersionNumber: string
end

local record GetModelVersionOutput
    modelId: string
    modelType: string
    modelVersionNumber: string
    trainingDataSource: string
    trainingDataSchema: TrainingDataSchema
    externalEventsDetail: ExternalEventsDetail
    ingestedEventsDetail: IngestedEventsDetail
    status: string
    arn: string
end

local record GetOutcomesInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetOutcomesOutput
    outcomes: {Outcome}
    nextToken: string
end

local record GetRulesInput
    ruleId: string
    detectorId: string
    ruleVersion: string
    nextToken: string
    maxResults: number
end

local record GetRulesOutput
    ruleDetails: {RuleDetail}
    nextToken: string
end

local record GetVariablesInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetVariablesOutput
    variables: {Variable}
    nextToken: string
end

local record ListEventPredictionsInput
    eventId: FilterCondition
    eventType: FilterCondition
    detectorId: FilterCondition
    detectorVersionId: FilterCondition
    predictionTimeRange: PredictionTimeRange
    nextToken: string
    maxResults: number
end

local record ListEventPredictionsOutput
    eventPredictionSummaries: {EventPredictionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceARN: string
    nextToken: string
    maxResults: number
end

local record ListTagsForResourceOutput
    tags: {Tag}
    nextToken: string
end

local record PutDetectorInput
    detectorId: string
    description: string
    eventTypeName: string
    tags: {Tag}
end

local record PutDetectorOutput
end

local record PutEntityTypeInput
    name: string
    description: string
    tags: {Tag}
end

local record PutEntityTypeOutput
end

local record PutEventTypeInput
    name: string
    description: string
    eventVariables: {string}
    labels: {string}
    entityTypes: {string}
    eventIngestion: string
    tags: {Tag}
    eventOrchestration: EventOrchestration
end

local record PutEventTypeOutput
end

local record PutExternalModelInput
    modelEndpoint: string
    modelSource: string
    invokeModelEndpointRoleArn: string
    inputConfiguration: ModelInputConfiguration
    outputConfiguration: ModelOutputConfiguration
    modelEndpointStatus: string
    tags: {Tag}
end

local record PutExternalModelOutput
end

local record PutKMSEncryptionKeyInput
    kmsEncryptionKeyArn: string
end

local record PutKMSEncryptionKeyOutput
end

local record PutLabelInput
    name: string
    description: string
    tags: {Tag}
end

local record PutLabelOutput
end

local record PutOutcomeInput
    name: string
    description: string
    tags: {Tag}
end

local record PutOutcomeOutput
end

local record SendEventInput
    eventId: string
    eventTypeName: string
    eventTimestamp: string
    eventVariables: {string : string}
    assignedLabel: string
    labelTimestamp: string
    entities: {Entity}
end

local record SendEventOutput
end

local record TagResourceInput
    resourceARN: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDetectorVersionInput
    detectorId: string
    detectorVersionId: string
    externalModelEndpoints: {string}
    rules: {Rule}
    description: string
    modelVersions: {ModelVersion}
    ruleExecutionMode: string
end

local record UpdateDetectorVersionOutput
end

local record UpdateDetectorVersionMetadataInput
    detectorId: string
    detectorVersionId: string
    description: string
end

local record UpdateDetectorVersionMetadataOutput
end

local record UpdateDetectorVersionStatusInput
    detectorId: string
    detectorVersionId: string
    status: string
end

local record UpdateDetectorVersionStatusOutput
end

local record UpdateEventLabelInput
    eventId: string
    eventTypeName: string
    assignedLabel: string
    labelTimestamp: string
end

local record UpdateEventLabelOutput
end

local record UpdateListInput
    name: string
    elements: {string}
    description: string
    updateMode: string
    variableType: string
end

local record UpdateListOutput
end

local record UpdateModelInput
    modelId: string
    modelType: string
    description: string
end

local record UpdateModelOutput
end

local record UpdateModelVersionInput
    modelId: string
    modelType: string
    majorVersionNumber: string
    externalEventsDetail: ExternalEventsDetail
    ingestedEventsDetail: IngestedEventsDetail
    tags: {Tag}
end

local record UpdateModelVersionOutput
    modelId: string
    modelType: string
    modelVersionNumber: string
    status: string
end

local record UpdateModelVersionStatusInput
    modelId: string
    modelType: string
    modelVersionNumber: string
    status: string
end

local record UpdateModelVersionStatusOutput
end

local record UpdateRuleMetadataInput
    rule: Rule
    description: string
end

local record UpdateRuleMetadataOutput
end

local record UpdateRuleVersionInput
    rule: Rule
    description: string
    expression: string
    language: string
    outcomes: {string}
    tags: {Tag}
end

local record UpdateRuleVersionOutput
    rule: Rule
end

local record UpdateVariableInput
    name: string
    defaultValue: string
    description: string
    variableType: string
end

local record UpdateVariableOutput
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type DetectorVersionStatus = "DRAFT" | "ACTIVE" | "INACTIVE"

local type ModelEndpointStatus = "ASSOCIATED" | "DISSOCIATED"

local type ModelSource = "SAGEMAKER"

local type DataType = "STRING" | "INTEGER" | "FLOAT" | "BOOLEAN" | "DATETIME"

local type AsyncJobStatus = "IN_PROGRESS_INITIALIZING" | "IN_PROGRESS" | "CANCEL_IN_PROGRESS" | "CANCELED" | "COMPLETE" | "FAILED"

local type ModelTypeEnum = "ONLINE_FRAUD_INSIGHTS" | "TRANSACTION_FRAUD_INSIGHTS" | "ACCOUNT_TAKEOVER_INSIGHTS"

local type Language = "DETECTORPL"

local type EventIngestion = "ENABLED" | "DISABLED"

local type RuleExecutionMode = "ALL_MATCHED" | "FIRST_MATCHED"

local type DataSource = "EVENT" | "MODEL_SCORE" | "EXTERNAL_MODEL_SCORE"

local type TrainingDataSourceEnum = "EXTERNAL_EVENTS" | "INGESTED_EVENTS"

local type ListUpdateMode = "REPLACE" | "APPEND" | "REMOVE"

local type ModelVersionStatus = "ACTIVE" | "INACTIVE" | "TRAINING_CANCELLED"

local record M
    BatchCreateVariableInput: BatchCreateVariableInput
    BatchCreateVariableOutput: BatchCreateVariableOutput
    BatchGetVariableInput: BatchGetVariableInput
    BatchGetVariableOutput: BatchGetVariableOutput
    CancelBatchImportJobInput: CancelBatchImportJobInput
    CancelBatchImportJobOutput: CancelBatchImportJobOutput
    CancelBatchPredictionJobInput: CancelBatchPredictionJobInput
    CancelBatchPredictionJobOutput: CancelBatchPredictionJobOutput
    CreateBatchImportJobInput: CreateBatchImportJobInput
    CreateBatchImportJobOutput: CreateBatchImportJobOutput
    CreateBatchPredictionJobInput: CreateBatchPredictionJobInput
    CreateBatchPredictionJobOutput: CreateBatchPredictionJobOutput
    CreateDetectorVersionInput: CreateDetectorVersionInput
    CreateDetectorVersionOutput: CreateDetectorVersionOutput
    CreateListInput: CreateListInput
    CreateListOutput: CreateListOutput
    CreateModelInput: CreateModelInput
    CreateModelOutput: CreateModelOutput
    CreateModelVersionInput: CreateModelVersionInput
    CreateModelVersionOutput: CreateModelVersionOutput
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    CreateVariableInput: CreateVariableInput
    CreateVariableOutput: CreateVariableOutput
    DeleteBatchImportJobInput: DeleteBatchImportJobInput
    DeleteBatchImportJobOutput: DeleteBatchImportJobOutput
    DeleteBatchPredictionJobInput: DeleteBatchPredictionJobInput
    DeleteBatchPredictionJobOutput: DeleteBatchPredictionJobOutput
    DeleteDetectorInput: DeleteDetectorInput
    DeleteDetectorOutput: DeleteDetectorOutput
    DeleteDetectorVersionInput: DeleteDetectorVersionInput
    DeleteDetectorVersionOutput: DeleteDetectorVersionOutput
    DeleteEntityTypeInput: DeleteEntityTypeInput
    DeleteEntityTypeOutput: DeleteEntityTypeOutput
    DeleteEventInput: DeleteEventInput
    DeleteEventOutput: DeleteEventOutput
    DeleteEventsByEventTypeInput: DeleteEventsByEventTypeInput
    DeleteEventsByEventTypeOutput: DeleteEventsByEventTypeOutput
    DeleteEventTypeInput: DeleteEventTypeInput
    DeleteEventTypeOutput: DeleteEventTypeOutput
    DeleteExternalModelInput: DeleteExternalModelInput
    DeleteExternalModelOutput: DeleteExternalModelOutput
    DeleteLabelInput: DeleteLabelInput
    DeleteLabelOutput: DeleteLabelOutput
    DeleteListInput: DeleteListInput
    DeleteListOutput: DeleteListOutput
    DeleteModelInput: DeleteModelInput
    DeleteModelOutput: DeleteModelOutput
    DeleteModelVersionInput: DeleteModelVersionInput
    DeleteModelVersionOutput: DeleteModelVersionOutput
    DeleteOutcomeInput: DeleteOutcomeInput
    DeleteOutcomeOutput: DeleteOutcomeOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DeleteVariableInput: DeleteVariableInput
    DeleteVariableOutput: DeleteVariableOutput
    DescribeDetectorInput: DescribeDetectorInput
    DescribeDetectorOutput: DescribeDetectorOutput
    DescribeModelVersionsInput: DescribeModelVersionsInput
    DescribeModelVersionsOutput: DescribeModelVersionsOutput
    GetBatchImportJobsInput: GetBatchImportJobsInput
    GetBatchImportJobsOutput: GetBatchImportJobsOutput
    GetBatchPredictionJobsInput: GetBatchPredictionJobsInput
    GetBatchPredictionJobsOutput: GetBatchPredictionJobsOutput
    GetDeleteEventsByEventTypeStatusInput: GetDeleteEventsByEventTypeStatusInput
    GetDeleteEventsByEventTypeStatusOutput: GetDeleteEventsByEventTypeStatusOutput
    GetDetectorsInput: GetDetectorsInput
    GetDetectorsOutput: GetDetectorsOutput
    GetDetectorVersionInput: GetDetectorVersionInput
    GetDetectorVersionOutput: GetDetectorVersionOutput
    GetEntityTypesInput: GetEntityTypesInput
    GetEntityTypesOutput: GetEntityTypesOutput
    GetEventInput: GetEventInput
    GetEventOutput: GetEventOutput
    GetEventPredictionInput: GetEventPredictionInput
    GetEventPredictionOutput: GetEventPredictionOutput
    GetEventPredictionMetadataInput: GetEventPredictionMetadataInput
    GetEventPredictionMetadataOutput: GetEventPredictionMetadataOutput
    GetEventTypesInput: GetEventTypesInput
    GetEventTypesOutput: GetEventTypesOutput
    GetExternalModelsInput: GetExternalModelsInput
    GetExternalModelsOutput: GetExternalModelsOutput
    GetKMSEncryptionKeyInput: GetKMSEncryptionKeyInput
    GetKMSEncryptionKeyOutput: GetKMSEncryptionKeyOutput
    GetLabelsInput: GetLabelsInput
    GetLabelsOutput: GetLabelsOutput
    GetListElementsInput: GetListElementsInput
    GetListElementsOutput: GetListElementsOutput
    GetListsMetadataInput: GetListsMetadataInput
    GetListsMetadataOutput: GetListsMetadataOutput
    GetModelsInput: GetModelsInput
    GetModelsOutput: GetModelsOutput
    GetModelVersionInput: GetModelVersionInput
    GetModelVersionOutput: GetModelVersionOutput
    GetOutcomesInput: GetOutcomesInput
    GetOutcomesOutput: GetOutcomesOutput
    GetRulesInput: GetRulesInput
    GetRulesOutput: GetRulesOutput
    GetVariablesInput: GetVariablesInput
    GetVariablesOutput: GetVariablesOutput
    ListEventPredictionsInput: ListEventPredictionsInput
    ListEventPredictionsOutput: ListEventPredictionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutDetectorInput: PutDetectorInput
    PutDetectorOutput: PutDetectorOutput
    PutEntityTypeInput: PutEntityTypeInput
    PutEntityTypeOutput: PutEntityTypeOutput
    PutEventTypeInput: PutEventTypeInput
    PutEventTypeOutput: PutEventTypeOutput
    PutExternalModelInput: PutExternalModelInput
    PutExternalModelOutput: PutExternalModelOutput
    PutKMSEncryptionKeyInput: PutKMSEncryptionKeyInput
    PutKMSEncryptionKeyOutput: PutKMSEncryptionKeyOutput
    PutLabelInput: PutLabelInput
    PutLabelOutput: PutLabelOutput
    PutOutcomeInput: PutOutcomeInput
    PutOutcomeOutput: PutOutcomeOutput
    SendEventInput: SendEventInput
    SendEventOutput: SendEventOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDetectorVersionInput: UpdateDetectorVersionInput
    UpdateDetectorVersionOutput: UpdateDetectorVersionOutput
    UpdateDetectorVersionMetadataInput: UpdateDetectorVersionMetadataInput
    UpdateDetectorVersionMetadataOutput: UpdateDetectorVersionMetadataOutput
    UpdateDetectorVersionStatusInput: UpdateDetectorVersionStatusInput
    UpdateDetectorVersionStatusOutput: UpdateDetectorVersionStatusOutput
    UpdateEventLabelInput: UpdateEventLabelInput
    UpdateEventLabelOutput: UpdateEventLabelOutput
    UpdateListInput: UpdateListInput
    UpdateListOutput: UpdateListOutput
    UpdateModelInput: UpdateModelInput
    UpdateModelOutput: UpdateModelOutput
    UpdateModelVersionInput: UpdateModelVersionInput
    UpdateModelVersionOutput: UpdateModelVersionOutput
    UpdateModelVersionStatusInput: UpdateModelVersionStatusInput
    UpdateModelVersionStatusOutput: UpdateModelVersionStatusOutput
    UpdateRuleMetadataInput: UpdateRuleMetadataInput
    UpdateRuleMetadataOutput: UpdateRuleMetadataOutput
    UpdateRuleVersionInput: UpdateRuleVersionInput
    UpdateRuleVersionOutput: UpdateRuleVersionOutput
    UpdateVariableInput: UpdateVariableInput
    UpdateVariableOutput: UpdateVariableOutput
end

return M
