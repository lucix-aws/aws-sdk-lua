local M = {}

M.AgentConfigurationStatus = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
        },
        operationSucceeded = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
    },
}

M.AgentNetworkInfo = {
    type = "structure",
    members = {
        ipAddress = {
            type = "string",
        },
        macAddress = {
            type = "string",
        },
    },
}

M.AgentStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    RUNNING = "RUNNING",
    UNKNOWN = "UNKNOWN",
    BLACKLISTED = "BLACKLISTED",
    SHUTDOWN = "SHUTDOWN",
}

M.AgentInfo = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
        },
        hostName = {
            type = "string",
        },
        agentNetworkInfoList = {
            type = "list",
            member_type = "structure",
        },
        connectorId = {
            type = "string",
        },
        version = {
            type = "string",
        },
        health = {
            type = "string",
        },
        lastHealthPingTime = {
            type = "string",
        },
        collectionStatus = {
            type = "string",
        },
        agentType = {
            type = "string",
        },
        registeredTime = {
            type = "string",
        },
    },
}

M.AssociateConfigurationItemsToApplicationInput = {
    type = "structure",
    members = {
        applicationConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateConfigurationItemsToApplicationOutput = {
    type = "structure",
}

M.AuthorizationErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HomeRegionNotSetException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAgent = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.BatchDeleteAgentsInput = {
    type = "structure",
    members = {
        deleteAgents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentErrorCode = {
    NOT_FOUND = "NOT_FOUND",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
    AGENT_IN_USE = "AGENT_IN_USE",
}

M.BatchDeleteAgentError = {
    type = "structure",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteAgentsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDeleteImportDataInput = {
    type = "structure",
    members = {
        importTaskIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        deleteHistory = {
            type = "boolean",
        },
    },
}

M.BatchDeleteImportDataErrorCode = {
    NOT_FOUND = "NOT_FOUND",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
    OVER_LIMIT = "OVER_LIMIT",
}

M.BatchDeleteImportDataError = {
    type = "structure",
    members = {
        importTaskId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorDescription = {
            type = "string",
        },
    },
}

M.BatchDeleteImportDataOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
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
        wave = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    members = {
        configurationIds = {
            type = "list",
            member_type = "string",
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

M.CreateTagsOutput = {
    type = "structure",
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

M.DeleteApplicationsInput = {
    type = "structure",
    members = {
        configurationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationsOutput = {
    type = "structure",
}

M.DeleteTagsInput = {
    type = "structure",
    members = {
        configurationIds = {
            type = "list",
            member_type = "string",
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

M.DeleteTagsOutput = {
    type = "structure",
}

M.Filter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAgentsInput = {
    type = "structure",
    members = {
        agentIds = {
            type = "list",
            member_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeAgentsOutput = {
    type = "structure",
    members = {
        agentsInfo = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeBatchDeleteConfigurationTaskInput = {
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

M.DeletionConfigurationItemType = {
    SERVER = "SERVER",
}

M.DeletionWarning = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
        },
        warningCode = {
            type = "number",
        },
        warningText = {
            type = "string",
        },
    },
}

M.FailedConfiguration = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
        },
        errorStatusCode = {
            type = "number",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteConfigurationTaskStatus = {
    INITIALIZING = "INITIALIZING",
    VALIDATING = "VALIDATING",
    DELETING = "DELETING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.BatchDeleteConfigurationTask = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        configurationType = {
            type = "string",
        },
        requestedConfigurations = {
            type = "list",
            member_type = "string",
        },
        deletedConfigurations = {
            type = "list",
            member_type = "string",
        },
        failedConfigurations = {
            type = "list",
            member_type = "structure",
        },
        deletionWarnings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeBatchDeleteConfigurationTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
        },
    },
}

M.DescribeConfigurationsInput = {
    type = "structure",
    members = {
        configurationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConfigurationsOutput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "map",
        },
    },
}

M.DescribeContinuousExportsInput = {
    type = "structure",
    members = {
        exportIds = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DataSource = {
    AGENT = "AGENT",
}

M.ContinuousExportStatus = {
    START_IN_PROGRESS = "START_IN_PROGRESS",
    START_FAILED = "START_FAILED",
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
    STOP_IN_PROGRESS = "STOP_IN_PROGRESS",
    STOP_FAILED = "STOP_FAILED",
    INACTIVE = "INACTIVE",
}

M.ContinuousExportDescription = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusDetail = {
            type = "string",
        },
        s3Bucket = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        stopTime = {
            type = "timestamp",
        },
        dataSource = {
            type = "string",
        },
        schemaStorageConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeContinuousExportsOutput = {
    type = "structure",
    members = {
        descriptions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeExportConfigurationsInput = {
    type = "structure",
    members = {
        exportIds = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.ExportInfo = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationsDownloadUrl = {
            type = "string",
        },
        exportRequestTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        isTruncated = {
            type = "boolean",
        },
        requestedStartTime = {
            type = "timestamp",
        },
        requestedEndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeExportConfigurationsOutput = {
    type = "structure",
    members = {
        exportsInfo = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExportTasksInput = {
    type = "structure",
    members = {
        exportIds = {
            type = "list",
            member_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeExportTasksOutput = {
    type = "structure",
    members = {
        exportsInfo = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ImportTaskFilterName = {
    IMPORT_TASK_ID = "IMPORT_TASK_ID",
    STATUS = "STATUS",
    NAME = "NAME",
    FILE_CLASSIFICATION = "FILE_CLASSIFICATION",
}

M.ImportTaskFilter = {
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

M.DescribeImportTasksInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FileClassification = {
    MODELIZEIT_EXPORT = "MODELIZEIT_EXPORT",
    RVTOOLS_EXPORT = "RVTOOLS_EXPORT",
    VMWARE_NSX_EXPORT = "VMWARE_NSX_EXPORT",
    IMPORT_TEMPLATE = "IMPORT_TEMPLATE",
}

M.ImportStatus = {
    IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS",
    IMPORT_COMPLETE = "IMPORT_COMPLETE",
    IMPORT_COMPLETE_WITH_ERRORS = "IMPORT_COMPLETE_WITH_ERRORS",
    IMPORT_FAILED = "IMPORT_FAILED",
    IMPORT_FAILED_SERVER_LIMIT_EXCEEDED = "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED",
    IMPORT_FAILED_RECORD_LIMIT_EXCEEDED = "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED",
    IMPORT_FAILED_UNSUPPORTED_FILE_TYPE = "IMPORT_FAILED_UNSUPPORTED_FILE_TYPE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    DELETE_FAILED_LIMIT_EXCEEDED = "DELETE_FAILED_LIMIT_EXCEEDED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.ImportTask = {
    type = "structure",
    members = {
        importTaskId = {
            type = "string",
        },
        clientRequestToken = {
            type = "string",
        },
        name = {
            type = "string",
        },
        importUrl = {
            type = "string",
        },
        status = {
            type = "string",
        },
        importRequestTime = {
            type = "timestamp",
        },
        importCompletionTime = {
            type = "timestamp",
        },
        importDeletedTime = {
            type = "timestamp",
        },
        fileClassification = {
            type = "string",
        },
        serverImportSuccess = {
            type = "number",
        },
        serverImportFailure = {
            type = "number",
        },
        applicationImportSuccess = {
            type = "number",
        },
        applicationImportFailure = {
            type = "number",
        },
        errorsAndFailedEntriesZip = {
            type = "string",
        },
    },
}

M.DescribeImportTasksOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        tasks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TagFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ConfigurationItemType = {
    SERVER = "SERVER",
    PROCESS = "PROCESS",
    CONNECTIONS = "CONNECTION",
    APPLICATION = "APPLICATION",
}

M.ConfigurationTag = {
    type = "structure",
    members = {
        configurationType = {
            type = "string",
        },
        configurationId = {
            type = "string",
        },
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
        timeOfCreation = {
            type = "timestamp",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisassociateConfigurationItemsFromApplicationInput = {
    type = "structure",
    members = {
        applicationConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateConfigurationItemsFromApplicationOutput = {
    type = "structure",
}

M.ExportConfigurationsInput = {
    type = "structure",
}

M.ExportConfigurationsOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
    },
}

M.GetDiscoverySummaryInput = {
    type = "structure",
}

M.CustomerAgentlessCollectorInfo = {
    type = "structure",
    members = {
        activeAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        healthyAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        denyListedAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        shutdownAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unknownAgentlessCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerAgentInfo = {
    type = "structure",
    members = {
        activeAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        healthyAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        blackListedAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        shutdownAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unknownAgents = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerConnectorInfo = {
    type = "structure",
    members = {
        activeConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        healthyConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        blackListedConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        shutdownConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unknownConnectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerMeCollectorInfo = {
    type = "structure",
    members = {
        activeMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        healthyMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        denyListedMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        shutdownMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unknownMeCollectors = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDiscoverySummaryOutput = {
    type = "structure",
    members = {
        servers = {
            type = "number",
        },
        applications = {
            type = "number",
        },
        serversMappedToApplications = {
            type = "number",
        },
        serversMappedtoTags = {
            type = "number",
        },
        agentSummary = {
            type = "structure",
        },
        connectorSummary = {
            type = "structure",
        },
        meCollectorSummary = {
            type = "structure",
        },
        agentlessCollectorSummary = {
            type = "structure",
        },
    },
}

M.orderString = {
    ASC = "ASC",
    DESC = "DESC",
}

M.OrderByElement = {
    type = "structure",
    members = {
        fieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.ListConfigurationsInput = {
    type = "structure",
    members = {
        configurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        orderBy = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConfigurationsOutput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "map",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServerNeighborsInput = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portInformationNeeded = {
            type = "boolean",
        },
        neighborConfigurationIds = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NeighborConnectionDetail = {
    type = "structure",
    members = {
        sourceServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPort = {
            type = "number",
        },
        transportProtocol = {
            type = "string",
        },
        connectionsCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServerNeighborsOutput = {
    type = "structure",
    members = {
        neighbors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        knownDependencyCount = {
            type = "number",
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

M.StartBatchDeleteConfigurationTaskInput = {
    type = "structure",
    members = {
        configurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartBatchDeleteConfigurationTaskOutput = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.ConflictErrorException = {
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

M.StartContinuousExportInput = {
    type = "structure",
}

M.StartContinuousExportOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        s3Bucket = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        dataSource = {
            type = "string",
        },
        schemaStorageConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartDataCollectionByAgentIdsInput = {
    type = "structure",
    members = {
        agentIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDataCollectionByAgentIdsOutput = {
    type = "structure",
    members = {
        agentsConfigurationStatus = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExportDataFormat = {
    CSV = "CSV",
}

M.UsageMetricBasis = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        percentageAdjust = {
            type = "number",
        },
    },
}

M.OfferingClass = {
    STANDARD = "STANDARD",
    CONVERTIBLE = "CONVERTIBLE",
}

M.PurchasingOption = {
    ALL_UPFRONT = "ALL_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.TermLength = {
    ONE_YEAR = "ONE_YEAR",
    THREE_YEAR = "THREE_YEAR",
}

M.ReservedInstanceOptions = {
    type = "structure",
    members = {
        purchasingOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offeringClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        termLength = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tenancy = {
    DEDICATED = "DEDICATED",
    SHARED = "SHARED",
}

M.Ec2RecommendationsExportPreferences = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        cpuPerformanceMetricBasis = {
            type = "structure",
        },
        ramPerformanceMetricBasis = {
            type = "structure",
        },
        tenancy = {
            type = "string",
        },
        excludedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        preferredRegion = {
            type = "string",
        },
        reservedInstanceOptions = {
            type = "structure",
        },
    },
}

M.ExportPreferences = {
    type = "union",
    members = {
        ec2RecommendationsPreferences = {
            type = "structure",
        },
    },
}

M.StartExportTaskInput = {
    type = "structure",
    members = {
        exportDataFormat = {
            type = "list",
            member_type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        preferences = {
            type = "union",
        },
    },
}

M.StartExportTaskOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
    },
}

M.StartImportTaskInput = {
    type = "structure",
    members = {
        clientRequestToken = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        importUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartImportTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
        },
    },
}

M.StopContinuousExportInput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopContinuousExportOutput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
        },
        stopTime = {
            type = "timestamp",
        },
    },
}

M.StopDataCollectionByAgentIdsInput = {
    type = "structure",
    members = {
        agentIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDataCollectionByAgentIdsOutput = {
    type = "structure",
    members = {
        agentsConfigurationStatus = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        configurationId = {
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
        wave = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

return M
