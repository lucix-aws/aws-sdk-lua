local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
    },
}

M.CreateNamespaceInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNamespaceOutput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SSEAlgorithm = {
    AES256 = "AES256",
    AWS_KMS = "aws:kms",
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        sseAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.OpenTableFormat = {
    ICEBERG = "ICEBERG",
}

M.IcebergPartitionField = {
    type = "structure",
    members = {
        sourceId = {
            type = "number",
            traits = {
                json_name = "source-id",
                required = true,
            },
        },
        transform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldId = {
            type = "number",
            traits = {
                json_name = "field-id",
            },
        },
    },
}

M.IcebergPartitionSpec = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        specId = {
            type = "number",
            traits = {
                json_name = "spec-id",
            },
        },
    },
}

M.SchemaField = {
    type = "structure",
    members = {
        id = {
            type = "number",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
        },
    },
}

M.IcebergSchema = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaV2Field = {
    type = "structure",
    members = {
        id = {
            type = "number",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "document",
            traits = {
                required = true,
            },
        },
        required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        doc = {
            type = "string",
        },
    },
}

M.SchemaV2FieldType = {
    STRUCT = "struct",
}

M.IcebergSchemaV2 = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        schemaId = {
            type = "number",
            traits = {
                json_name = "schema-id",
            },
        },
        identifierFieldIds = {
            type = "list",
            member_type = "number",
            traits = {
                json_name = "identifier-field-ids",
            },
        },
    },
}

M.IcebergSortDirection = {
    ASC = "asc",
    DESC = "desc",
}

M.IcebergNullOrder = {
    NULLS_FIRST = "nulls-first",
    NULLS_LAST = "nulls-last",
}

M.IcebergSortField = {
    type = "structure",
    members = {
        sourceId = {
            type = "number",
            traits = {
                json_name = "source-id",
                required = true,
            },
        },
        transform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nullOrder = {
            type = "string",
            traits = {
                json_name = "null-order",
                required = true,
            },
        },
    },
}

M.IcebergSortOrder = {
    type = "structure",
    members = {
        orderId = {
            type = "number",
            traits = {
                json_name = "order-id",
                required = true,
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IcebergMetadata = {
    type = "structure",
    members = {
        schema = {
            type = "structure",
        },
        schemaV2 = {
            type = "structure",
        },
        partitionSpec = {
            type = "structure",
        },
        writeOrder = {
            type = "structure",
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TableMetadata = {
    type = "union",
    members = {
        iceberg = {
            type = "structure",
        },
    },
}

M.StorageClass = {
    STANDARD = "STANDARD",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
}

M.StorageClassConfiguration = {
    type = "structure",
    members = {
        storageClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTableInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "union",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        storageClassConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
    members = {
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTableBucketInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
        },
        storageClassConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTableBucketOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNamespaceInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNamespaceOutput = {
    type = "structure",
}

M.DeleteTableInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                http_query = "versionToken",
            },
        },
    },
}

M.DeleteTableOutput = {
    type = "structure",
}

M.DeleteTableBucketInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTableBucketOutput = {
    type = "structure",
}

M.DeleteTableBucketEncryptionInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTableBucketEncryptionOutput = {
    type = "structure",
}

M.DeleteTableBucketMetricsConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTableBucketMetricsConfigurationOutput = {
    type = "structure",
}

M.DeleteTableBucketPolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTableBucketPolicyOutput = {
    type = "structure",
}

M.DeleteTableBucketReplicationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_query = "tableBucketARN",
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                http_query = "versionToken",
            },
        },
    },
}

M.DeleteTableBucketReplicationOutput = {
    type = "structure",
}

M.DeleteTablePolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTablePolicyOutput = {
    type = "structure",
}

M.DeleteTableReplicationInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                http_query = "versionToken",
                required = true,
            },
        },
    },
}

M.DeleteTableReplicationOutput = {
    type = "structure",
}

M.GetNamespaceInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetNamespaceOutput = {
    type = "structure",
    members = {
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceId = {
            type = "string",
        },
        tableBucketId = {
            type = "string",
        },
    },
}

M.GetTableInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_query = "tableBucketARN",
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
            },
        },
    },
}

M.ReplicationInformation = {
    type = "structure",
    members = {
        sourceTableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedTableInformation = {
    type = "structure",
    members = {
        replicationInformation = {
            type = "structure",
        },
    },
}

M.TableType = {
    CUSTOMER = "customer",
    AWS = "aws",
}

M.GetTableOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        namespaceId = {
            type = "string",
        },
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataLocation = {
            type = "string",
        },
        warehouseLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedByService = {
            type = "string",
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableBucketId = {
            type = "string",
        },
        managedTableInformation = {
            type = "structure",
        },
    },
}

M.GetTableBucketInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TableBucketType = {
    CUSTOMER = "customer",
    AWS = "aws",
}

M.GetTableBucketOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tableBucketId = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.GetTableBucketEncryptionInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableBucketEncryptionOutput = {
    type = "structure",
    members = {
        encryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketMaintenanceConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TableBucketMaintenanceType = {
    ICEBERG_UNREFERENCED_FILE_REMOVAL = "icebergUnreferencedFileRemoval",
}

M.IcebergUnreferencedFileRemovalSettings = {
    type = "structure",
    members = {
        unreferencedDays = {
            type = "number",
        },
        nonCurrentDays = {
            type = "number",
        },
    },
}

M.TableBucketMaintenanceSettings = {
    type = "union",
    members = {
        icebergUnreferencedFileRemoval = {
            type = "structure",
        },
    },
}

M.MaintenanceStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.TableBucketMaintenanceConfigurationValue = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        settings = {
            type = "union",
        },
    },
}

M.GetTableBucketMaintenanceConfigurationOutput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketMetricsConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableBucketMetricsConfigurationOutput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
        },
    },
}

M.GetTableBucketPolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableBucketPolicyOutput = {
    type = "structure",
    members = {
        resourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketReplicationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_query = "tableBucketARN",
                required = true,
            },
        },
    },
}

M.ReplicationDestination = {
    type = "structure",
    members = {
        destinationTableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableBucketReplicationRule = {
    type = "structure",
    members = {
        destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TableBucketReplicationConfiguration = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketReplicationOutput = {
    type = "structure",
    members = {
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketStorageClassInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableBucketStorageClassOutput = {
    type = "structure",
    members = {
        storageClassConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableEncryptionInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableEncryptionOutput = {
    type = "structure",
    members = {
        encryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableMaintenanceConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TableMaintenanceType = {
    ICEBERG_COMPACTION = "icebergCompaction",
    ICEBERG_SNAPSHOT_MANAGEMENT = "icebergSnapshotManagement",
}

M.IcebergCompactionStrategy = {
    AUTO = "auto",
    BINPACK = "binpack",
    SORT = "sort",
    ZORDER = "z-order",
}

M.IcebergCompactionSettings = {
    type = "structure",
    members = {
        targetFileSizeMB = {
            type = "number",
        },
        strategy = {
            type = "string",
        },
    },
}

M.IcebergSnapshotManagementSettings = {
    type = "structure",
    members = {
        minSnapshotsToKeep = {
            type = "number",
        },
        maxSnapshotAgeHours = {
            type = "number",
        },
    },
}

M.TableMaintenanceSettings = {
    type = "union",
    members = {
        icebergCompaction = {
            type = "structure",
        },
        icebergSnapshotManagement = {
            type = "structure",
        },
    },
}

M.TableMaintenanceConfigurationValue = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        settings = {
            type = "union",
        },
    },
}

M.GetTableMaintenanceConfigurationOutput = {
    type = "structure",
    members = {
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableMaintenanceJobStatusInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TableMaintenanceJobType = {
    ICEBERG_COMPACTION = "icebergCompaction",
    ICEBERG_SNAPSHOT_MANAGEMENT = "icebergSnapshotManagement",
    ICEBERG_UNREFERENCED_FILE_REMOVAL = "icebergUnreferencedFileRemoval",
}

M.JobStatus = {
    NOT_YET_RUN = "Not_Yet_Run",
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
    DISABLED = "Disabled",
}

M.TableMaintenanceJobStatusValue = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastRunTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.GetTableMaintenanceJobStatusOutput = {
    type = "structure",
    members = {
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableMetadataLocationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableMetadataLocationOutput = {
    type = "structure",
    members = {
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataLocation = {
            type = "string",
        },
        warehouseLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTablePolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTablePolicyOutput = {
    type = "structure",
    members = {
        resourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableRecordExpirationConfigurationInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
    },
}

M.TableRecordExpirationSettings = {
    type = "structure",
    members = {
        days = {
            type = "number",
        },
    },
}

M.TableRecordExpirationStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.TableRecordExpirationConfigurationValue = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        settings = {
            type = "structure",
        },
    },
}

M.GetTableRecordExpirationConfigurationOutput = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetTableRecordExpirationJobStatusInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
    },
}

M.TableRecordExpirationJobMetrics = {
    type = "structure",
    members = {
        deletedDataFiles = {
            type = "number",
        },
        deletedRecords = {
            type = "number",
        },
        removedFilesSize = {
            type = "number",
        },
    },
}

M.TableRecordExpirationJobStatus = {
    NOT_YET_RUN = "NotYetRun",
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
    DISABLED = "Disabled",
}

M.GetTableRecordExpirationJobStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastRunTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureMessage = {
            type = "string",
        },
        metrics = {
            type = "structure",
        },
    },
}

M.GetTableReplicationInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
    },
}

M.TableReplicationRule = {
    type = "structure",
    members = {
        destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TableReplicationConfiguration = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableReplicationOutput = {
    type = "structure",
    members = {
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableReplicationStatusInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
    },
}

M.LastSuccessfulReplicatedUpdate = {
    type = "structure",
    members = {
        metadataLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ReplicationStatus = {
    PENDING = "pending",
    COMPLETED = "completed",
    FAILED = "failed",
}

M.ReplicationDestinationStatusModel = {
    type = "structure",
    members = {
        replicationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationTableBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationTableArn = {
            type = "string",
        },
        lastSuccessfulReplicatedUpdate = {
            type = "structure",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.GetTableReplicationStatusOutput = {
    type = "structure",
    members = {
        sourceTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableStorageClassInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTableStorageClassOutput = {
    type = "structure",
    members = {
        storageClassConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListNamespacesInput = {
    type = "structure",
    members = {
        tableBucketARN = {
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
        continuationToken = {
            type = "string",
            traits = {
                http_query = "continuationToken",
            },
        },
        maxNamespaces = {
            type = "number",
            traits = {
                http_query = "maxNamespaces",
            },
        },
    },
}

M.NamespaceSummary = {
    type = "structure",
    members = {
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaceId = {
            type = "string",
        },
        tableBucketId = {
            type = "string",
        },
    },
}

M.ListNamespacesOutput = {
    type = "structure",
    members = {
        namespaces = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        continuationToken = {
            type = "string",
        },
    },
}

M.ListTableBucketsInput = {
    type = "structure",
    members = {
        prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        continuationToken = {
            type = "string",
            traits = {
                http_query = "continuationToken",
            },
        },
        maxBuckets = {
            type = "number",
            traits = {
                http_query = "maxBuckets",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.TableBucketSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tableBucketId = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.ListTableBucketsOutput = {
    type = "structure",
    members = {
        tableBuckets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        continuationToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        continuationToken = {
            type = "string",
            traits = {
                http_query = "continuationToken",
            },
        },
        maxTables = {
            type = "number",
            traits = {
                http_query = "maxTables",
            },
        },
    },
}

M.TableSummary = {
    type = "structure",
    members = {
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        managedByService = {
            type = "string",
        },
        namespaceId = {
            type = "string",
        },
        tableBucketId = {
            type = "string",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        tables = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        continuationToken = {
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
        },
    },
}

M.PutTableBucketEncryptionInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableBucketEncryptionOutput = {
    type = "structure",
}

M.PutTableBucketMaintenanceConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableBucketMaintenanceConfigurationOutput = {
    type = "structure",
}

M.PutTableBucketMetricsConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutTableBucketMetricsConfigurationOutput = {
    type = "structure",
}

M.PutTableBucketPolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableBucketPolicyOutput = {
    type = "structure",
}

M.PutTableBucketReplicationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_query = "tableBucketARN",
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                http_query = "versionToken",
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableBucketReplicationOutput = {
    type = "structure",
    members = {
        versionToken = {
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
    },
}

M.PutTableBucketStorageClassInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageClassConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableBucketStorageClassOutput = {
    type = "structure",
}

M.PutTableMaintenanceConfigurationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableMaintenanceConfigurationOutput = {
    type = "structure",
}

M.PutTablePolicyInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTablePolicyOutput = {
    type = "structure",
}

M.PutTableRecordExpirationConfigurationInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
        value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableRecordExpirationConfigurationOutput = {
    type = "structure",
}

M.PutTableReplicationInput = {
    type = "structure",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                http_query = "versionToken",
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTableReplicationOutput = {
    type = "structure",
    members = {
        versionToken = {
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
    },
}

M.RenameTableInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        newNamespaceName = {
            type = "string",
        },
        newName = {
            type = "string",
        },
        versionToken = {
            type = "string",
        },
    },
}

M.RenameTableOutput = {
    type = "structure",
}

M.UpdateTableMetadataLocationInput = {
    type = "structure",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTableMetadataLocationOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadataLocation = {
            type = "string",
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
