local record CancelFlowExecutionsInput
    flowName: string
    executionIds: {string}
end

local record CancelFlowExecutionsOutput
    invalidExecutions: {string}
end

local record CreateConnectorProfileInput
    connectorProfileName: string
    kmsArn: string
    connectorType: string
    connectorLabel: string
    connectionMode: string
    connectorProfileConfig: ConnectorProfileConfig
    clientToken: string
end

local record CreateConnectorProfileOutput
    connectorProfileArn: string
end

local record CreateFlowInput
    flowName: string
    description: string
    kmsArn: string
    triggerConfig: TriggerConfig
    sourceFlowConfig: SourceFlowConfig
    destinationFlowConfigList: {DestinationFlowConfig}
    tasks: {Task}
    tags: {string : string}
    metadataCatalogConfig: MetadataCatalogConfig
    clientToken: string
end

local record CreateFlowOutput
    flowArn: string
    flowStatus: string
end

local record DeleteConnectorProfileInput
    connectorProfileName: string
    forceDelete: boolean
end

local record DeleteConnectorProfileOutput
end

local record DeleteFlowInput
    flowName: string
    forceDelete: boolean
end

local record DeleteFlowOutput
end

local record DescribeConnectorInput
    connectorType: string
    connectorLabel: string
end

local record DescribeConnectorOutput
    connectorConfiguration: ConnectorConfiguration
end

local record DescribeConnectorEntityInput
    connectorEntityName: string
    connectorType: string
    connectorProfileName: string
    apiVersion: string
end

local record DescribeConnectorEntityOutput
    connectorEntityFields: {ConnectorEntityField}
end

local record DescribeConnectorProfilesInput
    connectorProfileNames: {string}
    connectorType: string
    connectorLabel: string
    maxResults: number
    nextToken: string
end

local record DescribeConnectorProfilesOutput
    connectorProfileDetails: {ConnectorProfile}
    nextToken: string
end

local record DescribeConnectorsInput
    connectorTypes: {string}
    maxResults: number
    nextToken: string
end

local record DescribeConnectorsOutput
    connectorConfigurations: {string : ConnectorConfiguration}
    connectors: {ConnectorDetail}
    nextToken: string
end

local record DescribeFlowInput
    flowName: string
end

local record DescribeFlowOutput
    flowArn: string
    description: string
    flowName: string
    kmsArn: string
    flowStatus: string
    flowStatusMessage: string
    sourceFlowConfig: SourceFlowConfig
    destinationFlowConfigList: {DestinationFlowConfig}
    lastRunExecutionDetails: ExecutionDetails
    triggerConfig: TriggerConfig
    tasks: {Task}
    createdAt: number
    lastUpdatedAt: number
    createdBy: string
    lastUpdatedBy: string
    tags: {string : string}
    metadataCatalogConfig: MetadataCatalogConfig
    lastRunMetadataCatalogDetails: {MetadataCatalogDetail}
    schemaVersion: number
end

local record DescribeFlowExecutionRecordsInput
    flowName: string
    maxResults: number
    nextToken: string
end

local record DescribeFlowExecutionRecordsOutput
    flowExecutions: {ExecutionRecord}
    nextToken: string
end

local record ListConnectorEntitiesInput
    connectorProfileName: string
    connectorType: string
    entitiesPath: string
    apiVersion: string
    maxResults: number
    nextToken: string
end

local record ListConnectorEntitiesOutput
    connectorEntityMap: {string : {ConnectorEntity}}
    nextToken: string
end

local record ListConnectorsInput
    maxResults: number
    nextToken: string
end

local record ListConnectorsOutput
    connectors: {ConnectorDetail}
    nextToken: string
end

local record ListFlowsInput
    maxResults: number
    nextToken: string
end

local record ListFlowsOutput
    flows: {FlowDefinition}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterConnectorInput
    connectorLabel: string
    description: string
    connectorProvisioningType: string
    connectorProvisioningConfig: ConnectorProvisioningConfig
    clientToken: string
end

local record RegisterConnectorOutput
    connectorArn: string
end

local record ResetConnectorMetadataCacheInput
    connectorProfileName: string
    connectorType: string
    connectorEntityName: string
    entitiesPath: string
    apiVersion: string
end

local record ResetConnectorMetadataCacheOutput
end

local record StartFlowInput
    flowName: string
    clientToken: string
end

local record StartFlowOutput
    flowArn: string
    flowStatus: string
    executionId: string
end

local record StopFlowInput
    flowName: string
end

local record StopFlowOutput
    flowArn: string
    flowStatus: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UnregisterConnectorInput
    connectorLabel: string
    forceDelete: boolean
end

local record UnregisterConnectorOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateConnectorProfileInput
    connectorProfileName: string
    connectionMode: string
    connectorProfileConfig: ConnectorProfileConfig
    clientToken: string
end

local record UpdateConnectorProfileOutput
    connectorProfileArn: string
end

local record UpdateConnectorRegistrationInput
    connectorLabel: string
    description: string
    connectorProvisioningConfig: ConnectorProvisioningConfig
    clientToken: string
end

local record UpdateConnectorRegistrationOutput
    connectorArn: string
end

local record UpdateFlowInput
    flowName: string
    description: string
    triggerConfig: TriggerConfig
    sourceFlowConfig: SourceFlowConfig
    destinationFlowConfigList: {DestinationFlowConfig}
    tasks: {Task}
    metadataCatalogConfig: MetadataCatalogConfig
    clientToken: string
end

local record UpdateFlowOutput
    flowStatus: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record UnsupportedOperationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ConnectorAuthenticationException
    message: string
end

local record ConnectorServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local type ConnectorType = "Salesforce" | "Singular" | "Slack" | "Redshift" | "S3" | "Marketo" | "Googleanalytics" | "Zendesk" | "Servicenow" | "Datadog" | "Trendmicro" | "Snowflake" | "Dynatrace" | "Infornexus" | "Amplitude" | "Veeva" | "EventBridge" | "LookoutMetrics" | "Upsolver" | "Honeycode" | "CustomerProfiles" | "SAPOData" | "CustomConnector" | "Pardot"

local type FlowStatus = "Active" | "Deprecated" | "Deleted" | "Draft" | "Errored" | "Suspended"

local type ConnectionMode = "Public" | "Private"

local type ConnectorProvisioningType = "LAMBDA"

local record M
    CancelFlowExecutionsInput: CancelFlowExecutionsInput
    CancelFlowExecutionsOutput: CancelFlowExecutionsOutput
    CreateConnectorProfileInput: CreateConnectorProfileInput
    CreateConnectorProfileOutput: CreateConnectorProfileOutput
    CreateFlowInput: CreateFlowInput
    CreateFlowOutput: CreateFlowOutput
    DeleteConnectorProfileInput: DeleteConnectorProfileInput
    DeleteConnectorProfileOutput: DeleteConnectorProfileOutput
    DeleteFlowInput: DeleteFlowInput
    DeleteFlowOutput: DeleteFlowOutput
    DescribeConnectorInput: DescribeConnectorInput
    DescribeConnectorOutput: DescribeConnectorOutput
    DescribeConnectorEntityInput: DescribeConnectorEntityInput
    DescribeConnectorEntityOutput: DescribeConnectorEntityOutput
    DescribeConnectorProfilesInput: DescribeConnectorProfilesInput
    DescribeConnectorProfilesOutput: DescribeConnectorProfilesOutput
    DescribeConnectorsInput: DescribeConnectorsInput
    DescribeConnectorsOutput: DescribeConnectorsOutput
    DescribeFlowInput: DescribeFlowInput
    DescribeFlowOutput: DescribeFlowOutput
    DescribeFlowExecutionRecordsInput: DescribeFlowExecutionRecordsInput
    DescribeFlowExecutionRecordsOutput: DescribeFlowExecutionRecordsOutput
    ListConnectorEntitiesInput: ListConnectorEntitiesInput
    ListConnectorEntitiesOutput: ListConnectorEntitiesOutput
    ListConnectorsInput: ListConnectorsInput
    ListConnectorsOutput: ListConnectorsOutput
    ListFlowsInput: ListFlowsInput
    ListFlowsOutput: ListFlowsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterConnectorInput: RegisterConnectorInput
    RegisterConnectorOutput: RegisterConnectorOutput
    ResetConnectorMetadataCacheInput: ResetConnectorMetadataCacheInput
    ResetConnectorMetadataCacheOutput: ResetConnectorMetadataCacheOutput
    StartFlowInput: StartFlowInput
    StartFlowOutput: StartFlowOutput
    StopFlowInput: StopFlowInput
    StopFlowOutput: StopFlowOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UnregisterConnectorInput: UnregisterConnectorInput
    UnregisterConnectorOutput: UnregisterConnectorOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectorProfileInput: UpdateConnectorProfileInput
    UpdateConnectorProfileOutput: UpdateConnectorProfileOutput
    UpdateConnectorRegistrationInput: UpdateConnectorRegistrationInput
    UpdateConnectorRegistrationOutput: UpdateConnectorRegistrationOutput
    UpdateFlowInput: UpdateFlowInput
    UpdateFlowOutput: UpdateFlowOutput
end

return M
