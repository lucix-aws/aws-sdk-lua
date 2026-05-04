local M = {}

M.Operation = {
    ADD = "ADD",
    SUBTRACT = "SUBTRACT",
    MULTIPLY = "MULTIPLY",
    DIVIDE = "DIVIDE",
}

M.Action = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.AdditionalDataset = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.AttributeConfig = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Transformations = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DataConfig = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeConfigs = {
            type = "list",
            member = M.AttributeConfig,
        },
        AdditionalDatasets = {
            type = "list",
            member = M.AdditionalDataset,
        },
    },
}

M.EncryptionConfig = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitorConfig = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OptimizationMetric = {
    WAPE = "WAPE",
    RMSE = "RMSE",
    AverageWeightedQuantileLoss = "AverageWeightedQuantileLoss",
    MASE = "MASE",
    MAPE = "MAPE",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.Month = {
    JANUARY = "JANUARY",
    FEBRUARY = "FEBRUARY",
    MARCH = "MARCH",
    APRIL = "APRIL",
    MAY = "MAY",
    JUNE = "JUNE",
    JULY = "JULY",
    AUGUST = "AUGUST",
    SEPTEMBER = "SEPTEMBER",
    OCTOBER = "OCTOBER",
    NOVEMBER = "NOVEMBER",
    DECEMBER = "DECEMBER",
}

M.TimeAlignmentBoundary = {
    type = "structure",
    members = {
        Month = {
            type = "string",
        },
        DayOfMonth = {
            type = "integer",
        },
        DayOfWeek = {
            type = "string",
        },
        Hour = {
            type = "integer",
        },
    },
}

M.CreateAutoPredictorInput = {
    type = "structure",
    members = {
        PredictorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastHorizon = {
            type = "integer",
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        ForecastDimensions = {
            type = "list",
            member = { type = "string" },
        },
        ForecastFrequency = {
            type = "string",
        },
        DataConfig = M.DataConfig,
        EncryptionConfig = M.EncryptionConfig,
        ReferencePredictorArn = {
            type = "string",
        },
        OptimizationMetric = {
            type = "string",
        },
        ExplainPredictor = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MonitorConfig = M.MonitorConfig,
        TimeAlignmentBoundary = M.TimeAlignmentBoundary,
    },
}

M.CreateAutoPredictorOutput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DatasetType = {
    TARGET_TIME_SERIES = "TARGET_TIME_SERIES",
    RELATED_TIME_SERIES = "RELATED_TIME_SERIES",
    ITEM_METADATA = "ITEM_METADATA",
}

M.Domain = {
    RETAIL = "RETAIL",
    CUSTOM = "CUSTOM",
    INVENTORY_PLANNING = "INVENTORY_PLANNING",
    EC2_CAPACITY = "EC2_CAPACITY",
    WORK_FORCE = "WORK_FORCE",
    WEB_TRAFFIC = "WEB_TRAFFIC",
    METRICS = "METRICS",
}

M.AttributeType = {
    STRING = "string",
    INTEGER = "integer",
    FLOAT = "float",
    TIMESTAMP = "timestamp",
    GEOLOCATION = "geolocation",
}

M.SchemaAttribute = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeType = {
            type = "string",
        },
    },
}

M.Schema = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.SchemaAttribute,
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataFrequency = {
            type = "string",
        },
        Schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schema }),
        EncryptionConfig = M.EncryptionConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
    },
}

M.CreateDatasetGroupInput = {
    type = "structure",
    members = {
        DatasetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetArns = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetGroupOutput = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
        },
    },
}

M.S3Config = {
    type = "structure",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSKeyArn = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        S3Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Config }),
    },
}

M.ImportMode = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.CreateDatasetImportJobInput = {
    type = "structure",
    members = {
        DatasetImportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        TimestampFormat = {
            type = "string",
        },
        TimeZone = {
            type = "string",
        },
        UseGeolocationForTimeZone = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        GeolocationFormat = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Format = {
            type = "string",
        },
        ImportMode = {
            type = "string",
        },
    },
}

M.CreateDatasetImportJobOutput = {
    type = "structure",
    members = {
        DatasetImportJobArn = {
            type = "string",
        },
    },
}

M.TimePointGranularity = {
    ALL = "ALL",
    SPECIFIC = "SPECIFIC",
}

M.TimeSeriesGranularity = {
    ALL = "ALL",
    SPECIFIC = "SPECIFIC",
}

M.ExplainabilityConfig = {
    type = "structure",
    members = {
        TimeSeriesGranularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePointGranularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExplainabilityInput = {
    type = "structure",
    members = {
        ExplainabilityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExplainabilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExplainabilityConfig }),
        DataSource = M.DataSource,
        Schema = M.Schema,
        EnableVisualization = {
            type = "boolean",
        },
        StartDateTime = {
            type = "string",
        },
        EndDateTime = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateExplainabilityOutput = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
        },
    },
}

M.DataDestination = {
    type = "structure",
    members = {
        S3Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Config }),
    },
}

M.CreateExplainabilityExportInput = {
    type = "structure",
    members = {
        ExplainabilityExportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExplainabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataDestination }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Format = {
            type = "string",
        },
    },
}

M.CreateExplainabilityExportOutput = {
    type = "structure",
    members = {
        ExplainabilityExportArn = {
            type = "string",
        },
    },
}

M.TimeSeriesIdentifiers = {
    type = "structure",
    members = {
        DataSource = M.DataSource,
        Schema = M.Schema,
        Format = {
            type = "string",
        },
    },
}

M.TimeSeriesSelector = {
    type = "structure",
    members = {
        TimeSeriesIdentifiers = M.TimeSeriesIdentifiers,
    },
}

M.CreateForecastInput = {
    type = "structure",
    members = {
        ForecastName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TimeSeriesSelector = M.TimeSeriesSelector,
    },
}

M.CreateForecastOutput = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
        },
    },
}

M.CreateForecastExportJobInput = {
    type = "structure",
    members = {
        ForecastExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataDestination }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Format = {
            type = "string",
        },
    },
}

M.CreateForecastExportJobOutput = {
    type = "structure",
    members = {
        ForecastExportJobArn = {
            type = "string",
        },
    },
}

M.CreateMonitorInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateMonitorOutput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
        },
    },
}

M.AutoMLOverrideStrategy = {
    LatencyOptimized = "LatencyOptimized",
    AccuracyOptimized = "AccuracyOptimized",
}

M.EvaluationParameters = {
    type = "structure",
    members = {
        NumberOfBacktestWindows = {
            type = "integer",
        },
        BackTestWindowOffset = {
            type = "integer",
        },
    },
}

M.FeaturizationMethodName = {
    filling = "filling",
}

M.FeaturizationMethod = {
    type = "structure",
    members = {
        FeaturizationMethodName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturizationMethodParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Featurization = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeaturizationPipeline = {
            type = "list",
            member = M.FeaturizationMethod,
        },
    },
}

M.FeaturizationConfig = {
    type = "structure",
    members = {
        ForecastFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastDimensions = {
            type = "list",
            member = { type = "string" },
        },
        Featurizations = {
            type = "list",
            member = M.Featurization,
        },
    },
}

M.CategoricalParameterRange = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ScalingType = {
    Auto = "Auto",
    Linear = "Linear",
    Logarithmic = "Logarithmic",
    ReverseLogarithmic = "ReverseLogarithmic",
}

M.ContinuousParameterRange = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        MinValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        ScalingType = {
            type = "string",
        },
    },
}

M.IntegerParameterRange = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxValue = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MinValue = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ScalingType = {
            type = "string",
        },
    },
}

M.ParameterRanges = {
    type = "structure",
    members = {
        CategoricalParameterRanges = {
            type = "list",
            member = M.CategoricalParameterRange,
        },
        ContinuousParameterRanges = {
            type = "list",
            member = M.ContinuousParameterRange,
        },
        IntegerParameterRanges = {
            type = "list",
            member = M.IntegerParameterRange,
        },
    },
}

M.HyperParameterTuningJobConfig = {
    type = "structure",
    members = {
        ParameterRanges = M.ParameterRanges,
    },
}

M.SupplementaryFeature = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupplementaryFeatures = {
            type = "list",
            member = M.SupplementaryFeature,
        },
    },
}

M.CreatePredictorInput = {
    type = "structure",
    members = {
        PredictorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlgorithmArn = {
            type = "string",
        },
        ForecastHorizon = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        PerformAutoML = {
            type = "boolean",
        },
        AutoMLOverrideStrategy = {
            type = "string",
        },
        PerformHPO = {
            type = "boolean",
        },
        TrainingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EvaluationParameters = M.EvaluationParameters,
        HPOConfig = M.HyperParameterTuningJobConfig,
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        FeaturizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FeaturizationConfig }),
        EncryptionConfig = M.EncryptionConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        OptimizationMetric = {
            type = "string",
        },
    },
}

M.CreatePredictorOutput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
        },
    },
}

M.CreatePredictorBacktestExportJobInput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataDestination }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Format = {
            type = "string",
        },
    },
}

M.CreatePredictorBacktestExportJobOutput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobArn = {
            type = "string",
        },
    },
}

M.CreateWhatIfAnalysisInput = {
    type = "structure",
    members = {
        WhatIfAnalysisName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeSeriesSelector = M.TimeSeriesSelector,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWhatIfAnalysisOutput = {
    type = "structure",
    members = {
        WhatIfAnalysisArn = {
            type = "string",
        },
    },
}

M.TimeSeriesReplacementsDataSource = {
    type = "structure",
    members = {
        S3Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Config }),
        Schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schema }),
        Format = {
            type = "string",
        },
        TimestampFormat = {
            type = "string",
        },
    },
}

M.Condition = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
}

M.TimeSeriesCondition = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeSeriesTransformation = {
    type = "structure",
    members = {
        Action = M.Action,
        TimeSeriesConditions = {
            type = "list",
            member = M.TimeSeriesCondition,
        },
    },
}

M.CreateWhatIfForecastInput = {
    type = "structure",
    members = {
        WhatIfForecastName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WhatIfAnalysisArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeSeriesTransformations = {
            type = "list",
            member = M.TimeSeriesTransformation,
        },
        TimeSeriesReplacementsDataSource = M.TimeSeriesReplacementsDataSource,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWhatIfForecastOutput = {
    type = "structure",
    members = {
        WhatIfForecastArn = {
            type = "string",
        },
    },
}

M.CreateWhatIfForecastExportInput = {
    type = "structure",
    members = {
        WhatIfForecastExportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WhatIfForecastArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataDestination }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Format = {
            type = "string",
        },
    },
}

M.CreateWhatIfForecastExportOutput = {
    type = "structure",
    members = {
        WhatIfForecastExportArn = {
            type = "string",
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
}

M.DeleteDatasetGroupInput = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetGroupOutput = {
    type = "structure",
}

M.DeleteDatasetImportJobInput = {
    type = "structure",
    members = {
        DatasetImportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetImportJobOutput = {
    type = "structure",
}

M.DeleteExplainabilityInput = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExplainabilityOutput = {
    type = "structure",
}

M.DeleteExplainabilityExportInput = {
    type = "structure",
    members = {
        ExplainabilityExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExplainabilityExportOutput = {
    type = "structure",
}

M.DeleteForecastInput = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteForecastOutput = {
    type = "structure",
}

M.DeleteForecastExportJobInput = {
    type = "structure",
    members = {
        ForecastExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteForecastExportJobOutput = {
    type = "structure",
}

M.DeleteMonitorInput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMonitorOutput = {
    type = "structure",
}

M.DeletePredictorInput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePredictorOutput = {
    type = "structure",
}

M.DeletePredictorBacktestExportJobInput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePredictorBacktestExportJobOutput = {
    type = "structure",
}

M.DeleteResourceTreeInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceTreeOutput = {
    type = "structure",
}

M.DeleteWhatIfAnalysisInput = {
    type = "structure",
    members = {
        WhatIfAnalysisArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWhatIfAnalysisOutput = {
    type = "structure",
}

M.DeleteWhatIfForecastInput = {
    type = "structure",
    members = {
        WhatIfForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWhatIfForecastOutput = {
    type = "structure",
}

M.DeleteWhatIfForecastExportInput = {
    type = "structure",
    members = {
        WhatIfForecastExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWhatIfForecastExportOutput = {
    type = "structure",
}

M.DescribeAutoPredictorInput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExplainabilityInfo = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.MonitorInfo = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.State = {
    Active = "Active",
    Deleted = "Deleted",
}

M.ReferencePredictorSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DescribeAutoPredictorOutput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
        },
        PredictorName = {
            type = "string",
        },
        ForecastHorizon = {
            type = "integer",
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        ForecastFrequency = {
            type = "string",
        },
        ForecastDimensions = {
            type = "list",
            member = { type = "string" },
        },
        DatasetImportJobArns = {
            type = "list",
            member = { type = "string" },
        },
        DataConfig = M.DataConfig,
        EncryptionConfig = M.EncryptionConfig,
        ReferencePredictorSummary = M.ReferencePredictorSummary,
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        OptimizationMetric = {
            type = "string",
        },
        ExplainabilityInfo = M.ExplainabilityInfo,
        MonitorInfo = M.MonitorInfo,
        TimeAlignmentBoundary = M.TimeAlignmentBoundary,
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        DatasetType = {
            type = "string",
        },
        DataFrequency = {
            type = "string",
        },
        Schema = M.Schema,
        EncryptionConfig = M.EncryptionConfig,
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeDatasetGroupInput = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetGroupOutput = {
    type = "structure",
    members = {
        DatasetGroupName = {
            type = "string",
        },
        DatasetGroupArn = {
            type = "string",
        },
        DatasetArns = {
            type = "list",
            member = { type = "string" },
        },
        Domain = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeDatasetImportJobInput = {
    type = "structure",
    members = {
        DatasetImportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Statistics = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
        },
        CountDistinct = {
            type = "integer",
        },
        CountNull = {
            type = "integer",
        },
        CountNan = {
            type = "integer",
        },
        Min = {
            type = "string",
        },
        Max = {
            type = "string",
        },
        Avg = {
            type = "double",
        },
        Stddev = {
            type = "double",
        },
        CountLong = {
            type = "long",
        },
        CountDistinctLong = {
            type = "long",
        },
        CountNullLong = {
            type = "long",
        },
        CountNanLong = {
            type = "long",
        },
    },
}

M.DescribeDatasetImportJobOutput = {
    type = "structure",
    members = {
        DatasetImportJobName = {
            type = "string",
        },
        DatasetImportJobArn = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        TimestampFormat = {
            type = "string",
        },
        TimeZone = {
            type = "string",
        },
        UseGeolocationForTimeZone = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        GeolocationFormat = {
            type = "string",
        },
        DataSource = M.DataSource,
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        FieldStatistics = {
            type = "map",
            key = { type = "string" },
            value = M.Statistics,
        },
        DataSize = {
            type = "double",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        Format = {
            type = "string",
        },
        ImportMode = {
            type = "string",
        },
    },
}

M.DescribeExplainabilityInput = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExplainabilityOutput = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
        },
        ExplainabilityName = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ExplainabilityConfig = M.ExplainabilityConfig,
        EnableVisualization = {
            type = "boolean",
        },
        DataSource = M.DataSource,
        Schema = M.Schema,
        StartDateTime = {
            type = "string",
        },
        EndDateTime = {
            type = "string",
        },
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        Message = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeExplainabilityExportInput = {
    type = "structure",
    members = {
        ExplainabilityExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExplainabilityExportOutput = {
    type = "structure",
    members = {
        ExplainabilityExportArn = {
            type = "string",
        },
        ExplainabilityExportName = {
            type = "string",
        },
        ExplainabilityArn = {
            type = "string",
        },
        Destination = M.DataDestination,
        Message = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        Format = {
            type = "string",
        },
    },
}

M.DescribeForecastInput = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeForecastOutput = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
        },
        ForecastName = {
            type = "string",
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        PredictorArn = {
            type = "string",
        },
        DatasetGroupArn = {
            type = "string",
        },
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        TimeSeriesSelector = M.TimeSeriesSelector,
    },
}

M.DescribeForecastExportJobInput = {
    type = "structure",
    members = {
        ForecastExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeForecastExportJobOutput = {
    type = "structure",
    members = {
        ForecastExportJobArn = {
            type = "string",
        },
        ForecastExportJobName = {
            type = "string",
        },
        ForecastArn = {
            type = "string",
        },
        Destination = M.DataDestination,
        Message = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        Format = {
            type = "string",
        },
    },
}

M.DescribeMonitorInput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BaselineMetric = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "double",
        },
    },
}

M.PredictorBaseline = {
    type = "structure",
    members = {
        BaselineMetrics = {
            type = "list",
            member = M.BaselineMetric,
        },
    },
}

M.Baseline = {
    type = "structure",
    members = {
        PredictorBaseline = M.PredictorBaseline,
    },
}

M.DescribeMonitorOutput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
        },
        MonitorArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastEvaluationTime = {
            type = "timestamp",
        },
        LastEvaluationState = {
            type = "string",
        },
        Baseline = M.Baseline,
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        EstimatedEvaluationTimeRemainingInMinutes = {
            type = "long",
        },
    },
}

M.DescribePredictorInput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestWindowSummary = {
    type = "structure",
    members = {
        TestWindowStart = {
            type = "timestamp",
        },
        TestWindowEnd = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.PredictorExecution = {
    type = "structure",
    members = {
        AlgorithmArn = {
            type = "string",
        },
        TestWindows = {
            type = "list",
            member = M.TestWindowSummary,
        },
    },
}

M.PredictorExecutionDetails = {
    type = "structure",
    members = {
        PredictorExecutions = {
            type = "list",
            member = M.PredictorExecution,
        },
    },
}

M.DescribePredictorOutput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
        },
        PredictorName = {
            type = "string",
        },
        AlgorithmArn = {
            type = "string",
        },
        AutoMLAlgorithmArns = {
            type = "list",
            member = { type = "string" },
        },
        ForecastHorizon = {
            type = "integer",
        },
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
        PerformAutoML = {
            type = "boolean",
        },
        AutoMLOverrideStrategy = {
            type = "string",
        },
        PerformHPO = {
            type = "boolean",
        },
        TrainingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EvaluationParameters = M.EvaluationParameters,
        HPOConfig = M.HyperParameterTuningJobConfig,
        InputDataConfig = M.InputDataConfig,
        FeaturizationConfig = M.FeaturizationConfig,
        EncryptionConfig = M.EncryptionConfig,
        PredictorExecutionDetails = M.PredictorExecutionDetails,
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        IsAutoPredictor = {
            type = "boolean",
        },
        DatasetImportJobArns = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        OptimizationMetric = {
            type = "string",
        },
    },
}

M.DescribePredictorBacktestExportJobInput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePredictorBacktestExportJobOutput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobArn = {
            type = "string",
        },
        PredictorBacktestExportJobName = {
            type = "string",
        },
        PredictorArn = {
            type = "string",
        },
        Destination = M.DataDestination,
        Message = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        Format = {
            type = "string",
        },
    },
}

M.DescribeWhatIfAnalysisInput = {
    type = "structure",
    members = {
        WhatIfAnalysisArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWhatIfAnalysisOutput = {
    type = "structure",
    members = {
        WhatIfAnalysisName = {
            type = "string",
        },
        WhatIfAnalysisArn = {
            type = "string",
        },
        ForecastArn = {
            type = "string",
        },
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        TimeSeriesSelector = M.TimeSeriesSelector,
    },
}

M.DescribeWhatIfForecastInput = {
    type = "structure",
    members = {
        WhatIfForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWhatIfForecastOutput = {
    type = "structure",
    members = {
        WhatIfForecastName = {
            type = "string",
        },
        WhatIfForecastArn = {
            type = "string",
        },
        WhatIfAnalysisArn = {
            type = "string",
        },
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        TimeSeriesTransformations = {
            type = "list",
            member = M.TimeSeriesTransformation,
        },
        TimeSeriesReplacementsDataSource = M.TimeSeriesReplacementsDataSource,
        ForecastTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeWhatIfForecastExportInput = {
    type = "structure",
    members = {
        WhatIfForecastExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWhatIfForecastExportOutput = {
    type = "structure",
    members = {
        WhatIfForecastExportArn = {
            type = "string",
        },
        WhatIfForecastExportName = {
            type = "string",
        },
        WhatIfForecastArns = {
            type = "list",
            member = { type = "string" },
        },
        Destination = M.DataDestination,
        Message = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        EstimatedTimeRemainingInMinutes = {
            type = "long",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        Format = {
            type = "string",
        },
    },
}

M.GetAccuracyMetricsInput = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationType = {
    SUMMARY = "SUMMARY",
    COMPUTED = "COMPUTED",
}

M.ErrorMetric = {
    type = "structure",
    members = {
        ForecastType = {
            type = "string",
        },
        WAPE = {
            type = "double",
        },
        RMSE = {
            type = "double",
        },
        MASE = {
            type = "double",
        },
        MAPE = {
            type = "double",
        },
    },
}

M.WeightedQuantileLoss = {
    type = "structure",
    members = {
        Quantile = {
            type = "double",
        },
        LossValue = {
            type = "double",
        },
    },
}

M.Metrics = {
    type = "structure",
    members = {
        RMSE = {
            type = "double",
        },
        WeightedQuantileLosses = {
            type = "list",
            member = M.WeightedQuantileLoss,
        },
        ErrorMetrics = {
            type = "list",
            member = M.ErrorMetric,
        },
        AverageWeightedQuantileLoss = {
            type = "double",
        },
    },
}

M.WindowSummary = {
    type = "structure",
    members = {
        TestWindowStart = {
            type = "timestamp",
        },
        TestWindowEnd = {
            type = "timestamp",
        },
        ItemCount = {
            type = "integer",
        },
        EvaluationType = {
            type = "string",
        },
        Metrics = M.Metrics,
    },
}

M.EvaluationResult = {
    type = "structure",
    members = {
        AlgorithmArn = {
            type = "string",
        },
        TestWindows = {
            type = "list",
            member = M.WindowSummary,
        },
    },
}

M.GetAccuracyMetricsOutput = {
    type = "structure",
    members = {
        PredictorEvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        IsAutoPredictor = {
            type = "boolean",
        },
        AutoMLOverrideStrategy = {
            type = "string",
        },
        OptimizationMetric = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListDatasetGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DatasetGroupSummary = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
        },
        DatasetGroupName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListDatasetGroupsOutput = {
    type = "structure",
    members = {
        DatasetGroups = {
            type = "list",
            member = M.DatasetGroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FilterConditionString = {
    IS = "IS",
    IS_NOT = "IS_NOT",
}

M.Filter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDatasetImportJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.DatasetImportJobSummary = {
    type = "structure",
    members = {
        DatasetImportJobArn = {
            type = "string",
        },
        DatasetImportJobName = {
            type = "string",
        },
        DataSource = M.DataSource,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
        ImportMode = {
            type = "string",
        },
    },
}

M.ListDatasetImportJobsOutput = {
    type = "structure",
    members = {
        DatasetImportJobs = {
            type = "list",
            member = M.DatasetImportJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DatasetSummary = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetType = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    members = {
        Datasets = {
            type = "list",
            member = M.DatasetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExplainabilitiesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ExplainabilitySummary = {
    type = "structure",
    members = {
        ExplainabilityArn = {
            type = "string",
        },
        ExplainabilityName = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ExplainabilityConfig = M.ExplainabilityConfig,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListExplainabilitiesOutput = {
    type = "structure",
    members = {
        Explainabilities = {
            type = "list",
            member = M.ExplainabilitySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExplainabilityExportsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ExplainabilityExportSummary = {
    type = "structure",
    members = {
        ExplainabilityExportArn = {
            type = "string",
        },
        ExplainabilityExportName = {
            type = "string",
        },
        Destination = M.DataDestination,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListExplainabilityExportsOutput = {
    type = "structure",
    members = {
        ExplainabilityExports = {
            type = "list",
            member = M.ExplainabilityExportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListForecastExportJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ForecastExportJobSummary = {
    type = "structure",
    members = {
        ForecastExportJobArn = {
            type = "string",
        },
        ForecastExportJobName = {
            type = "string",
        },
        Destination = M.DataDestination,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListForecastExportJobsOutput = {
    type = "structure",
    members = {
        ForecastExportJobs = {
            type = "list",
            member = M.ForecastExportJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListForecastsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ForecastSummary = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
        },
        ForecastName = {
            type = "string",
        },
        PredictorArn = {
            type = "string",
        },
        CreatedUsingAutoPredictor = {
            type = "boolean",
        },
        DatasetGroupArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListForecastsOutput = {
    type = "structure",
    members = {
        Forecasts = {
            type = "list",
            member = M.ForecastSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMonitorEvaluationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.MetricResult = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
        },
        MetricValue = {
            type = "double",
        },
    },
}

M.MonitorDataSource = {
    type = "structure",
    members = {
        DatasetImportJobArn = {
            type = "string",
        },
        ForecastArn = {
            type = "string",
        },
        PredictorArn = {
            type = "string",
        },
    },
}

M.PredictorEvent = {
    type = "structure",
    members = {
        Detail = {
            type = "string",
        },
        Datetime = {
            type = "timestamp",
        },
    },
}

M.PredictorMonitorEvaluation = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        MonitorArn = {
            type = "string",
        },
        EvaluationTime = {
            type = "timestamp",
        },
        EvaluationState = {
            type = "string",
        },
        WindowStartDatetime = {
            type = "timestamp",
        },
        WindowEndDatetime = {
            type = "timestamp",
        },
        PredictorEvent = M.PredictorEvent,
        MonitorDataSource = M.MonitorDataSource,
        MetricResults = {
            type = "list",
            member = M.MetricResult,
        },
        NumItemsEvaluated = {
            type = "long",
        },
        Message = {
            type = "string",
        },
    },
}

M.ListMonitorEvaluationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PredictorMonitorEvaluations = {
            type = "list",
            member = M.PredictorMonitorEvaluation,
        },
    },
}

M.ListMonitorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.MonitorSummary = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
        },
        MonitorName = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListMonitorsOutput = {
    type = "structure",
    members = {
        Monitors = {
            type = "list",
            member = M.MonitorSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPredictorBacktestExportJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.PredictorBacktestExportJobSummary = {
    type = "structure",
    members = {
        PredictorBacktestExportJobArn = {
            type = "string",
        },
        PredictorBacktestExportJobName = {
            type = "string",
        },
        Destination = M.DataDestination,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListPredictorBacktestExportJobsOutput = {
    type = "structure",
    members = {
        PredictorBacktestExportJobs = {
            type = "list",
            member = M.PredictorBacktestExportJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPredictorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.PredictorSummary = {
    type = "structure",
    members = {
        PredictorArn = {
            type = "string",
        },
        PredictorName = {
            type = "string",
        },
        DatasetGroupArn = {
            type = "string",
        },
        IsAutoPredictor = {
            type = "boolean",
        },
        ReferencePredictorSummary = M.ReferencePredictorSummary,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListPredictorsOutput = {
    type = "structure",
    members = {
        Predictors = {
            type = "list",
            member = M.PredictorSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListWhatIfAnalysesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.WhatIfAnalysisSummary = {
    type = "structure",
    members = {
        WhatIfAnalysisArn = {
            type = "string",
        },
        WhatIfAnalysisName = {
            type = "string",
        },
        ForecastArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListWhatIfAnalysesOutput = {
    type = "structure",
    members = {
        WhatIfAnalyses = {
            type = "list",
            member = M.WhatIfAnalysisSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWhatIfForecastExportsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.WhatIfForecastExportSummary = {
    type = "structure",
    members = {
        WhatIfForecastExportArn = {
            type = "string",
        },
        WhatIfForecastArns = {
            type = "list",
            member = { type = "string" },
        },
        WhatIfForecastExportName = {
            type = "string",
        },
        Destination = M.DataDestination,
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListWhatIfForecastExportsOutput = {
    type = "structure",
    members = {
        WhatIfForecastExports = {
            type = "list",
            member = M.WhatIfForecastExportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWhatIfForecastsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.WhatIfForecastSummary = {
    type = "structure",
    members = {
        WhatIfForecastArn = {
            type = "string",
        },
        WhatIfForecastName = {
            type = "string",
        },
        WhatIfAnalysisArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListWhatIfForecastsOutput = {
    type = "structure",
    members = {
        WhatIfForecasts = {
            type = "list",
            member = M.WhatIfForecastSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResumeResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeResourceOutput = {
    type = "structure",
}

M.StopResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopResourceOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateDatasetGroupInput = {
    type = "structure",
    members = {
        DatasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatasetGroupOutput = {
    type = "structure",
}

return M
