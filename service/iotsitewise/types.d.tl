local record AssociateAssetsInput
    assetId: string
    hierarchyId: string
    childAssetId: string
    clientToken: string
end

local record AssociateAssetsOutput
end

local record AssociateTimeSeriesToAssetPropertyInput
    alias: string
    assetId: string
    propertyId: string
    clientToken: string
end

local record AssociateTimeSeriesToAssetPropertyOutput
end

local record BatchAssociateProjectAssetsInput
    projectId: string
    assetIds: {string}
    clientToken: string
end

local record BatchAssociateProjectAssetsOutput
    errors: {AssetErrorDetails}
end

local record BatchDisassociateProjectAssetsInput
    projectId: string
    assetIds: {string}
    clientToken: string
end

local record BatchDisassociateProjectAssetsOutput
    errors: {AssetErrorDetails}
end

local record BatchGetAssetPropertyAggregatesInput
    entries: {BatchGetAssetPropertyAggregatesEntry}
    nextToken: string
    maxResults: number
end

local record BatchGetAssetPropertyAggregatesOutput
    errorEntries: {BatchGetAssetPropertyAggregatesErrorEntry}
    successEntries: {BatchGetAssetPropertyAggregatesSuccessEntry}
    skippedEntries: {BatchGetAssetPropertyAggregatesSkippedEntry}
    nextToken: string
end

local record BatchGetAssetPropertyValueInput
    entries: {BatchGetAssetPropertyValueEntry}
    nextToken: string
end

local record BatchGetAssetPropertyValueOutput
    errorEntries: {BatchGetAssetPropertyValueErrorEntry}
    successEntries: {BatchGetAssetPropertyValueSuccessEntry}
    skippedEntries: {BatchGetAssetPropertyValueSkippedEntry}
    nextToken: string
end

local record BatchGetAssetPropertyValueHistoryInput
    entries: {BatchGetAssetPropertyValueHistoryEntry}
    nextToken: string
    maxResults: number
end

local record BatchGetAssetPropertyValueHistoryOutput
    errorEntries: {BatchGetAssetPropertyValueHistoryErrorEntry}
    successEntries: {BatchGetAssetPropertyValueHistorySuccessEntry}
    skippedEntries: {BatchGetAssetPropertyValueHistorySkippedEntry}
    nextToken: string
end

local record BatchPutAssetPropertyValueInput
    enablePartialEntryProcessing: boolean
    entries: {PutAssetPropertyValueEntry}
end

local record BatchPutAssetPropertyValueOutput
    errorEntries: {BatchPutAssetPropertyErrorEntry}
end

local record CreateAccessPolicyInput
    accessPolicyIdentity: Identity
    accessPolicyResource: Resource
    accessPolicyPermission: string
    clientToken: string
    tags: {string : string}
end

local record CreateAccessPolicyOutput
    accessPolicyId: string
    accessPolicyArn: string
end

local record CreateAssetInput
    assetName: string
    assetModelId: string
    assetId: string
    assetExternalId: string
    clientToken: string
    tags: {string : string}
    assetDescription: string
end

local record CreateAssetOutput
    assetId: string
    assetArn: string
    assetStatus: AssetStatus
end

local record CreateAssetModelInput
    assetModelName: string
    assetModelType: string
    assetModelId: string
    assetModelExternalId: string
    assetModelDescription: string
    assetModelProperties: {AssetModelPropertyDefinition}
    assetModelHierarchies: {AssetModelHierarchyDefinition}
    assetModelCompositeModels: {AssetModelCompositeModelDefinition}
    clientToken: string
    tags: {string : string}
end

local record CreateAssetModelOutput
    assetModelId: string
    assetModelArn: string
    assetModelStatus: AssetModelStatus
end

local record CreateAssetModelCompositeModelInput
    assetModelId: string
    assetModelCompositeModelExternalId: string
    parentAssetModelCompositeModelId: string
    assetModelCompositeModelId: string
    assetModelCompositeModelDescription: string
    assetModelCompositeModelName: string
    assetModelCompositeModelType: string
    clientToken: string
    composedAssetModelId: string
    assetModelCompositeModelProperties: {AssetModelPropertyDefinition}
    ifMatch: string
    ifNoneMatch: string
    matchForVersionType: string
end

local record CreateAssetModelCompositeModelOutput
    assetModelCompositeModelId: string
    assetModelCompositeModelPath: {AssetModelCompositeModelPathSegment}
    assetModelStatus: AssetModelStatus
end

local record CreateBulkImportJobInput
    jobName: string
    jobRoleArn: string
    files: {File}
    errorReportLocation: ErrorReportLocation
    jobConfiguration: JobConfiguration
    adaptiveIngestion: boolean
    deleteFilesAfterImport: boolean
end

local record CreateBulkImportJobOutput
    jobId: string
    jobName: string
    jobStatus: string
end

local record CreateComputationModelInput
    computationModelName: string
    computationModelDescription: string
    computationModelConfiguration: ComputationModelConfiguration
    computationModelDataBinding: {string : ComputationModelDataBindingValue}
    clientToken: string
    tags: {string : string}
end

local record CreateComputationModelOutput
    computationModelId: string
    computationModelArn: string
    computationModelStatus: ComputationModelStatus
end

local record CreateDashboardInput
    projectId: string
    dashboardName: string
    dashboardDescription: string
    dashboardDefinition: string
    clientToken: string
    tags: {string : string}
end

local record CreateDashboardOutput
    dashboardId: string
    dashboardArn: string
end

local record CreateDatasetInput
    datasetId: string
    datasetName: string
    datasetDescription: string
    datasetSource: DatasetSource
    clientToken: string
    tags: {string : string}
end

local record CreateDatasetOutput
    datasetId: string
    datasetArn: string
    datasetStatus: DatasetStatus
end

local record CreateGatewayInput
    gatewayName: string
    gatewayPlatform: GatewayPlatform
    gatewayVersion: string
    tags: {string : string}
end

local record CreateGatewayOutput
    gatewayId: string
    gatewayArn: string
end

local record CreatePortalInput
    portalName: string
    portalDescription: string
    portalContactEmail: string
    clientToken: string
    portalLogoImageFile: ImageFile
    roleArn: string
    tags: {string : string}
    portalAuthMode: string
    notificationSenderEmail: string
    alarms: Alarms
    portalType: string
    portalTypeConfiguration: {string : PortalTypeEntry}
end

local record CreatePortalOutput
    portalId: string
    portalArn: string
    portalStartUrl: string
    portalStatus: PortalStatus
    ssoApplicationId: string
end

local record CreateProjectInput
    portalId: string
    projectName: string
    projectDescription: string
    clientToken: string
    tags: {string : string}
end

local record CreateProjectOutput
    projectId: string
    projectArn: string
end

local record DeleteAccessPolicyInput
    accessPolicyId: string
    clientToken: string
end

local record DeleteAccessPolicyOutput
end

local record DeleteAssetInput
    assetId: string
    clientToken: string
end

local record DeleteAssetOutput
    assetStatus: AssetStatus
end

local record DeleteAssetModelInput
    assetModelId: string
    clientToken: string
    ifMatch: string
    ifNoneMatch: string
    matchForVersionType: string
end

local record DeleteAssetModelOutput
    assetModelStatus: AssetModelStatus
end

local record DeleteAssetModelCompositeModelInput
    assetModelId: string
    assetModelCompositeModelId: string
    clientToken: string
    ifMatch: string
    ifNoneMatch: string
    matchForVersionType: string
end

local record DeleteAssetModelCompositeModelOutput
    assetModelStatus: AssetModelStatus
end

local record DeleteAssetModelInterfaceRelationshipInput
    assetModelId: string
    interfaceAssetModelId: string
    clientToken: string
end

local record DeleteAssetModelInterfaceRelationshipOutput
    assetModelId: string
    interfaceAssetModelId: string
    assetModelArn: string
    assetModelStatus: AssetModelStatus
end

local record DeleteComputationModelInput
    computationModelId: string
    clientToken: string
end

local record DeleteComputationModelOutput
    computationModelStatus: ComputationModelStatus
end

local record DeleteDashboardInput
    dashboardId: string
    clientToken: string
end

local record DeleteDashboardOutput
end

local record DeleteDatasetInput
    datasetId: string
    clientToken: string
end

local record DeleteDatasetOutput
    datasetStatus: DatasetStatus
end

local record DeleteGatewayInput
    gatewayId: string
end

local record DeleteGatewayOutput
end

local record DeletePortalInput
    portalId: string
    clientToken: string
end

local record DeletePortalOutput
    portalStatus: PortalStatus
end

local record DeleteProjectInput
    projectId: string
    clientToken: string
end

local record DeleteProjectOutput
end

local record DeleteTimeSeriesInput
    alias: string
    assetId: string
    propertyId: string
    clientToken: string
end

local record DeleteTimeSeriesOutput
end

local record DescribeAccessPolicyInput
    accessPolicyId: string
end

local record DescribeAccessPolicyOutput
    accessPolicyId: string
    accessPolicyArn: string
    accessPolicyIdentity: Identity
    accessPolicyResource: Resource
    accessPolicyPermission: string
    accessPolicyCreationDate: number
    accessPolicyLastUpdateDate: number
end

local record DescribeActionInput
    actionId: string
end

local record DescribeActionOutput
    actionId: string
    targetResource: TargetResource
    actionDefinitionId: string
    actionPayload: ActionPayload
    executionTime: number
    resolveTo: ResolveTo
end

local record DescribeAssetInput
    assetId: string
    excludeProperties: boolean
end

local record DescribeAssetOutput
    assetId: string
    assetExternalId: string
    assetArn: string
    assetName: string
    assetModelId: string
    assetProperties: {AssetProperty}
    assetHierarchies: {AssetHierarchy}
    assetCompositeModels: {AssetCompositeModel}
    assetCreationDate: number
    assetLastUpdateDate: number
    assetStatus: AssetStatus
    assetDescription: string
    assetCompositeModelSummaries: {AssetCompositeModelSummary}
end

local record DescribeAssetCompositeModelInput
    assetId: string
    assetCompositeModelId: string
end

local record DescribeAssetCompositeModelOutput
    assetId: string
    assetCompositeModelId: string
    assetCompositeModelExternalId: string
    assetCompositeModelPath: {AssetCompositeModelPathSegment}
    assetCompositeModelName: string
    assetCompositeModelDescription: string
    assetCompositeModelType: string
    assetCompositeModelProperties: {AssetProperty}
    assetCompositeModelSummaries: {AssetCompositeModelSummary}
    actionDefinitions: {ActionDefinition}
end

local record DescribeAssetModelInput
    assetModelId: string
    excludeProperties: boolean
    assetModelVersion: string
end

local record DescribeAssetModelOutput
    assetModelId: string
    assetModelExternalId: string
    assetModelArn: string
    assetModelName: string
    assetModelType: string
    assetModelDescription: string
    assetModelProperties: {AssetModelProperty}
    assetModelHierarchies: {AssetModelHierarchy}
    assetModelCompositeModels: {AssetModelCompositeModel}
    assetModelCompositeModelSummaries: {AssetModelCompositeModelSummary}
    assetModelCreationDate: number
    assetModelLastUpdateDate: number
    assetModelStatus: AssetModelStatus
    assetModelVersion: string
    interfaceDetails: {InterfaceRelationship}
    eTag: string
end

local record DescribeAssetModelCompositeModelInput
    assetModelId: string
    assetModelCompositeModelId: string
    assetModelVersion: string
end

local record DescribeAssetModelCompositeModelOutput
    assetModelId: string
    assetModelCompositeModelId: string
    assetModelCompositeModelExternalId: string
    assetModelCompositeModelPath: {AssetModelCompositeModelPathSegment}
    assetModelCompositeModelName: string
    assetModelCompositeModelDescription: string
    assetModelCompositeModelType: string
    assetModelCompositeModelProperties: {AssetModelProperty}
    compositionDetails: CompositionDetails
    assetModelCompositeModelSummaries: {AssetModelCompositeModelSummary}
    actionDefinitions: {ActionDefinition}
end

local record DescribeAssetModelInterfaceRelationshipInput
    assetModelId: string
    interfaceAssetModelId: string
end

local record DescribeAssetModelInterfaceRelationshipOutput
    assetModelId: string
    interfaceAssetModelId: string
    propertyMappings: {PropertyMapping}
    hierarchyMappings: {HierarchyMapping}
end

local record DescribeAssetPropertyInput
    assetId: string
    propertyId: string
end

local record DescribeAssetPropertyOutput
    assetId: string
    assetExternalId: string
    assetName: string
    assetModelId: string
    assetProperty: Property
    compositeModel: CompositeModelProperty
end

local record DescribeBulkImportJobInput
    jobId: string
end

local record DescribeBulkImportJobOutput
    jobId: string
    jobName: string
    jobStatus: string
    jobRoleArn: string
    files: {File}
    errorReportLocation: ErrorReportLocation
    jobConfiguration: JobConfiguration
    jobCreationDate: number
    jobLastUpdateDate: number
    adaptiveIngestion: boolean
    deleteFilesAfterImport: boolean
end

local record DescribeComputationModelInput
    computationModelId: string
    computationModelVersion: string
end

local record DescribeComputationModelOutput
    computationModelId: string
    computationModelArn: string
    computationModelName: string
    computationModelDescription: string
    computationModelConfiguration: ComputationModelConfiguration
    computationModelDataBinding: {string : ComputationModelDataBindingValue}
    computationModelCreationDate: number
    computationModelLastUpdateDate: number
    computationModelStatus: ComputationModelStatus
    computationModelVersion: string
    actionDefinitions: {ActionDefinition}
end

local record DescribeComputationModelExecutionSummaryInput
    computationModelId: string
    resolveToResourceType: string
    resolveToResourceId: string
end

local record DescribeComputationModelExecutionSummaryOutput
    computationModelId: string
    resolveTo: ResolveTo
    computationModelExecutionSummary: {string : string}
end

local record DescribeDashboardInput
    dashboardId: string
end

local record DescribeDashboardOutput
    dashboardId: string
    dashboardArn: string
    dashboardName: string
    projectId: string
    dashboardDescription: string
    dashboardDefinition: string
    dashboardCreationDate: number
    dashboardLastUpdateDate: number
end

local record DescribeDatasetInput
    datasetId: string
end

local record DescribeDatasetOutput
    datasetId: string
    datasetArn: string
    datasetName: string
    datasetDescription: string
    datasetSource: DatasetSource
    datasetStatus: DatasetStatus
    datasetCreationDate: number
    datasetLastUpdateDate: number
    datasetVersion: string
end

local record DescribeDefaultEncryptionConfigurationInput
end

local record DescribeDefaultEncryptionConfigurationOutput
    encryptionType: string
    kmsKeyArn: string
    configurationStatus: ConfigurationStatus
end

local record DescribeExecutionInput
    executionId: string
end

local record DescribeExecutionOutput
    executionId: string
    actionType: string
    targetResource: TargetResource
    targetResourceVersion: string
    resolveTo: ResolveTo
    executionStartTime: number
    executionEndTime: number
    executionStatus: ExecutionStatus
    executionResult: {string : string}
    executionDetails: {string : string}
    executionEntityVersion: string
end

local record DescribeGatewayInput
    gatewayId: string
end

local record DescribeGatewayOutput
    gatewayId: string
    gatewayName: string
    gatewayArn: string
    gatewayPlatform: GatewayPlatform
    gatewayVersion: string
    gatewayCapabilitySummaries: {GatewayCapabilitySummary}
    creationDate: number
    lastUpdateDate: number
end

local record DescribeGatewayCapabilityConfigurationInput
    gatewayId: string
    capabilityNamespace: string
end

local record DescribeGatewayCapabilityConfigurationOutput
    gatewayId: string
    capabilityNamespace: string
    capabilityConfiguration: string
    capabilitySyncStatus: string
end

local record DescribeLoggingOptionsInput
end

local record DescribeLoggingOptionsOutput
    loggingOptions: LoggingOptions
end

local record DescribePortalInput
    portalId: string
end

local record DescribePortalOutput
    portalId: string
    portalArn: string
    portalName: string
    portalDescription: string
    portalClientId: string
    portalStartUrl: string
    portalContactEmail: string
    portalStatus: PortalStatus
    portalCreationDate: number
    portalLastUpdateDate: number
    portalLogoImageLocation: ImageLocation
    roleArn: string
    portalAuthMode: string
    notificationSenderEmail: string
    alarms: Alarms
    portalType: string
    portalTypeConfiguration: {string : PortalTypeEntry}
end

local record DescribeProjectInput
    projectId: string
end

local record DescribeProjectOutput
    projectId: string
    projectArn: string
    projectName: string
    portalId: string
    projectDescription: string
    projectCreationDate: number
    projectLastUpdateDate: number
end

local record DescribeStorageConfigurationInput
end

local record DescribeStorageConfigurationOutput
    storageType: string
    multiLayerStorage: MultiLayerStorage
    disassociatedDataStorage: string
    retentionPeriod: RetentionPeriod
    configurationStatus: ConfigurationStatus
    lastUpdateDate: number
    warmTier: string
    warmTierRetentionPeriod: WarmTierRetentionPeriod
    disallowIngestNullNaN: boolean
end

local record DescribeTimeSeriesInput
    alias: string
    assetId: string
    propertyId: string
end

local record DescribeTimeSeriesOutput
    assetId: string
    propertyId: string
    alias: string
    timeSeriesId: string
    dataType: string
    dataTypeSpec: string
    timeSeriesCreationDate: number
    timeSeriesLastUpdateDate: number
    timeSeriesArn: string
end

local record DisassociateAssetsInput
    assetId: string
    hierarchyId: string
    childAssetId: string
    clientToken: string
end

local record DisassociateAssetsOutput
end

local record DisassociateTimeSeriesFromAssetPropertyInput
    alias: string
    assetId: string
    propertyId: string
    clientToken: string
end

local record DisassociateTimeSeriesFromAssetPropertyOutput
end

local record ExecuteActionInput
    targetResource: TargetResource
    actionDefinitionId: string
    actionPayload: ActionPayload
    clientToken: string
    resolveTo: ResolveTo
end

local record ExecuteActionOutput
    actionId: string
end

local record ExecuteQueryInput
    queryStatement: string
    nextToken: string
    maxResults: number
    clientToken: string
end

local record ExecuteQueryOutput
    columns: {ColumnInfo}
    rows: {Row}
    nextToken: string
end

local record GetAssetPropertyAggregatesInput
    assetId: string
    propertyId: string
    propertyAlias: string
    aggregateTypes: {string}
    resolution: string
    qualities: {string}
    startDate: number
    endDate: number
    timeOrdering: string
    nextToken: string
    maxResults: number
end

local record GetAssetPropertyAggregatesOutput
    aggregatedValues: {AggregatedValue}
    nextToken: string
end

local record GetAssetPropertyValueInput
    assetId: string
    propertyId: string
    propertyAlias: string
end

local record GetAssetPropertyValueOutput
    propertyValue: AssetPropertyValue
end

local record GetAssetPropertyValueHistoryInput
    assetId: string
    propertyId: string
    propertyAlias: string
    startDate: number
    endDate: number
    qualities: {string}
    timeOrdering: string
    nextToken: string
    maxResults: number
end

local record GetAssetPropertyValueHistoryOutput
    assetPropertyValueHistory: {AssetPropertyValue}
    nextToken: string
end

local record GetInterpolatedAssetPropertyValuesInput
    assetId: string
    propertyId: string
    propertyAlias: string
    startTimeInSeconds: number
    startTimeOffsetInNanos: number
    endTimeInSeconds: number
    endTimeOffsetInNanos: number
    quality: string
    intervalInSeconds: number
    nextToken: string
    maxResults: number
    type: string
    intervalWindowInSeconds: number
end

local record GetInterpolatedAssetPropertyValuesOutput
    interpolatedAssetPropertyValues: {InterpolatedAssetPropertyValue}
    nextToken: string
end

local record InvokeAssistantInput
    conversationId: string
    message: string
    enableTrace: boolean
end

local record InvokeAssistantOutput
    body: ResponseStream
    conversationId: string
end

local record ListAccessPoliciesInput
    identityType: string
    identityId: string
    resourceType: string
    resourceId: string
    iamArn: string
    nextToken: string
    maxResults: number
end

local record ListAccessPoliciesOutput
    accessPolicySummaries: {AccessPolicySummary}
    nextToken: string
end

local record ListActionsInput
    targetResourceType: string
    targetResourceId: string
    nextToken: string
    maxResults: number
    resolveToResourceType: string
    resolveToResourceId: string
end

local record ListActionsOutput
    actionSummaries: {ActionSummary}
    nextToken: string
end

local record ListAssetModelCompositeModelsInput
    assetModelId: string
    nextToken: string
    maxResults: number
    assetModelVersion: string
end

local record ListAssetModelCompositeModelsOutput
    assetModelCompositeModelSummaries: {AssetModelCompositeModelSummary}
    nextToken: string
end

local record ListAssetModelPropertiesInput
    assetModelId: string
    nextToken: string
    maxResults: number
    filter: string
    assetModelVersion: string
end

local record ListAssetModelPropertiesOutput
    assetModelPropertySummaries: {AssetModelPropertySummary}
    nextToken: string
end

local record ListAssetModelsInput
    assetModelTypes: {string}
    nextToken: string
    maxResults: number
    assetModelVersion: string
end

local record ListAssetModelsOutput
    assetModelSummaries: {AssetModelSummary}
    nextToken: string
end

local record ListAssetPropertiesInput
    assetId: string
    nextToken: string
    maxResults: number
    filter: string
end

local record ListAssetPropertiesOutput
    assetPropertySummaries: {AssetPropertySummary}
    nextToken: string
end

local record ListAssetRelationshipsInput
    assetId: string
    traversalType: string
    nextToken: string
    maxResults: number
end

local record ListAssetRelationshipsOutput
    assetRelationshipSummaries: {AssetRelationshipSummary}
    nextToken: string
end

local record ListAssetsInput
    nextToken: string
    maxResults: number
    assetModelId: string
    filter: string
end

local record ListAssetsOutput
    assetSummaries: {AssetSummary}
    nextToken: string
end

local record ListAssociatedAssetsInput
    assetId: string
    hierarchyId: string
    traversalDirection: string
    nextToken: string
    maxResults: number
end

local record ListAssociatedAssetsOutput
    assetSummaries: {AssociatedAssetsSummary}
    nextToken: string
end

local record ListBulkImportJobsInput
    nextToken: string
    maxResults: number
    filter: string
end

local record ListBulkImportJobsOutput
    jobSummaries: {JobSummary}
    nextToken: string
end

local record ListCompositionRelationshipsInput
    assetModelId: string
    nextToken: string
    maxResults: number
end

local record ListCompositionRelationshipsOutput
    compositionRelationshipSummaries: {CompositionRelationshipSummary}
    nextToken: string
end

local record ListComputationModelDataBindingUsagesInput
    dataBindingValueFilter: DataBindingValueFilter
    nextToken: string
    maxResults: number
end

local record ListComputationModelDataBindingUsagesOutput
    dataBindingUsageSummaries: {ComputationModelDataBindingUsageSummary}
    nextToken: string
end

local record ListComputationModelResolveToResourcesInput
    computationModelId: string
    nextToken: string
    maxResults: number
end

local record ListComputationModelResolveToResourcesOutput
    computationModelResolveToResourceSummaries: {ComputationModelResolveToResourceSummary}
    nextToken: string
end

local record ListComputationModelsInput
    computationModelType: string
    nextToken: string
    maxResults: number
end

local record ListComputationModelsOutput
    computationModelSummaries: {ComputationModelSummary}
    nextToken: string
end

local record ListDashboardsInput
    projectId: string
    nextToken: string
    maxResults: number
end

local record ListDashboardsOutput
    dashboardSummaries: {DashboardSummary}
    nextToken: string
end

local record ListDatasetsInput
    sourceType: string
    nextToken: string
    maxResults: number
end

local record ListDatasetsOutput
    datasetSummaries: {DatasetSummary}
    nextToken: string
end

local record ListExecutionsInput
    targetResourceType: string
    targetResourceId: string
    resolveToResourceType: string
    resolveToResourceId: string
    nextToken: string
    maxResults: number
    actionType: string
end

local record ListExecutionsOutput
    executionSummaries: {ExecutionSummary}
    nextToken: string
end

local record ListGatewaysInput
    nextToken: string
    maxResults: number
end

local record ListGatewaysOutput
    gatewaySummaries: {GatewaySummary}
    nextToken: string
end

local record ListInterfaceRelationshipsInput
    interfaceAssetModelId: string
    nextToken: string
    maxResults: number
end

local record ListInterfaceRelationshipsOutput
    interfaceRelationshipSummaries: {InterfaceRelationshipSummary}
    nextToken: string
end

local record ListPortalsInput
    nextToken: string
    maxResults: number
end

local record ListPortalsOutput
    portalSummaries: {PortalSummary}
    nextToken: string
end

local record ListProjectAssetsInput
    projectId: string
    nextToken: string
    maxResults: number
end

local record ListProjectAssetsOutput
    assetIds: {string}
    nextToken: string
end

local record ListProjectsInput
    portalId: string
    nextToken: string
    maxResults: number
end

local record ListProjectsOutput
    projectSummaries: {ProjectSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTimeSeriesInput
    nextToken: string
    maxResults: number
    assetId: string
    aliasPrefix: string
    timeSeriesType: string
end

local record ListTimeSeriesOutput
    TimeSeriesSummaries: {TimeSeriesSummary}
    nextToken: string
end

local record PutAssetModelInterfaceRelationshipInput
    assetModelId: string
    interfaceAssetModelId: string
    propertyMappingConfiguration: PropertyMappingConfiguration
    clientToken: string
end

local record PutAssetModelInterfaceRelationshipOutput
    assetModelId: string
    interfaceAssetModelId: string
    assetModelArn: string
    assetModelStatus: AssetModelStatus
end

local record PutDefaultEncryptionConfigurationInput
    encryptionType: string
    kmsKeyId: string
end

local record PutDefaultEncryptionConfigurationOutput
    encryptionType: string
    kmsKeyArn: string
    configurationStatus: ConfigurationStatus
end

local record PutLoggingOptionsInput
    loggingOptions: LoggingOptions
end

local record PutLoggingOptionsOutput
end

local record PutStorageConfigurationInput
    storageType: string
    multiLayerStorage: MultiLayerStorage
    disassociatedDataStorage: string
    retentionPeriod: RetentionPeriod
    warmTier: string
    warmTierRetentionPeriod: WarmTierRetentionPeriod
    disallowIngestNullNaN: boolean
end

local record PutStorageConfigurationOutput
    storageType: string
    multiLayerStorage: MultiLayerStorage
    disassociatedDataStorage: string
    retentionPeriod: RetentionPeriod
    configurationStatus: ConfigurationStatus
    warmTier: string
    warmTierRetentionPeriod: WarmTierRetentionPeriod
    disallowIngestNullNaN: boolean
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccessPolicyInput
    accessPolicyId: string
    accessPolicyIdentity: Identity
    accessPolicyResource: Resource
    accessPolicyPermission: string
    clientToken: string
end

local record UpdateAccessPolicyOutput
end

local record UpdateAssetInput
    assetId: string
    assetExternalId: string
    assetName: string
    clientToken: string
    assetDescription: string
end

local record UpdateAssetOutput
    assetStatus: AssetStatus
end

local record UpdateAssetModelInput
    assetModelId: string
    assetModelExternalId: string
    assetModelName: string
    assetModelDescription: string
    assetModelProperties: {AssetModelProperty}
    assetModelHierarchies: {AssetModelHierarchy}
    assetModelCompositeModels: {AssetModelCompositeModel}
    clientToken: string
    ifMatch: string
    ifNoneMatch: string
    matchForVersionType: string
end

local record UpdateAssetModelOutput
    assetModelStatus: AssetModelStatus
end

local record UpdateAssetModelCompositeModelInput
    assetModelId: string
    assetModelCompositeModelId: string
    assetModelCompositeModelExternalId: string
    assetModelCompositeModelDescription: string
    assetModelCompositeModelName: string
    clientToken: string
    assetModelCompositeModelProperties: {AssetModelProperty}
    ifMatch: string
    ifNoneMatch: string
    matchForVersionType: string
end

local record UpdateAssetModelCompositeModelOutput
    assetModelCompositeModelPath: {AssetModelCompositeModelPathSegment}
    assetModelStatus: AssetModelStatus
end

local record UpdateAssetPropertyInput
    assetId: string
    propertyId: string
    propertyAlias: string
    propertyNotificationState: string
    clientToken: string
    propertyUnit: string
end

local record UpdateAssetPropertyOutput
end

local record UpdateComputationModelInput
    computationModelId: string
    computationModelName: string
    computationModelDescription: string
    computationModelConfiguration: ComputationModelConfiguration
    computationModelDataBinding: {string : ComputationModelDataBindingValue}
    clientToken: string
end

local record UpdateComputationModelOutput
    computationModelStatus: ComputationModelStatus
end

local record UpdateDashboardInput
    dashboardId: string
    dashboardName: string
    dashboardDescription: string
    dashboardDefinition: string
    clientToken: string
end

local record UpdateDashboardOutput
end

local record UpdateDatasetInput
    datasetId: string
    datasetName: string
    datasetDescription: string
    datasetSource: DatasetSource
    clientToken: string
end

local record UpdateDatasetOutput
    datasetId: string
    datasetArn: string
    datasetStatus: DatasetStatus
end

local record UpdateGatewayInput
    gatewayId: string
    gatewayName: string
end

local record UpdateGatewayOutput
end

local record UpdateGatewayCapabilityConfigurationInput
    gatewayId: string
    capabilityNamespace: string
    capabilityConfiguration: string
end

local record UpdateGatewayCapabilityConfigurationOutput
    capabilityNamespace: string
    capabilitySyncStatus: string
end

local record UpdatePortalInput
    portalId: string
    portalName: string
    portalDescription: string
    portalContactEmail: string
    portalLogoImage: Image
    roleArn: string
    clientToken: string
    notificationSenderEmail: string
    alarms: Alarms
    portalType: string
    portalTypeConfiguration: {string : PortalTypeEntry}
end

local record UpdatePortalOutput
    portalStatus: PortalStatus
end

local record UpdateProjectInput
    projectId: string
    projectName: string
    projectDescription: string
    clientToken: string
end

local record UpdateProjectOutput
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record PreconditionFailedException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record PreconditionFailedException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record PreconditionFailedException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record QueryTimeoutException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record UnauthorizedException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record PreconditionFailedException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record PreconditionFailedException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceId: string
    resourceArn: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictingOperationException
    message: string
    resourceId: string
    resourceArn: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local type StorageType = "SITEWISE_DEFAULT_STORAGE" | "MULTI_LAYER_STORAGE"

local type IdentityType = "USER" | "GROUP" | "IAM"

local type TimeOrdering = "ASCENDING" | "DESCENDING"

local type ListAssetModelPropertiesFilter = "ALL" | "BASE"

local type TargetResourceType = "ASSET" | "COMPUTATION_MODEL"

local type JobStatus = "PENDING" | "CANCELLED" | "RUNNING" | "COMPLETED" | "FAILED" | "COMPLETED_WITH_FAILURES"

local type ResourceType = "PORTAL" | "PROJECT"

local type ListAssetsFilter = "ALL" | "TOP_LEVEL"

local type ResolveToResourceType = "ASSET"

local type EncryptionType = "SITEWISE_DEFAULT_ENCRYPTION" | "KMS_BASED_ENCRYPTION"

local type Quality = "GOOD" | "BAD" | "UNCERTAIN"

local type DatasetSourceType = "KENDRA"

local type ListAssetPropertiesFilter = "ALL" | "BASE"

local type WarmTierState = "ENABLED" | "DISABLED"

local type ListBulkImportJobsFilter = "ALL" | "PENDING" | "RUNNING" | "CANCELLED" | "FAILED" | "COMPLETED_WITH_FAILURES" | "COMPLETED"

local type ListTimeSeriesType = "ASSOCIATED" | "DISASSOCIATED"

local type TraversalDirection = "PARENT" | "CHILD"

local type PropertyNotificationState = "ENABLED" | "DISABLED"

local type PropertyDataType = "STRING" | "INTEGER" | "DOUBLE" | "BOOLEAN" | "STRUCT"

local type AuthMode = "IAM" | "SSO"

local type PortalType = "SITEWISE_PORTAL_V1" | "SITEWISE_PORTAL_V2"

local type CapabilitySyncStatus = "IN_SYNC" | "OUT_OF_SYNC" | "SYNC_FAILED" | "UNKNOWN" | "NOT_APPLICABLE"

local type Permission = "ADMINISTRATOR" | "VIEWER"

local type AssetModelVersionType = "LATEST" | "ACTIVE"

local type TraversalType = "PATH_TO_ROOT"

local type AssetModelType = "ASSET_MODEL" | "COMPONENT_MODEL" | "INTERFACE"

local type DisassociatedDataStorageState = "ENABLED" | "DISABLED"

local type ComputationModelType = "ANOMALY_DETECTION"

local record M
    AssociateAssetsInput: AssociateAssetsInput
    AssociateAssetsOutput: AssociateAssetsOutput
    AssociateTimeSeriesToAssetPropertyInput: AssociateTimeSeriesToAssetPropertyInput
    AssociateTimeSeriesToAssetPropertyOutput: AssociateTimeSeriesToAssetPropertyOutput
    BatchAssociateProjectAssetsInput: BatchAssociateProjectAssetsInput
    BatchAssociateProjectAssetsOutput: BatchAssociateProjectAssetsOutput
    BatchDisassociateProjectAssetsInput: BatchDisassociateProjectAssetsInput
    BatchDisassociateProjectAssetsOutput: BatchDisassociateProjectAssetsOutput
    BatchGetAssetPropertyAggregatesInput: BatchGetAssetPropertyAggregatesInput
    BatchGetAssetPropertyAggregatesOutput: BatchGetAssetPropertyAggregatesOutput
    BatchGetAssetPropertyValueInput: BatchGetAssetPropertyValueInput
    BatchGetAssetPropertyValueOutput: BatchGetAssetPropertyValueOutput
    BatchGetAssetPropertyValueHistoryInput: BatchGetAssetPropertyValueHistoryInput
    BatchGetAssetPropertyValueHistoryOutput: BatchGetAssetPropertyValueHistoryOutput
    BatchPutAssetPropertyValueInput: BatchPutAssetPropertyValueInput
    BatchPutAssetPropertyValueOutput: BatchPutAssetPropertyValueOutput
    CreateAccessPolicyInput: CreateAccessPolicyInput
    CreateAccessPolicyOutput: CreateAccessPolicyOutput
    CreateAssetInput: CreateAssetInput
    CreateAssetOutput: CreateAssetOutput
    CreateAssetModelInput: CreateAssetModelInput
    CreateAssetModelOutput: CreateAssetModelOutput
    CreateAssetModelCompositeModelInput: CreateAssetModelCompositeModelInput
    CreateAssetModelCompositeModelOutput: CreateAssetModelCompositeModelOutput
    CreateBulkImportJobInput: CreateBulkImportJobInput
    CreateBulkImportJobOutput: CreateBulkImportJobOutput
    CreateComputationModelInput: CreateComputationModelInput
    CreateComputationModelOutput: CreateComputationModelOutput
    CreateDashboardInput: CreateDashboardInput
    CreateDashboardOutput: CreateDashboardOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateGatewayInput: CreateGatewayInput
    CreateGatewayOutput: CreateGatewayOutput
    CreatePortalInput: CreatePortalInput
    CreatePortalOutput: CreatePortalOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    DeleteAccessPolicyInput: DeleteAccessPolicyInput
    DeleteAccessPolicyOutput: DeleteAccessPolicyOutput
    DeleteAssetInput: DeleteAssetInput
    DeleteAssetOutput: DeleteAssetOutput
    DeleteAssetModelInput: DeleteAssetModelInput
    DeleteAssetModelOutput: DeleteAssetModelOutput
    DeleteAssetModelCompositeModelInput: DeleteAssetModelCompositeModelInput
    DeleteAssetModelCompositeModelOutput: DeleteAssetModelCompositeModelOutput
    DeleteAssetModelInterfaceRelationshipInput: DeleteAssetModelInterfaceRelationshipInput
    DeleteAssetModelInterfaceRelationshipOutput: DeleteAssetModelInterfaceRelationshipOutput
    DeleteComputationModelInput: DeleteComputationModelInput
    DeleteComputationModelOutput: DeleteComputationModelOutput
    DeleteDashboardInput: DeleteDashboardInput
    DeleteDashboardOutput: DeleteDashboardOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteGatewayInput: DeleteGatewayInput
    DeleteGatewayOutput: DeleteGatewayOutput
    DeletePortalInput: DeletePortalInput
    DeletePortalOutput: DeletePortalOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteTimeSeriesInput: DeleteTimeSeriesInput
    DeleteTimeSeriesOutput: DeleteTimeSeriesOutput
    DescribeAccessPolicyInput: DescribeAccessPolicyInput
    DescribeAccessPolicyOutput: DescribeAccessPolicyOutput
    DescribeActionInput: DescribeActionInput
    DescribeActionOutput: DescribeActionOutput
    DescribeAssetInput: DescribeAssetInput
    DescribeAssetOutput: DescribeAssetOutput
    DescribeAssetCompositeModelInput: DescribeAssetCompositeModelInput
    DescribeAssetCompositeModelOutput: DescribeAssetCompositeModelOutput
    DescribeAssetModelInput: DescribeAssetModelInput
    DescribeAssetModelOutput: DescribeAssetModelOutput
    DescribeAssetModelCompositeModelInput: DescribeAssetModelCompositeModelInput
    DescribeAssetModelCompositeModelOutput: DescribeAssetModelCompositeModelOutput
    DescribeAssetModelInterfaceRelationshipInput: DescribeAssetModelInterfaceRelationshipInput
    DescribeAssetModelInterfaceRelationshipOutput: DescribeAssetModelInterfaceRelationshipOutput
    DescribeAssetPropertyInput: DescribeAssetPropertyInput
    DescribeAssetPropertyOutput: DescribeAssetPropertyOutput
    DescribeBulkImportJobInput: DescribeBulkImportJobInput
    DescribeBulkImportJobOutput: DescribeBulkImportJobOutput
    DescribeComputationModelInput: DescribeComputationModelInput
    DescribeComputationModelOutput: DescribeComputationModelOutput
    DescribeComputationModelExecutionSummaryInput: DescribeComputationModelExecutionSummaryInput
    DescribeComputationModelExecutionSummaryOutput: DescribeComputationModelExecutionSummaryOutput
    DescribeDashboardInput: DescribeDashboardInput
    DescribeDashboardOutput: DescribeDashboardOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeDefaultEncryptionConfigurationInput: DescribeDefaultEncryptionConfigurationInput
    DescribeDefaultEncryptionConfigurationOutput: DescribeDefaultEncryptionConfigurationOutput
    DescribeExecutionInput: DescribeExecutionInput
    DescribeExecutionOutput: DescribeExecutionOutput
    DescribeGatewayInput: DescribeGatewayInput
    DescribeGatewayOutput: DescribeGatewayOutput
    DescribeGatewayCapabilityConfigurationInput: DescribeGatewayCapabilityConfigurationInput
    DescribeGatewayCapabilityConfigurationOutput: DescribeGatewayCapabilityConfigurationOutput
    DescribeLoggingOptionsInput: DescribeLoggingOptionsInput
    DescribeLoggingOptionsOutput: DescribeLoggingOptionsOutput
    DescribePortalInput: DescribePortalInput
    DescribePortalOutput: DescribePortalOutput
    DescribeProjectInput: DescribeProjectInput
    DescribeProjectOutput: DescribeProjectOutput
    DescribeStorageConfigurationInput: DescribeStorageConfigurationInput
    DescribeStorageConfigurationOutput: DescribeStorageConfigurationOutput
    DescribeTimeSeriesInput: DescribeTimeSeriesInput
    DescribeTimeSeriesOutput: DescribeTimeSeriesOutput
    DisassociateAssetsInput: DisassociateAssetsInput
    DisassociateAssetsOutput: DisassociateAssetsOutput
    DisassociateTimeSeriesFromAssetPropertyInput: DisassociateTimeSeriesFromAssetPropertyInput
    DisassociateTimeSeriesFromAssetPropertyOutput: DisassociateTimeSeriesFromAssetPropertyOutput
    ExecuteActionInput: ExecuteActionInput
    ExecuteActionOutput: ExecuteActionOutput
    ExecuteQueryInput: ExecuteQueryInput
    ExecuteQueryOutput: ExecuteQueryOutput
    GetAssetPropertyAggregatesInput: GetAssetPropertyAggregatesInput
    GetAssetPropertyAggregatesOutput: GetAssetPropertyAggregatesOutput
    GetAssetPropertyValueInput: GetAssetPropertyValueInput
    GetAssetPropertyValueOutput: GetAssetPropertyValueOutput
    GetAssetPropertyValueHistoryInput: GetAssetPropertyValueHistoryInput
    GetAssetPropertyValueHistoryOutput: GetAssetPropertyValueHistoryOutput
    GetInterpolatedAssetPropertyValuesInput: GetInterpolatedAssetPropertyValuesInput
    GetInterpolatedAssetPropertyValuesOutput: GetInterpolatedAssetPropertyValuesOutput
    InvokeAssistantInput: InvokeAssistantInput
    InvokeAssistantOutput: InvokeAssistantOutput
    ListAccessPoliciesInput: ListAccessPoliciesInput
    ListAccessPoliciesOutput: ListAccessPoliciesOutput
    ListActionsInput: ListActionsInput
    ListActionsOutput: ListActionsOutput
    ListAssetModelCompositeModelsInput: ListAssetModelCompositeModelsInput
    ListAssetModelCompositeModelsOutput: ListAssetModelCompositeModelsOutput
    ListAssetModelPropertiesInput: ListAssetModelPropertiesInput
    ListAssetModelPropertiesOutput: ListAssetModelPropertiesOutput
    ListAssetModelsInput: ListAssetModelsInput
    ListAssetModelsOutput: ListAssetModelsOutput
    ListAssetPropertiesInput: ListAssetPropertiesInput
    ListAssetPropertiesOutput: ListAssetPropertiesOutput
    ListAssetRelationshipsInput: ListAssetRelationshipsInput
    ListAssetRelationshipsOutput: ListAssetRelationshipsOutput
    ListAssetsInput: ListAssetsInput
    ListAssetsOutput: ListAssetsOutput
    ListAssociatedAssetsInput: ListAssociatedAssetsInput
    ListAssociatedAssetsOutput: ListAssociatedAssetsOutput
    ListBulkImportJobsInput: ListBulkImportJobsInput
    ListBulkImportJobsOutput: ListBulkImportJobsOutput
    ListCompositionRelationshipsInput: ListCompositionRelationshipsInput
    ListCompositionRelationshipsOutput: ListCompositionRelationshipsOutput
    ListComputationModelDataBindingUsagesInput: ListComputationModelDataBindingUsagesInput
    ListComputationModelDataBindingUsagesOutput: ListComputationModelDataBindingUsagesOutput
    ListComputationModelResolveToResourcesInput: ListComputationModelResolveToResourcesInput
    ListComputationModelResolveToResourcesOutput: ListComputationModelResolveToResourcesOutput
    ListComputationModelsInput: ListComputationModelsInput
    ListComputationModelsOutput: ListComputationModelsOutput
    ListDashboardsInput: ListDashboardsInput
    ListDashboardsOutput: ListDashboardsOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListExecutionsInput: ListExecutionsInput
    ListExecutionsOutput: ListExecutionsOutput
    ListGatewaysInput: ListGatewaysInput
    ListGatewaysOutput: ListGatewaysOutput
    ListInterfaceRelationshipsInput: ListInterfaceRelationshipsInput
    ListInterfaceRelationshipsOutput: ListInterfaceRelationshipsOutput
    ListPortalsInput: ListPortalsInput
    ListPortalsOutput: ListPortalsOutput
    ListProjectAssetsInput: ListProjectAssetsInput
    ListProjectAssetsOutput: ListProjectAssetsOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTimeSeriesInput: ListTimeSeriesInput
    ListTimeSeriesOutput: ListTimeSeriesOutput
    PutAssetModelInterfaceRelationshipInput: PutAssetModelInterfaceRelationshipInput
    PutAssetModelInterfaceRelationshipOutput: PutAssetModelInterfaceRelationshipOutput
    PutDefaultEncryptionConfigurationInput: PutDefaultEncryptionConfigurationInput
    PutDefaultEncryptionConfigurationOutput: PutDefaultEncryptionConfigurationOutput
    PutLoggingOptionsInput: PutLoggingOptionsInput
    PutLoggingOptionsOutput: PutLoggingOptionsOutput
    PutStorageConfigurationInput: PutStorageConfigurationInput
    PutStorageConfigurationOutput: PutStorageConfigurationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessPolicyInput: UpdateAccessPolicyInput
    UpdateAccessPolicyOutput: UpdateAccessPolicyOutput
    UpdateAssetInput: UpdateAssetInput
    UpdateAssetOutput: UpdateAssetOutput
    UpdateAssetModelInput: UpdateAssetModelInput
    UpdateAssetModelOutput: UpdateAssetModelOutput
    UpdateAssetModelCompositeModelInput: UpdateAssetModelCompositeModelInput
    UpdateAssetModelCompositeModelOutput: UpdateAssetModelCompositeModelOutput
    UpdateAssetPropertyInput: UpdateAssetPropertyInput
    UpdateAssetPropertyOutput: UpdateAssetPropertyOutput
    UpdateComputationModelInput: UpdateComputationModelInput
    UpdateComputationModelOutput: UpdateComputationModelOutput
    UpdateDashboardInput: UpdateDashboardInput
    UpdateDashboardOutput: UpdateDashboardOutput
    UpdateDatasetInput: UpdateDatasetInput
    UpdateDatasetOutput: UpdateDatasetOutput
    UpdateGatewayInput: UpdateGatewayInput
    UpdateGatewayOutput: UpdateGatewayOutput
    UpdateGatewayCapabilityConfigurationInput: UpdateGatewayCapabilityConfigurationInput
    UpdateGatewayCapabilityConfigurationOutput: UpdateGatewayCapabilityConfigurationOutput
    UpdatePortalInput: UpdatePortalInput
    UpdatePortalOutput: UpdatePortalOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
end

return M
