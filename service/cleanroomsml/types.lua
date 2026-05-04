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
            type = "number",
            traits = {
                required = true,
            },
        },
        budget = {
            type = "number",
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
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        aggregateRemainingBudget = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        s3Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAudienceExportJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
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
        audienceSize = {
            type = "structure",
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
        statusDetails = {
            type = "structure",
        },
        outputLocation = {
            type = "string",
        },
    },
}

M.ListAudienceExportJobsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        audienceExportJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.StartAudienceExportJobInput = {
    type = "structure",
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
        audienceSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.StartAudienceExportJobOutput = {
    type = "structure",
}

M.DeleteAudienceGenerationJobInput = {
    type = "structure",
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
}

M.GetAudienceGenerationJobInput = {
    type = "structure",
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
    members = {
        audienceSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        score = {
            type = "number",
        },
    },
}

M.AudienceQualityMetrics = {
    type = "structure",
    members = {
        relevanceMetrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        recallMetric = {
            type = "number",
        },
    },
}

M.WorkerComputeConfigurationProperties = {
    type = "union",
    members = {
        spark = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.WorkerComputeType = {
    CR1X = "CR.1X",
    CR4X = "CR.4X",
}

M.WorkerComputeConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        number = {
            type = "number",
        },
        properties = {
            type = "union",
        },
    },
}

M.ComputeConfiguration = {
    type = "union",
    members = {
        worker = {
            type = "structure",
        },
    },
}

M.ProtectedQuerySQLParameters = {
    type = "structure",
    members = {
        queryString = {
            type = "string",
        },
        analysisTemplateArn = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AudienceGenerationJobDataSource = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sqlParameters = {
            type = "structure",
        },
        sqlComputeConfiguration = {
            type = "union",
        },
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
        statusDetails = {
            type = "structure",
        },
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seedAudience = {
            type = "structure",
        },
        includeSeedInOutput = {
            type = "boolean",
        },
        collaborationId = {
            type = "string",
        },
        metrics = {
            type = "structure",
        },
        startedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        protectedQueryIdentifier = {
            type = "string",
        },
    },
}

M.ListAudienceGenerationJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        audienceGenerationJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAudienceGenerationJobInput = {
    type = "structure",
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
        seedAudience = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        includeSeedInOutput = {
            type = "boolean",
        },
        collaborationId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartAudienceGenerationJobOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateAudienceModelOutput = {
    type = "structure",
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
}

M.GetAudienceModelInput = {
    type = "structure",
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
        statusDetails = {
            type = "structure",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListAudienceModelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.AudienceModelSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        audienceModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AudienceSizeConfig = {
    type = "structure",
    members = {
        audienceSizeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        audienceSizeBins = {
            type = "list",
            member_type = "number",
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
    members = {
        destination = {
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
    },
}

M.SharedAudienceMetrics = {
    ALL = "ALL",
    NONE = "NONE",
}

M.CreateConfiguredAudienceModelInput = {
    type = "structure",
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
        outputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        sharedAudienceMetrics = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        minMatchingSeedSize = {
            type = "number",
        },
        audienceSizeConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        childResourceTagOnCreatePolicy = {
            type = "string",
        },
    },
}

M.CreateConfiguredAudienceModelOutput = {
    type = "structure",
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
}

M.GetConfiguredAudienceModelInput = {
    type = "structure",
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
        outputConfig = {
            type = "structure",
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
        sharedAudienceMetrics = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        minMatchingSeedSize = {
            type = "number",
        },
        audienceSizeConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        childResourceTagOnCreatePolicy = {
            type = "string",
        },
    },
}

M.ListConfiguredAudienceModelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredAudienceModelSummary = {
    type = "structure",
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
        outputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        nextToken = {
            type = "string",
        },
        configuredAudienceModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfiguredAudienceModelInput = {
    type = "structure",
    members = {
        configuredAudienceModelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        outputConfig = {
            type = "structure",
        },
        audienceModelArn = {
            type = "string",
        },
        sharedAudienceMetrics = {
            type = "list",
            member_type = "string",
        },
        minMatchingSeedSize = {
            type = "number",
        },
        audienceSizeConfig = {
            type = "structure",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateConfiguredAudienceModelOutput = {
    type = "structure",
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
}

M.GetConfiguredAudienceModelPolicyInput = {
    type = "structure",
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
    members = {
        imageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entrypoint = {
            type = "list",
            member_type = "string",
        },
        arguments = {
            type = "list",
            member_type = "string",
        },
        metricDefinitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateConfiguredModelAlgorithmInput = {
    type = "structure",
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
        trainingContainerConfig = {
            type = "structure",
        },
        inferenceContainerConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.CreateConfiguredModelAlgorithmOutput = {
    type = "structure",
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
}

M.GetConfiguredModelAlgorithmInput = {
    type = "structure",
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
        trainingContainerConfig = {
            type = "structure",
        },
        inferenceContainerConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListConfiguredModelAlgorithmsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfiguredModelAlgorithmSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        configuredModelAlgorithms = {
            type = "list",
            member_type = "structure",
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
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelExportsConfigurationPolicy = {
    type = "structure",
    members = {
        maxSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        filesToExport = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomEntityConfig = {
    type = "structure",
    members = {
        customDataIdentifiers = {
            type = "list",
            member_type = "string",
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
    members = {
        entitiesToRedact = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        customEntityConfig = {
            type = "structure",
        },
    },
}

M.LogType = {
    ALL = "ALL",
    ERROR_SUMMARY = "ERROR_SUMMARY",
}

M.LogsConfigurationPolicy = {
    type = "structure",
    members = {
        allowedAccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        filterPattern = {
            type = "string",
        },
        logType = {
            type = "string",
        },
        logRedactionConfiguration = {
            type = "structure",
        },
    },
}

M.TrainedModelInferenceMaxOutputSizeUnitType = {
    GB = "GB",
}

M.TrainedModelInferenceMaxOutputSize = {
    type = "structure",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelInferenceJobsConfigurationPolicy = {
    type = "structure",
    members = {
        containerLogs = {
            type = "list",
            member_type = "structure",
        },
        maxOutputSize = {
            type = "structure",
        },
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
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TrainedModelsConfigurationPolicy = {
    type = "structure",
    members = {
        containerLogs = {
            type = "list",
            member_type = "structure",
        },
        containerMetrics = {
            type = "structure",
        },
        maxArtifactSize = {
            type = "structure",
        },
    },
}

M.PrivacyConfigurationPolicies = {
    type = "structure",
    members = {
        trainedModels = {
            type = "structure",
        },
        trainedModelExports = {
            type = "structure",
        },
        trainedModelInferenceJobs = {
            type = "structure",
        },
    },
}

M.PrivacyConfiguration = {
    type = "structure",
    members = {
        policies = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
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
        privacyConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateConfiguredModelAlgorithmAssociationOutput = {
    type = "structure",
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
}

M.GetCollaborationConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
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
        privacyConfiguration = {
            type = "structure",
        },
    },
}

M.GetConfiguredModelAlgorithmAssociationInput = {
    type = "structure",
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
        privacyConfiguration = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListConfiguredModelAlgorithmAssociationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        configuredModelAlgorithmAssociations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationConfiguredModelAlgorithmAssociationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        collaborationConfiguredModelAlgorithmAssociations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationMLInputChannelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "string",
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
    members = {
        nextToken = {
            type = "string",
        },
        collaborationMLInputChannelsList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelExportJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        members = {
            type = "list",
            member_type = "structure",
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
        outputConfiguration = {
            type = "structure",
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
        statusDetails = {
            type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModelExportJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelInferenceJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        accept = {
            type = "string",
        },
        members = {
            type = "list",
            member_type = "structure",
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
        outputConfiguration = {
            type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModelInferenceJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCollaborationTrainedModelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        collaborationTrainedModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMLConfigurationInput = {
    type = "structure",
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
}

M.GetMLConfigurationInput = {
    type = "structure",
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
    members = {
        s3Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MLOutputConfiguration = {
    type = "structure",
    members = {
        destination = {
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

M.GetMLConfigurationOutput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultOutputLocation = {
            type = "structure",
            traits = {
                required = true,
            },
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

M.PutMLConfigurationInput = {
    type = "structure",
    members = {
        membershipIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        defaultOutputLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMLConfigurationOutput = {
    type = "structure",
}

M.ResultFormat = {
    CSV = "CSV",
    PARQUET = "PARQUET",
}

M.ProtectedQueryInputParameters = {
    type = "structure",
    members = {
        sqlParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        computeConfiguration = {
            type = "union",
        },
        resultFormat = {
            type = "string",
        },
    },
}

M.InputChannelDataSource = {
    type = "union",
    members = {
        protectedQueryInputParameters = {
            type = "structure",
        },
    },
}

M.InputChannel = {
    type = "structure",
    members = {
        dataSource = {
            type = "union",
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
    },
}

M.CreateMLInputChannelInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        inputChannel = {
            type = "structure",
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
        retentionInDays = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateMLInputChannelOutput = {
    type = "structure",
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
}

M.GetCollaborationMLInputChannelInput = {
    type = "structure",
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
    members = {
        accessBudgets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MembershipInferenceAttackVersion = {
    DISTANCE_TO_CLOSEST_RECORD_V1 = "DISTANCE_TO_CLOSEST_RECORD_V1",
}

M.MembershipInferenceAttackScore = {
    type = "structure",
    members = {
        attackVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        score = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPrivacyScores = {
    type = "structure",
    members = {
        membershipInferenceAttackScores = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SyntheticDataEvaluationScores = {
    type = "structure",
    members = {
        dataPrivacyScores = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SyntheticDataColumnType = {
    CATEGORICAL = "CATEGORICAL",
    NUMERICAL = "NUMERICAL",
}

M.SyntheticDataColumnProperties = {
    type = "structure",
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
    members = {
        columnMapping = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MLSyntheticDataParameters = {
    type = "structure",
    members = {
        epsilon = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxMembershipInferenceAttackScore = {
            type = "number",
            traits = {
                required = true,
            },
        },
        columnClassification = {
            type = "structure",
        },
    },
}

M.SyntheticDataConfiguration = {
    type = "structure",
    members = {
        syntheticDataParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        syntheticDataEvaluationScores = {
            type = "structure",
        },
    },
}

M.GetCollaborationMLInputChannelOutput = {
    type = "structure",
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
            member_type = "string",
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
        statusDetails = {
            type = "structure",
        },
        retentionInDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
        numberOfRecords = {
            type = "number",
        },
        privacyBudgets = {
            type = "union",
        },
        description = {
            type = "string",
        },
        syntheticDataConfiguration = {
            type = "structure",
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

M.GetMLInputChannelInput = {
    type = "structure",
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
            member_type = "string",
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
        statusDetails = {
            type = "structure",
        },
        retentionInDays = {
            type = "number",
            traits = {
                required = true,
            },
        },
        numberOfRecords = {
            type = "number",
        },
        privacyBudgets = {
            type = "union",
        },
        description = {
            type = "string",
        },
        syntheticDataConfiguration = {
            type = "structure",
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
        inputChannel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        protectedQueryIdentifier = {
            type = "string",
        },
        numberOfFiles = {
            type = "number",
        },
        sizeInGb = {
            type = "number",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListMLInputChannelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "string",
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
    members = {
        nextToken = {
            type = "string",
        },
        mlInputChannelsList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.CancelTrainedModelInput = {
    type = "structure",
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
}

M.S3DataDistributionType = {
    FULLY_REPLICATED = "FullyReplicated",
    SHARDED_BY_S3_KEY = "ShardedByS3Key",
}

M.ModelTrainingDataChannel = {
    type = "structure",
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
        },
    },
}

M.IncrementalTrainingDataChannel = {
    type = "structure",
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
    members = {
        instanceCount = {
            type = "number",
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeSizeInGB = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StoppingCondition = {
    type = "structure",
    members = {
        maxRuntimeInSeconds = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        resourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        stoppingCondition = {
            type = "structure",
        },
        incrementalTrainingDataChannels = {
            type = "list",
            member_type = "structure",
        },
        dataChannels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        trainingInputMode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTrainedModelOutput = {
    type = "structure",
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
}

M.GetCollaborationTrainedModelInput = {
    type = "structure",
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
            member_type = "structure",
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
        statusDetails = {
            type = "structure",
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceConfig = {
            type = "structure",
        },
        trainingInputMode = {
            type = "string",
        },
        stoppingCondition = {
            type = "structure",
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
            member_type = "structure",
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
        statusDetails = {
            type = "structure",
        },
        configuredModelAlgorithmAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceConfig = {
            type = "structure",
        },
        trainingInputMode = {
            type = "string",
        },
        stoppingCondition = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        dataChannels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrainedModelsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        trainedModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrainedModelVersionsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        trainedModels = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartTrainedModelExportJobInput = {
    type = "structure",
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
        outputConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.StartTrainedModelExportJobOutput = {
    type = "structure",
}

M.CancelTrainedModelInferenceJobInput = {
    type = "structure",
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
}

M.GetTrainedModelInferenceJobInput = {
    type = "structure",
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
    members = {
        maxPayloadInMB = {
            type = "number",
        },
    },
}

M.ModelInferenceDataSource = {
    type = "structure",
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
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceCount = {
            type = "number",
        },
    },
}

M.GetTrainedModelInferenceJobOutput = {
    type = "structure",
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
        resourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputConfiguration = {
            type = "structure",
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
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        containerExecutionParameters = {
            type = "structure",
        },
        statusDetails = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        inferenceContainerImageDigest = {
            type = "string",
        },
        environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTrainedModelInferenceJobsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
        outputConfiguration = {
            type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        trainedModelInferenceJobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartTrainedModelInferenceJobInput = {
    type = "structure",
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
        resourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        outputConfiguration = {
            type = "structure",
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
        description = {
            type = "string",
        },
        containerExecutionParameters = {
            type = "structure",
        },
        environment = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartTrainedModelInferenceJobOutput = {
    type = "structure",
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
    members = {
        glueDataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        columnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        columnTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetInputConfig = {
    type = "structure",
    members = {
        schema = {
            type = "list",
            member_type = "structure",
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
    },
}

M.DatasetType = {
    INTERACTIONS = "INTERACTIONS",
}

M.Dataset = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrainingDatasetInput = {
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
            traits = {
                required = true,
            },
        },
        trainingData = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateTrainingDatasetOutput = {
    type = "structure",
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
}

M.GetTrainingDatasetInput = {
    type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListTrainingDatasetsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TrainingDatasetSummary = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        trainingDatasets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
