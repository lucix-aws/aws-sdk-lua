local record AssociateConfigurationItemsToApplicationInput
    applicationConfigurationId: string
    configurationIds: {string}
end

local record AssociateConfigurationItemsToApplicationOutput
end

local record BatchDeleteAgentsInput
    deleteAgents: {DeleteAgent}
end

local record BatchDeleteAgentsOutput
    errors: {BatchDeleteAgentError}
end

local record BatchDeleteImportDataInput
    importTaskIds: {string}
    deleteHistory: boolean
end

local record BatchDeleteImportDataOutput
    errors: {BatchDeleteImportDataError}
end

local record CreateApplicationInput
    name: string
    description: string
    wave: string
end

local record CreateApplicationOutput
    configurationId: string
end

local record CreateTagsInput
    configurationIds: {string}
    tags: {Tag}
end

local record CreateTagsOutput
end

local record DeleteApplicationsInput
    configurationIds: {string}
end

local record DeleteApplicationsOutput
end

local record DeleteTagsInput
    configurationIds: {string}
    tags: {Tag}
end

local record DeleteTagsOutput
end

local record DescribeAgentsInput
    agentIds: {string}
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record DescribeAgentsOutput
    agentsInfo: {AgentInfo}
    nextToken: string
end

local record DescribeBatchDeleteConfigurationTaskInput
    taskId: string
end

local record DescribeBatchDeleteConfigurationTaskOutput
    task: BatchDeleteConfigurationTask
end

local record DescribeConfigurationsInput
    configurationIds: {string}
end

local record DescribeConfigurationsOutput
    configurations: {{string : string}}
end

local record DescribeContinuousExportsInput
    exportIds: {string}
    maxResults: number
    nextToken: string
end

local record DescribeContinuousExportsOutput
    descriptions: {ContinuousExportDescription}
    nextToken: string
end

local record DescribeExportConfigurationsInput
    exportIds: {string}
    maxResults: number
    nextToken: string
end

local record DescribeExportConfigurationsOutput
    exportsInfo: {ExportInfo}
    nextToken: string
end

local record DescribeExportTasksInput
    exportIds: {string}
    filters: {ExportFilter}
    maxResults: number
    nextToken: string
end

local record DescribeExportTasksOutput
    exportsInfo: {ExportInfo}
    nextToken: string
end

local record DescribeImportTasksInput
    filters: {ImportTaskFilter}
    maxResults: number
    nextToken: string
end

local record DescribeImportTasksOutput
    nextToken: string
    tasks: {ImportTask}
end

local record DescribeTagsInput
    filters: {TagFilter}
    maxResults: number
    nextToken: string
end

local record DescribeTagsOutput
    tags: {ConfigurationTag}
    nextToken: string
end

local record DisassociateConfigurationItemsFromApplicationInput
    applicationConfigurationId: string
    configurationIds: {string}
end

local record DisassociateConfigurationItemsFromApplicationOutput
end

local record ExportConfigurationsInput
end

local record ExportConfigurationsOutput
    exportId: string
end

local record GetDiscoverySummaryInput
end

local record GetDiscoverySummaryOutput
    servers: number
    applications: number
    serversMappedToApplications: number
    serversMappedtoTags: number
    agentSummary: CustomerAgentInfo
    connectorSummary: CustomerConnectorInfo
    meCollectorSummary: CustomerMeCollectorInfo
    agentlessCollectorSummary: CustomerAgentlessCollectorInfo
end

local record ListConfigurationsInput
    configurationType: string
    filters: {Filter}
    maxResults: number
    nextToken: string
    orderBy: {OrderByElement}
end

local record ListConfigurationsOutput
    configurations: {{string : string}}
    nextToken: string
end

local record ListServerNeighborsInput
    configurationId: string
    portInformationNeeded: boolean
    neighborConfigurationIds: {string}
    maxResults: number
    nextToken: string
end

local record ListServerNeighborsOutput
    neighbors: {NeighborConnectionDetail}
    nextToken: string
    knownDependencyCount: number
end

local record StartBatchDeleteConfigurationTaskInput
    configurationType: string
    configurationIds: {string}
end

local record StartBatchDeleteConfigurationTaskOutput
    taskId: string
end

local record StartContinuousExportInput
end

local record StartContinuousExportOutput
    exportId: string
    s3Bucket: string
    startTime: number
    dataSource: string
    schemaStorageConfig: {string : string}
end

local record StartDataCollectionByAgentIdsInput
    agentIds: {string}
end

local record StartDataCollectionByAgentIdsOutput
    agentsConfigurationStatus: {AgentConfigurationStatus}
end

local record StartExportTaskInput
    exportDataFormat: {string}
    filters: {ExportFilter}
    startTime: number
    endTime: number
    preferences: ExportPreferences
end

local record StartExportTaskOutput
    exportId: string
end

local record StartImportTaskInput
    clientRequestToken: string
    name: string
    importUrl: string
end

local record StartImportTaskOutput
    task: ImportTask
end

local record StopContinuousExportInput
    exportId: string
end

local record StopContinuousExportOutput
    startTime: number
    stopTime: number
end

local record StopDataCollectionByAgentIdsInput
    agentIds: {string}
end

local record StopDataCollectionByAgentIdsOutput
    agentsConfigurationStatus: {AgentConfigurationStatus}
end

local record UpdateApplicationInput
    configurationId: string
    name: string
    description: string
    wave: string
end

local record UpdateApplicationOutput
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record ConflictErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local record AuthorizationErrorException
    message: string
end

local record HomeRegionNotSetException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerInternalErrorException
    message: string
end

local type DataSource = "AGENT"

local type DeletionConfigurationItemType = "SERVER"

local type ConfigurationItemType = "SERVER" | "PROCESS" | "CONNECTION" | "APPLICATION"

local record M
    AssociateConfigurationItemsToApplicationInput: AssociateConfigurationItemsToApplicationInput
    AssociateConfigurationItemsToApplicationOutput: AssociateConfigurationItemsToApplicationOutput
    BatchDeleteAgentsInput: BatchDeleteAgentsInput
    BatchDeleteAgentsOutput: BatchDeleteAgentsOutput
    BatchDeleteImportDataInput: BatchDeleteImportDataInput
    BatchDeleteImportDataOutput: BatchDeleteImportDataOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    DeleteApplicationsInput: DeleteApplicationsInput
    DeleteApplicationsOutput: DeleteApplicationsOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DescribeAgentsInput: DescribeAgentsInput
    DescribeAgentsOutput: DescribeAgentsOutput
    DescribeBatchDeleteConfigurationTaskInput: DescribeBatchDeleteConfigurationTaskInput
    DescribeBatchDeleteConfigurationTaskOutput: DescribeBatchDeleteConfigurationTaskOutput
    DescribeConfigurationsInput: DescribeConfigurationsInput
    DescribeConfigurationsOutput: DescribeConfigurationsOutput
    DescribeContinuousExportsInput: DescribeContinuousExportsInput
    DescribeContinuousExportsOutput: DescribeContinuousExportsOutput
    DescribeExportConfigurationsInput: DescribeExportConfigurationsInput
    DescribeExportConfigurationsOutput: DescribeExportConfigurationsOutput
    DescribeExportTasksInput: DescribeExportTasksInput
    DescribeExportTasksOutput: DescribeExportTasksOutput
    DescribeImportTasksInput: DescribeImportTasksInput
    DescribeImportTasksOutput: DescribeImportTasksOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DisassociateConfigurationItemsFromApplicationInput: DisassociateConfigurationItemsFromApplicationInput
    DisassociateConfigurationItemsFromApplicationOutput: DisassociateConfigurationItemsFromApplicationOutput
    ExportConfigurationsInput: ExportConfigurationsInput
    ExportConfigurationsOutput: ExportConfigurationsOutput
    GetDiscoverySummaryInput: GetDiscoverySummaryInput
    GetDiscoverySummaryOutput: GetDiscoverySummaryOutput
    ListConfigurationsInput: ListConfigurationsInput
    ListConfigurationsOutput: ListConfigurationsOutput
    ListServerNeighborsInput: ListServerNeighborsInput
    ListServerNeighborsOutput: ListServerNeighborsOutput
    StartBatchDeleteConfigurationTaskInput: StartBatchDeleteConfigurationTaskInput
    StartBatchDeleteConfigurationTaskOutput: StartBatchDeleteConfigurationTaskOutput
    StartContinuousExportInput: StartContinuousExportInput
    StartContinuousExportOutput: StartContinuousExportOutput
    StartDataCollectionByAgentIdsInput: StartDataCollectionByAgentIdsInput
    StartDataCollectionByAgentIdsOutput: StartDataCollectionByAgentIdsOutput
    StartExportTaskInput: StartExportTaskInput
    StartExportTaskOutput: StartExportTaskOutput
    StartImportTaskInput: StartImportTaskInput
    StartImportTaskOutput: StartImportTaskOutput
    StopContinuousExportInput: StopContinuousExportInput
    StopContinuousExportOutput: StopContinuousExportOutput
    StopDataCollectionByAgentIdsInput: StopDataCollectionByAgentIdsInput
    StopDataCollectionByAgentIdsOutput: StopDataCollectionByAgentIdsOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
end

return M
