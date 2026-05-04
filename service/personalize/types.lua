local M = {}

M.AlgorithmImage = {
    type = "structure",
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
    members = {
        s3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.BatchInferenceJobOutput = {
    type = "structure",
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        fieldsForThemeGeneration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldsForThemeGeneration }),
    },
}

M.CreateBatchInferenceJobInput = {
    type = "structure",
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
    members = {
        batchInferenceJobArn = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchSegmentJobInput = {
    type = "structure",
    members = {
        s3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.BatchSegmentJobOutput = {
    type = "structure",
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.CreateBatchSegmentJobInput = {
    type = "structure",
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
    members = {
        batchSegmentJobArn = {
            type = "string",
        },
    },
}

M.CampaignConfig = {
    type = "structure",
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
    members = {
        campaignArn = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        dataLocation = {
            type = "string",
        },
    },
}

M.CreateDataDeletionJobInput = {
    type = "structure",
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
    members = {
        dataDeletionJobArn = {
            type = "string",
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
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
    members = {
        s3DataDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataConfig }),
    },
}

M.CreateDatasetExportJobInput = {
    type = "structure",
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
    members = {
        datasetImportJobArn = {
            type = "string",
        },
    },
}

M.CreateEventTrackerInput = {
    type = "structure",
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
    members = {
        filterArn = {
            type = "string",
        },
    },
}

M.MetricAttribute = {
    type = "structure",
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
    members = {
        metricAttributionArn = {
            type = "string",
        },
    },
}

M.TrainingDataConfig = {
    type = "structure",
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
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
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
    members = {
        schemaArn = {
            type = "string",
        },
    },
}

M.AutoMLConfig = {
    type = "structure",
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
    members = {
        schedulingExpression = {
            type = "string",
        },
    },
}

M.EventParameters = {
    type = "structure",
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
    members = {
        eventParametersList = {
            type = "list",
            member = M.EventParameters,
        },
    },
}

M.CategoricalHyperParameterRange = {
    type = "structure",
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
    members = {
        solutionVersionArn = {
            type = "string",
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
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
}

M.DeleteDatasetInput = {
    type = "structure",
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
}

M.DeleteDatasetGroupInput = {
    type = "structure",
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
}

M.DeleteEventTrackerInput = {
    type = "structure",
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
}

M.DeleteFilterInput = {
    type = "structure",
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
}

M.DeleteMetricAttributionInput = {
    type = "structure",
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
}

M.DeleteRecommenderInput = {
    type = "structure",
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
}

M.DeleteSchemaInput = {
    type = "structure",
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
}

M.DeleteSolutionInput = {
    type = "structure",
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
}

M.DescribeAlgorithmInput = {
    type = "structure",
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
    members = {
        algorithm = M.Algorithm,
    },
}

M.DescribeBatchInferenceJobInput = {
    type = "structure",
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
    members = {
        batchInferenceJob = M.BatchInferenceJob,
    },
}

M.DescribeBatchSegmentJobInput = {
    type = "structure",
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
    members = {
        batchSegmentJob = M.BatchSegmentJob,
    },
}

M.DescribeCampaignInput = {
    type = "structure",
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
    members = {
        campaign = M.Campaign,
    },
}

M.DescribeDataDeletionJobInput = {
    type = "structure",
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
    members = {
        dataDeletionJob = M.DataDeletionJob,
    },
}

M.DescribeDatasetInput = {
    type = "structure",
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
    members = {
        dataset = M.Dataset,
    },
}

M.DescribeDatasetExportJobInput = {
    type = "structure",
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
    members = {
        datasetExportJob = M.DatasetExportJob,
    },
}

M.DescribeDatasetGroupInput = {
    type = "structure",
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
    members = {
        datasetGroup = M.DatasetGroup,
    },
}

M.DescribeDatasetImportJobInput = {
    type = "structure",
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
    members = {
        datasetImportJob = M.DatasetImportJob,
    },
}

M.DescribeEventTrackerInput = {
    type = "structure",
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
    members = {
        eventTracker = M.EventTracker,
    },
}

M.DescribeFeatureTransformationInput = {
    type = "structure",
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
    members = {
        featureTransformation = M.FeatureTransformation,
    },
}

M.DescribeFilterInput = {
    type = "structure",
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
    members = {
        filter = M.Filter,
    },
}

M.DescribeMetricAttributionInput = {
    type = "structure",
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
    members = {
        metricAttribution = M.MetricAttribution,
    },
}

M.DescribeRecipeInput = {
    type = "structure",
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
    members = {
        recipe = M.Recipe,
    },
}

M.DescribeRecommenderInput = {
    type = "structure",
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
    members = {
        recommender = M.Recommender,
    },
}

M.DescribeSchemaInput = {
    type = "structure",
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
    members = {
        schema = M.DatasetSchema,
    },
}

M.DescribeSolutionInput = {
    type = "structure",
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
    members = {
        bestRecipeArn = {
            type = "string",
        },
    },
}

M.SolutionUpdateConfig = {
    type = "structure",
    members = {
        autoTrainingConfig = M.AutoTrainingConfig,
        eventsConfig = M.EventsConfig,
    },
}

M.SolutionUpdateSummary = {
    type = "structure",
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
    members = {
        solution = M.Solution,
    },
}

M.DescribeSolutionVersionInput = {
    type = "structure",
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
    members = {
        solutionVersion = M.SolutionVersion,
    },
}

M.GetSolutionMetricsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListBatchInferenceJobsInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartRecommenderInput = {
    type = "structure",
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
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.StopRecommenderInput = {
    type = "structure",
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
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.StopSolutionVersionCreationInput = {
    type = "structure",
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
}

M.TagResourceInput = {
    type = "structure",
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
}

M.TooManyTagKeysException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateCampaignInput = {
    type = "structure",
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
    members = {
        campaignArn = {
            type = "string",
        },
    },
}

M.UpdateDatasetInput = {
    type = "structure",
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
    members = {
        datasetArn = {
            type = "string",
        },
    },
}

M.UpdateMetricAttributionInput = {
    type = "structure",
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
    members = {
        metricAttributionArn = {
            type = "string",
        },
    },
}

M.UpdateRecommenderInput = {
    type = "structure",
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
    members = {
        recommenderArn = {
            type = "string",
        },
    },
}

M.UpdateSolutionInput = {
    type = "structure",
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
    members = {
        solutionArn = {
            type = "string",
        },
    },
}

return M
