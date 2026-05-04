local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.ActionCategory = {
    DISASTER_RECOVERY = "DISASTER_RECOVERY",
    OPERATING_SYSTEM = "OPERATING_SYSTEM",
    LICENSE_AND_SUBSCRIPTION = "LICENSE_AND_SUBSCRIPTION",
    VALIDATION = "VALIDATION",
    OBSERVABILITY = "OBSERVABILITY",
    REFACTORING = "REFACTORING",
    SECURITY = "SECURITY",
    NETWORKING = "NETWORKING",
    CONFIGURATION = "CONFIGURATION",
    BACKUP = "BACKUP",
    OTHER = "OTHER",
}

M.AnalyzerType = {
    REACHABILITY_ANALYZER = "REACHABILITY_ANALYZER",
}

M.ApplicationHealthStatus = {
    HEALTHY = "HEALTHY",
    LAGGING = "LAGGING",
    ERROR = "ERROR",
}

M.ApplicationProgressStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.ApplicationAggregatedStatus = {
    type = "structure",
    members = {
        lastUpdateDateTime = {
            type = "string",
        },
        healthStatus = {
            type = "string",
        },
        progressStatus = {
            type = "string",
        },
        totalSourceServers = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.Application = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        applicationAggregatedStatus = M.ApplicationAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        waveID = {
            type = "string",
        },
    },
}

M.ArchiveApplicationInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.ArchiveApplicationOutput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        applicationAggregatedStatus = M.ApplicationAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        waveID = {
            type = "string",
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        errors = {
            type = "list",
            member = M.ErrorDetails,
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
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        quotaValue = {
            type = "integer",
        },
    },
}

M.UninitializedAccountException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.AssociateSourceServersInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.AssociateSourceServersOutput = {
    type = "structure",
}

M.CreateApplicationInput = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accountID = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        applicationAggregatedStatus = M.ApplicationAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        waveID = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DisassociateSourceServersInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DisassociateSourceServersOutput = {
    type = "structure",
}

M.ListApplicationsRequestFilters = {
    type = "structure",
    members = {
        applicationIDs = {
            type = "list",
            member = { type = "string" },
        },
        isArchived = {
            type = "boolean",
        },
        waveIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        filters = M.ListApplicationsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Application,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UnarchiveApplicationInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.UnarchiveApplicationOutput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        applicationAggregatedStatus = M.ApplicationAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        waveID = {
            type = "string",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        applicationID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        applicationAggregatedStatus = M.ApplicationAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        waveID = {
            type = "string",
        },
    },
}

M.ConnectorSsmCommandConfig = {
    type = "structure",
    members = {
        s3OutputEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        outputS3BucketName = {
            type = "string",
        },
        cloudWatchOutputEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        cloudWatchLogGroupName = {
            type = "string",
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ssmInstanceID = {
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
        ssmCommandConfig = M.ConnectorSsmCommandConfig,
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    members = {
        connectorID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ssmInstanceID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ssmCommandConfig = M.ConnectorSsmCommandConfig,
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteConnectorInput = {
    type = "structure",
    members = {
        connectorID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectorOutput = {
    type = "structure",
}

M.ListConnectorsRequestFilters = {
    type = "structure",
    members = {
        connectorIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListConnectorsInput = {
    type = "structure",
    members = {
        filters = M.ListConnectorsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Connector = {
    type = "structure",
    members = {
        connectorID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ssmInstanceID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ssmCommandConfig = M.ConnectorSsmCommandConfig,
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Connector,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateConnectorInput = {
    type = "structure",
    members = {
        connectorID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        ssmCommandConfig = M.ConnectorSsmCommandConfig,
    },
}

M.UpdateConnectorOutput = {
    type = "structure",
    members = {
        connectorID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ssmInstanceID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ssmCommandConfig = M.ConnectorSsmCommandConfig,
    },
}

M.ListExportErrorsInput = {
    type = "structure",
    members = {
        exportID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportErrorData = {
    type = "structure",
    members = {
        rawError = {
            type = "string",
        },
    },
}

M.ExportTaskError = {
    type = "structure",
    members = {
        errorDateTime = {
            type = "string",
        },
        errorData = M.ExportErrorData,
    },
}

M.ListExportErrorsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ExportTaskError,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExportsRequestFilters = {
    type = "structure",
    members = {
        exportIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    members = {
        filters = M.ListExportsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.ExportTaskSummary = {
    type = "structure",
    members = {
        serversCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        applicationsCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        wavesCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ExportTask = {
    type = "structure",
    members = {
        exportID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        s3Bucket = {
            type = "string",
        },
        s3Key = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
        creationDateTime = {
            type = "string",
        },
        endDateTime = {
            type = "string",
        },
        status = {
            type = "string",
        },
        progressPercentage = {
            type = "float",
        },
        summary = M.ExportTaskSummary,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ExportTask,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartExportInput = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartExportOutput = {
    type = "structure",
    members = {
        exportTask = M.ExportTask,
    },
}

M.ListImportErrorsInput = {
    type = "structure",
    members = {
        importID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImportErrorData = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        waveID = {
            type = "string",
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        rowNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rawError = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.ImportErrorType = {
    VALIDATION_ERROR = "VALIDATION_ERROR",
    PROCESSING_ERROR = "PROCESSING_ERROR",
}

M.ImportTaskError = {
    type = "structure",
    members = {
        errorDateTime = {
            type = "string",
        },
        errorType = {
            type = "string",
        },
        errorData = M.ImportErrorData,
    },
}

M.ListImportErrorsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ImportTaskError,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListImportsRequestFilters = {
    type = "structure",
    members = {
        importIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListImportsInput = {
    type = "structure",
    members = {
        filters = M.ListImportsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.S3BucketSource = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
        },
    },
}

M.ImportStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.ImportTaskSummaryApplications = {
    type = "structure",
    members = {
        createdCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        modifiedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ImportTaskSummaryServers = {
    type = "structure",
    members = {
        createdCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        modifiedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ImportTaskSummaryWaves = {
    type = "structure",
    members = {
        createdCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        modifiedCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ImportTaskSummary = {
    type = "structure",
    members = {
        waves = M.ImportTaskSummaryWaves,
        applications = M.ImportTaskSummaryApplications,
        servers = M.ImportTaskSummaryServers,
    },
}

M.ImportTask = {
    type = "structure",
    members = {
        importID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        s3BucketSource = M.S3BucketSource,
        creationDateTime = {
            type = "string",
        },
        endDateTime = {
            type = "string",
        },
        status = {
            type = "string",
        },
        progressPercentage = {
            type = "float",
        },
        summary = M.ImportTaskSummary,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListImportsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ImportTask,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartImportInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        s3BucketSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketSource }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartImportOutput = {
    type = "structure",
    members = {
        importTask = M.ImportTask,
    },
}

M.InitializeServiceInput = {
    type = "structure",
}

M.InitializeServiceOutput = {
    type = "structure",
}

M.DeleteJobInput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
}

M.DescribeJobLogItemsInput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.JobLogEvent = {
    JOB_START = "JOB_START",
    SERVER_SKIPPED = "SERVER_SKIPPED",
    CLEANUP_START = "CLEANUP_START",
    CLEANUP_END = "CLEANUP_END",
    CLEANUP_FAIL = "CLEANUP_FAIL",
    SNAPSHOT_START = "SNAPSHOT_START",
    SNAPSHOT_END = "SNAPSHOT_END",
    SNAPSHOT_FAIL = "SNAPSHOT_FAIL",
    USING_PREVIOUS_SNAPSHOT = "USING_PREVIOUS_SNAPSHOT",
    CONVERSION_START = "CONVERSION_START",
    CONVERSION_END = "CONVERSION_END",
    CONVERSION_FAIL = "CONVERSION_FAIL",
    LAUNCH_START = "LAUNCH_START",
    LAUNCH_FAILED = "LAUNCH_FAILED",
    JOB_CANCEL = "JOB_CANCEL",
    JOB_END = "JOB_END",
}

M.JobLogEventData = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        conversionServerID = {
            type = "string",
        },
        targetInstanceID = {
            type = "string",
        },
        rawError = {
            type = "string",
        },
        attemptCount = {
            type = "integer",
        },
        maxAttemptsCount = {
            type = "integer",
        },
    },
}

M.JobLog = {
    type = "structure",
    members = {
        logDateTime = {
            type = "string",
        },
        event = {
            type = "string",
        },
        eventData = M.JobLogEventData,
    },
}

M.DescribeJobLogItemsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.JobLog,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeJobsRequestFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
        fromDate = {
            type = "string",
        },
        toDate = {
            type = "string",
        },
    },
}

M.DescribeJobsInput = {
    type = "structure",
    members = {
        filters = M.DescribeJobsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.InitiatedBy = {
    START_TEST = "START_TEST",
    START_CUTOVER = "START_CUTOVER",
    DIAGNOSTIC = "DIAGNOSTIC",
    TERMINATE = "TERMINATE",
}

M.LaunchStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    LAUNCHED = "LAUNCHED",
    FAILED = "FAILED",
    TERMINATED = "TERMINATED",
}

M.PostLaunchActionExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.SsmExternalParameter = {
    type = "union",
    members = {
        dynamicPath = {
            type = "string",
        },
    },
}

M.SsmParameterStoreParameterType = {
    STRING = "STRING",
    SECURE_STRING = "SECURE_STRING",
}

M.SsmParameterStoreParameter = {
    type = "structure",
    members = {
        parameterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SsmDocument = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ssmDocumentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
    },
}

M.SsmDocumentType = {
    AUTOMATION = "AUTOMATION",
    COMMAND = "COMMAND",
}

M.JobPostLaunchActionsLaunchStatus = {
    type = "structure",
    members = {
        ssmDocument = M.SsmDocument,
        ssmDocumentType = {
            type = "string",
        },
        executionID = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.PostLaunchActionsStatus = {
    type = "structure",
    members = {
        ssmAgentDiscoveryDatetime = {
            type = "string",
        },
        postLaunchActionsLaunchStatusList = {
            type = "list",
            member = M.JobPostLaunchActionsLaunchStatus,
        },
    },
}

M.ParticipatingServer = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        launchStatus = {
            type = "string",
        },
        launchedEc2InstanceID = {
            type = "string",
        },
        postLaunchActionsStatus = M.PostLaunchActionsStatus,
    },
}

M.JobStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    COMPLETED = "COMPLETED",
}

M.JobType = {
    LAUNCH = "LAUNCH",
    TERMINATE = "TERMINATE",
}

M.Job = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        initiatedBy = {
            type = "string",
        },
        creationDateTime = {
            type = "string",
        },
        endDateTime = {
            type = "string",
        },
        status = {
            type = "string",
        },
        participatingServers = {
            type = "list",
            member = M.ParticipatingServer,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeJobsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Job,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BootMode = {
    LEGACY_BIOS = "LEGACY_BIOS",
    UEFI = "UEFI",
    USE_SOURCE = "USE_SOURCE",
}

M.VolumeType = {
    io1 = "io1",
    io2 = "io2",
    gp3 = "gp3",
    gp2 = "gp2",
    st1 = "st1",
    sc1 = "sc1",
    standard = "standard",
}

M.LaunchTemplateDiskConf = {
    type = "structure",
    members = {
        volumeType = {
            type = "string",
        },
        iops = {
            type = "long",
        },
        throughput = {
            type = "long",
        },
    },
}

M.LaunchDisposition = {
    STOPPED = "STOPPED",
    STARTED = "STARTED",
}

M.Licensing = {
    type = "structure",
    members = {
        osByol = {
            type = "boolean",
        },
    },
}

M.PostLaunchActionsDeploymentType = {
    TEST_AND_CUTOVER = "TEST_AND_CUTOVER",
    CUTOVER_ONLY = "CUTOVER_ONLY",
    TEST_ONLY = "TEST_ONLY",
}

M.PostLaunchActions = {
    type = "structure",
    members = {
        deployment = {
            type = "string",
        },
        s3LogBucket = {
            type = "string",
        },
        s3OutputKeyPrefix = {
            type = "string",
        },
        cloudWatchLogGroupName = {
            type = "string",
        },
        ssmDocuments = {
            type = "list",
            member = M.SsmDocument,
        },
    },
}

M.TargetInstanceTypeRightSizingMethod = {
    NONE = "NONE",
    BASIC = "BASIC",
}

M.CreateLaunchConfigurationTemplateInput = {
    type = "structure",
    members = {
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        associatePublicIpAddress = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        smallVolumeMaxSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        smallVolumeConf = M.LaunchTemplateDiskConf,
        largeVolumeConf = M.LaunchTemplateDiskConf,
        enableParametersEncryption = {
            type = "boolean",
        },
        parametersEncryptionKey = {
            type = "string",
        },
    },
}

M.CreateLaunchConfigurationTemplateOutput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        associatePublicIpAddress = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        smallVolumeMaxSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        smallVolumeConf = M.LaunchTemplateDiskConf,
        largeVolumeConf = M.LaunchTemplateDiskConf,
        enableParametersEncryption = {
            type = "boolean",
        },
        parametersEncryptionKey = {
            type = "string",
        },
    },
}

M.DeleteLaunchConfigurationTemplateInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLaunchConfigurationTemplateOutput = {
    type = "structure",
}

M.DescribeLaunchConfigurationTemplatesInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateIDs = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LaunchConfigurationTemplate = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        associatePublicIpAddress = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        smallVolumeMaxSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        smallVolumeConf = M.LaunchTemplateDiskConf,
        largeVolumeConf = M.LaunchTemplateDiskConf,
        enableParametersEncryption = {
            type = "boolean",
        },
        parametersEncryptionKey = {
            type = "string",
        },
    },
}

M.DescribeLaunchConfigurationTemplatesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.LaunchConfigurationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TemplateActionsRequestFilters = {
    type = "structure",
    members = {
        actionIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListTemplateActionsInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.TemplateActionsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TemplateActionDocument = {
    type = "structure",
    members = {
        actionID = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        documentIdentifier = {
            type = "string",
        },
        order = {
            type = "integer",
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        operatingSystem = {
            type = "string",
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.ListTemplateActionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.TemplateActionDocument,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutTemplateActionInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        actionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        operatingSystem = {
            type = "string",
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.PutTemplateActionOutput = {
    type = "structure",
    members = {
        actionID = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        documentIdentifier = {
            type = "string",
        },
        order = {
            type = "integer",
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        operatingSystem = {
            type = "string",
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.RemoveTemplateActionInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTemplateActionOutput = {
    type = "structure",
}

M.UpdateLaunchConfigurationTemplateInput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        associatePublicIpAddress = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        smallVolumeMaxSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        smallVolumeConf = M.LaunchTemplateDiskConf,
        largeVolumeConf = M.LaunchTemplateDiskConf,
        enableParametersEncryption = {
            type = "boolean",
        },
        parametersEncryptionKey = {
            type = "string",
        },
    },
}

M.UpdateLaunchConfigurationTemplateOutput = {
    type = "structure",
    members = {
        launchConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        associatePublicIpAddress = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        smallVolumeMaxSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        smallVolumeConf = M.LaunchTemplateDiskConf,
        largeVolumeConf = M.LaunchTemplateDiskConf,
        enableParametersEncryption = {
            type = "boolean",
        },
        parametersEncryptionKey = {
            type = "string",
        },
    },
}

M.ListImportFileEnrichmentsFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListImportFileEnrichmentsInput = {
    type = "structure",
    members = {
        filters = M.ListImportFileEnrichmentsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EncryptionAlgorithm = {
    SHA256 = "SHA256",
}

M.Checksum = {
    type = "structure",
    members = {
        encryptionAlgorithm = {
            type = "string",
        },
        hash = {
            type = "string",
        },
    },
}

M.EnrichmentTargetS3Configuration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportFileEnrichmentStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    SUCCEEDED_WITH_WARNINGS = "SUCCEEDED_WITH_WARNINGS",
}

M.ImportFileEnrichment = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
        checksum = M.Checksum,
        s3BucketTarget = M.EnrichmentTargetS3Configuration,
    },
}

M.ListImportFileEnrichmentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ImportFileEnrichment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListManagedAccountsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ManagedAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
    },
}

M.ListManagedAccountsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ManagedAccount,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "long",
            traits = {
                default = 0,
                http_header = "Retry-After",
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
            key = { type = "string" },
            value = { type = "string" },
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
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.SourceEnvironment = {
    NSX = "NSX",
    VSPHERE = "VSPHERE",
    FORTIGATE_FIREWALL = "FORTIGATE_FIREWALL",
    PALO_ALTO_FIREWALL = "PALO_ALTO_FIREWALL",
    CISCO_ACI = "CISCO_ACI",
    LOGICAL_MODEL = "LOGICAL_MODEL",
    MODELIZE_IT = "MODELIZE_IT",
}

M.SourceS3Configuration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    members = {
        sourceEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceS3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceS3Configuration }),
    },
}

M.TargetDeployment = {
    SINGLE_ACCOUNT = "SINGLE_ACCOUNT",
    MULTI_ACCOUNT = "MULTI_ACCOUNT",
}

M.TargetNetworkTopology = {
    ISOLATED_VPC = "ISOLATED_VPC",
    HUB_AND_SPOKE = "HUB_AND_SPOKE",
}

M.TargetNetwork = {
    type = "structure",
    members = {
        topology = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inboundCidr = {
            type = "string",
        },
        outboundCidr = {
            type = "string",
        },
        inspectionCidr = {
            type = "string",
        },
    },
}

M.TargetS3Configuration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNetworkMigrationDefinitionInput = {
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
        sourceConfigurations = {
            type = "list",
            member = M.SourceConfiguration,
        },
        targetS3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetS3Configuration }),
        targetNetwork = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetNetwork }),
        targetDeployment = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateNetworkMigrationDefinitionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sourceConfigurations = {
            type = "list",
            member = M.SourceConfiguration,
        },
        targetS3Configuration = M.TargetS3Configuration,
        targetNetwork = M.TargetNetwork,
        targetDeployment = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteNetworkMigrationDefinitionInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNetworkMigrationDefinitionOutput = {
    type = "structure",
}

M.GetNetworkMigrationDefinitionInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNetworkMigrationDefinitionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sourceConfigurations = {
            type = "list",
            member = M.SourceConfiguration,
        },
        targetS3Configuration = M.TargetS3Configuration,
        targetNetwork = M.TargetNetwork,
        targetDeployment = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetNetworkMigrationMapperSegmentConstructInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        segmentID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        constructID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkMigrationMapperSegmentConstruct = {
    type = "structure",
    members = {
        constructID = {
            type = "string",
        },
        constructType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logicalID = {
            type = "string",
        },
        excluded = {
            type = "boolean",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetNetworkMigrationMapperSegmentConstructOutput = {
    type = "structure",
    members = {
        construct = M.NetworkMigrationMapperSegmentConstruct,
    },
}

M.ListNetworkMigrationAnalysesFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationAnalysesInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationAnalysesFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationJobStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.NetworkMigrationAnalysisJobDetails = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationAnalysesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationAnalysisJobDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationAnalysisResultsFilters = {
    type = "structure",
    members = {
        vpcIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationAnalysisResultsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationAnalysisResultsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationAnalysisResultSource = {
    type = "structure",
    members = {
        vpcID = {
            type = "string",
        },
        subnetID = {
            type = "string",
        },
    },
}

M.NetworkMigrationAnalysisResultStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.NetworkMigrationAnalysisResultTarget = {
    type = "structure",
    members = {
        vpcID = {
            type = "string",
        },
        subnetID = {
            type = "string",
        },
    },
}

M.NetworkMigrationAnalysisResult = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        analyzerType = {
            type = "string",
        },
        source = M.NetworkMigrationAnalysisResultSource,
        target = M.NetworkMigrationAnalysisResultTarget,
        status = {
            type = "string",
        },
        analysisResult = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationAnalysisResultsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationAnalysisResult,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationCodeGenerationsFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationCodeGenerationsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationCodeGenerationsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CodeGenerationOutputFormatType = {
    CDK_L1 = "CDK_L1",
    CDK_L2 = "CDK_L2",
    TERRAFORM = "TERRAFORM",
    LZA = "LZA",
}

M.CodeGenerationOutputFormatStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.CodeGenerationOutputFormatStatusDetails = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusDetailList = {
            type = "string",
        },
    },
}

M.NetworkMigrationCodeGenerationJobDetails = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
        codeGenerationOutputFormatStatusDetailsMap = {
            type = "map",
            key = { type = "string" },
            value = M.CodeGenerationOutputFormatStatusDetails,
        },
    },
}

M.ListNetworkMigrationCodeGenerationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationCodeGenerationJobDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationCodeGenerationSegmentsFilters = {
    type = "structure",
    members = {
        segmentIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationCodeGenerationSegmentsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationCodeGenerationSegmentsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationCodeGenerationArtifactSubType = {
    APPLICATION = "APPLICATION",
    NESTED_STACK = "NESTED_STACK",
    STACK = "STACK",
}

M.NetworkMigrationCodeGenerationArtifactType = {
    CDK_TYPESCRIPT = "CDK_TYPESCRIPT",
    CLOUDFORMATION_TEMPLATE = "CLOUDFORMATION_TEMPLATE",
    CDKTF_TYPESCRIPT = "CDKTF_TYPESCRIPT",
    TERRAFORM_CONFIGURATION = "TERRAFORM_CONFIGURATION",
    CDK_L2_TYPESCRIPT = "CDK_L2_TYPESCRIPT",
}

M.S3Configuration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
        s3Key = {
            type = "string",
        },
    },
}

M.NetworkMigrationCodeGenerationArtifact = {
    type = "structure",
    members = {
        artifactID = {
            type = "string",
        },
        artifactType = {
            type = "string",
        },
        artifactSubType = {
            type = "string",
        },
        logicalID = {
            type = "string",
        },
        outputS3Configuration = M.S3Configuration,
        checksum = M.Checksum,
        createdAt = {
            type = "timestamp",
        },
    },
}

M.NetworkMigrationCodeGenerationSegmentType = {
    WORKLOAD = "WORKLOAD",
    APPLIANCE = "APPLIANCE",
    NETWORK = "NETWORK",
}

M.NetworkMigrationCodeGenerationSegment = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        segmentID = {
            type = "string",
        },
        segmentType = {
            type = "string",
        },
        logicalID = {
            type = "string",
        },
        mapperSegmentID = {
            type = "string",
        },
        artifacts = {
            type = "list",
            member = M.NetworkMigrationCodeGenerationArtifact,
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ListNetworkMigrationCodeGenerationSegmentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationCodeGenerationSegment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationDefinitionsRequestFilters = {
    type = "structure",
    members = {
        networkMigrationDefinitionIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationDefinitionsInput = {
    type = "structure",
    members = {
        filters = M.ListNetworkMigrationDefinitionsRequestFilters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.NetworkMigrationDefinitionSummary = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        sourceEnvironment = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListNetworkMigrationDefinitionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationDefinitionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationDeployedStacksInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationFailedResourceStatus = {
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.NetworkMigrationFailedResourceDetails = {
    type = "structure",
    members = {
        logicalID = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
    },
}

M.NetworkMigrationDeployedStackStatus = {
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_STARTED = "CREATE_STARTED",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_STARTED = "DELETE_STARTED",
}

M.NetworkMigrationDeployedStackDetails = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        stackPhysicalID = {
            type = "string",
        },
        stackLogicalID = {
            type = "string",
        },
        segmentID = {
            type = "string",
        },
        targetAccount = {
            type = "string",
        },
        failedResources = {
            type = "list",
            member = M.NetworkMigrationFailedResourceDetails,
        },
    },
}

M.ListNetworkMigrationDeployedStacksOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationDeployedStackDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationDeployerJobFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationDeploymentsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationDeployerJobFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationDeployerJobDetails = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationDeploymentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationDeployerJobDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExecutionStatus = {
    PENDING = "PENDING",
    STARTED = "STARTED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ListNetworkMigrationExecutionRequestFilters = {
    type = "structure",
    members = {
        networkMigrationExecutionIDs = {
            type = "list",
            member = { type = "string" },
        },
        networkMigrationExecutionStatuses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationExecutionsInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationExecutionRequestFilters,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ExecutionStageActivity = {
    MAPPING = "MAPPING",
    MAPPING_UPDATE = "MAPPING_UPDATE",
    CODE_GENERATION = "CODE_GENERATION",
    DEPLOY = "DEPLOY",
    DEPLOYED_STACKS_DELETION = "DEPLOYED_STACKS_DELETION",
    ANALYZE = "ANALYZE",
}

M.ExecutionStage = {
    MAPPING = "MAPPING",
    CODE_GENERATION = "CODE_GENERATION",
    DEPLOY = "DEPLOY",
    DEPLOYED_STACKS_DELETION = "DEPLOYED_STACKS_DELETION",
    ANALYZE = "ANALYZE",
}

M.NetworkMigrationExecution = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        status = {
            type = "string",
        },
        stage = {
            type = "string",
        },
        activity = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListNetworkMigrationExecutionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationExecution,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMapperSegmentConstructsFilters = {
    type = "structure",
    members = {
        constructIDs = {
            type = "list",
            member = { type = "string" },
        },
        constructTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationMapperSegmentConstructsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        segmentID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationMapperSegmentConstructsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMapperSegmentConstructsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationMapperSegmentConstruct,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMapperSegmentsFilters = {
    type = "structure",
    members = {
        segmentIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationMapperSegmentsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationMapperSegmentsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationMapperSegmentType = {
    WORKLOAD = "WORKLOAD",
    APPLIANCE = "APPLIANCE",
}

M.NetworkMigrationMapperSegment = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        segmentID = {
            type = "string",
        },
        segmentType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logicalID = {
            type = "string",
        },
        checksum = M.Checksum,
        outputS3Configuration = M.S3Configuration,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targetAccount = {
            type = "string",
        },
        referencedSegments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationMapperSegmentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationMapperSegment,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMappingsFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationMappingsInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationMappingsFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationMappingJobDetails = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMappingsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationMappingJobDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMappingUpdatesFilters = {
    type = "structure",
    members = {
        jobIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListNetworkMigrationMappingUpdatesInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.ListNetworkMigrationMappingUpdatesFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NetworkMigrationMappingUpdateJobDetails = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "string",
        },
    },
}

M.ListNetworkMigrationMappingUpdatesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.NetworkMigrationMappingUpdateJobDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartNetworkMigrationAnalysisInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartNetworkMigrationAnalysisOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
    },
}

M.StartNetworkMigrationCodeGenerationInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeGenerationOutputFormatTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartNetworkMigrationCodeGenerationOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
    },
}

M.StartNetworkMigrationDeploymentInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartNetworkMigrationDeploymentOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
    },
}

M.SecurityGroupMappingStrategy = {
    MAP = "MAP",
    SKIP = "SKIP",
}

M.StartNetworkMigrationMappingInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupMappingStrategy = {
            type = "string",
        },
    },
}

M.StartNetworkMigrationMappingOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
    },
}

M.DeleteOperation = {
    type = "structure",
}

M.MergeConstruct = {
    type = "structure",
    members = {
        segmentID = {
            type = "string",
        },
        constructID = {
            type = "string",
        },
    },
}

M.MergeOperation = {
    type = "structure",
    members = {
        mergeConstructs = {
            type = "list",
            member = M.MergeConstruct,
        },
    },
}

M.SplitConstruct = {
    type = "structure",
    members = {
        cidrBlock = {
            type = "string",
        },
    },
}

M.SplitOperation = {
    type = "structure",
    members = {
        splitConstructs = {
            type = "list",
            member = M.SplitConstruct,
        },
    },
}

M.UpdateOperation = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        excluded = {
            type = "boolean",
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.OperationUnion = {
    type = "union",
    members = {
        merge = M.MergeOperation,
        split = M.SplitOperation,
        delete = M.DeleteOperation,
        update = M.UpdateOperation,
    },
}

M.StartNetworkMigrationMappingUpdateConstruct = {
    type = "structure",
    members = {
        segmentID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        constructID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        constructType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operation = M.OperationUnion,
    },
}

M.StartNetworkMigrationMappingUpdateSegment = {
    type = "structure",
    members = {
        segmentID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetAccount = {
            type = "string",
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartNetworkMigrationMappingUpdateInput = {
    type = "structure",
    members = {
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        constructs = {
            type = "list",
            member = M.StartNetworkMigrationMappingUpdateConstruct,
        },
        segments = {
            type = "list",
            member = M.StartNetworkMigrationMappingUpdateSegment,
        },
    },
}

M.StartNetworkMigrationMappingUpdateOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
    },
}

M.TargetNetworkUpdate = {
    type = "structure",
    members = {
        topology = {
            type = "string",
        },
        inboundCidr = {
            type = "string",
        },
        outboundCidr = {
            type = "string",
        },
        inspectionCidr = {
            type = "string",
        },
    },
}

M.TargetS3ConfigurationUpdate = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
    },
}

M.UpdateNetworkMigrationDefinitionInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sourceConfigurations = {
            type = "list",
            member = M.SourceConfiguration,
        },
        targetS3Configuration = M.TargetS3ConfigurationUpdate,
        targetNetwork = M.TargetNetworkUpdate,
        targetDeployment = {
            type = "string",
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateNetworkMigrationDefinitionOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sourceConfigurations = {
            type = "list",
            member = M.SourceConfiguration,
        },
        targetS3Configuration = M.TargetS3Configuration,
        targetNetwork = M.TargetNetwork,
        targetDeployment = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateNetworkMigrationMapperSegmentInput = {
    type = "structure",
    members = {
        networkMigrationDefinitionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkMigrationExecutionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        segmentID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateNetworkMigrationMapperSegmentOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
        },
        networkMigrationExecutionID = {
            type = "string",
        },
        networkMigrationDefinitionID = {
            type = "string",
        },
        segmentID = {
            type = "string",
        },
        segmentType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logicalID = {
            type = "string",
        },
        checksum = M.Checksum,
        outputS3Configuration = M.S3Configuration,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        scopeTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targetAccount = {
            type = "string",
        },
        referencedSegments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReplicationConfigurationDataPlaneRouting = {
    PRIVATE_IP = "PRIVATE_IP",
    PUBLIC_IP = "PUBLIC_IP",
}

M.ReplicationConfigurationDefaultLargeStagingDiskType = {
    GP2 = "GP2",
    ST1 = "ST1",
    GP3 = "GP3",
}

M.ReplicationConfigurationEbsEncryption = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
}

M.InternetProtocol = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.CreateReplicationConfigurationTemplateInput = {
    type = "structure",
    members = {
        stagingAreaSubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        replicationServerInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        useDedicatedReplicationServer = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        defaultLargeStagingDiskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ebsEncryption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        dataPlaneRouting = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createPublicIP = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.CreateReplicationConfigurationTemplateOutput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.DeleteReplicationConfigurationTemplateInput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationConfigurationTemplateOutput = {
    type = "structure",
}

M.DescribeReplicationConfigurationTemplatesInput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateIDs = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ReplicationConfigurationTemplate = {
    type = "structure",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.DescribeReplicationConfigurationTemplatesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ReplicationConfigurationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateReplicationConfigurationTemplateInput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.UpdateReplicationConfigurationTemplateOutput = {
    type = "structure",
    members = {
        replicationConfigurationTemplateID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.ChangeServerLifeCycleStateSourceServerLifecycleState = {
    READY_FOR_TEST = "READY_FOR_TEST",
    READY_FOR_CUTOVER = "READY_FOR_CUTOVER",
    CUTOVER = "CUTOVER",
}

M.ChangeServerLifeCycleStateSourceServerLifecycle = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeServerLifeCycleStateInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifeCycle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ChangeServerLifeCycleStateSourceServerLifecycle }),
        accountID = {
            type = "string",
        },
    },
}

M.SourceServerConnectorAction = {
    type = "structure",
    members = {
        credentialsSecretArn = {
            type = "string",
        },
        connectorArn = {
            type = "string",
        },
    },
}

M.DataReplicationErrorString = {
    AGENT_NOT_SEEN = "AGENT_NOT_SEEN",
    SNAPSHOTS_FAILURE = "SNAPSHOTS_FAILURE",
    NOT_CONVERGING = "NOT_CONVERGING",
    UNSTABLE_NETWORK = "UNSTABLE_NETWORK",
    FAILED_TO_CREATE_SECURITY_GROUP = "FAILED_TO_CREATE_SECURITY_GROUP",
    FAILED_TO_LAUNCH_REPLICATION_SERVER = "FAILED_TO_LAUNCH_REPLICATION_SERVER",
    FAILED_TO_BOOT_REPLICATION_SERVER = "FAILED_TO_BOOT_REPLICATION_SERVER",
    FAILED_TO_AUTHENTICATE_WITH_SERVICE = "FAILED_TO_AUTHENTICATE_WITH_SERVICE",
    FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE",
    FAILED_TO_CREATE_STAGING_DISKS = "FAILED_TO_CREATE_STAGING_DISKS",
    FAILED_TO_ATTACH_STAGING_DISKS = "FAILED_TO_ATTACH_STAGING_DISKS",
    FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT = "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT",
    FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER = "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER",
    FAILED_TO_START_DATA_TRANSFER = "FAILED_TO_START_DATA_TRANSFER",
    UNSUPPORTED_VM_CONFIGURATION = "UNSUPPORTED_VM_CONFIGURATION",
    LAST_SNAPSHOT_JOB_FAILED = "LAST_SNAPSHOT_JOB_FAILED",
}

M.DataReplicationError = {
    type = "structure",
    members = {
        error = {
            type = "string",
        },
        rawError = {
            type = "string",
        },
    },
}

M.DataReplicationInitiationStepName = {
    WAIT = "WAIT",
    CREATE_SECURITY_GROUP = "CREATE_SECURITY_GROUP",
    LAUNCH_REPLICATION_SERVER = "LAUNCH_REPLICATION_SERVER",
    BOOT_REPLICATION_SERVER = "BOOT_REPLICATION_SERVER",
    AUTHENTICATE_WITH_SERVICE = "AUTHENTICATE_WITH_SERVICE",
    DOWNLOAD_REPLICATION_SOFTWARE = "DOWNLOAD_REPLICATION_SOFTWARE",
    CREATE_STAGING_DISKS = "CREATE_STAGING_DISKS",
    ATTACH_STAGING_DISKS = "ATTACH_STAGING_DISKS",
    PAIR_REPLICATION_SERVER_WITH_AGENT = "PAIR_REPLICATION_SERVER_WITH_AGENT",
    CONNECT_AGENT_TO_REPLICATION_SERVER = "CONNECT_AGENT_TO_REPLICATION_SERVER",
    START_DATA_TRANSFER = "START_DATA_TRANSFER",
}

M.DataReplicationInitiationStepStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.DataReplicationInitiationStep = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DataReplicationInitiation = {
    type = "structure",
    members = {
        startDateTime = {
            type = "string",
        },
        nextAttemptDateTime = {
            type = "string",
        },
        steps = {
            type = "list",
            member = M.DataReplicationInitiationStep,
        },
    },
}

M.DataReplicationState = {
    STOPPED = "STOPPED",
    INITIATING = "INITIATING",
    INITIAL_SYNC = "INITIAL_SYNC",
    BACKLOG = "BACKLOG",
    CREATING_SNAPSHOT = "CREATING_SNAPSHOT",
    CONTINUOUS = "CONTINUOUS",
    PAUSED = "PAUSED",
    RESCAN = "RESCAN",
    STALLED = "STALLED",
    DISCONNECTED = "DISCONNECTED",
    PENDING_SNAPSHOT_SHIPPING = "PENDING_SNAPSHOT_SHIPPING",
    SHIPPING_SNAPSHOT = "SHIPPING_SNAPSHOT",
}

M.DataReplicationInfoReplicatedDisk = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
        },
        totalStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        replicatedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        rescannedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        backloggedStorageBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DataReplicationInfo = {
    type = "structure",
    members = {
        lagDuration = {
            type = "string",
        },
        etaDateTime = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.DataReplicationInfoReplicatedDisk,
        },
        dataReplicationState = {
            type = "string",
        },
        dataReplicationInitiation = M.DataReplicationInitiation,
        dataReplicationError = M.DataReplicationError,
        lastSnapshotDateTime = {
            type = "string",
        },
        replicatorId = {
            type = "string",
        },
    },
}

M.FirstBoot = {
    WAITING = "WAITING",
    SUCCEEDED = "SUCCEEDED",
    UNKNOWN = "UNKNOWN",
    STOPPED = "STOPPED",
}

M.LaunchedInstance = {
    type = "structure",
    members = {
        ec2InstanceID = {
            type = "string",
        },
        jobID = {
            type = "string",
        },
        firstBoot = {
            type = "string",
        },
    },
}

M.LifeCycleLastCutoverFinalized = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
    },
}

M.LifeCycleLastCutoverInitiated = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
        jobID = {
            type = "string",
        },
    },
}

M.LifeCycleLastCutoverReverted = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
    },
}

M.LifeCycleLastCutover = {
    type = "structure",
    members = {
        initiated = M.LifeCycleLastCutoverInitiated,
        reverted = M.LifeCycleLastCutoverReverted,
        finalized = M.LifeCycleLastCutoverFinalized,
    },
}

M.LifeCycleLastTestFinalized = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
    },
}

M.LifeCycleLastTestInitiated = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
        jobID = {
            type = "string",
        },
    },
}

M.LifeCycleLastTestReverted = {
    type = "structure",
    members = {
        apiCallDateTime = {
            type = "string",
        },
    },
}

M.LifeCycleLastTest = {
    type = "structure",
    members = {
        initiated = M.LifeCycleLastTestInitiated,
        reverted = M.LifeCycleLastTestReverted,
        finalized = M.LifeCycleLastTestFinalized,
    },
}

M.LifeCycleState = {
    STOPPED = "STOPPED",
    NOT_READY = "NOT_READY",
    READY_FOR_TEST = "READY_FOR_TEST",
    TESTING = "TESTING",
    READY_FOR_CUTOVER = "READY_FOR_CUTOVER",
    CUTTING_OVER = "CUTTING_OVER",
    CUTOVER = "CUTOVER",
    DISCONNECTED = "DISCONNECTED",
    DISCOVERED = "DISCOVERED",
    PENDING_INSTALLATION = "PENDING_INSTALLATION",
}

M.LifeCycle = {
    type = "structure",
    members = {
        addedToServiceDateTime = {
            type = "string",
        },
        firstByteDateTime = {
            type = "string",
        },
        elapsedReplicationDuration = {
            type = "string",
        },
        lastSeenByServiceDateTime = {
            type = "string",
        },
        lastTest = M.LifeCycleLastTest,
        lastCutover = M.LifeCycleLastCutover,
        state = {
            type = "string",
        },
    },
}

M.ReplicationType = {
    AGENT_BASED = "AGENT_BASED",
    SNAPSHOT_SHIPPING = "SNAPSHOT_SHIPPING",
}

M.CPU = {
    type = "structure",
    members = {
        cores = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        modelName = {
            type = "string",
        },
    },
}

M.Disk = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
        },
        bytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IdentificationHints = {
    type = "structure",
    members = {
        fqdn = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        vmWareUuid = {
            type = "string",
        },
        awsInstanceID = {
            type = "string",
        },
        vmPath = {
            type = "string",
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    members = {
        macAddress = {
            type = "string",
        },
        ips = {
            type = "list",
            member = { type = "string" },
        },
        isPrimary = {
            type = "boolean",
        },
    },
}

M.OS = {
    type = "structure",
    members = {
        fullString = {
            type = "string",
        },
    },
}

M.SourceProperties = {
    type = "structure",
    members = {
        lastUpdatedDateTime = {
            type = "string",
        },
        recommendedInstanceType = {
            type = "string",
        },
        identificationHints = M.IdentificationHints,
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        disks = {
            type = "list",
            member = M.Disk,
        },
        cpus = {
            type = "list",
            member = M.CPU,
        },
        ramBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        os = M.OS,
    },
}

M.ChangeServerLifeCycleStateOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.DeleteSourceServerInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DeleteSourceServerOutput = {
    type = "structure",
}

M.DescribeSourceServersRequestFilters = {
    type = "structure",
    members = {
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
        },
        isArchived = {
            type = "boolean",
        },
        replicationTypes = {
            type = "list",
            member = { type = "string" },
        },
        lifeCycleStates = {
            type = "list",
            member = { type = "string" },
        },
        applicationIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSourceServersInput = {
    type = "structure",
    members = {
        filters = M.DescribeSourceServersRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.SourceServer = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.DescribeSourceServersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.SourceServer,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisconnectFromServiceInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DisconnectFromServiceOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.FinalizeCutoverInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.FinalizeCutoverOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.GetLaunchConfigurationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.GetLaunchConfigurationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
    },
}

M.GetReplicationConfigurationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.ReplicationConfigurationReplicatedDiskStagingDiskType = {
    AUTO = "AUTO",
    GP2 = "GP2",
    IO1 = "IO1",
    SC1 = "SC1",
    ST1 = "ST1",
    STANDARD = "STANDARD",
    GP3 = "GP3",
    IO2 = "IO2",
}

M.ReplicationConfigurationReplicatedDisk = {
    type = "structure",
    members = {
        deviceName = {
            type = "string",
        },
        isBootDisk = {
            type = "boolean",
        },
        stagingDiskType = {
            type = "string",
        },
        iops = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        throughput = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetReplicationConfigurationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.SourceServerActionsRequestFilters = {
    type = "structure",
    members = {
        actionIDs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSourceServerActionsInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = M.SourceServerActionsRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.SourceServerActionDocument = {
    type = "structure",
    members = {
        actionID = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        documentIdentifier = {
            type = "string",
        },
        order = {
            type = "integer",
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.ListSourceServerActionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.SourceServerActionDocument,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MarkAsArchivedInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.MarkAsArchivedOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.PauseReplicationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.PauseReplicationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.PutSourceServerActionInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        actionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.PutSourceServerActionOutput = {
    type = "structure",
    members = {
        actionID = {
            type = "string",
        },
        actionName = {
            type = "string",
        },
        documentIdentifier = {
            type = "string",
        },
        order = {
            type = "integer",
        },
        documentVersion = {
            type = "string",
        },
        active = {
            type = "boolean",
        },
        timeoutSeconds = {
            type = "integer",
        },
        mustSucceedForCutover = {
            type = "boolean",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        externalParameters = {
            type = "map",
            key = { type = "string" },
            value = M.SsmExternalParameter,
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.RemoveSourceServerActionInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.RemoveSourceServerActionOutput = {
    type = "structure",
}

M.ResumeReplicationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.ResumeReplicationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.RetryDataReplicationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.RetryDataReplicationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.StartCutoverInput = {
    type = "structure",
    members = {
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accountID = {
            type = "string",
        },
    },
}

M.StartCutoverOutput = {
    type = "structure",
    members = {
        job = M.Job,
    },
}

M.StartReplicationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.StartReplicationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.StartTestInput = {
    type = "structure",
    members = {
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accountID = {
            type = "string",
        },
    },
}

M.StartTestOutput = {
    type = "structure",
    members = {
        job = M.Job,
    },
}

M.StopReplicationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.StopReplicationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.TerminateTargetInstancesInput = {
    type = "structure",
    members = {
        sourceServerIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accountID = {
            type = "string",
        },
    },
}

M.TerminateTargetInstancesOutput = {
    type = "structure",
    members = {
        job = M.Job,
    },
}

M.UpdateLaunchConfigurationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.UpdateLaunchConfigurationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ec2LaunchTemplateID = {
            type = "string",
        },
        launchDisposition = {
            type = "string",
        },
        targetInstanceTypeRightSizingMethod = {
            type = "string",
        },
        copyPrivateIp = {
            type = "boolean",
        },
        copyTags = {
            type = "boolean",
        },
        licensing = M.Licensing,
        bootMode = {
            type = "string",
        },
        postLaunchActions = M.PostLaunchActions,
        enableMapAutoTagging = {
            type = "boolean",
        },
        mapAutoTaggingMpeID = {
            type = "string",
        },
    },
}

M.UpdateReplicationConfigurationInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        accountID = {
            type = "string",
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.UpdateReplicationConfigurationOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        name = {
            type = "string",
        },
        stagingAreaSubnetId = {
            type = "string",
        },
        associateDefaultSecurityGroup = {
            type = "boolean",
        },
        replicationServersSecurityGroupsIDs = {
            type = "list",
            member = { type = "string" },
        },
        replicationServerInstanceType = {
            type = "string",
        },
        useDedicatedReplicationServer = {
            type = "boolean",
        },
        defaultLargeStagingDiskType = {
            type = "string",
        },
        replicatedDisks = {
            type = "list",
            member = M.ReplicationConfigurationReplicatedDisk,
        },
        ebsEncryption = {
            type = "string",
        },
        ebsEncryptionKeyArn = {
            type = "string",
        },
        bandwidthThrottling = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        dataPlaneRouting = {
            type = "string",
        },
        createPublicIP = {
            type = "boolean",
        },
        stagingAreaTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useFipsEndpoint = {
            type = "boolean",
        },
        internetProtocol = {
            type = "string",
        },
        storeSnapshotOnLocalZone = {
            type = "boolean",
        },
    },
}

M.UpdateSourceServerInput = {
    type = "structure",
    members = {
        accountID = {
            type = "string",
        },
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.UpdateSourceServerOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.UpdateSourceServerReplicationTypeInput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.UpdateSourceServerReplicationTypeOutput = {
    type = "structure",
    members = {
        sourceServerID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        launchedInstance = M.LaunchedInstance,
        dataReplicationInfo = M.DataReplicationInfo,
        lifeCycle = M.LifeCycle,
        sourceProperties = M.SourceProperties,
        replicationType = {
            type = "string",
        },
        vcenterClientID = {
            type = "string",
        },
        applicationID = {
            type = "string",
        },
        userProvidedID = {
            type = "string",
        },
        fqdnForActionFramework = {
            type = "string",
        },
        connectorAction = M.SourceServerConnectorAction,
    },
}

M.IpAssignmentStrategy = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.EnrichmentSourceS3Configuration = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartImportFileEnrichmentInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        s3BucketSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnrichmentSourceS3Configuration }),
        s3BucketTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EnrichmentTargetS3Configuration }),
        ipAssignmentStrategy = {
            type = "string",
        },
    },
}

M.StartImportFileEnrichmentOutput = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
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
}

M.DeleteVcenterClientInput = {
    type = "structure",
    members = {
        vcenterClientID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVcenterClientOutput = {
    type = "structure",
}

M.DescribeVcenterClientsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.VcenterClient = {
    type = "structure",
    members = {
        vcenterClientID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        hostname = {
            type = "string",
        },
        vcenterUUID = {
            type = "string",
        },
        datacenterName = {
            type = "string",
        },
        lastSeenDatetime = {
            type = "string",
        },
        sourceServerTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeVcenterClientsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.VcenterClient,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ArchiveWaveInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.WaveHealthStatus = {
    HEALTHY = "HEALTHY",
    LAGGING = "LAGGING",
    ERROR = "ERROR",
}

M.WaveProgressStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.WaveAggregatedStatus = {
    type = "structure",
    members = {
        lastUpdateDateTime = {
            type = "string",
        },
        replicationStartedDateTime = {
            type = "string",
        },
        healthStatus = {
            type = "string",
        },
        progressStatus = {
            type = "string",
        },
        totalApplications = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ArchiveWaveOutput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        waveAggregatedStatus = M.WaveAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AssociateApplicationsInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.AssociateApplicationsOutput = {
    type = "structure",
}

M.CreateWaveInput = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        accountID = {
            type = "string",
        },
    },
}

M.CreateWaveOutput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        waveAggregatedStatus = M.WaveAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteWaveInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DeleteWaveOutput = {
    type = "structure",
}

M.DisassociateApplicationsInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationIDs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.DisassociateApplicationsOutput = {
    type = "structure",
}

M.ListWavesRequestFilters = {
    type = "structure",
    members = {
        waveIDs = {
            type = "list",
            member = { type = "string" },
        },
        isArchived = {
            type = "boolean",
        },
    },
}

M.ListWavesInput = {
    type = "structure",
    members = {
        filters = M.ListWavesRequestFilters,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.Wave = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        waveAggregatedStatus = M.WaveAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListWavesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Wave,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UnarchiveWaveInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountID = {
            type = "string",
        },
    },
}

M.UnarchiveWaveOutput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        waveAggregatedStatus = M.WaveAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateWaveInput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        accountID = {
            type = "string",
        },
    },
}

M.UpdateWaveOutput = {
    type = "structure",
    members = {
        waveID = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isArchived = {
            type = "boolean",
        },
        waveAggregatedStatus = M.WaveAggregatedStatus,
        creationDateTime = {
            type = "string",
        },
        lastModifiedDateTime = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

return M
