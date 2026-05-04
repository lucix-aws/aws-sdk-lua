local M = {}

M.AgentConfigurationStatus = {
    type = "structure",
    id = "AgentConfigurationStatus",
    members = {
        agentId = {
            type = "string",
        },
        operationSucceeded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.AgentNetworkInfo = {
    type = "structure",
    id = "AgentNetworkInfo",
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
    id = "AgentInfo",
    members = {
        agentId = {
            type = "string",
        },
        hostName = {
            type = "string",
        },
        agentNetworkInfoList = {
            type = "list",
            member = M.AgentNetworkInfo,
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
    id = "AssociateConfigurationItemsToApplicationInput",
    members = {
        applicationConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateConfigurationItemsToApplicationOutput = {
    type = "structure",
    id = "AssociateConfigurationItemsToApplicationOutput",
}

M.AuthorizationErrorException = {
    type = "structure",
    id = "AuthorizationErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HomeRegionNotSetException = {
    type = "structure",
    id = "HomeRegionNotSetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerInternalErrorException = {
    type = "structure",
    id = "ServerInternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAgent = {
    type = "structure",
    id = "DeleteAgent",
    members = {
        agentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.BatchDeleteAgentsInput = {
    type = "structure",
    id = "BatchDeleteAgentsInput",
    members = {
        deleteAgents = {
            type = "list",
            member = M.DeleteAgent,
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
    id = "BatchDeleteAgentError",
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
    id = "BatchDeleteAgentsOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchDeleteAgentError,
        },
    },
}

M.BatchDeleteImportDataInput = {
    type = "structure",
    id = "BatchDeleteImportDataInput",
    members = {
        importTaskIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        deleteHistory = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "BatchDeleteImportDataError",
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
    id = "BatchDeleteImportDataOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchDeleteImportDataError,
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
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
    id = "CreateApplicationOutput",
    members = {
        configurationId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "CreateTagsInput",
    members = {
        configurationIds = {
            type = "list",
            member = { type = "string" },
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

M.CreateTagsOutput = {
    type = "structure",
    id = "CreateTagsOutput",
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

M.DeleteApplicationsInput = {
    type = "structure",
    id = "DeleteApplicationsInput",
    members = {
        configurationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationsOutput = {
    type = "structure",
    id = "DeleteApplicationsOutput",
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
    members = {
        configurationIds = {
            type = "list",
            member = { type = "string" },
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

M.DeleteTagsOutput = {
    type = "structure",
    id = "DeleteTagsOutput",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeAgentsInput",
    members = {
        agentIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeAgentsOutput = {
    type = "structure",
    id = "DescribeAgentsOutput",
    members = {
        agentsInfo = {
            type = "list",
            member = M.AgentInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeBatchDeleteConfigurationTaskInput = {
    type = "structure",
    id = "DescribeBatchDeleteConfigurationTaskInput",
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
    id = "DeletionWarning",
    members = {
        configurationId = {
            type = "string",
        },
        warningCode = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        warningText = {
            type = "string",
        },
    },
}

M.FailedConfiguration = {
    type = "structure",
    id = "FailedConfiguration",
    members = {
        configurationId = {
            type = "string",
        },
        errorStatusCode = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "BatchDeleteConfigurationTask",
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
            member = { type = "string" },
        },
        deletedConfigurations = {
            type = "list",
            member = { type = "string" },
        },
        failedConfigurations = {
            type = "list",
            member = M.FailedConfiguration,
        },
        deletionWarnings = {
            type = "list",
            member = M.DeletionWarning,
        },
    },
}

M.DescribeBatchDeleteConfigurationTaskOutput = {
    type = "structure",
    id = "DescribeBatchDeleteConfigurationTaskOutput",
    members = {
        task = M.BatchDeleteConfigurationTask,
    },
}

M.DescribeConfigurationsInput = {
    type = "structure",
    id = "DescribeConfigurationsInput",
    members = {
        configurationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConfigurationsOutput = {
    type = "structure",
    id = "DescribeConfigurationsOutput",
    members = {
        configurations = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.DescribeContinuousExportsInput = {
    type = "structure",
    id = "DescribeContinuousExportsInput",
    members = {
        exportIds = {
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
    id = "ContinuousExportDescription",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeContinuousExportsOutput = {
    type = "structure",
    id = "DescribeContinuousExportsOutput",
    members = {
        descriptions = {
            type = "list",
            member = M.ContinuousExportDescription,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeExportConfigurationsInput = {
    type = "structure",
    id = "DescribeExportConfigurationsInput",
    members = {
        exportIds = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ExportInfo",
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
            traits = {
                default = false,
            },
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
    id = "DescribeExportConfigurationsOutput",
    members = {
        exportsInfo = {
            type = "list",
            member = M.ExportInfo,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportFilter = {
    type = "structure",
    id = "ExportFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeExportTasksInput",
    members = {
        exportIds = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExportFilter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeExportTasksOutput = {
    type = "structure",
    id = "DescribeExportTasksOutput",
    members = {
        exportsInfo = {
            type = "list",
            member = M.ExportInfo,
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
    id = "ImportTaskFilter",
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

M.DescribeImportTasksInput = {
    type = "structure",
    id = "DescribeImportTasksInput",
    members = {
        filters = {
            type = "list",
            member = M.ImportTaskFilter,
        },
        maxResults = {
            type = "integer",
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
    id = "ImportTask",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        serverImportFailure = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        applicationImportSuccess = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        applicationImportFailure = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        errorsAndFailedEntriesZip = {
            type = "string",
        },
    },
}

M.DescribeImportTasksOutput = {
    type = "structure",
    id = "DescribeImportTasksOutput",
    members = {
        nextToken = {
            type = "string",
        },
        tasks = {
            type = "list",
            member = M.ImportTask,
        },
    },
}

M.TagFilter = {
    type = "structure",
    id = "TagFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
    members = {
        filters = {
            type = "list",
            member = M.TagFilter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ConfigurationTag",
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
    id = "DescribeTagsOutput",
    members = {
        tags = {
            type = "list",
            member = M.ConfigurationTag,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DisassociateConfigurationItemsFromApplicationInput = {
    type = "structure",
    id = "DisassociateConfigurationItemsFromApplicationInput",
    members = {
        applicationConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateConfigurationItemsFromApplicationOutput = {
    type = "structure",
    id = "DisassociateConfigurationItemsFromApplicationOutput",
}

M.ExportConfigurationsInput = {
    type = "structure",
    id = "ExportConfigurationsInput",
}

M.ExportConfigurationsOutput = {
    type = "structure",
    id = "ExportConfigurationsOutput",
    members = {
        exportId = {
            type = "string",
        },
    },
}

M.GetDiscoverySummaryInput = {
    type = "structure",
    id = "GetDiscoverySummaryInput",
}

M.CustomerAgentlessCollectorInfo = {
    type = "structure",
    id = "CustomerAgentlessCollectorInfo",
    members = {
        activeAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        healthyAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        denyListedAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        shutdownAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unhealthyAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        totalAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unknownAgentlessCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CustomerAgentInfo = {
    type = "structure",
    id = "CustomerAgentInfo",
    members = {
        activeAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        healthyAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        blackListedAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        shutdownAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unhealthyAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        totalAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unknownAgents = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CustomerConnectorInfo = {
    type = "structure",
    id = "CustomerConnectorInfo",
    members = {
        activeConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        healthyConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        blackListedConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        shutdownConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unhealthyConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        totalConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unknownConnectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CustomerMeCollectorInfo = {
    type = "structure",
    id = "CustomerMeCollectorInfo",
    members = {
        activeMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        healthyMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        denyListedMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        shutdownMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unhealthyMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        totalMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        unknownMeCollectors = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetDiscoverySummaryOutput = {
    type = "structure",
    id = "GetDiscoverySummaryOutput",
    members = {
        servers = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        applications = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        serversMappedToApplications = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        serversMappedtoTags = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        agentSummary = M.CustomerAgentInfo,
        connectorSummary = M.CustomerConnectorInfo,
        meCollectorSummary = M.CustomerMeCollectorInfo,
        agentlessCollectorSummary = M.CustomerAgentlessCollectorInfo,
    },
}

M.orderString = {
    ASC = "ASC",
    DESC = "DESC",
}

M.OrderByElement = {
    type = "structure",
    id = "OrderByElement",
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
    id = "ListConfigurationsInput",
    members = {
        configurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
        orderBy = {
            type = "list",
            member = M.OrderByElement,
        },
    },
}

M.ListConfigurationsOutput = {
    type = "structure",
    id = "ListConfigurationsOutput",
    members = {
        configurations = {
            type = "list",
            member = { type = "map" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServerNeighborsInput = {
    type = "structure",
    id = "ListServerNeighborsInput",
    members = {
        configurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portInformationNeeded = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        neighborConfigurationIds = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NeighborConnectionDetail = {
    type = "structure",
    id = "NeighborConnectionDetail",
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
            type = "integer",
        },
        transportProtocol = {
            type = "string",
        },
        connectionsCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ListServerNeighborsOutput = {
    type = "structure",
    id = "ListServerNeighborsOutput",
    members = {
        neighbors = {
            type = "list",
            member = M.NeighborConnectionDetail,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        knownDependencyCount = {
            type = "long",
            traits = {
                default = 0,
            },
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

M.StartBatchDeleteConfigurationTaskInput = {
    type = "structure",
    id = "StartBatchDeleteConfigurationTaskInput",
    members = {
        configurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartBatchDeleteConfigurationTaskOutput = {
    type = "structure",
    id = "StartBatchDeleteConfigurationTaskOutput",
    members = {
        taskId = {
            type = "string",
        },
    },
}

M.ConflictErrorException = {
    type = "structure",
    id = "ConflictErrorException",
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

M.StartContinuousExportInput = {
    type = "structure",
    id = "StartContinuousExportInput",
}

M.StartContinuousExportOutput = {
    type = "structure",
    id = "StartContinuousExportOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartDataCollectionByAgentIdsInput = {
    type = "structure",
    id = "StartDataCollectionByAgentIdsInput",
    members = {
        agentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartDataCollectionByAgentIdsOutput = {
    type = "structure",
    id = "StartDataCollectionByAgentIdsOutput",
    members = {
        agentsConfigurationStatus = {
            type = "list",
            member = M.AgentConfigurationStatus,
        },
    },
}

M.ExportDataFormat = {
    CSV = "CSV",
}

M.UsageMetricBasis = {
    type = "structure",
    id = "UsageMetricBasis",
    members = {
        name = {
            type = "string",
        },
        percentageAdjust = {
            type = "double",
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
    id = "ReservedInstanceOptions",
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
    id = "Ec2RecommendationsExportPreferences",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cpuPerformanceMetricBasis = M.UsageMetricBasis,
        ramPerformanceMetricBasis = M.UsageMetricBasis,
        tenancy = {
            type = "string",
        },
        excludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        preferredRegion = {
            type = "string",
        },
        reservedInstanceOptions = M.ReservedInstanceOptions,
    },
}

M.ExportPreferences = {
    type = "union",
    id = "ExportPreferences",
    members = {
        ec2RecommendationsPreferences = M.Ec2RecommendationsExportPreferences,
    },
}

M.StartExportTaskInput = {
    type = "structure",
    id = "StartExportTaskInput",
    members = {
        exportDataFormat = {
            type = "list",
            member = { type = "string" },
        },
        filters = {
            type = "list",
            member = M.ExportFilter,
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        preferences = M.ExportPreferences,
    },
}

M.StartExportTaskOutput = {
    type = "structure",
    id = "StartExportTaskOutput",
    members = {
        exportId = {
            type = "string",
        },
    },
}

M.StartImportTaskInput = {
    type = "structure",
    id = "StartImportTaskInput",
    members = {
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "StartImportTaskOutput",
    members = {
        task = M.ImportTask,
    },
}

M.StopContinuousExportInput = {
    type = "structure",
    id = "StopContinuousExportInput",
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
    id = "StopContinuousExportOutput",
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
    id = "StopDataCollectionByAgentIdsInput",
    members = {
        agentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StopDataCollectionByAgentIdsOutput = {
    type = "structure",
    id = "StopDataCollectionByAgentIdsOutput",
    members = {
        agentsConfigurationStatus = {
            type = "list",
            member = M.AgentConfigurationStatus,
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
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
    id = "UpdateApplicationOutput",
}

return M
