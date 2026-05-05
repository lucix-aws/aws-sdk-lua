local record AddLFTagsToResourceInput
    CatalogId: string
    Resource: Resource
    LFTags: {LFTagPair}
end

local record AddLFTagsToResourceOutput
    Failures: {LFTagError}
end

local record AssumeDecoratedRoleWithSAMLInput
    SAMLAssertion: string
    RoleArn: string
    PrincipalArn: string
    DurationSeconds: number
end

local record AssumeDecoratedRoleWithSAMLOutput
    AccessKeyId: string
    SecretAccessKey: string
    SessionToken: string
    Expiration: number
end

local record BatchGrantPermissionsInput
    CatalogId: string
    Entries: {BatchPermissionsRequestEntry}
end

local record BatchGrantPermissionsOutput
    Failures: {BatchPermissionsFailureEntry}
end

local record BatchRevokePermissionsInput
    CatalogId: string
    Entries: {BatchPermissionsRequestEntry}
end

local record BatchRevokePermissionsOutput
    Failures: {BatchPermissionsFailureEntry}
end

local record CancelTransactionInput
    TransactionId: string
end

local record CancelTransactionOutput
end

local record CommitTransactionInput
    TransactionId: string
end

local record CommitTransactionOutput
    TransactionStatus: string
end

local record CreateDataCellsFilterInput
    TableData: DataCellsFilter
end

local record CreateDataCellsFilterOutput
end

local record CreateLakeFormationIdentityCenterConfigurationInput
    CatalogId: string
    InstanceArn: string
    ExternalFiltering: ExternalFilteringConfiguration
    ShareRecipients: {DataLakePrincipal}
    ServiceIntegrations: {ServiceIntegrationUnion}
end

local record CreateLakeFormationIdentityCenterConfigurationOutput
    ApplicationArn: string
end

local record CreateLakeFormationOptInInput
    Principal: DataLakePrincipal
    Resource: Resource
    Condition: Condition
end

local record CreateLakeFormationOptInOutput
end

local record CreateLFTagInput
    CatalogId: string
    TagKey: string
    TagValues: {string}
end

local record CreateLFTagOutput
end

local record CreateLFTagExpressionInput
    Name: string
    Description: string
    CatalogId: string
    Expression: {LFTag}
end

local record CreateLFTagExpressionOutput
end

local record DeleteDataCellsFilterInput
    TableCatalogId: string
    DatabaseName: string
    TableName: string
    Name: string
end

local record DeleteDataCellsFilterOutput
end

local record DeleteLakeFormationIdentityCenterConfigurationInput
    CatalogId: string
end

local record DeleteLakeFormationIdentityCenterConfigurationOutput
end

local record DeleteLakeFormationOptInInput
    Principal: DataLakePrincipal
    Resource: Resource
    Condition: Condition
end

local record DeleteLakeFormationOptInOutput
end

local record DeleteLFTagInput
    CatalogId: string
    TagKey: string
end

local record DeleteLFTagOutput
end

local record DeleteLFTagExpressionInput
    Name: string
    CatalogId: string
end

local record DeleteLFTagExpressionOutput
end

local record DeleteObjectsOnCancelInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    TransactionId: string
    Objects: {VirtualObject}
end

local record DeleteObjectsOnCancelOutput
end

local record DeregisterResourceInput
    ResourceArn: string
end

local record DeregisterResourceOutput
end

local record DescribeLakeFormationIdentityCenterConfigurationInput
    CatalogId: string
end

local record DescribeLakeFormationIdentityCenterConfigurationOutput
    CatalogId: string
    InstanceArn: string
    ApplicationArn: string
    ExternalFiltering: ExternalFilteringConfiguration
    ShareRecipients: {DataLakePrincipal}
    ServiceIntegrations: {ServiceIntegrationUnion}
    ResourceShare: string
end

local record DescribeResourceInput
    ResourceArn: string
end

local record DescribeResourceOutput
    ResourceInfo: ResourceInfo
end

local record DescribeTransactionInput
    TransactionId: string
end

local record DescribeTransactionOutput
    TransactionDescription: TransactionDescription
end

local record ExtendTransactionInput
    TransactionId: string
end

local record ExtendTransactionOutput
end

local record GetDataCellsFilterInput
    TableCatalogId: string
    DatabaseName: string
    TableName: string
    Name: string
end

local record GetDataCellsFilterOutput
    DataCellsFilter: DataCellsFilter
end

local record GetDataLakePrincipalInput
end

local record GetDataLakePrincipalOutput
    Identity: string
end

local record GetDataLakeSettingsInput
    CatalogId: string
end

local record GetDataLakeSettingsOutput
    DataLakeSettings: DataLakeSettings
end

local record GetEffectivePermissionsForPathInput
    CatalogId: string
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record GetEffectivePermissionsForPathOutput
    Permissions: {PrincipalResourcePermissions}
    NextToken: string
end

local record GetLFTagInput
    CatalogId: string
    TagKey: string
end

local record GetLFTagOutput
    CatalogId: string
    TagKey: string
    TagValues: {string}
end

local record GetLFTagExpressionInput
    Name: string
    CatalogId: string
end

local record GetLFTagExpressionOutput
    Name: string
    Description: string
    CatalogId: string
    Expression: {LFTag}
end

local record GetQueryStateInput
    QueryId: string
end

local record GetQueryStateOutput
    Error: string
    State: string
end

local record GetQueryStatisticsInput
    QueryId: string
end

local record GetQueryStatisticsOutput
    ExecutionStatistics: ExecutionStatistics
    PlanningStatistics: PlanningStatistics
    QuerySubmissionTime: number
end

local record GetResourceLFTagsInput
    CatalogId: string
    Resource: Resource
    ShowAssignedLFTags: boolean
end

local record GetResourceLFTagsOutput
    LFTagOnDatabase: {LFTagPair}
    LFTagsOnTable: {LFTagPair}
    LFTagsOnColumns: {ColumnLFTag}
end

local record GetTableObjectsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    TransactionId: string
    QueryAsOfTime: number
    PartitionPredicate: string
    MaxResults: number
    NextToken: string
end

local record GetTableObjectsOutput
    Objects: {PartitionObjects}
    NextToken: string
end

local record GetTemporaryDataLocationCredentialsInput
    DurationSeconds: number
    AuditContext: AuditContext
    DataLocations: {string}
    CredentialsScope: string
end

local record GetTemporaryDataLocationCredentialsOutput
    Credentials: TemporaryCredentials
    AccessibleDataLocations: {string}
    CredentialsScope: string
end

local record GetTemporaryGluePartitionCredentialsInput
    TableArn: string
    Partition: PartitionValueList
    Permissions: {string}
    DurationSeconds: number
    AuditContext: AuditContext
    SupportedPermissionTypes: {string}
end

local record GetTemporaryGluePartitionCredentialsOutput
    AccessKeyId: string
    SecretAccessKey: string
    SessionToken: string
    Expiration: number
end

local record GetTemporaryGlueTableCredentialsInput
    TableArn: string
    Permissions: {string}
    DurationSeconds: number
    AuditContext: AuditContext
    SupportedPermissionTypes: {string}
    S3Path: string
    QuerySessionContext: QuerySessionContext
end

local record GetTemporaryGlueTableCredentialsOutput
    AccessKeyId: string
    SecretAccessKey: string
    SessionToken: string
    Expiration: number
    VendedS3Path: {string}
end

local record GetWorkUnitResultsInput
    QueryId: string
    WorkUnitId: number
    WorkUnitToken: string
end

local record GetWorkUnitResultsOutput
    ResultStream: string
end

local record GetWorkUnitsInput
    NextToken: string
    PageSize: number
    QueryId: string
end

local record GetWorkUnitsOutput
    NextToken: string
    QueryId: string
    WorkUnitRanges: {WorkUnitRange}
end

local record GrantPermissionsInput
    CatalogId: string
    Principal: DataLakePrincipal
    Resource: Resource
    Permissions: {string}
    Condition: Condition
    PermissionsWithGrantOption: {string}
end

local record GrantPermissionsOutput
end

local record ListDataCellsFilterInput
    Table: TableResource
    NextToken: string
    MaxResults: number
end

local record ListDataCellsFilterOutput
    DataCellsFilters: {DataCellsFilter}
    NextToken: string
end

local record ListLakeFormationOptInsInput
    Principal: DataLakePrincipal
    Resource: Resource
    MaxResults: number
    NextToken: string
end

local record ListLakeFormationOptInsOutput
    LakeFormationOptInsInfoList: {LakeFormationOptInsInfo}
    NextToken: string
end

local record ListLFTagExpressionsInput
    CatalogId: string
    MaxResults: number
    NextToken: string
end

local record ListLFTagExpressionsOutput
    LFTagExpressions: {LFTagExpression}
    NextToken: string
end

local record ListLFTagsInput
    CatalogId: string
    ResourceShareType: string
    MaxResults: number
    NextToken: string
end

local record ListLFTagsOutput
    LFTags: {LFTagPair}
    NextToken: string
end

local record ListPermissionsInput
    CatalogId: string
    Principal: DataLakePrincipal
    ResourceType: string
    Resource: Resource
    NextToken: string
    MaxResults: number
    IncludeRelated: string
end

local record ListPermissionsOutput
    PrincipalResourcePermissions: {PrincipalResourcePermissions}
    NextToken: string
end

local record ListResourcesInput
    FilterConditionList: {FilterCondition}
    MaxResults: number
    NextToken: string
end

local record ListResourcesOutput
    ResourceInfoList: {ResourceInfo}
    NextToken: string
end

local record ListTableStorageOptimizersInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    StorageOptimizerType: string
    MaxResults: number
    NextToken: string
end

local record ListTableStorageOptimizersOutput
    StorageOptimizerList: {StorageOptimizer}
    NextToken: string
end

local record ListTransactionsInput
    CatalogId: string
    StatusFilter: string
    MaxResults: number
    NextToken: string
end

local record ListTransactionsOutput
    Transactions: {TransactionDescription}
    NextToken: string
end

local record PutDataLakeSettingsInput
    CatalogId: string
    DataLakeSettings: DataLakeSettings
end

local record PutDataLakeSettingsOutput
end

local record RegisterResourceInput
    ResourceArn: string
    UseServiceLinkedRole: boolean
    RoleArn: string
    WithFederation: boolean
    HybridAccessEnabled: boolean
    WithPrivilegedAccess: boolean
    ExpectedResourceOwnerAccount: string
end

local record RegisterResourceOutput
end

local record RemoveLFTagsFromResourceInput
    CatalogId: string
    Resource: Resource
    LFTags: {LFTagPair}
end

local record RemoveLFTagsFromResourceOutput
    Failures: {LFTagError}
end

local record RevokePermissionsInput
    CatalogId: string
    Principal: DataLakePrincipal
    Resource: Resource
    Permissions: {string}
    Condition: Condition
    PermissionsWithGrantOption: {string}
end

local record RevokePermissionsOutput
end

local record SearchDatabasesByLFTagsInput
    NextToken: string
    MaxResults: number
    CatalogId: string
    Expression: {LFTag}
end

local record SearchDatabasesByLFTagsOutput
    NextToken: string
    DatabaseList: {TaggedDatabase}
end

local record SearchTablesByLFTagsInput
    NextToken: string
    MaxResults: number
    CatalogId: string
    Expression: {LFTag}
end

local record SearchTablesByLFTagsOutput
    NextToken: string
    TableList: {TaggedTable}
end

local record StartQueryPlanningInput
    QueryPlanningContext: QueryPlanningContext
    QueryString: string
end

local record StartQueryPlanningOutput
    QueryId: string
end

local record StartTransactionInput
    TransactionType: string
end

local record StartTransactionOutput
    TransactionId: string
end

local record UpdateDataCellsFilterInput
    TableData: DataCellsFilter
end

local record UpdateDataCellsFilterOutput
end

local record UpdateLakeFormationIdentityCenterConfigurationInput
    CatalogId: string
    ShareRecipients: {DataLakePrincipal}
    ServiceIntegrations: {ServiceIntegrationUnion}
    ApplicationStatus: string
    ExternalFiltering: ExternalFilteringConfiguration
end

local record UpdateLakeFormationIdentityCenterConfigurationOutput
end

local record UpdateLFTagInput
    CatalogId: string
    TagKey: string
    TagValuesToDelete: {string}
    TagValuesToAdd: {string}
end

local record UpdateLFTagOutput
end

local record UpdateLFTagExpressionInput
    Name: string
    Description: string
    CatalogId: string
    Expression: {LFTag}
end

local record UpdateLFTagExpressionOutput
end

local record UpdateResourceInput
    RoleArn: string
    ResourceArn: string
    WithFederation: boolean
    HybridAccessEnabled: boolean
    ExpectedResourceOwnerAccount: string
end

local record UpdateResourceOutput
end

local record UpdateTableObjectsInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    TransactionId: string
    WriteOperations: {WriteOperation}
end

local record UpdateTableObjectsOutput
end

local record UpdateTableStorageOptimizerInput
    CatalogId: string
    DatabaseName: string
    TableName: string
    StorageOptimizerConfig: {string : {string : string}}
end

local record UpdateTableStorageOptimizerOutput
    Result: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record TransactionCommitInProgressException
    Message: string
end

local record TransactionCommittedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record TransactionCanceledException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record TransactionCanceledException
    Message: string
end

local record TransactionCommittedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record TransactionCanceledException
    Message: string
end

local record TransactionCommitInProgressException
    Message: string
end

local record TransactionCommittedException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record StatisticsNotReadyYetException
    Message: string
end

local record ThrottledException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record TransactionCanceledException
    Message: string
end

local record TransactionCommittedException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record PermissionTypeMismatchException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record PermissionTypeMismatchException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ThrottledException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ExpiredException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record WorkUnitsNotReadyYetException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record AlreadyExistsException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record GlueEncryptionException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ThrottledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNumberLimitExceededException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record OperationTimeoutException
    Message: string
end

local record ResourceNotReadyException
    Message: string
end

local record TransactionCanceledException
    Message: string
end

local record TransactionCommitInProgressException
    Message: string
end

local record TransactionCommittedException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record EntityNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidInputException
    Message: string
end

local type CredentialsScope = "READ" | "READWRITE"

local type TransactionType = "READ_AND_WRITE" | "READ_ONLY"

local type TransactionStatusFilter = "ALL" | "COMPLETED" | "ACTIVE" | "COMMITTED" | "ABORTED"

local type QueryStateString = "PENDING" | "WORKUNITS_AVAILABLE" | "ERROR" | "FINISHED" | "EXPIRED"

local type ApplicationStatus = "ENABLED" | "DISABLED"

local type OptimizerType = "COMPACTION" | "GARBAGE_COLLECTION" | "ALL"

local type ResourceShareType = "FOREIGN" | "ALL"

local type TransactionStatus = "ACTIVE" | "COMMITTED" | "ABORTED" | "COMMIT_IN_PROGRESS"

local type DataLakeResourceType = "CATALOG" | "DATABASE" | "TABLE" | "DATA_LOCATION" | "LF_TAG" | "LF_TAG_POLICY" | "LF_TAG_POLICY_DATABASE" | "LF_TAG_POLICY_TABLE" | "LF_NAMED_TAG_EXPRESSION"

local record M
    AddLFTagsToResourceInput: AddLFTagsToResourceInput
    AddLFTagsToResourceOutput: AddLFTagsToResourceOutput
    AssumeDecoratedRoleWithSAMLInput: AssumeDecoratedRoleWithSAMLInput
    AssumeDecoratedRoleWithSAMLOutput: AssumeDecoratedRoleWithSAMLOutput
    BatchGrantPermissionsInput: BatchGrantPermissionsInput
    BatchGrantPermissionsOutput: BatchGrantPermissionsOutput
    BatchRevokePermissionsInput: BatchRevokePermissionsInput
    BatchRevokePermissionsOutput: BatchRevokePermissionsOutput
    CancelTransactionInput: CancelTransactionInput
    CancelTransactionOutput: CancelTransactionOutput
    CommitTransactionInput: CommitTransactionInput
    CommitTransactionOutput: CommitTransactionOutput
    CreateDataCellsFilterInput: CreateDataCellsFilterInput
    CreateDataCellsFilterOutput: CreateDataCellsFilterOutput
    CreateLakeFormationIdentityCenterConfigurationInput: CreateLakeFormationIdentityCenterConfigurationInput
    CreateLakeFormationIdentityCenterConfigurationOutput: CreateLakeFormationIdentityCenterConfigurationOutput
    CreateLakeFormationOptInInput: CreateLakeFormationOptInInput
    CreateLakeFormationOptInOutput: CreateLakeFormationOptInOutput
    CreateLFTagInput: CreateLFTagInput
    CreateLFTagOutput: CreateLFTagOutput
    CreateLFTagExpressionInput: CreateLFTagExpressionInput
    CreateLFTagExpressionOutput: CreateLFTagExpressionOutput
    DeleteDataCellsFilterInput: DeleteDataCellsFilterInput
    DeleteDataCellsFilterOutput: DeleteDataCellsFilterOutput
    DeleteLakeFormationIdentityCenterConfigurationInput: DeleteLakeFormationIdentityCenterConfigurationInput
    DeleteLakeFormationIdentityCenterConfigurationOutput: DeleteLakeFormationIdentityCenterConfigurationOutput
    DeleteLakeFormationOptInInput: DeleteLakeFormationOptInInput
    DeleteLakeFormationOptInOutput: DeleteLakeFormationOptInOutput
    DeleteLFTagInput: DeleteLFTagInput
    DeleteLFTagOutput: DeleteLFTagOutput
    DeleteLFTagExpressionInput: DeleteLFTagExpressionInput
    DeleteLFTagExpressionOutput: DeleteLFTagExpressionOutput
    DeleteObjectsOnCancelInput: DeleteObjectsOnCancelInput
    DeleteObjectsOnCancelOutput: DeleteObjectsOnCancelOutput
    DeregisterResourceInput: DeregisterResourceInput
    DeregisterResourceOutput: DeregisterResourceOutput
    DescribeLakeFormationIdentityCenterConfigurationInput: DescribeLakeFormationIdentityCenterConfigurationInput
    DescribeLakeFormationIdentityCenterConfigurationOutput: DescribeLakeFormationIdentityCenterConfigurationOutput
    DescribeResourceInput: DescribeResourceInput
    DescribeResourceOutput: DescribeResourceOutput
    DescribeTransactionInput: DescribeTransactionInput
    DescribeTransactionOutput: DescribeTransactionOutput
    ExtendTransactionInput: ExtendTransactionInput
    ExtendTransactionOutput: ExtendTransactionOutput
    GetDataCellsFilterInput: GetDataCellsFilterInput
    GetDataCellsFilterOutput: GetDataCellsFilterOutput
    GetDataLakePrincipalInput: GetDataLakePrincipalInput
    GetDataLakePrincipalOutput: GetDataLakePrincipalOutput
    GetDataLakeSettingsInput: GetDataLakeSettingsInput
    GetDataLakeSettingsOutput: GetDataLakeSettingsOutput
    GetEffectivePermissionsForPathInput: GetEffectivePermissionsForPathInput
    GetEffectivePermissionsForPathOutput: GetEffectivePermissionsForPathOutput
    GetLFTagInput: GetLFTagInput
    GetLFTagOutput: GetLFTagOutput
    GetLFTagExpressionInput: GetLFTagExpressionInput
    GetLFTagExpressionOutput: GetLFTagExpressionOutput
    GetQueryStateInput: GetQueryStateInput
    GetQueryStateOutput: GetQueryStateOutput
    GetQueryStatisticsInput: GetQueryStatisticsInput
    GetQueryStatisticsOutput: GetQueryStatisticsOutput
    GetResourceLFTagsInput: GetResourceLFTagsInput
    GetResourceLFTagsOutput: GetResourceLFTagsOutput
    GetTableObjectsInput: GetTableObjectsInput
    GetTableObjectsOutput: GetTableObjectsOutput
    GetTemporaryDataLocationCredentialsInput: GetTemporaryDataLocationCredentialsInput
    GetTemporaryDataLocationCredentialsOutput: GetTemporaryDataLocationCredentialsOutput
    GetTemporaryGluePartitionCredentialsInput: GetTemporaryGluePartitionCredentialsInput
    GetTemporaryGluePartitionCredentialsOutput: GetTemporaryGluePartitionCredentialsOutput
    GetTemporaryGlueTableCredentialsInput: GetTemporaryGlueTableCredentialsInput
    GetTemporaryGlueTableCredentialsOutput: GetTemporaryGlueTableCredentialsOutput
    GetWorkUnitResultsInput: GetWorkUnitResultsInput
    GetWorkUnitResultsOutput: GetWorkUnitResultsOutput
    GetWorkUnitsInput: GetWorkUnitsInput
    GetWorkUnitsOutput: GetWorkUnitsOutput
    GrantPermissionsInput: GrantPermissionsInput
    GrantPermissionsOutput: GrantPermissionsOutput
    ListDataCellsFilterInput: ListDataCellsFilterInput
    ListDataCellsFilterOutput: ListDataCellsFilterOutput
    ListLakeFormationOptInsInput: ListLakeFormationOptInsInput
    ListLakeFormationOptInsOutput: ListLakeFormationOptInsOutput
    ListLFTagExpressionsInput: ListLFTagExpressionsInput
    ListLFTagExpressionsOutput: ListLFTagExpressionsOutput
    ListLFTagsInput: ListLFTagsInput
    ListLFTagsOutput: ListLFTagsOutput
    ListPermissionsInput: ListPermissionsInput
    ListPermissionsOutput: ListPermissionsOutput
    ListResourcesInput: ListResourcesInput
    ListResourcesOutput: ListResourcesOutput
    ListTableStorageOptimizersInput: ListTableStorageOptimizersInput
    ListTableStorageOptimizersOutput: ListTableStorageOptimizersOutput
    ListTransactionsInput: ListTransactionsInput
    ListTransactionsOutput: ListTransactionsOutput
    PutDataLakeSettingsInput: PutDataLakeSettingsInput
    PutDataLakeSettingsOutput: PutDataLakeSettingsOutput
    RegisterResourceInput: RegisterResourceInput
    RegisterResourceOutput: RegisterResourceOutput
    RemoveLFTagsFromResourceInput: RemoveLFTagsFromResourceInput
    RemoveLFTagsFromResourceOutput: RemoveLFTagsFromResourceOutput
    RevokePermissionsInput: RevokePermissionsInput
    RevokePermissionsOutput: RevokePermissionsOutput
    SearchDatabasesByLFTagsInput: SearchDatabasesByLFTagsInput
    SearchDatabasesByLFTagsOutput: SearchDatabasesByLFTagsOutput
    SearchTablesByLFTagsInput: SearchTablesByLFTagsInput
    SearchTablesByLFTagsOutput: SearchTablesByLFTagsOutput
    StartQueryPlanningInput: StartQueryPlanningInput
    StartQueryPlanningOutput: StartQueryPlanningOutput
    StartTransactionInput: StartTransactionInput
    StartTransactionOutput: StartTransactionOutput
    UpdateDataCellsFilterInput: UpdateDataCellsFilterInput
    UpdateDataCellsFilterOutput: UpdateDataCellsFilterOutput
    UpdateLakeFormationIdentityCenterConfigurationInput: UpdateLakeFormationIdentityCenterConfigurationInput
    UpdateLakeFormationIdentityCenterConfigurationOutput: UpdateLakeFormationIdentityCenterConfigurationOutput
    UpdateLFTagInput: UpdateLFTagInput
    UpdateLFTagOutput: UpdateLFTagOutput
    UpdateLFTagExpressionInput: UpdateLFTagExpressionInput
    UpdateLFTagExpressionOutput: UpdateLFTagExpressionOutput
    UpdateResourceInput: UpdateResourceInput
    UpdateResourceOutput: UpdateResourceOutput
    UpdateTableObjectsInput: UpdateTableObjectsInput
    UpdateTableObjectsOutput: UpdateTableObjectsOutput
    UpdateTableStorageOptimizerInput: UpdateTableStorageOptimizerInput
    UpdateTableStorageOptimizerOutput: UpdateTableStorageOptimizerOutput
end

return M
