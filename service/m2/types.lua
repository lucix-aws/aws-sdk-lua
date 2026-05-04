local M = {}

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

M.AlternateKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        offset = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        length = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        allowDuplicates = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CancelBatchJobExecutionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authSecretsManagerArn = {
            type = "string",
        },
    },
}

M.CancelBatchJobExecutionOutput = {
    type = "structure",
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
        resourceId = {
            type = "string",
        },
        resourceType = {
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
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
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
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FEATURE_NOT_AVAILABLE = "featureNotAvailable",
    UNSUPPORTED_ENGINE_VERSION = "unsupportedEngineVersion",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.Definition = {
    type = "union",
    members = {
        s3Location = {
            type = "string",
        },
        content = {
            type = "string",
        },
    },
}

M.EngineType = {
    MICROFOCUS = "microfocus",
    BLUAGE = "bluage",
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
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Definition }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
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
    },
}

M.ExternalLocation = {
    type = "union",
    members = {
        s3Location = {
            type = "string",
        },
    },
}

M.DataSetExportItem = {
    type = "structure",
    members = {
        datasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExternalLocation }),
    },
}

M.DataSetExportConfig = {
    type = "union",
    members = {
        s3Location = {
            type = "string",
        },
        dataSets = {
            type = "list",
            member = M.DataSetExportItem,
        },
    },
}

M.CreateDataSetExportTaskInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        exportConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSetExportConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateDataSetExportTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GdgAttributes = {
    type = "structure",
    members = {
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rollDisposition = {
            type = "string",
        },
    },
}

M.PoAttributes = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoding = {
            type = "string",
        },
        memberFileExtensions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PsAttributes = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoding = {
            type = "string",
        },
    },
}

M.PrimaryKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        offset = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        length = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.VsamAttributes = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoding = {
            type = "string",
        },
        compressed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        primaryKey = M.PrimaryKey,
        alternateKeys = {
            type = "list",
            member = M.AlternateKey,
        },
    },
}

M.DatasetOrgAttributes = {
    type = "union",
    members = {
        vsam = M.VsamAttributes,
        gdg = M.GdgAttributes,
        po = M.PoAttributes,
        ps = M.PsAttributes,
    },
}

M.RecordLength = {
    type = "structure",
    members = {
        min = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        max = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DataSet = {
    type = "structure",
    members = {
        storageType = {
            type = "string",
        },
        datasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetOrg = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetOrgAttributes }),
        relativePath = {
            type = "string",
        },
        recordLength = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordLength }),
    },
}

M.DataSetImportItem = {
    type = "structure",
    members = {
        dataSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSet }),
        externalLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExternalLocation }),
    },
}

M.DataSetImportConfig = {
    type = "union",
    members = {
        s3Location = {
            type = "string",
        },
        dataSets = {
            type = "list",
            member = M.DataSetImportItem,
        },
    },
}

M.CreateDataSetImportTaskInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        importConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSetImportConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateDataSetImportTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeleteApplicationFromEnvironmentInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationFromEnvironmentOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeploymentLifecycle = {
    DEPLOYING = "Deploying",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    DEPLOY_UPDATE = "Updating Deployment",
}

M.DeployedVersionSummary = {
    type = "structure",
    members = {
        applicationVersion = {
            type = "integer",
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
        statusReason = {
            type = "string",
        },
    },
}

M.ApplicationVersionLifecycle = {
    CREATING = "Creating",
    AVAILABLE = "Available",
    FAILED = "Failed",
}

M.ApplicationVersionSummary = {
    type = "structure",
    members = {
        applicationVersion = {
            type = "integer",
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
        statusReason = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.LogGroupSummary = {
    type = "structure",
    members = {
        logType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationLifecycle = {
    CREATING = "Creating",
    CREATED = "Created",
    AVAILABLE = "Available",
    READY = "Ready",
    STARTING = "Starting",
    RUNNING = "Running",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    DELETING = "Deleting",
    DELETING_FROM_ENVIRONMENT = "Deleting From Environment",
}

M.GetApplicationOutput = {
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
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationArn = {
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
        latestVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationVersionSummary }),
        deployedVersion = M.DeployedVersionSummary,
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroups = {
            type = "list",
            member = M.LogGroupSummary,
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastStartTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        environmentId = {
            type = "string",
        },
        targetGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        listenerArns = {
            type = "list",
            member = { type = "string" },
        },
        listenerPorts = {
            type = "list",
            member = { type = "integer" },
        },
        loadBalancerDnsName = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.GetApplicationVersionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationVersionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        definitionContent = {
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.GetBatchJobExecutionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FileBatchJobIdentifier = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        folderPath = {
            type = "string",
        },
    },
}

M.JobStepRestartMarker = {
    type = "structure",
    members = {
        fromStep = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fromProcStep = {
            type = "string",
        },
        toStep = {
            type = "string",
        },
        toProcStep = {
            type = "string",
        },
        stepCheckpoint = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        skip = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.RestartBatchJobIdentifier = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStepRestartMarker = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobStepRestartMarker }),
    },
}

M.JobIdentifier = {
    type = "union",
    members = {
        fileName = {
            type = "string",
        },
        scriptName = {
            type = "string",
        },
    },
}

M.S3BatchJobIdentifier = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyPrefix = {
            type = "string",
        },
        identifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobIdentifier }),
    },
}

M.ScriptBatchJobIdentifier = {
    type = "structure",
    members = {
        scriptName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchJobIdentifier = {
    type = "union",
    members = {
        fileBatchJobIdentifier = M.FileBatchJobIdentifier,
        scriptBatchJobIdentifier = M.ScriptBatchJobIdentifier,
        s3BatchJobIdentifier = M.S3BatchJobIdentifier,
        restartBatchJobIdentifier = M.RestartBatchJobIdentifier,
    },
}

M.BatchJobType = {
    VSE = "VSE",
    JES2 = "JES2",
    JES3 = "JES3",
}

M.BatchJobExecutionStatus = {
    SUBMITTING = "Submitting",
    HOLDING = "Holding",
    DISPATCH = "Dispatching",
    RUNNING = "Running",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    PURGED = "Purged",
    SUCCEEDED_WITH_WARNING = "Succeeded With Warning",
}

M.GetBatchJobExecutionOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        jobUser = {
            type = "string",
        },
        jobType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        statusReason = {
            type = "string",
        },
        returnCode = {
            type = "string",
        },
        batchJobIdentifier = M.BatchJobIdentifier,
        jobStepRestartMarker = M.JobStepRestartMarker,
    },
}

M.ExecutionTimeoutException = {
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

M.GetDataSetDetailsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GdgDetailAttributes = {
    type = "structure",
    members = {
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rollDisposition = {
            type = "string",
        },
    },
}

M.PoDetailAttributes = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoding = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PsDetailAttributes = {
    type = "structure",
    members = {
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encoding = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VsamDetailAttributes = {
    type = "structure",
    members = {
        encoding = {
            type = "string",
        },
        recordFormat = {
            type = "string",
        },
        compressed = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        cacheAtStartup = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        primaryKey = M.PrimaryKey,
        alternateKeys = {
            type = "list",
            member = M.AlternateKey,
        },
    },
}

M.DatasetDetailOrgAttributes = {
    type = "union",
    members = {
        vsam = M.VsamDetailAttributes,
        gdg = M.GdgDetailAttributes,
        po = M.PoDetailAttributes,
        ps = M.PsDetailAttributes,
    },
}

M.GetDataSetDetailsOutput = {
    type = "structure",
    members = {
        dataSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSetOrg = M.DatasetDetailOrgAttributes,
        recordLength = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        location = {
            type = "string",
        },
        blocksize = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        lastReferencedTime = {
            type = "timestamp",
        },
        fileSize = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.ServiceUnavailableException = {
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

M.GetDataSetExportTaskInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataSetTaskLifecycle = {
    CREATING = "Creating",
    RUNNING = "Running",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.DataSetExportSummary = {
    type = "structure",
    members = {
        total = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        succeeded = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        failed = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        pending = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        inProgress = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetDataSetExportTaskOutput = {
    type = "structure",
    members = {
        taskId = {
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
        summary = M.DataSetExportSummary,
        statusReason = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GetDataSetImportTaskInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataSetImportSummary = {
    type = "structure",
    members = {
        total = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        succeeded = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        failed = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        pending = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        inProgress = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetDataSetImportTaskOutput = {
    type = "structure",
    members = {
        taskId = {
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
        summary = M.DataSetImportSummary,
    },
}

M.GetDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        names = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "names",
            },
        },
        environmentId = {
            type = "string",
            traits = {
                http_query = "environmentId",
            },
        },
    },
}

M.ApplicationDeploymentLifecycle = {
    DEPLOYING = "Deploying",
    DEPLOYED = "Deployed",
}

M.ApplicationSummary = {
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
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
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
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
        },
        lastStartTime = {
            type = "timestamp",
        },
        versionStatus = {
            type = "string",
        },
        deploymentStatus = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        applications = {
            type = "list",
            member = M.ApplicationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListApplicationVersionsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListApplicationVersionsOutput = {
    type = "structure",
    members = {
        applicationVersions = {
            type = "list",
            member = M.ApplicationVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBatchJobDefinitionsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
    },
}

M.FileBatchJobDefinition = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        folderPath = {
            type = "string",
        },
    },
}

M.ScriptBatchJobDefinition = {
    type = "structure",
    members = {
        scriptName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchJobDefinition = {
    type = "union",
    members = {
        fileBatchJobDefinition = M.FileBatchJobDefinition,
        scriptBatchJobDefinition = M.ScriptBatchJobDefinition,
    },
}

M.ListBatchJobDefinitionsOutput = {
    type = "structure",
    members = {
        batchJobDefinitions = {
            type = "list",
            member = M.BatchJobDefinition,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBatchJobExecutionsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "executionIds",
            },
        },
        jobName = {
            type = "string",
            traits = {
                http_query = "jobName",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        startedAfter = {
            type = "timestamp",
            traits = {
                http_query = "startedAfter",
            },
        },
        startedBefore = {
            type = "timestamp",
            traits = {
                http_query = "startedBefore",
            },
        },
    },
}

M.BatchJobExecutionSummary = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        jobType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        returnCode = {
            type = "string",
        },
        batchJobIdentifier = M.BatchJobIdentifier,
    },
}

M.ListBatchJobExecutionsOutput = {
    type = "structure",
    members = {
        batchJobExecutions = {
            type = "list",
            member = M.BatchJobExecutionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBatchJobRestartPointsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authSecretsManagerArn = {
            type = "string",
            traits = {
                http_query = "authSecretsManagerArn",
            },
        },
    },
}

M.JobStep = {
    type = "structure",
    members = {
        stepNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        stepName = {
            type = "string",
        },
        procStepNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        procStepName = {
            type = "string",
        },
        stepCondCode = {
            type = "string",
        },
        stepRestartable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        stepCheckpoint = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        stepCheckpointStatus = {
            type = "string",
        },
        stepCheckpointTime = {
            type = "timestamp",
        },
    },
}

M.ListBatchJobRestartPointsOutput = {
    type = "structure",
    members = {
        batchJobSteps = {
            type = "list",
            member = M.JobStep,
        },
    },
}

M.ListDataSetExportHistoryInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataSetExportTask = {
    type = "structure",
    members = {
        taskId = {
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
        summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSetExportSummary }),
        statusReason = {
            type = "string",
        },
    },
}

M.ListDataSetExportHistoryOutput = {
    type = "structure",
    members = {
        dataSetExportTasks = {
            type = "list",
            member = M.DataSetExportTask,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSetImportHistoryInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataSetImportTask = {
    type = "structure",
    members = {
        taskId = {
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
        summary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSetImportSummary }),
        statusReason = {
            type = "string",
        },
    },
}

M.ListDataSetImportHistoryOutput = {
    type = "structure",
    members = {
        dataSetImportTasks = {
            type = "list",
            member = M.DataSetImportTask,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSetsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        nameFilter = {
            type = "string",
            traits = {
                http_query = "nameFilter",
            },
        },
    },
}

M.DataSetSummary = {
    type = "structure",
    members = {
        dataSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSetOrg = {
            type = "string",
        },
        format = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        lastReferencedTime = {
            type = "timestamp",
        },
    },
}

M.ListDataSetsOutput = {
    type = "structure",
    members = {
        dataSets = {
            type = "list",
            member = M.DataSetSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeploymentSummary = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationVersion = {
            type = "integer",
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
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    members = {
        deployments = {
            type = "list",
            member = M.DeploymentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartApplicationOutput = {
    type = "structure",
}

M.StartBatchJobInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        batchJobIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchJobIdentifier }),
        jobParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authSecretsManagerArn = {
            type = "string",
        },
    },
}

M.StartBatchJobOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        forceStop = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StopApplicationOutput = {
    type = "structure",
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        currentApplicationVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        definition = M.Definition,
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        applicationVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HighAvailabilityConfig = {
    type = "structure",
    members = {
        desiredCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkType = {
    IPV4 = "ipv4",
    DUAL = "dual",
}

M.EfsStorageConfiguration = {
    type = "structure",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                json_name = "file-system-id",
                required = true,
            },
        },
        mountPoint = {
            type = "string",
            traits = {
                json_name = "mount-point",
                required = true,
            },
        },
    },
}

M.FsxStorageConfiguration = {
    type = "structure",
    members = {
        fileSystemId = {
            type = "string",
            traits = {
                json_name = "file-system-id",
                required = true,
            },
        },
        mountPoint = {
            type = "string",
            traits = {
                json_name = "mount-point",
                required = true,
            },
        },
    },
}

M.StorageConfiguration = {
    type = "union",
    members = {
        efs = M.EfsStorageConfiguration,
        fsx = M.FsxStorageConfiguration,
    },
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        engineVersion = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        storageConfigurations = {
            type = "list",
            member = M.StorageConfiguration,
        },
        publiclyAccessible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        highAvailabilityConfig = M.HighAvailabilityConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        networkType = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MaintenanceSchedule = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.PendingMaintenance = {
    type = "structure",
    members = {
        schedule = M.MaintenanceSchedule,
        engineVersion = {
            type = "string",
        },
    },
}

M.EnvironmentLifecycle = {
    CREATING = "Creating",
    AVAILABLE = "Available",
    UPDATING = "Updating",
    DELETING = "Deleting",
    FAILED = "Failed",
    UNHEALTHY = "UnHealthy",
}

M.GetEnvironmentOutput = {
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
        environmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceType = {
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
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        engineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        storageConfigurations = {
            type = "list",
            member = M.StorageConfiguration,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        highAvailabilityConfig = M.HighAvailabilityConfig,
        publiclyAccessible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        actualCapacity = {
            type = "integer",
        },
        loadBalancerArn = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        pendingMaintenance = M.PendingMaintenance,
        kmsKeyId = {
            type = "string",
        },
        networkType = {
            type = "string",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
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
                default = nil,
                http_query = "maxResults",
            },
        },
        names = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "names",
            },
        },
        engineType = {
            type = "string",
            traits = {
                http_query = "engineType",
            },
        },
    },
}

M.EnvironmentSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceType = {
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
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        engineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        networkType = {
            type = "string",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
            type = "list",
            member = M.EnvironmentSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        desiredCapacity = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        instanceType = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        applyDuringMaintenanceWindow = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        forceUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSignedBluinsightsUrlInput = {
    type = "structure",
}

M.GetSignedBluinsightsUrlOutput = {
    type = "structure",
    members = {
        signedBiUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEngineVersionsInput = {
    type = "structure",
    members = {
        engineType = {
            type = "string",
            traits = {
                http_query = "engineType",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.EngineVersionsSummary = {
    type = "structure",
    members = {
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        engineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEngineVersionsOutput = {
    type = "structure",
    members = {
        engineVersions = {
            type = "list",
            member = M.EngineVersionsSummary,
            traits = {
                required = true,
            },
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

return M
