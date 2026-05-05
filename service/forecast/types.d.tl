local record CreateAutoPredictorInput
    PredictorName: string
    ForecastHorizon: number
    ForecastTypes: {string}
    ForecastDimensions: {string}
    ForecastFrequency: string
    DataConfig: DataConfig
    EncryptionConfig: EncryptionConfig
    ReferencePredictorArn: string
    OptimizationMetric: string
    ExplainPredictor: boolean
    Tags: {Tag}
    MonitorConfig: MonitorConfig
    TimeAlignmentBoundary: TimeAlignmentBoundary
end

local record CreateAutoPredictorOutput
    PredictorArn: string
end

local record CreateDatasetInput
    DatasetName: string
    Domain: string
    DatasetType: string
    DataFrequency: string
    Schema: Schema
    EncryptionConfig: EncryptionConfig
    Tags: {Tag}
end

local record CreateDatasetOutput
    DatasetArn: string
end

local record CreateDatasetGroupInput
    DatasetGroupName: string
    Domain: string
    DatasetArns: {string}
    Tags: {Tag}
end

local record CreateDatasetGroupOutput
    DatasetGroupArn: string
end

local record CreateDatasetImportJobInput
    DatasetImportJobName: string
    DatasetArn: string
    DataSource: DataSource
    TimestampFormat: string
    TimeZone: string
    UseGeolocationForTimeZone: boolean
    GeolocationFormat: string
    Tags: {Tag}
    Format: string
    ImportMode: string
end

local record CreateDatasetImportJobOutput
    DatasetImportJobArn: string
end

local record CreateExplainabilityInput
    ExplainabilityName: string
    ResourceArn: string
    ExplainabilityConfig: ExplainabilityConfig
    DataSource: DataSource
    Schema: Schema
    EnableVisualization: boolean
    StartDateTime: string
    EndDateTime: string
    Tags: {Tag}
end

local record CreateExplainabilityOutput
    ExplainabilityArn: string
end

local record CreateExplainabilityExportInput
    ExplainabilityExportName: string
    ExplainabilityArn: string
    Destination: DataDestination
    Tags: {Tag}
    Format: string
end

local record CreateExplainabilityExportOutput
    ExplainabilityExportArn: string
end

local record CreateForecastInput
    ForecastName: string
    PredictorArn: string
    ForecastTypes: {string}
    Tags: {Tag}
    TimeSeriesSelector: TimeSeriesSelector
end

local record CreateForecastOutput
    ForecastArn: string
end

local record CreateForecastExportJobInput
    ForecastExportJobName: string
    ForecastArn: string
    Destination: DataDestination
    Tags: {Tag}
    Format: string
end

local record CreateForecastExportJobOutput
    ForecastExportJobArn: string
end

local record CreateMonitorInput
    MonitorName: string
    ResourceArn: string
    Tags: {Tag}
end

local record CreateMonitorOutput
    MonitorArn: string
end

local record CreatePredictorInput
    PredictorName: string
    AlgorithmArn: string
    ForecastHorizon: number
    ForecastTypes: {string}
    PerformAutoML: boolean
    AutoMLOverrideStrategy: string
    PerformHPO: boolean
    TrainingParameters: {string : string}
    EvaluationParameters: EvaluationParameters
    HPOConfig: HyperParameterTuningJobConfig
    InputDataConfig: InputDataConfig
    FeaturizationConfig: FeaturizationConfig
    EncryptionConfig: EncryptionConfig
    Tags: {Tag}
    OptimizationMetric: string
end

local record CreatePredictorOutput
    PredictorArn: string
end

local record CreatePredictorBacktestExportJobInput
    PredictorBacktestExportJobName: string
    PredictorArn: string
    Destination: DataDestination
    Tags: {Tag}
    Format: string
end

local record CreatePredictorBacktestExportJobOutput
    PredictorBacktestExportJobArn: string
end

local record CreateWhatIfAnalysisInput
    WhatIfAnalysisName: string
    ForecastArn: string
    TimeSeriesSelector: TimeSeriesSelector
    Tags: {Tag}
end

local record CreateWhatIfAnalysisOutput
    WhatIfAnalysisArn: string
end

local record CreateWhatIfForecastInput
    WhatIfForecastName: string
    WhatIfAnalysisArn: string
    TimeSeriesTransformations: {TimeSeriesTransformation}
    TimeSeriesReplacementsDataSource: TimeSeriesReplacementsDataSource
    Tags: {Tag}
end

local record CreateWhatIfForecastOutput
    WhatIfForecastArn: string
end

local record CreateWhatIfForecastExportInput
    WhatIfForecastExportName: string
    WhatIfForecastArns: {string}
    Destination: DataDestination
    Tags: {Tag}
    Format: string
end

local record CreateWhatIfForecastExportOutput
    WhatIfForecastExportArn: string
end

local record DeleteDatasetInput
    DatasetArn: string
end

local record DeleteDatasetOutput
end

local record DeleteDatasetGroupInput
    DatasetGroupArn: string
end

local record DeleteDatasetGroupOutput
end

local record DeleteDatasetImportJobInput
    DatasetImportJobArn: string
end

local record DeleteDatasetImportJobOutput
end

local record DeleteExplainabilityInput
    ExplainabilityArn: string
end

local record DeleteExplainabilityOutput
end

local record DeleteExplainabilityExportInput
    ExplainabilityExportArn: string
end

local record DeleteExplainabilityExportOutput
end

local record DeleteForecastInput
    ForecastArn: string
end

local record DeleteForecastOutput
end

local record DeleteForecastExportJobInput
    ForecastExportJobArn: string
end

local record DeleteForecastExportJobOutput
end

local record DeleteMonitorInput
    MonitorArn: string
end

local record DeleteMonitorOutput
end

local record DeletePredictorInput
    PredictorArn: string
end

local record DeletePredictorOutput
end

local record DeletePredictorBacktestExportJobInput
    PredictorBacktestExportJobArn: string
end

local record DeletePredictorBacktestExportJobOutput
end

local record DeleteResourceTreeInput
    ResourceArn: string
end

local record DeleteResourceTreeOutput
end

local record DeleteWhatIfAnalysisInput
    WhatIfAnalysisArn: string
end

local record DeleteWhatIfAnalysisOutput
end

local record DeleteWhatIfForecastInput
    WhatIfForecastArn: string
end

local record DeleteWhatIfForecastOutput
end

local record DeleteWhatIfForecastExportInput
    WhatIfForecastExportArn: string
end

local record DeleteWhatIfForecastExportOutput
end

local record DescribeAutoPredictorInput
    PredictorArn: string
end

local record DescribeAutoPredictorOutput
    PredictorArn: string
    PredictorName: string
    ForecastHorizon: number
    ForecastTypes: {string}
    ForecastFrequency: string
    ForecastDimensions: {string}
    DatasetImportJobArns: {string}
    DataConfig: DataConfig
    EncryptionConfig: EncryptionConfig
    ReferencePredictorSummary: ReferencePredictorSummary
    EstimatedTimeRemainingInMinutes: number
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    OptimizationMetric: string
    ExplainabilityInfo: ExplainabilityInfo
    MonitorInfo: MonitorInfo
    TimeAlignmentBoundary: TimeAlignmentBoundary
end

local record DescribeDatasetInput
    DatasetArn: string
end

local record DescribeDatasetOutput
    DatasetArn: string
    DatasetName: string
    Domain: string
    DatasetType: string
    DataFrequency: string
    Schema: Schema
    EncryptionConfig: EncryptionConfig
    Status: string
    CreationTime: number
    LastModificationTime: number
end

local record DescribeDatasetGroupInput
    DatasetGroupArn: string
end

local record DescribeDatasetGroupOutput
    DatasetGroupName: string
    DatasetGroupArn: string
    DatasetArns: {string}
    Domain: string
    Status: string
    CreationTime: number
    LastModificationTime: number
end

local record DescribeDatasetImportJobInput
    DatasetImportJobArn: string
end

local record DescribeDatasetImportJobOutput
    DatasetImportJobName: string
    DatasetImportJobArn: string
    DatasetArn: string
    TimestampFormat: string
    TimeZone: string
    UseGeolocationForTimeZone: boolean
    GeolocationFormat: string
    DataSource: DataSource
    EstimatedTimeRemainingInMinutes: number
    FieldStatistics: {string : Statistics}
    DataSize: number
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    Format: string
    ImportMode: string
end

local record DescribeExplainabilityInput
    ExplainabilityArn: string
end

local record DescribeExplainabilityOutput
    ExplainabilityArn: string
    ExplainabilityName: string
    ResourceArn: string
    ExplainabilityConfig: ExplainabilityConfig
    EnableVisualization: boolean
    DataSource: DataSource
    Schema: Schema
    StartDateTime: string
    EndDateTime: string
    EstimatedTimeRemainingInMinutes: number
    Message: string
    Status: string
    CreationTime: number
    LastModificationTime: number
end

local record DescribeExplainabilityExportInput
    ExplainabilityExportArn: string
end

local record DescribeExplainabilityExportOutput
    ExplainabilityExportArn: string
    ExplainabilityExportName: string
    ExplainabilityArn: string
    Destination: DataDestination
    Message: string
    Status: string
    CreationTime: number
    LastModificationTime: number
    Format: string
end

local record DescribeForecastInput
    ForecastArn: string
end

local record DescribeForecastOutput
    ForecastArn: string
    ForecastName: string
    ForecastTypes: {string}
    PredictorArn: string
    DatasetGroupArn: string
    EstimatedTimeRemainingInMinutes: number
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    TimeSeriesSelector: TimeSeriesSelector
end

local record DescribeForecastExportJobInput
    ForecastExportJobArn: string
end

local record DescribeForecastExportJobOutput
    ForecastExportJobArn: string
    ForecastExportJobName: string
    ForecastArn: string
    Destination: DataDestination
    Message: string
    Status: string
    CreationTime: number
    LastModificationTime: number
    Format: string
end

local record DescribeMonitorInput
    MonitorArn: string
end

local record DescribeMonitorOutput
    MonitorName: string
    MonitorArn: string
    ResourceArn: string
    Status: string
    LastEvaluationTime: number
    LastEvaluationState: string
    Baseline: Baseline
    Message: string
    CreationTime: number
    LastModificationTime: number
    EstimatedEvaluationTimeRemainingInMinutes: number
end

local record DescribePredictorInput
    PredictorArn: string
end

local record DescribePredictorOutput
    PredictorArn: string
    PredictorName: string
    AlgorithmArn: string
    AutoMLAlgorithmArns: {string}
    ForecastHorizon: number
    ForecastTypes: {string}
    PerformAutoML: boolean
    AutoMLOverrideStrategy: string
    PerformHPO: boolean
    TrainingParameters: {string : string}
    EvaluationParameters: EvaluationParameters
    HPOConfig: HyperParameterTuningJobConfig
    InputDataConfig: InputDataConfig
    FeaturizationConfig: FeaturizationConfig
    EncryptionConfig: EncryptionConfig
    PredictorExecutionDetails: PredictorExecutionDetails
    EstimatedTimeRemainingInMinutes: number
    IsAutoPredictor: boolean
    DatasetImportJobArns: {string}
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    OptimizationMetric: string
end

local record DescribePredictorBacktestExportJobInput
    PredictorBacktestExportJobArn: string
end

local record DescribePredictorBacktestExportJobOutput
    PredictorBacktestExportJobArn: string
    PredictorBacktestExportJobName: string
    PredictorArn: string
    Destination: DataDestination
    Message: string
    Status: string
    CreationTime: number
    LastModificationTime: number
    Format: string
end

local record DescribeWhatIfAnalysisInput
    WhatIfAnalysisArn: string
end

local record DescribeWhatIfAnalysisOutput
    WhatIfAnalysisName: string
    WhatIfAnalysisArn: string
    ForecastArn: string
    EstimatedTimeRemainingInMinutes: number
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    TimeSeriesSelector: TimeSeriesSelector
end

local record DescribeWhatIfForecastInput
    WhatIfForecastArn: string
end

local record DescribeWhatIfForecastOutput
    WhatIfForecastName: string
    WhatIfForecastArn: string
    WhatIfAnalysisArn: string
    EstimatedTimeRemainingInMinutes: number
    Status: string
    Message: string
    CreationTime: number
    LastModificationTime: number
    TimeSeriesTransformations: {TimeSeriesTransformation}
    TimeSeriesReplacementsDataSource: TimeSeriesReplacementsDataSource
    ForecastTypes: {string}
end

local record DescribeWhatIfForecastExportInput
    WhatIfForecastExportArn: string
end

local record DescribeWhatIfForecastExportOutput
    WhatIfForecastExportArn: string
    WhatIfForecastExportName: string
    WhatIfForecastArns: {string}
    Destination: DataDestination
    Message: string
    Status: string
    CreationTime: number
    EstimatedTimeRemainingInMinutes: number
    LastModificationTime: number
    Format: string
end

local record GetAccuracyMetricsInput
    PredictorArn: string
end

local record GetAccuracyMetricsOutput
    PredictorEvaluationResults: {EvaluationResult}
    IsAutoPredictor: boolean
    AutoMLOverrideStrategy: string
    OptimizationMetric: string
end

local record ListDatasetGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListDatasetGroupsOutput
    DatasetGroups: {DatasetGroupSummary}
    NextToken: string
end

local record ListDatasetImportJobsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListDatasetImportJobsOutput
    DatasetImportJobs: {DatasetImportJobSummary}
    NextToken: string
end

local record ListDatasetsInput
    NextToken: string
    MaxResults: number
end

local record ListDatasetsOutput
    Datasets: {DatasetSummary}
    NextToken: string
end

local record ListExplainabilitiesInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListExplainabilitiesOutput
    Explainabilities: {ExplainabilitySummary}
    NextToken: string
end

local record ListExplainabilityExportsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListExplainabilityExportsOutput
    ExplainabilityExports: {ExplainabilityExportSummary}
    NextToken: string
end

local record ListForecastExportJobsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListForecastExportJobsOutput
    ForecastExportJobs: {ForecastExportJobSummary}
    NextToken: string
end

local record ListForecastsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListForecastsOutput
    Forecasts: {ForecastSummary}
    NextToken: string
end

local record ListMonitorEvaluationsInput
    NextToken: string
    MaxResults: number
    MonitorArn: string
    Filters: {Filter}
end

local record ListMonitorEvaluationsOutput
    NextToken: string
    PredictorMonitorEvaluations: {PredictorMonitorEvaluation}
end

local record ListMonitorsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListMonitorsOutput
    Monitors: {MonitorSummary}
    NextToken: string
end

local record ListPredictorBacktestExportJobsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListPredictorBacktestExportJobsOutput
    PredictorBacktestExportJobs: {PredictorBacktestExportJobSummary}
    NextToken: string
end

local record ListPredictorsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListPredictorsOutput
    Predictors: {PredictorSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListWhatIfAnalysesInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListWhatIfAnalysesOutput
    WhatIfAnalyses: {WhatIfAnalysisSummary}
    NextToken: string
end

local record ListWhatIfForecastExportsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListWhatIfForecastExportsOutput
    WhatIfForecastExports: {WhatIfForecastExportSummary}
    NextToken: string
end

local record ListWhatIfForecastsInput
    NextToken: string
    MaxResults: number
    Filters: {Filter}
end

local record ListWhatIfForecastsOutput
    WhatIfForecasts: {WhatIfForecastSummary}
    NextToken: string
end

local record ResumeResourceInput
    ResourceArn: string
end

local record ResumeResourceOutput
end

local record StopResourceInput
    ResourceArn: string
end

local record StopResourceOutput
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

local record UpdateDatasetGroupInput
    DatasetGroupArn: string
    DatasetArns: {string}
end

local record UpdateDatasetGroupOutput
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local type ImportMode = "FULL" | "INCREMENTAL"

local type DatasetType = "TARGET_TIME_SERIES" | "RELATED_TIME_SERIES" | "ITEM_METADATA"

local type AutoMLOverrideStrategy = "LatencyOptimized" | "AccuracyOptimized"

local type Domain = "RETAIL" | "CUSTOM" | "INVENTORY_PLANNING" | "EC2_CAPACITY" | "WORK_FORCE" | "WEB_TRAFFIC" | "METRICS"

local type OptimizationMetric = "WAPE" | "RMSE" | "AverageWeightedQuantileLoss" | "MASE" | "MAPE"

local record M
    CreateAutoPredictorInput: CreateAutoPredictorInput
    CreateAutoPredictorOutput: CreateAutoPredictorOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateDatasetGroupInput: CreateDatasetGroupInput
    CreateDatasetGroupOutput: CreateDatasetGroupOutput
    CreateDatasetImportJobInput: CreateDatasetImportJobInput
    CreateDatasetImportJobOutput: CreateDatasetImportJobOutput
    CreateExplainabilityInput: CreateExplainabilityInput
    CreateExplainabilityOutput: CreateExplainabilityOutput
    CreateExplainabilityExportInput: CreateExplainabilityExportInput
    CreateExplainabilityExportOutput: CreateExplainabilityExportOutput
    CreateForecastInput: CreateForecastInput
    CreateForecastOutput: CreateForecastOutput
    CreateForecastExportJobInput: CreateForecastExportJobInput
    CreateForecastExportJobOutput: CreateForecastExportJobOutput
    CreateMonitorInput: CreateMonitorInput
    CreateMonitorOutput: CreateMonitorOutput
    CreatePredictorInput: CreatePredictorInput
    CreatePredictorOutput: CreatePredictorOutput
    CreatePredictorBacktestExportJobInput: CreatePredictorBacktestExportJobInput
    CreatePredictorBacktestExportJobOutput: CreatePredictorBacktestExportJobOutput
    CreateWhatIfAnalysisInput: CreateWhatIfAnalysisInput
    CreateWhatIfAnalysisOutput: CreateWhatIfAnalysisOutput
    CreateWhatIfForecastInput: CreateWhatIfForecastInput
    CreateWhatIfForecastOutput: CreateWhatIfForecastOutput
    CreateWhatIfForecastExportInput: CreateWhatIfForecastExportInput
    CreateWhatIfForecastExportOutput: CreateWhatIfForecastExportOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteDatasetGroupInput: DeleteDatasetGroupInput
    DeleteDatasetGroupOutput: DeleteDatasetGroupOutput
    DeleteDatasetImportJobInput: DeleteDatasetImportJobInput
    DeleteDatasetImportJobOutput: DeleteDatasetImportJobOutput
    DeleteExplainabilityInput: DeleteExplainabilityInput
    DeleteExplainabilityOutput: DeleteExplainabilityOutput
    DeleteExplainabilityExportInput: DeleteExplainabilityExportInput
    DeleteExplainabilityExportOutput: DeleteExplainabilityExportOutput
    DeleteForecastInput: DeleteForecastInput
    DeleteForecastOutput: DeleteForecastOutput
    DeleteForecastExportJobInput: DeleteForecastExportJobInput
    DeleteForecastExportJobOutput: DeleteForecastExportJobOutput
    DeleteMonitorInput: DeleteMonitorInput
    DeleteMonitorOutput: DeleteMonitorOutput
    DeletePredictorInput: DeletePredictorInput
    DeletePredictorOutput: DeletePredictorOutput
    DeletePredictorBacktestExportJobInput: DeletePredictorBacktestExportJobInput
    DeletePredictorBacktestExportJobOutput: DeletePredictorBacktestExportJobOutput
    DeleteResourceTreeInput: DeleteResourceTreeInput
    DeleteResourceTreeOutput: DeleteResourceTreeOutput
    DeleteWhatIfAnalysisInput: DeleteWhatIfAnalysisInput
    DeleteWhatIfAnalysisOutput: DeleteWhatIfAnalysisOutput
    DeleteWhatIfForecastInput: DeleteWhatIfForecastInput
    DeleteWhatIfForecastOutput: DeleteWhatIfForecastOutput
    DeleteWhatIfForecastExportInput: DeleteWhatIfForecastExportInput
    DeleteWhatIfForecastExportOutput: DeleteWhatIfForecastExportOutput
    DescribeAutoPredictorInput: DescribeAutoPredictorInput
    DescribeAutoPredictorOutput: DescribeAutoPredictorOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeDatasetGroupInput: DescribeDatasetGroupInput
    DescribeDatasetGroupOutput: DescribeDatasetGroupOutput
    DescribeDatasetImportJobInput: DescribeDatasetImportJobInput
    DescribeDatasetImportJobOutput: DescribeDatasetImportJobOutput
    DescribeExplainabilityInput: DescribeExplainabilityInput
    DescribeExplainabilityOutput: DescribeExplainabilityOutput
    DescribeExplainabilityExportInput: DescribeExplainabilityExportInput
    DescribeExplainabilityExportOutput: DescribeExplainabilityExportOutput
    DescribeForecastInput: DescribeForecastInput
    DescribeForecastOutput: DescribeForecastOutput
    DescribeForecastExportJobInput: DescribeForecastExportJobInput
    DescribeForecastExportJobOutput: DescribeForecastExportJobOutput
    DescribeMonitorInput: DescribeMonitorInput
    DescribeMonitorOutput: DescribeMonitorOutput
    DescribePredictorInput: DescribePredictorInput
    DescribePredictorOutput: DescribePredictorOutput
    DescribePredictorBacktestExportJobInput: DescribePredictorBacktestExportJobInput
    DescribePredictorBacktestExportJobOutput: DescribePredictorBacktestExportJobOutput
    DescribeWhatIfAnalysisInput: DescribeWhatIfAnalysisInput
    DescribeWhatIfAnalysisOutput: DescribeWhatIfAnalysisOutput
    DescribeWhatIfForecastInput: DescribeWhatIfForecastInput
    DescribeWhatIfForecastOutput: DescribeWhatIfForecastOutput
    DescribeWhatIfForecastExportInput: DescribeWhatIfForecastExportInput
    DescribeWhatIfForecastExportOutput: DescribeWhatIfForecastExportOutput
    GetAccuracyMetricsInput: GetAccuracyMetricsInput
    GetAccuracyMetricsOutput: GetAccuracyMetricsOutput
    ListDatasetGroupsInput: ListDatasetGroupsInput
    ListDatasetGroupsOutput: ListDatasetGroupsOutput
    ListDatasetImportJobsInput: ListDatasetImportJobsInput
    ListDatasetImportJobsOutput: ListDatasetImportJobsOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListExplainabilitiesInput: ListExplainabilitiesInput
    ListExplainabilitiesOutput: ListExplainabilitiesOutput
    ListExplainabilityExportsInput: ListExplainabilityExportsInput
    ListExplainabilityExportsOutput: ListExplainabilityExportsOutput
    ListForecastExportJobsInput: ListForecastExportJobsInput
    ListForecastExportJobsOutput: ListForecastExportJobsOutput
    ListForecastsInput: ListForecastsInput
    ListForecastsOutput: ListForecastsOutput
    ListMonitorEvaluationsInput: ListMonitorEvaluationsInput
    ListMonitorEvaluationsOutput: ListMonitorEvaluationsOutput
    ListMonitorsInput: ListMonitorsInput
    ListMonitorsOutput: ListMonitorsOutput
    ListPredictorBacktestExportJobsInput: ListPredictorBacktestExportJobsInput
    ListPredictorBacktestExportJobsOutput: ListPredictorBacktestExportJobsOutput
    ListPredictorsInput: ListPredictorsInput
    ListPredictorsOutput: ListPredictorsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWhatIfAnalysesInput: ListWhatIfAnalysesInput
    ListWhatIfAnalysesOutput: ListWhatIfAnalysesOutput
    ListWhatIfForecastExportsInput: ListWhatIfForecastExportsInput
    ListWhatIfForecastExportsOutput: ListWhatIfForecastExportsOutput
    ListWhatIfForecastsInput: ListWhatIfForecastsInput
    ListWhatIfForecastsOutput: ListWhatIfForecastsOutput
    ResumeResourceInput: ResumeResourceInput
    ResumeResourceOutput: ResumeResourceOutput
    StopResourceInput: StopResourceInput
    StopResourceOutput: StopResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDatasetGroupInput: UpdateDatasetGroupInput
    UpdateDatasetGroupOutput: UpdateDatasetGroupOutput
end

return M
