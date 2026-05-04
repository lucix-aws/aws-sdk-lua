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
            type = "number",
            traits = {
                required = true,
            },
        },
        length = {
            type = "number",
            traits = {
                required = true,
            },
        },
        allowDuplicates = {
            type = "boolean",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
        definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
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
            type = "number",
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
        externalLocation = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        exportConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        length = {
            type = "number",
            traits = {
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
        },
        primaryKey = {
            type = "structure",
        },
        alternateKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DatasetOrgAttributes = {
    type = "union",
    members = {
        vsam = {
            type = "structure",
        },
        gdg = {
            type = "structure",
        },
        po = {
            type = "structure",
        },
        ps = {
            type = "structure",
        },
    },
}

M.RecordLength = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
            traits = {
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
        datasetOrg = {
            type = "union",
            traits = {
                required = true,
            },
        },
        relativePath = {
            type = "string",
        },
        recordLength = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSetImportItem = {
    type = "structure",
    members = {
        dataSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        externalLocation = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        importConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            type = "number",
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
            type = "number",
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
        latestVersion = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        deployedVersion = {
            type = "structure",
        },
        engineType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroups = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        environmentId = {
            type = "string",
        },
        targetGroupArns = {
            type = "list",
            member_type = "string",
        },
        listenerArns = {
            type = "list",
            member_type = "string",
        },
        listenerPorts = {
            type = "list",
            member_type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        skip = {
            type = "boolean",
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
        jobStepRestartMarker = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        identifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        fileBatchJobIdentifier = {
            type = "structure",
        },
        scriptBatchJobIdentifier = {
            type = "structure",
        },
        s3BatchJobIdentifier = {
            type = "structure",
        },
        restartBatchJobIdentifier = {
            type = "structure",
        },
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
        batchJobIdentifier = {
            type = "union",
        },
        jobStepRestartMarker = {
            type = "structure",
        },
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
            type = "number",
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
        },
        cacheAtStartup = {
            type = "boolean",
        },
        primaryKey = {
            type = "structure",
        },
        alternateKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DatasetDetailOrgAttributes = {
    type = "union",
    members = {
        vsam = {
            type = "structure",
        },
        gdg = {
            type = "structure",
        },
        po = {
            type = "structure",
        },
        ps = {
            type = "structure",
        },
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
        dataSetOrg = {
            type = "union",
        },
        recordLength = {
            type = "number",
        },
        location = {
            type = "string",
        },
        blocksize = {
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        succeeded = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pending = {
            type = "number",
            traits = {
                required = true,
            },
        },
        inProgress = {
            type = "number",
            traits = {
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
        summary = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        succeeded = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pending = {
            type = "number",
            traits = {
                required = true,
            },
        },
        inProgress = {
            type = "number",
            traits = {
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
        summary = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        names = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
        fileBatchJobDefinition = {
            type = "structure",
        },
        scriptBatchJobDefinition = {
            type = "structure",
        },
    },
}

M.ListBatchJobDefinitionsOutput = {
    type = "structure",
    members = {
        batchJobDefinitions = {
            type = "list",
            member_type = "union",
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
            type = "number",
            traits = {
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
            member_type = "string",
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
        batchJobIdentifier = {
            type = "union",
        },
    },
}

M.ListBatchJobExecutionsOutput = {
    type = "structure",
    members = {
        batchJobExecutions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        stepName = {
            type = "string",
        },
        procStepNumber = {
            type = "number",
        },
        procStepName = {
            type = "string",
        },
        stepCondCode = {
            type = "string",
        },
        stepRestartable = {
            type = "boolean",
        },
        stepCheckpoint = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
        summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
        summary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
        batchJobIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
        jobParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "union",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        applicationVersion = {
            type = "number",
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
            type = "number",
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
        efs = {
            type = "structure",
        },
        fsx = {
            type = "structure",
        },
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        storageConfigurations = {
            type = "list",
            member_type = "union",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        highAvailabilityConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        networkType = {
            type = "string",
        },
        clientToken = {
            type = "string",
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
        schedule = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
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
            member_type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        highAvailabilityConfig = {
            type = "structure",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        actualCapacity = {
            type = "number",
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
        pendingMaintenance = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        names = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
        },
        forceUpdate = {
            type = "boolean",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
