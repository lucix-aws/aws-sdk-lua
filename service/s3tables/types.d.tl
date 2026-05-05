local record CreateNamespaceInput
    tableBucketARN: string
    namespace: {string}
end

local record CreateNamespaceOutput
    tableBucketARN: string
    namespace: {string}
end

local record CreateTableInput
    tableBucketARN: string
    namespace: string
    name: string
    format: string
    metadata: TableMetadata
    encryptionConfiguration: EncryptionConfiguration
    storageClassConfiguration: StorageClassConfiguration
    tags: {string : string}
end

local record CreateTableOutput
    tableARN: string
    versionToken: string
end

local record CreateTableBucketInput
    name: string
    encryptionConfiguration: EncryptionConfiguration
    storageClassConfiguration: StorageClassConfiguration
    tags: {string : string}
end

local record CreateTableBucketOutput
    arn: string
end

local record DeleteNamespaceInput
    tableBucketARN: string
    namespace: string
end

local record DeleteNamespaceOutput
end

local record DeleteTableInput
    tableBucketARN: string
    namespace: string
    name: string
    versionToken: string
end

local record DeleteTableOutput
end

local record DeleteTableBucketInput
    tableBucketARN: string
end

local record DeleteTableBucketOutput
end

local record DeleteTableBucketEncryptionInput
    tableBucketARN: string
end

local record DeleteTableBucketEncryptionOutput
end

local record DeleteTableBucketMetricsConfigurationInput
    tableBucketARN: string
end

local record DeleteTableBucketMetricsConfigurationOutput
end

local record DeleteTableBucketPolicyInput
    tableBucketARN: string
end

local record DeleteTableBucketPolicyOutput
end

local record DeleteTableBucketReplicationInput
    tableBucketARN: string
    versionToken: string
end

local record DeleteTableBucketReplicationOutput
end

local record DeleteTablePolicyInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record DeleteTablePolicyOutput
end

local record DeleteTableReplicationInput
    tableArn: string
    versionToken: string
end

local record DeleteTableReplicationOutput
end

local record GetNamespaceInput
    tableBucketARN: string
    namespace: string
end

local record GetNamespaceOutput
    namespace: {string}
    createdAt: number
    createdBy: string
    ownerAccountId: string
    namespaceId: string
    tableBucketId: string
end

local record GetTableInput
    tableBucketARN: string
    namespace: string
    name: string
    tableArn: string
end

local record GetTableOutput
    name: string
    type: string
    tableARN: string
    namespace: {string}
    namespaceId: string
    versionToken: string
    metadataLocation: string
    warehouseLocation: string
    createdAt: number
    createdBy: string
    managedByService: string
    modifiedAt: number
    modifiedBy: string
    ownerAccountId: string
    format: string
    tableBucketId: string
    managedTableInformation: ManagedTableInformation
end

local record GetTableBucketInput
    tableBucketARN: string
end

local record GetTableBucketOutput
    arn: string
    name: string
    ownerAccountId: string
    createdAt: number
    tableBucketId: string
    type: string
end

local record GetTableBucketEncryptionInput
    tableBucketARN: string
end

local record GetTableBucketEncryptionOutput
    encryptionConfiguration: EncryptionConfiguration
end

local record GetTableBucketMaintenanceConfigurationInput
    tableBucketARN: string
end

local record GetTableBucketMaintenanceConfigurationOutput
    tableBucketARN: string
    configuration: {string : TableBucketMaintenanceConfigurationValue}
end

local record GetTableBucketMetricsConfigurationInput
    tableBucketARN: string
end

local record GetTableBucketMetricsConfigurationOutput
    tableBucketARN: string
    id: string
end

local record GetTableBucketPolicyInput
    tableBucketARN: string
end

local record GetTableBucketPolicyOutput
    resourcePolicy: string
end

local record GetTableBucketReplicationInput
    tableBucketARN: string
end

local record GetTableBucketReplicationOutput
    versionToken: string
    configuration: TableBucketReplicationConfiguration
end

local record GetTableBucketStorageClassInput
    tableBucketARN: string
end

local record GetTableBucketStorageClassOutput
    storageClassConfiguration: StorageClassConfiguration
end

local record GetTableEncryptionInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTableEncryptionOutput
    encryptionConfiguration: EncryptionConfiguration
end

local record GetTableMaintenanceConfigurationInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTableMaintenanceConfigurationOutput
    tableARN: string
    configuration: {string : TableMaintenanceConfigurationValue}
end

local record GetTableMaintenanceJobStatusInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTableMaintenanceJobStatusOutput
    tableARN: string
    status: {string : TableMaintenanceJobStatusValue}
end

local record GetTableMetadataLocationInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTableMetadataLocationOutput
    versionToken: string
    metadataLocation: string
    warehouseLocation: string
end

local record GetTablePolicyInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTablePolicyOutput
    resourcePolicy: string
end

local record GetTableRecordExpirationConfigurationInput
    tableArn: string
end

local record GetTableRecordExpirationConfigurationOutput
    configuration: TableRecordExpirationConfigurationValue
end

local record GetTableRecordExpirationJobStatusInput
    tableArn: string
end

local record GetTableRecordExpirationJobStatusOutput
    status: string
    lastRunTimestamp: number
    failureMessage: string
    metrics: TableRecordExpirationJobMetrics
end

local record GetTableReplicationInput
    tableArn: string
end

local record GetTableReplicationOutput
    versionToken: string
    configuration: TableReplicationConfiguration
end

local record GetTableReplicationStatusInput
    tableArn: string
end

local record GetTableReplicationStatusOutput
    sourceTableArn: string
    destinations: {ReplicationDestinationStatusModel}
end

local record GetTableStorageClassInput
    tableBucketARN: string
    namespace: string
    name: string
end

local record GetTableStorageClassOutput
    storageClassConfiguration: StorageClassConfiguration
end

local record ListNamespacesInput
    tableBucketARN: string
    prefix: string
    continuationToken: string
    maxNamespaces: number
end

local record ListNamespacesOutput
    namespaces: {NamespaceSummary}
    continuationToken: string
end

local record ListTableBucketsInput
    prefix: string
    continuationToken: string
    maxBuckets: number
    type: string
end

local record ListTableBucketsOutput
    tableBuckets: {TableBucketSummary}
    continuationToken: string
end

local record ListTablesInput
    tableBucketARN: string
    namespace: string
    prefix: string
    continuationToken: string
    maxTables: number
end

local record ListTablesOutput
    tables: {TableSummary}
    continuationToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutTableBucketEncryptionInput
    tableBucketARN: string
    encryptionConfiguration: EncryptionConfiguration
end

local record PutTableBucketEncryptionOutput
end

local record PutTableBucketMaintenanceConfigurationInput
    tableBucketARN: string
    type: string
    value: TableBucketMaintenanceConfigurationValue
end

local record PutTableBucketMaintenanceConfigurationOutput
end

local record PutTableBucketMetricsConfigurationInput
    tableBucketARN: string
end

local record PutTableBucketMetricsConfigurationOutput
end

local record PutTableBucketPolicyInput
    tableBucketARN: string
    resourcePolicy: string
end

local record PutTableBucketPolicyOutput
end

local record PutTableBucketReplicationInput
    tableBucketARN: string
    versionToken: string
    configuration: TableBucketReplicationConfiguration
end

local record PutTableBucketReplicationOutput
    versionToken: string
    status: string
end

local record PutTableBucketStorageClassInput
    tableBucketARN: string
    storageClassConfiguration: StorageClassConfiguration
end

local record PutTableBucketStorageClassOutput
end

local record PutTableMaintenanceConfigurationInput
    tableBucketARN: string
    namespace: string
    name: string
    type: string
    value: TableMaintenanceConfigurationValue
end

local record PutTableMaintenanceConfigurationOutput
end

local record PutTablePolicyInput
    tableBucketARN: string
    namespace: string
    name: string
    resourcePolicy: string
end

local record PutTablePolicyOutput
end

local record PutTableRecordExpirationConfigurationInput
    tableArn: string
    value: TableRecordExpirationConfigurationValue
end

local record PutTableRecordExpirationConfigurationOutput
end

local record PutTableReplicationInput
    tableArn: string
    versionToken: string
    configuration: TableReplicationConfiguration
end

local record PutTableReplicationOutput
    versionToken: string
    status: string
end

local record RenameTableInput
    tableBucketARN: string
    namespace: string
    name: string
    newNamespaceName: string
    newName: string
    versionToken: string
end

local record RenameTableOutput
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

local record UpdateTableMetadataLocationInput
    tableBucketARN: string
    namespace: string
    name: string
    versionToken: string
    metadataLocation: string
end

local record UpdateTableMetadataLocationOutput
    name: string
    tableARN: string
    namespace: {string}
    versionToken: string
    metadataLocation: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record MethodNotAllowedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local type TableRecordExpirationJobStatus = "NotYetRun" | "Successful" | "Failed" | "Disabled"

local type TableMaintenanceType = "icebergCompaction" | "icebergSnapshotManagement"

local type TableBucketType = "customer" | "aws"

local type TableType = "customer" | "aws"

local type OpenTableFormat = "ICEBERG"

local type TableBucketMaintenanceType = "icebergUnreferencedFileRemoval"

local record M
    CreateNamespaceInput: CreateNamespaceInput
    CreateNamespaceOutput: CreateNamespaceOutput
    CreateTableInput: CreateTableInput
    CreateTableOutput: CreateTableOutput
    CreateTableBucketInput: CreateTableBucketInput
    CreateTableBucketOutput: CreateTableBucketOutput
    DeleteNamespaceInput: DeleteNamespaceInput
    DeleteNamespaceOutput: DeleteNamespaceOutput
    DeleteTableInput: DeleteTableInput
    DeleteTableOutput: DeleteTableOutput
    DeleteTableBucketInput: DeleteTableBucketInput
    DeleteTableBucketOutput: DeleteTableBucketOutput
    DeleteTableBucketEncryptionInput: DeleteTableBucketEncryptionInput
    DeleteTableBucketEncryptionOutput: DeleteTableBucketEncryptionOutput
    DeleteTableBucketMetricsConfigurationInput: DeleteTableBucketMetricsConfigurationInput
    DeleteTableBucketMetricsConfigurationOutput: DeleteTableBucketMetricsConfigurationOutput
    DeleteTableBucketPolicyInput: DeleteTableBucketPolicyInput
    DeleteTableBucketPolicyOutput: DeleteTableBucketPolicyOutput
    DeleteTableBucketReplicationInput: DeleteTableBucketReplicationInput
    DeleteTableBucketReplicationOutput: DeleteTableBucketReplicationOutput
    DeleteTablePolicyInput: DeleteTablePolicyInput
    DeleteTablePolicyOutput: DeleteTablePolicyOutput
    DeleteTableReplicationInput: DeleteTableReplicationInput
    DeleteTableReplicationOutput: DeleteTableReplicationOutput
    GetNamespaceInput: GetNamespaceInput
    GetNamespaceOutput: GetNamespaceOutput
    GetTableInput: GetTableInput
    GetTableOutput: GetTableOutput
    GetTableBucketInput: GetTableBucketInput
    GetTableBucketOutput: GetTableBucketOutput
    GetTableBucketEncryptionInput: GetTableBucketEncryptionInput
    GetTableBucketEncryptionOutput: GetTableBucketEncryptionOutput
    GetTableBucketMaintenanceConfigurationInput: GetTableBucketMaintenanceConfigurationInput
    GetTableBucketMaintenanceConfigurationOutput: GetTableBucketMaintenanceConfigurationOutput
    GetTableBucketMetricsConfigurationInput: GetTableBucketMetricsConfigurationInput
    GetTableBucketMetricsConfigurationOutput: GetTableBucketMetricsConfigurationOutput
    GetTableBucketPolicyInput: GetTableBucketPolicyInput
    GetTableBucketPolicyOutput: GetTableBucketPolicyOutput
    GetTableBucketReplicationInput: GetTableBucketReplicationInput
    GetTableBucketReplicationOutput: GetTableBucketReplicationOutput
    GetTableBucketStorageClassInput: GetTableBucketStorageClassInput
    GetTableBucketStorageClassOutput: GetTableBucketStorageClassOutput
    GetTableEncryptionInput: GetTableEncryptionInput
    GetTableEncryptionOutput: GetTableEncryptionOutput
    GetTableMaintenanceConfigurationInput: GetTableMaintenanceConfigurationInput
    GetTableMaintenanceConfigurationOutput: GetTableMaintenanceConfigurationOutput
    GetTableMaintenanceJobStatusInput: GetTableMaintenanceJobStatusInput
    GetTableMaintenanceJobStatusOutput: GetTableMaintenanceJobStatusOutput
    GetTableMetadataLocationInput: GetTableMetadataLocationInput
    GetTableMetadataLocationOutput: GetTableMetadataLocationOutput
    GetTablePolicyInput: GetTablePolicyInput
    GetTablePolicyOutput: GetTablePolicyOutput
    GetTableRecordExpirationConfigurationInput: GetTableRecordExpirationConfigurationInput
    GetTableRecordExpirationConfigurationOutput: GetTableRecordExpirationConfigurationOutput
    GetTableRecordExpirationJobStatusInput: GetTableRecordExpirationJobStatusInput
    GetTableRecordExpirationJobStatusOutput: GetTableRecordExpirationJobStatusOutput
    GetTableReplicationInput: GetTableReplicationInput
    GetTableReplicationOutput: GetTableReplicationOutput
    GetTableReplicationStatusInput: GetTableReplicationStatusInput
    GetTableReplicationStatusOutput: GetTableReplicationStatusOutput
    GetTableStorageClassInput: GetTableStorageClassInput
    GetTableStorageClassOutput: GetTableStorageClassOutput
    ListNamespacesInput: ListNamespacesInput
    ListNamespacesOutput: ListNamespacesOutput
    ListTableBucketsInput: ListTableBucketsInput
    ListTableBucketsOutput: ListTableBucketsOutput
    ListTablesInput: ListTablesInput
    ListTablesOutput: ListTablesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutTableBucketEncryptionInput: PutTableBucketEncryptionInput
    PutTableBucketEncryptionOutput: PutTableBucketEncryptionOutput
    PutTableBucketMaintenanceConfigurationInput: PutTableBucketMaintenanceConfigurationInput
    PutTableBucketMaintenanceConfigurationOutput: PutTableBucketMaintenanceConfigurationOutput
    PutTableBucketMetricsConfigurationInput: PutTableBucketMetricsConfigurationInput
    PutTableBucketMetricsConfigurationOutput: PutTableBucketMetricsConfigurationOutput
    PutTableBucketPolicyInput: PutTableBucketPolicyInput
    PutTableBucketPolicyOutput: PutTableBucketPolicyOutput
    PutTableBucketReplicationInput: PutTableBucketReplicationInput
    PutTableBucketReplicationOutput: PutTableBucketReplicationOutput
    PutTableBucketStorageClassInput: PutTableBucketStorageClassInput
    PutTableBucketStorageClassOutput: PutTableBucketStorageClassOutput
    PutTableMaintenanceConfigurationInput: PutTableMaintenanceConfigurationInput
    PutTableMaintenanceConfigurationOutput: PutTableMaintenanceConfigurationOutput
    PutTablePolicyInput: PutTablePolicyInput
    PutTablePolicyOutput: PutTablePolicyOutput
    PutTableRecordExpirationConfigurationInput: PutTableRecordExpirationConfigurationInput
    PutTableRecordExpirationConfigurationOutput: PutTableRecordExpirationConfigurationOutput
    PutTableReplicationInput: PutTableReplicationInput
    PutTableReplicationOutput: PutTableReplicationOutput
    RenameTableInput: RenameTableInput
    RenameTableOutput: RenameTableOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateTableMetadataLocationInput: UpdateTableMetadataLocationInput
    UpdateTableMetadataLocationOutput: UpdateTableMetadataLocationOutput
end

return M
