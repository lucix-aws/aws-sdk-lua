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
            member_type = "string",
        },
        isTunable = {
            type = "boolean",
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
            type = "number",
        },
        maxValue = {
            type = "number",
        },
        isTunable = {
            type = "boolean",
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
            type = "number",
        },
        maxValue = {
            type = "number",
        },
        isTunable = {
            type = "boolean",
        },
    },
}

M.DefaultHyperParameterRanges = {
    type = "structure",
    members = {
        integerHyperParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        continuousHyperParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        categoricalHyperParameterRanges = {
            type = "list",
            member_type = "structure",
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
        algorithmImage = {
            type = "structure",
        },
        defaultHyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        defaultHyperParameterRanges = {
            type = "structure",
        },
        defaultResourceConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        rankingInfluence = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
        s3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchInferenceJobOutput = {
    type = "structure",
    members = {
        s3DataDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        fieldsForThemeGeneration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        jobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        jobOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchInferenceJobConfig = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        batchInferenceJobMode = {
            type = "string",
        },
        themeGenerationConfig = {
            type = "structure",
        },
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
        s3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSegmentJobOutput = {
    type = "structure",
    members = {
        s3DataDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        jobInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        jobOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        enableMetadataWithRecommendations = {
            type = "boolean",
        },
        syncWithLatestSolutionVersion = {
            type = "boolean",
        },
        rankingInfluence = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
        },
        campaignConfig = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        s3DataDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        jobOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        s3DataDestination = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        metricsOutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "list",
        },
        includedDatasetColumns = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.RecommenderConfig = {
    type = "structure",
    members = {
        itemExplorationConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        minRecommendationRequestsPerSecond = {
            type = "number",
        },
        trainingDataConfig = {
            type = "structure",
        },
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
        recommenderConfig = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        weight = {
            type = "number",
        },
    },
}

M.EventsConfig = {
    type = "structure",
    members = {
        eventParametersList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        maxValue = {
            type = "number",
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
            type = "number",
        },
        maxValue = {
            type = "number",
        },
    },
}

M.HyperParameterRanges = {
    type = "structure",
    members = {
        integerHyperParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        continuousHyperParameterRanges = {
            type = "list",
            member_type = "structure",
        },
        categoricalHyperParameterRanges = {
            type = "list",
            member_type = "structure",
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
        hpoObjective = {
            type = "structure",
        },
        hpoResourceConfig = {
            type = "structure",
        },
        algorithmHyperParameterRanges = {
            type = "structure",
        },
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
        hpoConfig = {
            type = "structure",
        },
        algorithmHyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        featureTransformationParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        autoMLConfig = {
            type = "structure",
        },
        eventsConfig = {
            type = "structure",
        },
        optimizationObjective = {
            type = "structure",
        },
        trainingDataConfig = {
            type = "structure",
        },
        autoTrainingConfig = {
            type = "structure",
        },
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
        solutionConfig = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        algorithm = {
            type = "structure",
        },
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
            type = "number",
        },
        jobInput = {
            type = "structure",
        },
        jobOutput = {
            type = "structure",
        },
        batchInferenceJobConfig = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        batchInferenceJobMode = {
            type = "string",
        },
        themeGenerationConfig = {
            type = "structure",
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

M.DescribeBatchInferenceJobOutput = {
    type = "structure",
    members = {
        batchInferenceJob = {
            type = "structure",
        },
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
            type = "number",
        },
        jobInput = {
            type = "structure",
        },
        jobOutput = {
            type = "structure",
        },
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
        batchSegmentJob = {
            type = "structure",
        },
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
            type = "number",
        },
        campaignConfig = {
            type = "structure",
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
            type = "number",
        },
        campaignConfig = {
            type = "structure",
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
        latestCampaignUpdate = {
            type = "structure",
        },
    },
}

M.DescribeCampaignOutput = {
    type = "structure",
    members = {
        campaign = {
            type = "structure",
        },
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
        dataSource = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        numDeleted = {
            type = "number",
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
        dataDeletionJob = {
            type = "structure",
        },
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
        latestDatasetUpdate = {
            type = "structure",
        },
        trackingId = {
            type = "string",
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        dataset = {
            type = "structure",
        },
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
        jobOutput = {
            type = "structure",
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

M.DescribeDatasetExportJobOutput = {
    type = "structure",
    members = {
        datasetExportJob = {
            type = "structure",
        },
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
        datasetGroup = {
            type = "structure",
        },
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
        dataSource = {
            type = "structure",
        },
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
        datasetImportJob = {
            type = "structure",
        },
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
        eventTracker = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        featureTransformation = {
            type = "structure",
        },
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
        filter = {
            type = "structure",
        },
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
        metricsOutputConfig = {
            type = "structure",
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

M.DescribeMetricAttributionOutput = {
    type = "structure",
    members = {
        metricAttribution = {
            type = "structure",
        },
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
        recipe = {
            type = "structure",
        },
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
        recommenderConfig = {
            type = "structure",
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
        recommenderConfig = {
            type = "structure",
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
        failureReason = {
            type = "string",
        },
        latestRecommenderUpdate = {
            type = "structure",
        },
        modelMetrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
    },
}

M.DescribeRecommenderOutput = {
    type = "structure",
    members = {
        recommender = {
            type = "structure",
        },
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
        schema = {
            type = "structure",
        },
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
        autoTrainingConfig = {
            type = "structure",
        },
        eventsConfig = {
            type = "structure",
        },
    },
}

M.SolutionUpdateSummary = {
    type = "structure",
    members = {
        solutionUpdateConfig = {
            type = "structure",
        },
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
        },
        performAutoML = {
            type = "boolean",
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
        solutionConfig = {
            type = "structure",
        },
        autoMLResult = {
            type = "structure",
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
        latestSolutionVersion = {
            type = "structure",
        },
        latestSolutionUpdate = {
            type = "structure",
        },
    },
}

M.DescribeSolutionOutput = {
    type = "structure",
    members = {
        solution = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        },
        performAutoML = {
            type = "boolean",
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
        solutionConfig = {
            type = "structure",
        },
        trainingHours = {
            type = "number",
        },
        trainingMode = {
            type = "string",
        },
        tunedHPOParams = {
            type = "structure",
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
        trainingType = {
            type = "string",
        },
    },
}

M.DescribeSolutionVersionOutput = {
    type = "structure",
    members = {
        solutionVersion = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListMetricAttributionMetricsOutput = {
    type = "structure",
    members = {
        metrics = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        recommenderConfig = {
            type = "structure",
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

M.ListRecommendersOutput = {
    type = "structure",
    members = {
        recommenders = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListSolutionVersionsOutput = {
    type = "structure",
    members = {
        solutionVersions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        campaignConfig = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        removeMetrics = {
            type = "list",
            member_type = "string",
        },
        metricsOutputConfig = {
            type = "structure",
        },
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
        recommenderConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        solutionUpdateConfig = {
            type = "structure",
        },
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
