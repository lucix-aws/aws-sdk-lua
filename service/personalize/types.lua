local M = {}

M.AlgorithmImage = {
    type = "structure",
    id = "AlgorithmImage",
    members = {
        name = {
            type = "string",
        },
        dockerURI = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultCategoricalHyperParameterRange = {
    type = "structure",
    id = "DefaultCategoricalHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
        isTunable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DefaultContinuousHyperParameterRange = {
    type = "structure",
    id = "DefaultContinuousHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        minValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        maxValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        isTunable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DefaultIntegerHyperParameterRange = {
    type = "structure",
    id = "DefaultIntegerHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        minValue = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        maxValue = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        isTunable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DefaultHyperParameterRanges = {
    type = "structure",
    id = "DefaultHyperParameterRanges",
    members = {
        integerHyperParameterRanges = {
            type = "list",
            member = M.DefaultIntegerHyperParameterRange,
        },
        continuousHyperParameterRanges = {
            type = "list",
            member = M.DefaultContinuousHyperParameterRange,
        },
        categoricalHyperParameterRanges = {
            type = "list",
            member = M.DefaultCategoricalHyperParameterRange,
        },
    },
}

M.Algorithm = {
    type = "structure",
    id = "Algorithm",
    members = {
        name = {
            type = "string",
        },
        algorithmArn = {
            type = "string",
        },
        algorithmImage = M.AlgorithmImage,
        defaultHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultHyperParameterRanges = M.DefaultHyperParameterRanges,
        defaultResourceConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        trainingInputMode = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.RankingInfluenceType = {
    POPULARITY = "POPULARITY",
    FRESHNESS = "FRESHNESS",
}

M.BatchInferenceJobConfig = {
    type = "structure",
    id = "BatchInferenceJobConfig",
    members = {
        itemExplorationConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        rankingInfluence = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.BatchInferenceJobMode = {
    BATCH_INFERENCE = "BATCH_INFERENCE",
    THEME_GENERATION = "THEME_GENERATION",
}

M.S3DataConfig = {
    type = "structure",
    id = "S3DataConfig",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.BatchInferenceJobInput = {
    type = "structure",
    id = "BatchInferenceJobInput",
    members = {
        s3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.BatchInferenceJobOutput = {
    type = "structure",
    id = "BatchInferenceJobOutput",
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        tagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FieldsForThemeGeneration = {
    type = "structure",
    id = "FieldsForThemeGeneration",
    members = {
        itemName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThemeGenerationConfig = {
    type = "structure",
    id = "ThemeGenerationConfig",
    members = {
        fieldsForThemeGeneration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldsForThemeGeneration }),
    },
}

M.CreateBatchInferenceJobInput = {
    type = "structure",
    id = "CreateBatchInferenceJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterArn = {
            type = "string",
        },
        numResults = {
            type = "integer",
        },
        jobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchInferenceJobInput }),
        jobOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchInferenceJobOutput }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchInferenceJobConfig = M.BatchInferenceJobConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
        batchInferenceJobMode = {
            type = "string",
        },
        themeGenerationConfig = M.ThemeGenerationConfig,
    },
}

M.CreateBatchInferenceJobOutput = {
    type = "structure",
    id = "CreateBatchInferenceJobOutput",
    members = {
        batchInferenceJobArn = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchSegmentJobInput = {
    type = "structure",
    id = "BatchSegmentJobInput",
    members = {
        s3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.BatchSegmentJobOutput = {
    type = "structure",
    id = "BatchSegmentJobOutput",
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.CreateBatchSegmentJobInput = {
    type = "structure",
    id = "CreateBatchSegmentJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterArn = {
            type = "string",
        },
        numResults = {
            type = "integer",
        },
        jobInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchSegmentJobInput }),
        jobOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchSegmentJobOutput }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateBatchSegmentJobOutput = {
    type = "structure",
    id = "CreateBatchSegmentJobOutput",
    members = {
        batchSegmentJobArn = {
            type = "string",
        },
    },
}

M.CampaignConfig = {
    type = "structure",
    id = "CampaignConfig",
    members = {
        itemExplorationConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        enableMetadataWithRecommendations = {
            type = "boolean",
        },
        syncWithLatestSolutionVersion = {
            type = "boolean",
        },
        rankingInfluence = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.CreateCampaignInput = {
    type = "structure",
    id = "CreateCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minProvisionedTPS = {
            type = "integer",
        },
        campaignConfig = M.CampaignConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    id = "CreateCampaignOutput",
    members = {
        campaignArn = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        dataLocation = {
            type = "string",
        },
    },
}

M.CreateDataDeletionJobInput = {
    type = "structure",
    id = "CreateDataDeletionJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDataDeletionJobOutput = {
    type = "structure",
    id = "CreateDataDeletionJobOutput",
    members = {
        dataDeletionJobArn = {
            type = "string",
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    id = "CreateDatasetInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    id = "CreateDatasetOutput",
    members = {
        datasetArn = {
            type = "string",
        },
    },
}

M.IngestionMode = {
    BULK = "BULK",
    PUT = "PUT",
    ALL = "ALL",
}

M.DatasetExportJobOutput = {
    type = "structure",
    id = "DatasetExportJobOutput",
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.CreateDatasetExportJobInput = {
    type = "structure",
    id = "CreateDatasetExportJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionMode = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetExportJobOutput }),
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetExportJobOutput = {
    type = "structure",
    id = "CreateDatasetExportJobOutput",
    members = {
        datasetExportJobArn = {
            type = "string",
        },
    },
}

M.Domain = {
    ECOMMERCE = "ECOMMERCE",
    VIDEO_ON_DEMAND = "VIDEO_ON_DEMAND",
}

M.CreateDatasetGroupInput = {
    type = "structure",
    id = "CreateDatasetGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        domain = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetGroupOutput = {
    type = "structure",
    id = "CreateDatasetGroupOutput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        domain = {
            type = "string",
        },
    },
}

M.ImportMode = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.CreateDatasetImportJobInput = {
    type = "structure",
    id = "CreateDatasetImportJobInput",
    members = {
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        roleArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        importMode = {
            type = "string",
        },
        publishAttributionMetricsToS3 = {
            type = "boolean",
        },
    },
}

M.CreateDatasetImportJobOutput = {
    type = "structure",
    id = "CreateDatasetImportJobOutput",
    members = {
        datasetImportJobArn = {
            type = "string",
        },
    },
}

M.CreateEventTrackerInput = {
    type = "structure",
    id = "CreateEventTrackerInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEventTrackerOutput = {
    type = "structure",
    id = "CreateEventTrackerOutput",
    members = {
        eventTrackerArn = {
            type = "string",
        },
        trackingId = {
            type = "string",
        },
    },
}

M.CreateFilterInput = {
    type = "structure",
    id = "CreateFilterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFilterOutput = {
    type = "structure",
    id = "CreateFilterOutput",
    members = {
        filterArn = {
            type = "string",
        },
    },
}

M.MetricAttribute = {
    type = "structure",
    id = "MetricAttribute",
    members = {
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricAttributionOutput = {
    type = "structure",
    id = "MetricAttributionOutput",
    members = {
        s3DataDestination = M.S3DataConfig,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMetricAttributionInput = {
    type = "structure",
    id = "CreateMetricAttributionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member = M.MetricAttribute,
            traits = {
                required = true,
            },
        },
        metricsOutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricAttributionOutput }),
    },
}

M.CreateMetricAttributionOutput = {
    type = "structure",
    id = "CreateMetricAttributionOutput",
    members = {
        metricAttributionArn = {
            type = "string",
        },
    },
}

M.TrainingDataConfig = {
    type = "structure",
    id = "TrainingDataConfig",
    members = {
        excludedDatasetColumns = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        includedDatasetColumns = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.RecommenderConfig = {
    type = "structure",
    id = "RecommenderConfig",
    members = {
        itemExplorationConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        minRecommendationRequestsPerSecond = {
            type = "integer",
        },
        trainingDataConfig = M.TrainingDataConfig,
        enableMetadataWithRecommendations = {
            type = "boolean",
        },
    },
}

M.CreateRecommenderInput = {
    type = "structure",
    id = "CreateRecommenderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recipeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommenderConfig = M.RecommenderConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRecommenderOutput = {
    type = "structure",
    id = "CreateRecommenderOutput",
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
    id = "CreateSchemaInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domain = {
            type = "string",
        },
    },
}

M.CreateSchemaOutput = {
    type = "structure",
    id = "CreateSchemaOutput",
    members = {
        schemaArn = {
            type = "string",
        },
    },
}

M.AutoMLConfig = {
    type = "structure",
    id = "AutoMLConfig",
    members = {
        metricName = {
            type = "string",
        },
        recipeList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutoTrainingConfig = {
    type = "structure",
    id = "AutoTrainingConfig",
    members = {
        schedulingExpression = {
            type = "string",
        },
    },
}

M.EventParameters = {
    type = "structure",
    id = "EventParameters",
    members = {
        eventType = {
            type = "string",
        },
        eventValueThreshold = {
            type = "double",
        },
        weight = {
            type = "double",
        },
    },
}

M.EventsConfig = {
    type = "structure",
    id = "EventsConfig",
    members = {
        eventParametersList = {
            type = "list",
            member = M.EventParameters,
        },
    },
}

M.CategoricalHyperParameterRange = {
    type = "structure",
    id = "CategoricalHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContinuousHyperParameterRange = {
    type = "structure",
    id = "ContinuousHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        minValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        maxValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.IntegerHyperParameterRange = {
    type = "structure",
    id = "IntegerHyperParameterRange",
    members = {
        name = {
            type = "string",
        },
        minValue = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        maxValue = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.HyperParameterRanges = {
    type = "structure",
    id = "HyperParameterRanges",
    members = {
        integerHyperParameterRanges = {
            type = "list",
            member = M.IntegerHyperParameterRange,
        },
        continuousHyperParameterRanges = {
            type = "list",
            member = M.ContinuousHyperParameterRange,
        },
        categoricalHyperParameterRanges = {
            type = "list",
            member = M.CategoricalHyperParameterRange,
        },
    },
}

M.HPOObjective = {
    type = "structure",
    id = "HPOObjective",
    members = {
        type = {
            type = "string",
        },
        metricName = {
            type = "string",
        },
        metricRegex = {
            type = "string",
        },
    },
}

M.HPOResourceConfig = {
    type = "structure",
    id = "HPOResourceConfig",
    members = {
        maxNumberOfTrainingJobs = {
            type = "string",
        },
        maxParallelTrainingJobs = {
            type = "string",
        },
    },
}

M.HPOConfig = {
    type = "structure",
    id = "HPOConfig",
    members = {
        hpoObjective = M.HPOObjective,
        hpoResourceConfig = M.HPOResourceConfig,
        algorithmHyperParameterRanges = M.HyperParameterRanges,
    },
}

M.ObjectiveSensitivity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    OFF = "OFF",
}

M.OptimizationObjective = {
    type = "structure",
    id = "OptimizationObjective",
    members = {
        itemAttribute = {
            type = "string",
        },
        objectiveSensitivity = {
            type = "string",
        },
    },
}

M.SolutionConfig = {
    type = "structure",
    id = "SolutionConfig",
    members = {
        eventValueThreshold = {
            type = "string",
        },
        hpoConfig = M.HPOConfig,
        algorithmHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        featureTransformationParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoMLConfig = M.AutoMLConfig,
        eventsConfig = M.EventsConfig,
        optimizationObjective = M.OptimizationObjective,
        trainingDataConfig = M.TrainingDataConfig,
        autoTrainingConfig = M.AutoTrainingConfig,
    },
}

M.CreateSolutionInput = {
    type = "structure",
    id = "CreateSolutionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        performHPO = {
            type = "boolean",
        },
        performAutoML = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        performAutoTraining = {
            type = "boolean",
        },
        performIncrementalUpdate = {
            type = "boolean",
        },
        recipeArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
        },
        solutionConfig = M.SolutionConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSolutionOutput = {
    type = "structure",
    id = "CreateSolutionOutput",
    members = {
        solutionArn = {
            type = "string",
        },
    },
}

M.TrainingMode = {
    FULL = "FULL",
    UPDATE = "UPDATE",
    AUTOTRAIN = "AUTOTRAIN",
}

M.CreateSolutionVersionInput = {
    type = "structure",
    id = "CreateSolutionVersionInput",
    members = {
        name = {
            type = "string",
        },
        solutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingMode = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSolutionVersionOutput = {
    type = "structure",
    id = "CreateSolutionVersionOutput",
    members = {
        solutionVersionArn = {
            type = "string",
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
    id = "DeleteCampaignInput",
    members = {
        campaignArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCampaignOutput = {
    type = "structure",
    id = "DeleteCampaignOutput",
}

M.DeleteDatasetInput = {
    type = "structure",
    id = "DeleteDatasetInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
    id = "DeleteDatasetOutput",
}

M.DeleteDatasetGroupInput = {
    type = "structure",
    id = "DeleteDatasetGroupInput",
    members = {
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetGroupOutput = {
    type = "structure",
    id = "DeleteDatasetGroupOutput",
}

M.DeleteEventTrackerInput = {
    type = "structure",
    id = "DeleteEventTrackerInput",
    members = {
        eventTrackerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventTrackerOutput = {
    type = "structure",
    id = "DeleteEventTrackerOutput",
}

M.DeleteFilterInput = {
    type = "structure",
    id = "DeleteFilterInput",
    members = {
        filterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFilterOutput = {
    type = "structure",
    id = "DeleteFilterOutput",
}

M.DeleteMetricAttributionInput = {
    type = "structure",
    id = "DeleteMetricAttributionInput",
    members = {
        metricAttributionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMetricAttributionOutput = {
    type = "structure",
    id = "DeleteMetricAttributionOutput",
}

M.DeleteRecommenderInput = {
    type = "structure",
    id = "DeleteRecommenderInput",
    members = {
        recommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRecommenderOutput = {
    type = "structure",
    id = "DeleteRecommenderOutput",
}

M.DeleteSchemaInput = {
    type = "structure",
    id = "DeleteSchemaInput",
    members = {
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSchemaOutput = {
    type = "structure",
    id = "DeleteSchemaOutput",
}

M.DeleteSolutionInput = {
    type = "structure",
    id = "DeleteSolutionInput",
    members = {
        solutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSolutionOutput = {
    type = "structure",
    id = "DeleteSolutionOutput",
}

M.DescribeAlgorithmInput = {
    type = "structure",
    id = "DescribeAlgorithmInput",
    members = {
        algorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAlgorithmOutput = {
    type = "structure",
    id = "DescribeAlgorithmOutput",
    members = {
        algorithm = M.Algorithm,
    },
}

M.DescribeBatchInferenceJobInput = {
    type = "structure",
    id = "DescribeBatchInferenceJobInput",
    members = {
        batchInferenceJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchInferenceJob = {
    type = "structure",
    id = "BatchInferenceJob",
    members = {
        jobName = {
            type = "string",
        },
        batchInferenceJobArn = {
            type = "string",
        },
        filterArn = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
        numResults = {
            type = "integer",
        },
        jobInput = M.BatchInferenceJobInput,
        jobOutput = M.BatchInferenceJobOutput,
        batchInferenceJobConfig = M.BatchInferenceJobConfig,
        roleArn = {
            type = "string",
        },
        batchInferenceJobMode = {
            type = "string",
        },
        themeGenerationConfig = M.ThemeGenerationConfig,
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeBatchInferenceJobOutput = {
    type = "structure",
    id = "DescribeBatchInferenceJobOutput",
    members = {
        batchInferenceJob = M.BatchInferenceJob,
    },
}

M.DescribeBatchSegmentJobInput = {
    type = "structure",
    id = "DescribeBatchSegmentJobInput",
    members = {
        batchSegmentJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSegmentJob = {
    type = "structure",
    id = "BatchSegmentJob",
    members = {
        jobName = {
            type = "string",
        },
        batchSegmentJobArn = {
            type = "string",
        },
        filterArn = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
        numResults = {
            type = "integer",
        },
        jobInput = M.BatchSegmentJobInput,
        jobOutput = M.BatchSegmentJobOutput,
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeBatchSegmentJobOutput = {
    type = "structure",
    id = "DescribeBatchSegmentJobOutput",
    members = {
        batchSegmentJob = M.BatchSegmentJob,
    },
}

M.DescribeCampaignInput = {
    type = "structure",
    id = "DescribeCampaignInput",
    members = {
        campaignArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CampaignUpdateSummary = {
    type = "structure",
    id = "CampaignUpdateSummary",
    members = {
        solutionVersionArn = {
            type = "string",
        },
        minProvisionedTPS = {
            type = "integer",
        },
        campaignConfig = M.CampaignConfig,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.Campaign = {
    type = "structure",
    id = "Campaign",
    members = {
        name = {
            type = "string",
        },
        campaignArn = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
        minProvisionedTPS = {
            type = "integer",
        },
        campaignConfig = M.CampaignConfig,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        latestCampaignUpdate = M.CampaignUpdateSummary,
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    id = "DescribeCampaignOutput",
    members = {
        campaign = M.Campaign,
    },
}

M.DescribeDataDeletionJobInput = {
    type = "structure",
    id = "DescribeDataDeletionJobInput",
    members = {
        dataDeletionJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataDeletionJob = {
    type = "structure",
    id = "DataDeletionJob",
    members = {
        jobName = {
            type = "string",
        },
        dataDeletionJobArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        dataSource = M.DataSource,
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        numDeleted = {
            type = "integer",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.DescribeDataDeletionJobOutput = {
    type = "structure",
    id = "DescribeDataDeletionJobOutput",
    members = {
        dataDeletionJob = M.DataDeletionJob,
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    id = "DescribeDatasetInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetUpdateSummary = {
    type = "structure",
    id = "DatasetUpdateSummary",
    members = {
        schemaArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.Dataset = {
    type = "structure",
    id = "Dataset",
    members = {
        name = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        datasetType = {
            type = "string",
        },
        schemaArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        latestDatasetUpdate = M.DatasetUpdateSummary,
        trackingId = {
            type = "string",
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    id = "DescribeDatasetOutput",
    members = {
        dataset = M.Dataset,
    },
}

M.DescribeDatasetExportJobInput = {
    type = "structure",
    id = "DescribeDatasetExportJobInput",
    members = {
        datasetExportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetExportJob = {
    type = "structure",
    id = "DatasetExportJob",
    members = {
        jobName = {
            type = "string",
        },
        datasetExportJobArn = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        ingestionMode = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        jobOutput = M.DatasetExportJobOutput,
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.DescribeDatasetExportJobOutput = {
    type = "structure",
    id = "DescribeDatasetExportJobOutput",
    members = {
        datasetExportJob = M.DatasetExportJob,
    },
}

M.DescribeDatasetGroupInput = {
    type = "structure",
    id = "DescribeDatasetGroupInput",
    members = {
        datasetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetGroup = {
    type = "structure",
    id = "DatasetGroup",
    members = {
        name = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        domain = {
            type = "string",
        },
    },
}

M.DescribeDatasetGroupOutput = {
    type = "structure",
    id = "DescribeDatasetGroupOutput",
    members = {
        datasetGroup = M.DatasetGroup,
    },
}

M.DescribeDatasetImportJobInput = {
    type = "structure",
    id = "DescribeDatasetImportJobInput",
    members = {
        datasetImportJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetImportJob = {
    type = "structure",
    id = "DatasetImportJob",
    members = {
        jobName = {
            type = "string",
        },
        datasetImportJobArn = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        dataSource = M.DataSource,
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        importMode = {
            type = "string",
        },
        publishAttributionMetricsToS3 = {
            type = "boolean",
        },
    },
}

M.DescribeDatasetImportJobOutput = {
    type = "structure",
    id = "DescribeDatasetImportJobOutput",
    members = {
        datasetImportJob = M.DatasetImportJob,
    },
}

M.DescribeEventTrackerInput = {
    type = "structure",
    id = "DescribeEventTrackerInput",
    members = {
        eventTrackerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventTracker = {
    type = "structure",
    id = "EventTracker",
    members = {
        name = {
            type = "string",
        },
        eventTrackerArn = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        trackingId = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEventTrackerOutput = {
    type = "structure",
    id = "DescribeEventTrackerOutput",
    members = {
        eventTracker = M.EventTracker,
    },
}

M.DescribeFeatureTransformationInput = {
    type = "structure",
    id = "DescribeFeatureTransformationInput",
    members = {
        featureTransformationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FeatureTransformation = {
    type = "structure",
    id = "FeatureTransformation",
    members = {
        name = {
            type = "string",
        },
        featureTransformationArn = {
            type = "string",
        },
        defaultParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.DescribeFeatureTransformationOutput = {
    type = "structure",
    id = "DescribeFeatureTransformationOutput",
    members = {
        featureTransformation = M.FeatureTransformation,
    },
}

M.DescribeFilterInput = {
    type = "structure",
    id = "DescribeFilterInput",
    members = {
        filterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        name = {
            type = "string",
        },
        filterArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        datasetGroupArn = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        filterExpression = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DescribeFilterOutput = {
    type = "structure",
    id = "DescribeFilterOutput",
    members = {
        filter = M.Filter,
    },
}

M.DescribeMetricAttributionInput = {
    type = "structure",
    id = "DescribeMetricAttributionInput",
    members = {
        metricAttributionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricAttribution = {
    type = "structure",
    id = "MetricAttribution",
    members = {
        name = {
            type = "string",
        },
        metricAttributionArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        metricsOutputConfig = M.MetricAttributionOutput,
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.DescribeMetricAttributionOutput = {
    type = "structure",
    id = "DescribeMetricAttributionOutput",
    members = {
        metricAttribution = M.MetricAttribution,
    },
}

M.DescribeRecipeInput = {
    type = "structure",
    id = "DescribeRecipeInput",
    members = {
        recipeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Recipe = {
    type = "structure",
    id = "Recipe",
    members = {
        name = {
            type = "string",
        },
        recipeArn = {
            type = "string",
        },
        algorithmArn = {
            type = "string",
        },
        featureTransformationArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        recipeType = {
            type = "string",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRecipeOutput = {
    type = "structure",
    id = "DescribeRecipeOutput",
    members = {
        recipe = M.Recipe,
    },
}

M.DescribeRecommenderInput = {
    type = "structure",
    id = "DescribeRecommenderInput",
    members = {
        recommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommenderUpdateSummary = {
    type = "structure",
    id = "RecommenderUpdateSummary",
    members = {
        recommenderConfig = M.RecommenderConfig,
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.Recommender = {
    type = "structure",
    id = "Recommender",
    members = {
        recommenderArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        recipeArn = {
            type = "string",
        },
        recommenderConfig = M.RecommenderConfig,
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        latestRecommenderUpdate = M.RecommenderUpdateSummary,
        modelMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.DescribeRecommenderOutput = {
    type = "structure",
    id = "DescribeRecommenderOutput",
    members = {
        recommender = M.Recommender,
    },
}

M.DescribeSchemaInput = {
    type = "structure",
    id = "DescribeSchemaInput",
    members = {
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetSchema = {
    type = "structure",
    id = "DatasetSchema",
    members = {
        name = {
            type = "string",
        },
        schemaArn = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        domain = {
            type = "string",
        },
    },
}

M.DescribeSchemaOutput = {
    type = "structure",
    id = "DescribeSchemaOutput",
    members = {
        schema = M.DatasetSchema,
    },
}

M.DescribeSolutionInput = {
    type = "structure",
    id = "DescribeSolutionInput",
    members = {
        solutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoMLResult = {
    type = "structure",
    id = "AutoMLResult",
    members = {
        bestRecipeArn = {
            type = "string",
        },
    },
}

M.SolutionUpdateConfig = {
    type = "structure",
    id = "SolutionUpdateConfig",
    members = {
        autoTrainingConfig = M.AutoTrainingConfig,
        eventsConfig = M.EventsConfig,
    },
}

M.SolutionUpdateSummary = {
    type = "structure",
    id = "SolutionUpdateSummary",
    members = {
        solutionUpdateConfig = M.SolutionUpdateConfig,
        status = {
            type = "string",
        },
        performAutoTraining = {
            type = "boolean",
        },
        performIncrementalUpdate = {
            type = "boolean",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.TrainingType = {
    AUTOMATIC = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.SolutionVersionSummary = {
    type = "structure",
    id = "SolutionVersionSummary",
    members = {
        solutionVersionArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        trainingMode = {
            type = "string",
        },
        trainingType = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.Solution = {
    type = "structure",
    id = "Solution",
    members = {
        name = {
            type = "string",
        },
        solutionArn = {
            type = "string",
        },
        performHPO = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        performAutoML = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        performAutoTraining = {
            type = "boolean",
        },
        performIncrementalUpdate = {
            type = "boolean",
        },
        recipeArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        eventType = {
            type = "string",
        },
        solutionConfig = M.SolutionConfig,
        autoMLResult = M.AutoMLResult,
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        latestSolutionVersion = M.SolutionVersionSummary,
        latestSolutionUpdate = M.SolutionUpdateSummary,
    },
}

M.DescribeSolutionOutput = {
    type = "structure",
    id = "DescribeSolutionOutput",
    members = {
        solution = M.Solution,
    },
}

M.DescribeSolutionVersionInput = {
    type = "structure",
    id = "DescribeSolutionVersionInput",
    members = {
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TunedHPOParams = {
    type = "structure",
    id = "TunedHPOParams",
    members = {
        algorithmHyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SolutionVersion = {
    type = "structure",
    id = "SolutionVersion",
    members = {
        name = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
        solutionArn = {
            type = "string",
        },
        performHPO = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        performAutoML = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        performIncrementalUpdate = {
            type = "boolean",
        },
        recipeArn = {
            type = "string",
        },
        eventType = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        solutionConfig = M.SolutionConfig,
        trainingHours = {
            type = "double",
        },
        trainingMode = {
            type = "string",
        },
        tunedHPOParams = M.TunedHPOParams,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        trainingType = {
            type = "string",
        },
    },
}

M.DescribeSolutionVersionOutput = {
    type = "structure",
    id = "DescribeSolutionVersionOutput",
    members = {
        solutionVersion = M.SolutionVersion,
    },
}

M.GetSolutionMetricsInput = {
    type = "structure",
    id = "GetSolutionMetricsInput",
    members = {
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSolutionMetricsOutput = {
    type = "structure",
    id = "GetSolutionMetricsOutput",
    members = {
        solutionVersionArn = {
            type = "string",
        },
        metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListBatchInferenceJobsInput = {
    type = "structure",
    id = "ListBatchInferenceJobsInput",
    members = {
        solutionVersionArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.BatchInferenceJobSummary = {
    type = "structure",
    id = "BatchInferenceJobSummary",
    members = {
        batchInferenceJobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
        batchInferenceJobMode = {
            type = "string",
        },
    },
}

M.ListBatchInferenceJobsOutput = {
    type = "structure",
    id = "ListBatchInferenceJobsOutput",
    members = {
        batchInferenceJobs = {
            type = "list",
            member = M.BatchInferenceJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBatchSegmentJobsInput = {
    type = "structure",
    id = "ListBatchSegmentJobsInput",
    members = {
        solutionVersionArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.BatchSegmentJobSummary = {
    type = "structure",
    id = "BatchSegmentJobSummary",
    members = {
        batchSegmentJobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        solutionVersionArn = {
            type = "string",
        },
    },
}

M.ListBatchSegmentJobsOutput = {
    type = "structure",
    id = "ListBatchSegmentJobsOutput",
    members = {
        batchSegmentJobs = {
            type = "list",
            member = M.BatchSegmentJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCampaignsInput = {
    type = "structure",
    id = "ListCampaignsInput",
    members = {
        solutionArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CampaignSummary = {
    type = "structure",
    id = "CampaignSummary",
    members = {
        name = {
            type = "string",
        },
        campaignArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListCampaignsOutput = {
    type = "structure",
    id = "ListCampaignsOutput",
    members = {
        campaigns = {
            type = "list",
            member = M.CampaignSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataDeletionJobsInput = {
    type = "structure",
    id = "ListDataDeletionJobsInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DataDeletionJobSummary = {
    type = "structure",
    id = "DataDeletionJobSummary",
    members = {
        dataDeletionJobArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListDataDeletionJobsOutput = {
    type = "structure",
    id = "ListDataDeletionJobsOutput",
    members = {
        dataDeletionJobs = {
            type = "list",
            member = M.DataDeletionJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDatasetExportJobsInput = {
    type = "structure",
    id = "ListDatasetExportJobsInput",
    members = {
        datasetArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DatasetExportJobSummary = {
    type = "structure",
    id = "DatasetExportJobSummary",
    members = {
        datasetExportJobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListDatasetExportJobsOutput = {
    type = "structure",
    id = "ListDatasetExportJobsOutput",
    members = {
        datasetExportJobs = {
            type = "list",
            member = M.DatasetExportJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDatasetGroupsInput = {
    type = "structure",
    id = "ListDatasetGroupsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DatasetGroupSummary = {
    type = "structure",
    id = "DatasetGroupSummary",
    members = {
        name = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        domain = {
            type = "string",
        },
    },
}

M.ListDatasetGroupsOutput = {
    type = "structure",
    id = "ListDatasetGroupsOutput",
    members = {
        datasetGroups = {
            type = "list",
            member = M.DatasetGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDatasetImportJobsInput = {
    type = "structure",
    id = "ListDatasetImportJobsInput",
    members = {
        datasetArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DatasetImportJobSummary = {
    type = "structure",
    id = "DatasetImportJobSummary",
    members = {
        datasetImportJobArn = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
        importMode = {
            type = "string",
        },
    },
}

M.ListDatasetImportJobsOutput = {
    type = "structure",
    id = "ListDatasetImportJobsOutput",
    members = {
        datasetImportJobs = {
            type = "list",
            member = M.DatasetImportJobSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    id = "ListDatasetsInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DatasetSummary = {
    type = "structure",
    id = "DatasetSummary",
    members = {
        name = {
            type = "string",
        },
        datasetArn = {
            type = "string",
        },
        datasetType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    id = "ListDatasetsOutput",
    members = {
        datasets = {
            type = "list",
            member = M.DatasetSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEventTrackersInput = {
    type = "structure",
    id = "ListEventTrackersInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EventTrackerSummary = {
    type = "structure",
    id = "EventTrackerSummary",
    members = {
        name = {
            type = "string",
        },
        eventTrackerArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListEventTrackersOutput = {
    type = "structure",
    id = "ListEventTrackersOutput",
    members = {
        eventTrackers = {
            type = "list",
            member = M.EventTrackerSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFiltersInput = {
    type = "structure",
    id = "ListFiltersInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.FilterSummary = {
    type = "structure",
    id = "FilterSummary",
    members = {
        name = {
            type = "string",
        },
        filterArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        datasetGroupArn = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListFiltersOutput = {
    type = "structure",
    id = "ListFiltersOutput",
    members = {
        Filters = {
            type = "list",
            member = M.FilterSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMetricAttributionMetricsInput = {
    type = "structure",
    id = "ListMetricAttributionMetricsInput",
    members = {
        metricAttributionArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListMetricAttributionMetricsOutput = {
    type = "structure",
    id = "ListMetricAttributionMetricsOutput",
    members = {
        metrics = {
            type = "list",
            member = M.MetricAttribute,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMetricAttributionsInput = {
    type = "structure",
    id = "ListMetricAttributionsInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.MetricAttributionSummary = {
    type = "structure",
    id = "MetricAttributionSummary",
    members = {
        name = {
            type = "string",
        },
        metricAttributionArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListMetricAttributionsOutput = {
    type = "structure",
    id = "ListMetricAttributionsOutput",
    members = {
        metricAttributions = {
            type = "list",
            member = M.MetricAttributionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecipeProvider = {
    SERVICE = "SERVICE",
}

M.ListRecipesInput = {
    type = "structure",
    id = "ListRecipesInput",
    members = {
        recipeProvider = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        domain = {
            type = "string",
        },
    },
}

M.RecipeSummary = {
    type = "structure",
    id = "RecipeSummary",
    members = {
        name = {
            type = "string",
        },
        recipeArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        domain = {
            type = "string",
        },
    },
}

M.ListRecipesOutput = {
    type = "structure",
    id = "ListRecipesOutput",
    members = {
        recipes = {
            type = "list",
            member = M.RecipeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendersInput = {
    type = "structure",
    id = "ListRecommendersInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.RecommenderSummary = {
    type = "structure",
    id = "RecommenderSummary",
    members = {
        name = {
            type = "string",
        },
        recommenderArn = {
            type = "string",
        },
        datasetGroupArn = {
            type = "string",
        },
        recipeArn = {
            type = "string",
        },
        recommenderConfig = M.RecommenderConfig,
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListRecommendersOutput = {
    type = "structure",
    id = "ListRecommendersOutput",
    members = {
        recommenders = {
            type = "list",
            member = M.RecommenderSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    id = "ListSchemasInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DatasetSchemaSummary = {
    type = "structure",
    id = "DatasetSchemaSummary",
    members = {
        name = {
            type = "string",
        },
        schemaArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        domain = {
            type = "string",
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    id = "ListSchemasOutput",
    members = {
        schemas = {
            type = "list",
            member = M.DatasetSchemaSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSolutionsInput = {
    type = "structure",
    id = "ListSolutionsInput",
    members = {
        datasetGroupArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.SolutionSummary = {
    type = "structure",
    id = "SolutionSummary",
    members = {
        name = {
            type = "string",
        },
        solutionArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        recipeArn = {
            type = "string",
        },
    },
}

M.ListSolutionsOutput = {
    type = "structure",
    id = "ListSolutionsOutput",
    members = {
        solutions = {
            type = "list",
            member = M.SolutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSolutionVersionsInput = {
    type = "structure",
    id = "ListSolutionVersionsInput",
    members = {
        solutionArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListSolutionVersionsOutput = {
    type = "structure",
    id = "ListSolutionVersionsOutput",
    members = {
        solutionVersions = {
            type = "list",
            member = M.SolutionVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartRecommenderInput = {
    type = "structure",
    id = "StartRecommenderInput",
    members = {
        recommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRecommenderOutput = {
    type = "structure",
    id = "StartRecommenderOutput",
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.StopRecommenderInput = {
    type = "structure",
    id = "StopRecommenderInput",
    members = {
        recommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopRecommenderOutput = {
    type = "structure",
    id = "StopRecommenderOutput",
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.StopSolutionVersionCreationInput = {
    type = "structure",
    id = "StopSolutionVersionCreationInput",
    members = {
        solutionVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSolutionVersionCreationOutput = {
    type = "structure",
    id = "StopSolutionVersionCreationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
    id = "TagResourceOutput",
}

M.TooManyTagKeysException = {
    type = "structure",
    id = "TooManyTagKeysException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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
    id = "UntagResourceOutput",
}

M.UpdateCampaignInput = {
    type = "structure",
    id = "UpdateCampaignInput",
    members = {
        campaignArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        solutionVersionArn = {
            type = "string",
        },
        minProvisionedTPS = {
            type = "integer",
        },
        campaignConfig = M.CampaignConfig,
    },
}

M.UpdateCampaignOutput = {
    type = "structure",
    id = "UpdateCampaignOutput",
    members = {
        campaignArn = {
            type = "string",
        },
    },
}

M.UpdateDatasetInput = {
    type = "structure",
    id = "UpdateDatasetInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatasetOutput = {
    type = "structure",
    id = "UpdateDatasetOutput",
    members = {
        datasetArn = {
            type = "string",
        },
    },
}

M.UpdateMetricAttributionInput = {
    type = "structure",
    id = "UpdateMetricAttributionInput",
    members = {
        addMetrics = {
            type = "list",
            member = M.MetricAttribute,
        },
        removeMetrics = {
            type = "list",
            member = { type = "string" },
        },
        metricsOutputConfig = M.MetricAttributionOutput,
        metricAttributionArn = {
            type = "string",
        },
    },
}

M.UpdateMetricAttributionOutput = {
    type = "structure",
    id = "UpdateMetricAttributionOutput",
    members = {
        metricAttributionArn = {
            type = "string",
        },
    },
}

M.UpdateRecommenderInput = {
    type = "structure",
    id = "UpdateRecommenderInput",
    members = {
        recommenderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommenderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommenderConfig }),
    },
}

M.UpdateRecommenderOutput = {
    type = "structure",
    id = "UpdateRecommenderOutput",
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.UpdateSolutionInput = {
    type = "structure",
    id = "UpdateSolutionInput",
    members = {
        solutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        performAutoTraining = {
            type = "boolean",
        },
        performIncrementalUpdate = {
            type = "boolean",
        },
        solutionUpdateConfig = M.SolutionUpdateConfig,
    },
}

M.UpdateSolutionOutput = {
    type = "structure",
    id = "UpdateSolutionOutput",
    members = {
        solutionArn = {
            type = "string",
        },
    },
}

return M
