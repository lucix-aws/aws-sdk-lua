local M = {}

M.AutoRefreshMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AccessBudgetType = {
    CALENDAR_DAY = "CALENDAR_DAY",
    CALENDAR_MONTH = "CALENDAR_MONTH",
    CALENDAR_WEEK = "CALENDAR_WEEK",
    LIFETIME = "LIFETIME",
}

M.AccessBudgetDetails = {
    type = "structure",
    id = "AccessBudgetDetails",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        remainingBudget = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        budgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoRefresh = {
            type = "string",
        },
    },
}

M.AccessBudget = {
    type = "structure",
    id = "AccessBudget",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "list",
            member = M.AccessBudgetDetails,
            traits = {
                required = true,
            },
        },
        aggregateRemainingBudget = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ConfigMap = {
    type = "structure",
    id = "S3ConfigMap",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AudienceDestination = {
    type = "structure",
    id = "AudienceDestination",
    members = {
        s3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ConfigMap }),
    },
}

M.ListAudienceExportJobsInput = {
    type = "structure",
    id = "ListAudienceExportJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                http_query = "audienceGenerationJobArn",
            },
        },
    },
}

M.AudienceSizeType = {
    ABSOLUTE = "ABSOLUTE",
    PERCENTAGE = "PERCENTAGE",
}

M.AudienceSize = {
    type = "structure",
    id = "AudienceSize",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AudienceExportJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
}

M.StatusDetails = {
    type = "structure",
    id = "StatusDetails",
    members = {
        statusCode = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.AudienceExportJobSummary = {
    type = "structure",
    id = "AudienceExportJobSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudienceSize }),
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        outputLocation = {
            type = "string",
        },
    },
}

M.ListAudienceExportJobsOutput = {
    type = "structure",
    id = "ListAudienceExportJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        audienceExportJobs = {
            type = "list",
            member = M.AudienceExportJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaName = {
            type = "string",
        },
        quotaValue = {
            type = "double",
        },
    },
}

M.StartAudienceExportJobInput = {
    type = "structure",
    id = "StartAudienceExportJobInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudienceSize }),
        description = {
            type = "string",
        },
    },
}

M.StartAudienceExportJobOutput = {
    type = "structure",
    id = "StartAudienceExportJobOutput",
}

M.DeleteAudienceGenerationJobInput = {
    type = "structure",
    id = "DeleteAudienceGenerationJobInput",
    members = {
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAudienceGenerationJobOutput = {
    type = "structure",
    id = "DeleteAudienceGenerationJobOutput",
}

M.GetAudienceGenerationJobInput = {
    type = "structure",
    id = "GetAudienceGenerationJobInput",
    members = {
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RelevanceMetric = {
    type = "structure",
    id = "RelevanceMetric",
    members = {
        audienceSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudienceSize }),
        score = {
            type = "double",
        },
    },
}

M.AudienceQualityMetrics = {
    type = "structure",
    id = "AudienceQualityMetrics",
    members = {
        relevanceMetrics = {
            type = "list",
            member = M.RelevanceMetric,
            traits = {
                required = true,
            },
        },
        recallMetric = {
            type = "double",
        },
    },
}

M.WorkerComputeConfigurationProperties = {
    type = "union",
    id = "WorkerComputeConfigurationProperties",
    members = {
        spark = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.WorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.WorkerComputeConfiguration = {
    type = "structure",
    id = "WorkerComputeConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                default = "CR.1X",
            },
        },
        number = {
            type = "integer",
            traits = {
                default = 16,
            },
        },
        properties = M.WorkerComputeConfigurationProperties,
    },
}

M.ComputeConfiguration = {
    type = "union",
    id = "ComputeConfiguration",
    members = {
        worker = M.WorkerComputeConfiguration,
    },
}

M.ProtectedQuerySQLParameters = {
    type = "structure",
    id = "ProtectedQuerySQLParameters",
    members = {
        queryString = {
            type = "string",
        },
        analysisTemplateArn = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AudienceGenerationJobDataSource = {
    type = "structure",
    id = "AudienceGenerationJobDataSource",
    members = {
        dataSource = M.S3ConfigMap,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sqlParameters = M.ProtectedQuerySQLParameters,
        sqlComputeConfiguration = M.ComputeConfiguration,
    },
}

M.AudienceGenerationJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.GetAudienceGenerationJobOutput = {
    type = "structure",
    id = "GetAudienceGenerationJobOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seedAudience = M.AudienceGenerationJobDataSource,
        includeSeedInOutput = {
            type = "boolean",
        },
        collaborationId = {
            type = "string",
        },
        metrics = M.AudienceQualityMetrics,
        startedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        protectedQueryIdentifier = {
            type = "string",
        },
    },
}

M.ListAudienceGenerationJobsInput = {
    type = "structure",
    id = "ListAudienceGenerationJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_query = "configuredAudienceModelArn",
            },
        },
        collaborationId = {
            type = "string",
            traits = {
                http_query = "collaborationId",
            },
        },
    },
}

M.AudienceGenerationJobSummary = {
    type = "structure",
    id = "AudienceGenerationJobSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationId = {
            type = "string",
        },
        startedBy = {
            type = "string",
        },
    },
}

M.ListAudienceGenerationJobsOutput = {
    type = "structure",
    id = "ListAudienceGenerationJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        audienceGenerationJobs = {
            type = "list",
            member = M.AudienceGenerationJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.StartAudienceGenerationJobInput = {
    type = "structure",
    id = "StartAudienceGenerationJobInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seedAudience = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudienceGenerationJobDataSource }),
        includeSeedInOutput = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        collaborationId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartAudienceGenerationJobOutput = {
    type = "structure",
    id = "StartAudienceGenerationJobOutput",
    members = {
        audienceGenerationJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAudienceModelInput = {
    type = "structure",
    id = "CreateAudienceModelInput",
    members = {
        trainingDataStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        trainingDataEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateAudienceModelOutput = {
    type = "structure",
    id = "CreateAudienceModelOutput",
    members = {
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAudienceModelInput = {
    type = "structure",
    id = "DeleteAudienceModelInput",
    members = {
        audienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAudienceModelOutput = {
    type = "structure",
    id = "DeleteAudienceModelOutput",
}

M.GetAudienceModelInput = {
    type = "structure",
    id = "GetAudienceModelInput",
    members = {
        audienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AudienceModelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.GetAudienceModelOutput = {
    type = "structure",
    id = "GetAudienceModelOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainingDataStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        trainingDataEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.ListAudienceModelsInput = {
    type = "structure",
    id = "ListAudienceModelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AudienceModelSummary = {
    type = "structure",
    id = "AudienceModelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListAudienceModelsOutput = {
    type = "structure",
    id = "ListAudienceModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        audienceModels = {
            type = "list",
            member = M.AudienceModelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.AudienceSizeConfig = {
    type = "structure",
    id = "AudienceSizeConfig",
    members = {
        audienceSizeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceSizeBins = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagOnCreatePolicy = {
    FROM_PARENT_RESOURCE = "FROM_PARENT_RESOURCE",
    NONE = "NONE",
}

M.ConfiguredAudienceModelOutputConfig = {
    type = "structure",
    id = "ConfiguredAudienceModelOutputConfig",
    members = {
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudienceDestination }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SharedAudienceMetrics = {
    ALL = "ALL",
    NONE = "NONE",
}

M.CreateConfiguredAudienceModelInput = {
    type = "structure",
    id = "CreateConfiguredAudienceModelInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelOutputConfig }),
        description = {
            type = "string",
        },
        sharedAudienceMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        minMatchingSeedSize = {
            type = "integer",
            traits = {
                default = 500,
            },
        },
        audienceSizeConfig = M.AudienceSizeConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        childResourceTagOnCreatePolicy = {
            type = "string",
        },
    },
}

M.CreateConfiguredAudienceModelOutput = {
    type = "structure",
    id = "CreateConfiguredAudienceModelOutput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelInput = {
    type = "structure",
    id = "DeleteConfiguredAudienceModelInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelOutput = {
    type = "structure",
    id = "DeleteConfiguredAudienceModelOutput",
}

M.GetConfiguredAudienceModelInput = {
    type = "structure",
    id = "GetConfiguredAudienceModelInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConfiguredAudienceModelStatus = {
    ACTIVE = "ACTIVE",
}

M.GetConfiguredAudienceModelOutput = {
    type = "structure",
    id = "GetConfiguredAudienceModelOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelOutputConfig }),
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sharedAudienceMetrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        minMatchingSeedSize = {
            type = "integer",
        },
        audienceSizeConfig = M.AudienceSizeConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        childResourceTagOnCreatePolicy = {
            type = "string",
        },
    },
}

M.ListConfiguredAudienceModelsInput = {
    type = "structure",
    id = "ListConfiguredAudienceModelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredAudienceModelSummary = {
    type = "structure",
    id = "ConfiguredAudienceModelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfiguredAudienceModelOutputConfig }),
        description = {
            type = "string",
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfiguredAudienceModelsOutput = {
    type = "structure",
    id = "ListConfiguredAudienceModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        configuredAudienceModels = {
            type = "list",
            member = M.ConfiguredAudienceModelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredAudienceModelInput = {
    type = "structure",
    id = "UpdateConfiguredAudienceModelInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputConfig = M.ConfiguredAudienceModelOutputConfig,
        audienceModelArn = {
            type = "string",
        },
        sharedAudienceMetrics = {
            type = "list",
            member = { type = "string" },
        },
        minMatchingSeedSize = {
            type = "integer",
        },
        audienceSizeConfig = M.AudienceSizeConfig,
        description = {
            type = "string",
        },
    },
}

M.UpdateConfiguredAudienceModelOutput = {
    type = "structure",
    id = "UpdateConfiguredAudienceModelOutput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelPolicyInput = {
    type = "structure",
    id = "DeleteConfiguredAudienceModelPolicyInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredAudienceModelPolicyOutput = {
    type = "structure",
    id = "DeleteConfiguredAudienceModelPolicyOutput",
}

M.GetConfiguredAudienceModelPolicyInput = {
    type = "structure",
    id = "GetConfiguredAudienceModelPolicyInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredAudienceModelPolicyOutput = {
    type = "structure",
    id = "GetConfiguredAudienceModelPolicyOutput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredAudienceModelPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyExistenceCondition = {
    POLICY_MUST_EXIST = "POLICY_MUST_EXIST",
    POLICY_MUST_NOT_EXIST = "POLICY_MUST_NOT_EXIST",
}

M.PutConfiguredAudienceModelPolicyInput = {
    type = "structure",
    id = "PutConfiguredAudienceModelPolicyInput",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredAudienceModelPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        previousPolicyHash = {
            type = "string",
        },
        policyExistenceCondition = {
            type = "string",
        },
    },
}

M.PutConfiguredAudienceModelPolicyOutput = {
    type = "structure",
    id = "PutConfiguredAudienceModelPolicyOutput",
    members = {
        configuredAudienceModelPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceContainerConfig = {
    type = "structure",
    id = "InferenceContainerConfig",
    members = {
        imageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDefinition = {
    type = "structure",
    id = "MetricDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regex = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerConfig = {
    type = "structure",
    id = "ContainerConfig",
    members = {
        imageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entrypoint = {
            type = "list",
            member = { type = "string" },
        },
        arguments = {
            type = "list",
            member = { type = "string" },
        },
        metricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
    },
}

M.CreateConfiguredModelAlgorithmInput = {
    type = "structure",
    id = "CreateConfiguredModelAlgorithmInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingContainerConfig = M.ContainerConfig,
        inferenceContainerConfig = M.InferenceContainerConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateConfiguredModelAlgorithmOutput = {
    type = "structure",
    id = "CreateConfiguredModelAlgorithmOutput",
    members = {
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredModelAlgorithmInput = {
    type = "structure",
    id = "DeleteConfiguredModelAlgorithmInput",
    members = {
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredModelAlgorithmOutput = {
    type = "structure",
    id = "DeleteConfiguredModelAlgorithmOutput",
}

M.GetConfiguredModelAlgorithmInput = {
    type = "structure",
    id = "GetConfiguredModelAlgorithmInput",
    members = {
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredModelAlgorithmOutput = {
    type = "structure",
    id = "GetConfiguredModelAlgorithmOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingContainerConfig = M.ContainerConfig,
        inferenceContainerConfig = M.InferenceContainerConfig,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListConfiguredModelAlgorithmsInput = {
    type = "structure",
    id = "ListConfiguredModelAlgorithmsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredModelAlgorithmSummary = {
    type = "structure",
    id = "ConfiguredModelAlgorithmSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListConfiguredModelAlgorithmsOutput = {
    type = "structure",
    id = "ListConfiguredModelAlgorithmsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        configuredModelAlgorithms = {
            type = "list",
            member = M.ConfiguredModelAlgorithmSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelExportFileType = {
    MODEL = "MODEL",
    OUTPUT = "OUTPUT",
}

M.TrainedModelExportsMaxSizeUnitType = {
    GB = "GB",
}

M.TrainedModelExportsMaxSize = {
    type = "structure",
    id = "TrainedModelExportsMaxSize",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelExportsConfigurationPolicy = {
    type = "structure",
    id = "TrainedModelExportsConfigurationPolicy",
    members = {
        maxSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainedModelExportsMaxSize }),
        filesToExport = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CustomEntityConfig = {
    type = "structure",
    id = "CustomEntityConfig",
    members = {
        customDataIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EntityType = {
    ALL_PERSONALLY_IDENTIFIABLE_INFORMATION = "ALL_PERSONALLY_IDENTIFIABLE_INFORMATION",
    NUMBERS = "NUMBERS",
    CUSTOM = "CUSTOM",
}

M.LogRedactionConfiguration = {
    type = "structure",
    id = "LogRedactionConfiguration",
    members = {
        entitiesToRedact = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        customEntityConfig = M.CustomEntityConfig,
    },
}

M.LogType = {
    ALL = "ALL",
    ERROR_SUMMARY = "ERROR_SUMMARY",
}

M.LogsConfigurationPolicy = {
    type = "structure",
    id = "LogsConfigurationPolicy",
    members = {
        allowedAccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        filterPattern = {
            type = "string",
        },
        logType = {
            type = "string",
            traits = {
                default = "ALL",
            },
        },
        logRedactionConfiguration = M.LogRedactionConfiguration,
    },
}

M.TrainedModelInferenceMaxOutputSizeUnitType = {
    GB = "GB",
}

M.TrainedModelInferenceMaxOutputSize = {
    type = "structure",
    id = "TrainedModelInferenceMaxOutputSize",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelInferenceJobsConfigurationPolicy = {
    type = "structure",
    id = "TrainedModelInferenceJobsConfigurationPolicy",
    members = {
        containerLogs = {
            type = "list",
            member = M.LogsConfigurationPolicy,
        },
        maxOutputSize = M.TrainedModelInferenceMaxOutputSize,
    },
}

M.NoiseLevelType = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    NONE = "NONE",
}

M.MetricsConfigurationPolicy = {
    type = "structure",
    id = "MetricsConfigurationPolicy",
    members = {
        noiseLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelArtifactMaxSizeUnitType = {
    GB = "GB",
}

M.TrainedModelArtifactMaxSize = {
    type = "structure",
    id = "TrainedModelArtifactMaxSize",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelsConfigurationPolicy = {
    type = "structure",
    id = "TrainedModelsConfigurationPolicy",
    members = {
        containerLogs = {
            type = "list",
            member = M.LogsConfigurationPolicy,
        },
        containerMetrics = M.MetricsConfigurationPolicy,
        maxArtifactSize = M.TrainedModelArtifactMaxSize,
    },
}

M.PrivacyConfigurationPolicies = {
    type = "structure",
    id = "PrivacyConfigurationPolicies",
    members = {
        trainedModels = M.TrainedModelsConfigurationPolicy,
        trainedModelExports = M.TrainedModelExportsConfigurationPolicy,
        trainedModelInferenceJobs = M.TrainedModelInferenceJobsConfigurationPolicy,
    },
}

M.PrivacyConfiguration = {
    type = "structure",
    id = "PrivacyConfiguration",
    members = {
        policies = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivacyConfigurationPolicies }),
    },
}

M.CreateConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
    id = "CreateConfiguredModelAlgorithmAssociationInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        privacyConfiguration = M.PrivacyConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConfiguredModelAlgorithmAssociationOutput = {
    type = "structure",
    id = "CreateConfiguredModelAlgorithmAssociationOutput",
    members = {
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
    id = "DeleteConfiguredModelAlgorithmAssociationInput",
    members = {
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfiguredModelAlgorithmAssociationOutput = {
    type = "structure",
    id = "DeleteConfiguredModelAlgorithmAssociationOutput",
}

M.GetCollaborationConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
    id = "GetCollaborationConfiguredModelAlgorithmAssociationInput",
    members = {
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCollaborationConfiguredModelAlgorithmAssociationOutput = {
    type = "structure",
    id = "GetCollaborationConfiguredModelAlgorithmAssociationOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyConfiguration = M.PrivacyConfiguration,
    },
}

M.GetConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
    id = "GetConfiguredModelAlgorithmAssociationInput",
    members = {
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfiguredModelAlgorithmAssociationOutput = {
    type = "structure",
    id = "GetConfiguredModelAlgorithmAssociationOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privacyConfiguration = M.PrivacyConfiguration,
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListConfiguredModelAlgorithmAssociationsInput = {
    type = "structure",
    id = "ListConfiguredModelAlgorithmAssociationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConfiguredModelAlgorithmAssociationSummary = {
    type = "structure",
    id = "ConfiguredModelAlgorithmAssociationSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfiguredModelAlgorithmAssociationsOutput = {
    type = "structure",
    id = "ListConfiguredModelAlgorithmAssociationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = M.ConfiguredModelAlgorithmAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationConfiguredModelAlgorithmAssociationsInput = {
    type = "structure",
    id = "ListCollaborationConfiguredModelAlgorithmAssociationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CollaborationConfiguredModelAlgorithmAssociationSummary = {
    type = "structure",
    id = "CollaborationConfiguredModelAlgorithmAssociationSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationConfiguredModelAlgorithmAssociationsOutput = {
    type = "structure",
    id = "ListCollaborationConfiguredModelAlgorithmAssociationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationConfiguredModelAlgorithmAssociations = {
            type = "list",
            member = M.CollaborationConfiguredModelAlgorithmAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationMLInputChannelsInput = {
    type = "structure",
    id = "ListCollaborationMLInputChannelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MLInputChannelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    INACTIVE = "INACTIVE",
}

M.CollaborationMLInputChannelSummary = {
    type = "structure",
    id = "CollaborationMLInputChannelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListCollaborationMLInputChannelsOutput = {
    type = "structure",
    id = "ListCollaborationMLInputChannelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationMLInputChannelsList = {
            type = "list",
            member = M.CollaborationMLInputChannelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelExportJobsInput = {
    type = "structure",
    id = "ListCollaborationTrainedModelExportJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
            traits = {
                http_query = "trainedModelVersionIdentifier",
            },
        },
    },
}

M.TrainedModelExportReceiverMember = {
    type = "structure",
    id = "TrainedModelExportReceiverMember",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelExportOutputConfiguration = {
    type = "structure",
    id = "TrainedModelExportOutputConfiguration",
    members = {
        members = {
            type = "list",
            member = M.TrainedModelExportReceiverMember,
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelExportJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
}

M.CollaborationTrainedModelExportJobSummary = {
    type = "structure",
    id = "CollaborationTrainedModelExportJobSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainedModelExportOutputConfiguration }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        description = {
            type = "string",
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelExportJobsOutput = {
    type = "structure",
    id = "ListCollaborationTrainedModelExportJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModelExportJobs = {
            type = "list",
            member = M.CollaborationTrainedModelExportJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelInferenceJobsInput = {
    type = "structure",
    id = "ListCollaborationTrainedModelInferenceJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_query = "trainedModelArn",
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
            traits = {
                http_query = "trainedModelVersionIdentifier",
            },
        },
    },
}

M.LogsStatus = {
    PUBLISH_SUCCEEDED = "PUBLISH_SUCCEEDED",
    PUBLISH_FAILED = "PUBLISH_FAILED",
}

M.MetricsStatus = {
    PUBLISH_SUCCEEDED = "PUBLISH_SUCCEEDED",
    PUBLISH_FAILED = "PUBLISH_FAILED",
}

M.InferenceReceiverMember = {
    type = "structure",
    id = "InferenceReceiverMember",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceOutputConfiguration = {
    type = "structure",
    id = "InferenceOutputConfiguration",
    members = {
        accept = {
            type = "string",
            traits = {
                default = "application/json",
            },
        },
        members = {
            type = "list",
            member = M.InferenceReceiverMember,
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelInferenceJobStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    CANCEL_PENDING = "CANCEL_PENDING",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_FAILED = "CANCEL_FAILED",
    INACTIVE = "INACTIVE",
}

M.CollaborationTrainedModelInferenceJobSummary = {
    type = "structure",
    id = "CollaborationTrainedModelInferenceJobSummary",
    members = {
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceOutputConfiguration }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        metricsStatus = {
            type = "string",
        },
        metricsStatusDetails = {
            type = "string",
        },
        logsStatus = {
            type = "string",
        },
        logsStatusDetails = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelInferenceJobsOutput = {
    type = "structure",
    id = "ListCollaborationTrainedModelInferenceJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModelInferenceJobs = {
            type = "list",
            member = M.CollaborationTrainedModelInferenceJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelsInput = {
    type = "structure",
    id = "ListCollaborationTrainedModelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.IncrementalTrainingDataChannelOutput = {
    type = "structure",
    id = "IncrementalTrainingDataChannelOutput",
    members = {
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        modelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETE_PENDING = "DELETE_PENDING",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    INACTIVE = "INACTIVE",
    CANCEL_PENDING = "CANCEL_PENDING",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_FAILED = "CANCEL_FAILED",
}

M.CollaborationTrainedModelSummary = {
    type = "structure",
    id = "CollaborationTrainedModelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        incrementalTrainingDataChannels = {
            type = "list",
            member = M.IncrementalTrainingDataChannelOutput,
        },
        description = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelsOutput = {
    type = "structure",
    id = "ListCollaborationTrainedModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModels = {
            type = "list",
            member = M.CollaborationTrainedModelSummary,
            traits = {
                required = true,
            },
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
                http_label = true,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMLConfigurationInput = {
    type = "structure",
    id = "DeleteMLConfigurationInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMLConfigurationOutput = {
    type = "structure",
    id = "DeleteMLConfigurationOutput",
}

M.GetMLConfigurationInput = {
    type = "structure",
    id = "GetMLConfigurationInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        s3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ConfigMap }),
    },
}

M.MLOutputConfiguration = {
    type = "structure",
    id = "MLOutputConfiguration",
    members = {
        destination = M.Destination,
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMLConfigurationOutput = {
    type = "structure",
    id = "GetMLConfigurationOutput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultOutputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MLOutputConfiguration }),
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.PutMLConfigurationInput = {
    type = "structure",
    id = "PutMLConfigurationInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        defaultOutputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MLOutputConfiguration }),
    },
}

M.PutMLConfigurationOutput = {
    type = "structure",
    id = "PutMLConfigurationOutput",
}

M.ResultFormat = {
    CSV = "CSV",
    PARQUET = "PARQUET",
}

M.ProtectedQueryInputParameters = {
    type = "structure",
    id = "ProtectedQueryInputParameters",
    members = {
        sqlParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectedQuerySQLParameters }),
        computeConfiguration = M.ComputeConfiguration,
        resultFormat = {
            type = "string",
            traits = {
                default = "CSV",
            },
        },
    },
}

M.InputChannelDataSource = {
    type = "union",
    id = "InputChannelDataSource",
    members = {
        protectedQueryInputParameters = M.ProtectedQueryInputParameters,
    },
}

M.InputChannel = {
    type = "structure",
    id = "InputChannel",
    members = {
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputChannelDataSource }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMLInputChannelInput = {
    type = "structure",
    id = "CreateMLInputChannelInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        inputChannel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputChannel }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retentionInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateMLInputChannelOutput = {
    type = "structure",
    id = "CreateMLInputChannelOutput",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMLInputChannelDataInput = {
    type = "structure",
    id = "DeleteMLInputChannelDataInput",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMLInputChannelDataOutput = {
    type = "structure",
    id = "DeleteMLInputChannelDataOutput",
}

M.GetCollaborationMLInputChannelInput = {
    type = "structure",
    id = "GetCollaborationMLInputChannelInput",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PrivacyBudgets = {
    type = "union",
    id = "PrivacyBudgets",
    members = {
        accessBudgets = {
            type = "list",
            member = M.AccessBudget,
        },
    },
}

M.MembershipInferenceAttackVersion = {
    DISTANCE_TO_CLOSEST_RECORD_V1 = "DISTANCE_TO_CLOSEST_RECORD_V1",
}

M.MembershipInferenceAttackScore = {
    type = "structure",
    id = "MembershipInferenceAttackScore",
    members = {
        attackVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        score = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPrivacyScores = {
    type = "structure",
    id = "DataPrivacyScores",
    members = {
        membershipInferenceAttackScores = {
            type = "list",
            member = M.MembershipInferenceAttackScore,
            traits = {
                required = true,
            },
        },
    },
}

M.SyntheticDataEvaluationScores = {
    type = "structure",
    id = "SyntheticDataEvaluationScores",
    members = {
        dataPrivacyScores = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPrivacyScores }),
    },
}

M.SyntheticDataColumnType = {
    CATEGORICAL = "CATEGORICAL",
    NUMERICAL = "NUMERICAL",
}

M.SyntheticDataColumnProperties = {
    type = "structure",
    id = "SyntheticDataColumnProperties",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        columnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isPredictiveValue = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnClassificationDetails = {
    type = "structure",
    id = "ColumnClassificationDetails",
    members = {
        columnMapping = {
            type = "list",
            member = M.SyntheticDataColumnProperties,
            traits = {
                required = true,
            },
        },
    },
}

M.MLSyntheticDataParameters = {
    type = "structure",
    id = "MLSyntheticDataParameters",
    members = {
        epsilon = {
            type = "double",
            traits = {
                required = true,
            },
        },
        maxMembershipInferenceAttackScore = {
            type = "double",
            traits = {
                required = true,
            },
        },
        columnClassification = M.ColumnClassificationDetails,
    },
}

M.SyntheticDataConfiguration = {
    type = "structure",
    id = "SyntheticDataConfiguration",
    members = {
        syntheticDataParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MLSyntheticDataParameters }),
        syntheticDataEvaluationScores = M.SyntheticDataEvaluationScores,
    },
}

M.GetCollaborationMLInputChannelOutput = {
    type = "structure",
    id = "GetCollaborationMLInputChannelOutput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        retentionInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        numberOfRecords = {
            type = "long",
        },
        privacyBudgets = M.PrivacyBudgets,
        description = {
            type = "string",
        },
        syntheticDataConfiguration = M.SyntheticDataConfiguration,
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMLInputChannelInput = {
    type = "structure",
    id = "GetMLInputChannelInput",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMLInputChannelOutput = {
    type = "structure",
    id = "GetMLInputChannelOutput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        retentionInDays = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        numberOfRecords = {
            type = "long",
        },
        privacyBudgets = M.PrivacyBudgets,
        description = {
            type = "string",
        },
        syntheticDataConfiguration = M.SyntheticDataConfiguration,
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        inputChannel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputChannel }),
        protectedQueryIdentifier = {
            type = "string",
        },
        numberOfFiles = {
            type = "double",
        },
        sizeInGb = {
            type = "double",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListMLInputChannelsInput = {
    type = "structure",
    id = "ListMLInputChannelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MLInputChannelSummary = {
    type = "structure",
    id = "MLInputChannelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        protectedQueryIdentifier = {
            type = "string",
        },
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListMLInputChannelsOutput = {
    type = "structure",
    id = "ListMLInputChannelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        mlInputChannelsList = {
            type = "list",
            member = M.MLInputChannelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.CancelTrainedModelInput = {
    type = "structure",
    id = "CancelTrainedModelInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
            traits = {
                http_query = "versionIdentifier",
            },
        },
    },
}

M.CancelTrainedModelOutput = {
    type = "structure",
    id = "CancelTrainedModelOutput",
}

M.S3DataDistributionType = {
    FULLY_REPLICATED = "FullyReplicated",
    SHARDED_BY_S3_KEY = "ShardedByS3Key",
}

M.ModelTrainingDataChannel = {
    type = "structure",
    id = "ModelTrainingDataChannel",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3DataDistributionType = {
            type = "string",
            traits = {
                default = "FullyReplicated",
            },
        },
    },
}

M.IncrementalTrainingDataChannel = {
    type = "structure",
    id = "IncrementalTrainingDataChannel",
    members = {
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceType = {
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_P4DE_24XLARGE = "ml.p4de.24xlarge",
    ML_P5_48XLARGE = "ml.p5.48xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5N_XLARGE = "ml.c5n.xlarge",
    ML_C5N_2XLARGE = "ml.c5n.2xlarge",
    ML_C5N_4XLARGE = "ml.c5n.4xlarge",
    ML_C5N_9XLARGE = "ml.c5n.9xlarge",
    ML_C5N_18XLARGE = "ml.c5n.18xlarge",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_TRN1_2XLARGE = "ml.trn1.2xlarge",
    ML_TRN1_32XLARGE = "ml.trn1.32xlarge",
    ML_TRN1N_32XLARGE = "ml.trn1n.32xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_R5D_LARGE = "ml.r5d.large",
    ML_R5D_XLARGE = "ml.r5d.xlarge",
    ML_R5D_2XLARGE = "ml.r5d.2xlarge",
    ML_R5D_4XLARGE = "ml.r5d.4xlarge",
    ML_R5D_8XLARGE = "ml.r5d.8xlarge",
    ML_R5D_12XLARGE = "ml.r5d.12xlarge",
    ML_R5D_16XLARGE = "ml.r5d.16xlarge",
    ML_R5D_24XLARGE = "ml.r5d.24xlarge",
    ML_T3_MEDIUM = "ml.t3.medium",
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_R5_LARGE = "ml.r5.large",
    ML_R5_XLARGE = "ml.r5.xlarge",
    ML_R5_2XLARGE = "ml.r5.2xlarge",
    ML_R5_4XLARGE = "ml.r5.4xlarge",
    ML_R5_8XLARGE = "ml.r5.8xlarge",
    ML_R5_12XLARGE = "ml.r5.12xlarge",
    ML_R5_16XLARGE = "ml.r5.16xlarge",
    ML_R5_24XLARGE = "ml.r5.24xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
    ML_P5EN_48XLARGE = "ml.p5en.48xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
}

M.ResourceConfig = {
    type = "structure",
    id = "ResourceConfig",
    members = {
        instanceCount = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeSizeInGB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.StoppingCondition = {
    type = "structure",
    id = "StoppingCondition",
    members = {
        maxRuntimeInSeconds = {
            type = "integer",
            traits = {
                default = 86400,
            },
        },
    },
}

M.TrainingInputMode = {
    FILE = "File",
    FAST_FILE = "FastFile",
    PIPE = "Pipe",
}

M.CreateTrainedModelInput = {
    type = "structure",
    id = "CreateTrainedModelInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hyperparameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceConfig }),
        stoppingCondition = M.StoppingCondition,
        incrementalTrainingDataChannels = {
            type = "list",
            member = M.IncrementalTrainingDataChannel,
        },
        dataChannels = {
            type = "list",
            member = M.ModelTrainingDataChannel,
            traits = {
                required = true,
            },
        },
        trainingInputMode = {
            type = "string",
            traits = {
                default = "File",
            },
        },
        description = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTrainedModelOutput = {
    type = "structure",
    id = "CreateTrainedModelOutput",
    members = {
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrainedModelOutputInput = {
    type = "structure",
    id = "DeleteTrainedModelOutputInput",
    members = {
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
            traits = {
                http_query = "versionIdentifier",
            },
        },
    },
}

M.DeleteTrainedModelOutputOutput = {
    type = "structure",
    id = "DeleteTrainedModelOutputOutput",
}

M.GetCollaborationTrainedModelInput = {
    type = "structure",
    id = "GetCollaborationTrainedModelInput",
    members = {
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
            traits = {
                http_query = "versionIdentifier",
            },
        },
    },
}

M.GetCollaborationTrainedModelOutput = {
    type = "structure",
    id = "GetCollaborationTrainedModelOutput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        incrementalTrainingDataChannels = {
            type = "list",
            member = M.IncrementalTrainingDataChannelOutput,
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceConfig = M.ResourceConfig,
        trainingInputMode = {
            type = "string",
        },
        stoppingCondition = M.StoppingCondition,
        metricsStatus = {
            type = "string",
        },
        metricsStatusDetails = {
            type = "string",
        },
        logsStatus = {
            type = "string",
        },
        logsStatusDetails = {
            type = "string",
        },
        trainingContainerImageDigest = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        creatorAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrainedModelInput = {
    type = "structure",
    id = "GetTrainedModelInput",
    members = {
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
            traits = {
                http_query = "versionIdentifier",
            },
        },
    },
}

M.GetTrainedModelOutput = {
    type = "structure",
    id = "GetTrainedModelOutput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        incrementalTrainingDataChannels = {
            type = "list",
            member = M.IncrementalTrainingDataChannelOutput,
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = M.StatusDetails,
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceConfig = M.ResourceConfig,
        trainingInputMode = {
            type = "string",
        },
        stoppingCondition = M.StoppingCondition,
        metricsStatus = {
            type = "string",
        },
        metricsStatusDetails = {
            type = "string",
        },
        logsStatus = {
            type = "string",
        },
        logsStatusDetails = {
            type = "string",
        },
        trainingContainerImageDigest = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        hyperparameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dataChannels = {
            type = "list",
            member = M.ModelTrainingDataChannel,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrainedModelsInput = {
    type = "structure",
    id = "ListTrainedModelsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TrainedModelSummary = {
    type = "structure",
    id = "TrainedModelSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionIdentifier = {
            type = "string",
        },
        incrementalTrainingDataChannels = {
            type = "list",
            member = M.IncrementalTrainingDataChannelOutput,
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrainedModelsOutput = {
    type = "structure",
    id = "ListTrainedModelsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        trainedModels = {
            type = "list",
            member = M.TrainedModelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrainedModelVersionsInput = {
    type = "structure",
    id = "ListTrainedModelVersionsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.ListTrainedModelVersionsOutput = {
    type = "structure",
    id = "ListTrainedModelVersionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        trainedModels = {
            type = "list",
            member = M.TrainedModelSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.StartTrainedModelExportJobInput = {
    type = "structure",
    id = "StartTrainedModelExportJobInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrainedModelExportOutputConfiguration }),
        description = {
            type = "string",
        },
    },
}

M.StartTrainedModelExportJobOutput = {
    type = "structure",
    id = "StartTrainedModelExportJobOutput",
}

M.CancelTrainedModelInferenceJobInput = {
    type = "structure",
    id = "CancelTrainedModelInferenceJobInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelTrainedModelInferenceJobOutput = {
    type = "structure",
    id = "CancelTrainedModelInferenceJobOutput",
}

M.GetTrainedModelInferenceJobInput = {
    type = "structure",
    id = "GetTrainedModelInferenceJobInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InferenceContainerExecutionParameters = {
    type = "structure",
    id = "InferenceContainerExecutionParameters",
    members = {
        maxPayloadInMB = {
            type = "integer",
        },
    },
}

M.ModelInferenceDataSource = {
    type = "structure",
    id = "ModelInferenceDataSource",
    members = {
        mlInputChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InferenceInstanceType = {
    ML_R7I_48XLARGE = "ml.r7i.48xlarge",
    ML_R6I_16XLARGE = "ml.r6i.16xlarge",
    ML_M6I_XLARGE = "ml.m6i.xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_R7I_16XLARGE = "ml.r7i.16xlarge",
    ML_M7I_XLARGE = "ml.m7i.xlarge",
    ML_M6I_12XLARGE = "ml.m6i.12xlarge",
    ML_R7I_8XLARGE = "ml.r7i.8xlarge",
    ML_R7I_LARGE = "ml.r7i.large",
    ML_M7I_12XLARGE = "ml.m7i.12xlarge",
    ML_M6I_24XLARGE = "ml.m6i.24xlarge",
    ML_M7I_24XLARGE = "ml.m7i.24xlarge",
    ML_R6I_8XLARGE = "ml.r6i.8xlarge",
    ML_R6I_LARGE = "ml.r6i.large",
    ML_G5_2XLARGE = "ml.g5.2xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M7I_48XLARGE = "ml.m7i.48xlarge",
    ML_M6I_16XLARGE = "ml.m6i.16xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_G5_4XLARGE = "ml.g5.4xlarge",
    ML_M7I_16XLARGE = "ml.m7i.16xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C6I_32XLARGE = "ml.c6i.32xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_G5_8XLARGE = "ml.g5.8xlarge",
    ML_C6I_XLARGE = "ml.c6i.xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_C7I_XLARGE = "ml.c7i.xlarge",
    ML_C6I_12XLARGE = "ml.c6i.12xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_C7I_12XLARGE = "ml.c7i.12xlarge",
    ML_C6I_24XLARGE = "ml.c6i.24xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_C7I_24XLARGE = "ml.c7i.24xlarge",
    ML_C7I_2XLARGE = "ml.c7i.2xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_C6I_2XLARGE = "ml.c6i.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_C7I_48XLARGE = "ml.c7i.48xlarge",
    ML_C7I_4XLARGE = "ml.c7i.4xlarge",
    ML_C6I_16XLARGE = "ml.c6i.16xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_C7I_16XLARGE = "ml.c7i.16xlarge",
    ML_C6I_4XLARGE = "ml.c6i.4xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_C7I_8XLARGE = "ml.c7i.8xlarge",
    ML_C7I_LARGE = "ml.c7i.large",
    ML_G5_XLARGE = "ml.g5.xlarge",
    ML_C6I_8XLARGE = "ml.c6i.8xlarge",
    ML_C6I_LARGE = "ml.c6i.large",
    ML_G5_12XLARGE = "ml.g5.12xlarge",
    ML_G5_24XLARGE = "ml.g5.24xlarge",
    ML_M7I_2XLARGE = "ml.m7i.2xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_G5_48XLARGE = "ml.g5.48xlarge",
    ML_M6I_2XLARGE = "ml.m6i.2xlarge",
    ML_G5_16XLARGE = "ml.g5.16xlarge",
    ML_M7I_4XLARGE = "ml.m7i.4xlarge",
    ML_R6I_32XLARGE = "ml.r6i.32xlarge",
    ML_M6I_4XLARGE = "ml.m6i.4xlarge",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_R6I_XLARGE = "ml.r6i.xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_R7I_2XLARGE = "ml.r7i.2xlarge",
    ML_R7I_XLARGE = "ml.r7i.xlarge",
    ML_R6I_12XLARGE = "ml.r6i.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_R7I_12XLARGE = "ml.r7i.12xlarge",
    ML_M7I_8XLARGE = "ml.m7i.8xlarge",
    ML_M7I_LARGE = "ml.m7i.large",
    ML_R6I_24XLARGE = "ml.r6i.24xlarge",
    ML_R6I_2XLARGE = "ml.r6i.2xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_R7I_24XLARGE = "ml.r7i.24xlarge",
    ML_R7I_4XLARGE = "ml.r7i.4xlarge",
    ML_M6I_8XLARGE = "ml.m6i.8xlarge",
    ML_M6I_LARGE = "ml.m6i.large",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_R6I_4XLARGE = "ml.r6i.4xlarge",
    ML_M6I_32XLARGE = "ml.m6i.32xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
}

M.InferenceResourceConfig = {
    type = "structure",
    id = "InferenceResourceConfig",
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceCount = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
    },
}

M.GetTrainedModelInferenceJobOutput = {
    type = "structure",
    id = "GetTrainedModelInferenceJobOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        resourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceResourceConfig }),
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceOutputConfiguration }),
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInferenceDataSource }),
        containerExecutionParameters = M.InferenceContainerExecutionParameters,
        statusDetails = M.StatusDetails,
        description = {
            type = "string",
        },
        inferenceContainerImageDigest = {
            type = "string",
        },
        environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
        metricsStatus = {
            type = "string",
        },
        metricsStatusDetails = {
            type = "string",
        },
        logsStatus = {
            type = "string",
        },
        logsStatusDetails = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTrainedModelInferenceJobsInput = {
    type = "structure",
    id = "ListTrainedModelInferenceJobsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                http_query = "trainedModelArn",
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
            traits = {
                http_query = "trainedModelVersionIdentifier",
            },
        },
    },
}

M.TrainedModelInferenceJobSummary = {
    type = "structure",
    id = "TrainedModelInferenceJobSummary",
    members = {
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
        },
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        collaborationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceOutputConfiguration }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        metricsStatus = {
            type = "string",
        },
        metricsStatusDetails = {
            type = "string",
        },
        logsStatus = {
            type = "string",
        },
        logsStatusDetails = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListTrainedModelInferenceJobsOutput = {
    type = "structure",
    id = "ListTrainedModelInferenceJobsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        trainedModelInferenceJobs = {
            type = "list",
            member = M.TrainedModelInferenceJobSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.StartTrainedModelInferenceJobInput = {
    type = "structure",
    id = "StartTrainedModelInferenceJobInput",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainedModelVersionIdentifier = {
            type = "string",
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
        },
        resourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceResourceConfig }),
        outputConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InferenceOutputConfiguration }),
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelInferenceDataSource }),
        description = {
            type = "string",
        },
        containerExecutionParameters = M.InferenceContainerExecutionParameters,
        environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartTrainedModelInferenceJobOutput = {
    type = "structure",
    id = "StartTrainedModelInferenceJobOutput",
    members = {
        trainedModelInferenceJobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GlueDataSource = {
    type = "structure",
    id = "GlueDataSource",
    members = {
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalogId = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        glueDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataSource }),
    },
}

M.ColumnType = {
    USER_ID = "USER_ID",
    ITEM_ID = "ITEM_ID",
    TIMESTAMP = "TIMESTAMP",
    CATEGORICAL_FEATURE = "CATEGORICAL_FEATURE",
    NUMERICAL_FEATURE = "NUMERICAL_FEATURE",
}

M.ColumnSchema = {
    type = "structure",
    id = "ColumnSchema",
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        columnTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetInputConfig = {
    type = "structure",
    id = "DatasetInputConfig",
    members = {
        schema = {
            type = "list",
            member = M.ColumnSchema,
            traits = {
                required = true,
            },
        },
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
    },
}

M.DatasetType = {
    INTERACTIONS = "INTERACTIONS",
}

M.Dataset = {
    type = "structure",
    id = "Dataset",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetInputConfig }),
    },
}

M.CreateTrainingDatasetInput = {
    type = "structure",
    id = "CreateTrainingDatasetInput",
    members = {
        name = {
            type = "string",
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
        trainingData = {
            type = "list",
            member = M.Dataset,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateTrainingDatasetOutput = {
    type = "structure",
    id = "CreateTrainingDatasetOutput",
    members = {
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrainingDatasetInput = {
    type = "structure",
    id = "DeleteTrainingDatasetInput",
    members = {
        trainingDatasetArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrainingDatasetOutput = {
    type = "structure",
    id = "DeleteTrainingDatasetOutput",
}

M.GetTrainingDatasetInput = {
    type = "structure",
    id = "GetTrainingDatasetInput",
    members = {
        trainingDatasetArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TrainingDatasetStatus = {
    ACTIVE = "ACTIVE",
}

M.GetTrainingDatasetOutput = {
    type = "structure",
    id = "GetTrainingDatasetOutput",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        trainingData = {
            type = "list",
            member = M.Dataset,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        description = {
            type = "string",
        },
    },
}

M.ListTrainingDatasetsInput = {
    type = "structure",
    id = "ListTrainingDatasetsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TrainingDatasetSummary = {
    type = "structure",
    id = "TrainingDatasetSummary",
    members = {
        createTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        trainingDatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListTrainingDatasetsOutput = {
    type = "structure",
    id = "ListTrainingDatasetsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        trainingDatasets = {
            type = "list",
            member = M.TrainingDatasetSummary,
            traits = {
                required = true,
            },
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
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
