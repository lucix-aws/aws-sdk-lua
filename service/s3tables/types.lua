local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateNamespaceInput = {
    type = "structure",
    id = "CreateNamespaceInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNamespaceOutput = {
    type = "structure",
    id = "CreateNamespaceOutput",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
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
    id = "EncryptionConfiguration",
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
    id = "IcebergPartitionField",
    members = {
        sourceId = {
            type = "integer",
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
            type = "integer",
            traits = {
                json_name = "field-id",
            },
        },
    },
}

M.IcebergPartitionSpec = {
    type = "structure",
    id = "IcebergPartitionSpec",
    members = {
        fields = {
            type = "list",
            member = M.IcebergPartitionField,
            traits = {
                required = true,
            },
        },
        specId = {
            type = "integer",
            traits = {
                json_name = "spec-id",
            },
        },
    },
}

M.SchemaField = {
    type = "structure",
    id = "SchemaField",
    members = {
        id = {
            type = "integer",
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
            traits = {
                default = false,
            },
        },
    },
}

M.IcebergSchema = {
    type = "structure",
    id = "IcebergSchema",
    members = {
        fields = {
            type = "list",
            member = M.SchemaField,
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaV2Field = {
    type = "structure",
    id = "SchemaV2Field",
    members = {
        id = {
            type = "integer",
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
    id = "IcebergSchemaV2",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.SchemaV2Field,
            traits = {
                required = true,
            },
        },
        schemaId = {
            type = "integer",
            traits = {
                json_name = "schema-id",
            },
        },
        identifierFieldIds = {
            type = "list",
            member = { type = "integer" },
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
    id = "IcebergSortField",
    members = {
        sourceId = {
            type = "integer",
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
    id = "IcebergSortOrder",
    members = {
        orderId = {
            type = "integer",
            traits = {
                json_name = "order-id",
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.IcebergSortField,
            traits = {
                required = true,
            },
        },
    },
}

M.IcebergMetadata = {
    type = "structure",
    id = "IcebergMetadata",
    members = {
        schema = M.IcebergSchema,
        schemaV2 = M.IcebergSchemaV2,
        partitionSpec = M.IcebergPartitionSpec,
        writeOrder = M.IcebergSortOrder,
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TableMetadata = {
    type = "union",
    id = "TableMetadata",
    members = {
        iceberg = M.IcebergMetadata,
    },
}

M.StorageClass = {
    STANDARD = "STANDARD",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
}

M.StorageClassConfiguration = {
    type = "structure",
    id = "StorageClassConfiguration",
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
    id = "CreateTableInput",
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
        metadata = M.TableMetadata,
        encryptionConfiguration = M.EncryptionConfiguration,
        storageClassConfiguration = M.StorageClassConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
    id = "CreateTableOutput",
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
    id = "CreateTableBucketInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        storageClassConfiguration = M.StorageClassConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateTableBucketOutput = {
    type = "structure",
    id = "CreateTableBucketOutput",
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
    id = "DeleteNamespaceInput",
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
    id = "DeleteNamespaceOutput",
}

M.DeleteTableInput = {
    type = "structure",
    id = "DeleteTableInput",
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
    id = "DeleteTableOutput",
}

M.DeleteTableBucketInput = {
    type = "structure",
    id = "DeleteTableBucketInput",
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
    id = "DeleteTableBucketOutput",
}

M.DeleteTableBucketEncryptionInput = {
    type = "structure",
    id = "DeleteTableBucketEncryptionInput",
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
    id = "DeleteTableBucketEncryptionOutput",
}

M.DeleteTableBucketMetricsConfigurationInput = {
    type = "structure",
    id = "DeleteTableBucketMetricsConfigurationInput",
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
    id = "DeleteTableBucketMetricsConfigurationOutput",
}

M.DeleteTableBucketPolicyInput = {
    type = "structure",
    id = "DeleteTableBucketPolicyInput",
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
    id = "DeleteTableBucketPolicyOutput",
}

M.DeleteTableBucketReplicationInput = {
    type = "structure",
    id = "DeleteTableBucketReplicationInput",
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
    id = "DeleteTableBucketReplicationOutput",
}

M.DeleteTablePolicyInput = {
    type = "structure",
    id = "DeleteTablePolicyInput",
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
    id = "DeleteTablePolicyOutput",
}

M.DeleteTableReplicationInput = {
    type = "structure",
    id = "DeleteTableReplicationInput",
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
    id = "DeleteTableReplicationOutput",
}

M.GetNamespaceInput = {
    type = "structure",
    id = "GetNamespaceInput",
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
    id = "GetNamespaceOutput",
    members = {
        namespace = {
            type = "list",
            member = { type = "string" },
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
    id = "GetTableInput",
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
    id = "ReplicationInformation",
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
    id = "ManagedTableInformation",
    members = {
        replicationInformation = M.ReplicationInformation,
    },
}

M.TableType = {
    CUSTOMER = "customer",
    AWS = "aws",
}

M.GetTableOutput = {
    type = "structure",
    id = "GetTableOutput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        namespaceId = {
            type = "string",
            traits = {
                default = nil,
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
        managedTableInformation = M.ManagedTableInformation,
    },
}

M.GetTableBucketInput = {
    type = "structure",
    id = "GetTableBucketInput",
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
    id = "GetTableBucketOutput",
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
    id = "GetTableBucketEncryptionInput",
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
    id = "GetTableBucketEncryptionOutput",
    members = {
        encryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
    },
}

M.GetTableBucketMaintenanceConfigurationInput = {
    type = "structure",
    id = "GetTableBucketMaintenanceConfigurationInput",
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
    id = "IcebergUnreferencedFileRemovalSettings",
    members = {
        unreferencedDays = {
            type = "integer",
        },
        nonCurrentDays = {
            type = "integer",
        },
    },
}

M.TableBucketMaintenanceSettings = {
    type = "union",
    id = "TableBucketMaintenanceSettings",
    members = {
        icebergUnreferencedFileRemoval = M.IcebergUnreferencedFileRemovalSettings,
    },
}

M.MaintenanceStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.TableBucketMaintenanceConfigurationValue = {
    type = "structure",
    id = "TableBucketMaintenanceConfigurationValue",
    members = {
        status = {
            type = "string",
        },
        settings = M.TableBucketMaintenanceSettings,
    },
}

M.GetTableBucketMaintenanceConfigurationOutput = {
    type = "structure",
    id = "GetTableBucketMaintenanceConfigurationOutput",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "map",
            key = { type = "string" },
            value = M.TableBucketMaintenanceConfigurationValue,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketMetricsConfigurationInput = {
    type = "structure",
    id = "GetTableBucketMetricsConfigurationInput",
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
    id = "GetTableBucketMetricsConfigurationOutput",
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
    id = "GetTableBucketPolicyInput",
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
    id = "GetTableBucketPolicyOutput",
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
    id = "GetTableBucketReplicationInput",
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
    id = "ReplicationDestination",
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
    id = "TableBucketReplicationRule",
    members = {
        destinations = {
            type = "list",
            member = M.ReplicationDestination,
            traits = {
                required = true,
            },
        },
    },
}

M.TableBucketReplicationConfiguration = {
    type = "structure",
    id = "TableBucketReplicationConfiguration",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member = M.TableBucketReplicationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableBucketReplicationOutput = {
    type = "structure",
    id = "GetTableBucketReplicationOutput",
    members = {
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableBucketReplicationConfiguration }),
    },
}

M.GetTableBucketStorageClassInput = {
    type = "structure",
    id = "GetTableBucketStorageClassInput",
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
    id = "GetTableBucketStorageClassOutput",
    members = {
        storageClassConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageClassConfiguration }),
    },
}

M.GetTableEncryptionInput = {
    type = "structure",
    id = "GetTableEncryptionInput",
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
    id = "GetTableEncryptionOutput",
    members = {
        encryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
    },
}

M.GetTableMaintenanceConfigurationInput = {
    type = "structure",
    id = "GetTableMaintenanceConfigurationInput",
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
    id = "IcebergCompactionSettings",
    members = {
        targetFileSizeMB = {
            type = "integer",
        },
        strategy = {
            type = "string",
        },
    },
}

M.IcebergSnapshotManagementSettings = {
    type = "structure",
    id = "IcebergSnapshotManagementSettings",
    members = {
        minSnapshotsToKeep = {
            type = "integer",
        },
        maxSnapshotAgeHours = {
            type = "integer",
        },
    },
}

M.TableMaintenanceSettings = {
    type = "union",
    id = "TableMaintenanceSettings",
    members = {
        icebergCompaction = M.IcebergCompactionSettings,
        icebergSnapshotManagement = M.IcebergSnapshotManagementSettings,
    },
}

M.TableMaintenanceConfigurationValue = {
    type = "structure",
    id = "TableMaintenanceConfigurationValue",
    members = {
        status = {
            type = "string",
        },
        settings = M.TableMaintenanceSettings,
    },
}

M.GetTableMaintenanceConfigurationOutput = {
    type = "structure",
    id = "GetTableMaintenanceConfigurationOutput",
    members = {
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "map",
            key = { type = "string" },
            value = M.TableMaintenanceConfigurationValue,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableMaintenanceJobStatusInput = {
    type = "structure",
    id = "GetTableMaintenanceJobStatusInput",
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
    id = "TableMaintenanceJobStatusValue",
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
    id = "GetTableMaintenanceJobStatusOutput",
    members = {
        tableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "map",
            key = { type = "string" },
            value = M.TableMaintenanceJobStatusValue,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableMetadataLocationInput = {
    type = "structure",
    id = "GetTableMetadataLocationInput",
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
    id = "GetTableMetadataLocationOutput",
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
    id = "GetTablePolicyInput",
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
    id = "GetTablePolicyOutput",
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
    id = "GetTableRecordExpirationConfigurationInput",
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
    id = "TableRecordExpirationSettings",
    members = {
        days = {
            type = "integer",
        },
    },
}

M.TableRecordExpirationStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.TableRecordExpirationConfigurationValue = {
    type = "structure",
    id = "TableRecordExpirationConfigurationValue",
    members = {
        status = {
            type = "string",
        },
        settings = M.TableRecordExpirationSettings,
    },
}

M.GetTableRecordExpirationConfigurationOutput = {
    type = "structure",
    id = "GetTableRecordExpirationConfigurationOutput",
    members = {
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableRecordExpirationConfigurationValue }),
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    id = "MethodNotAllowedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetTableRecordExpirationJobStatusInput = {
    type = "structure",
    id = "GetTableRecordExpirationJobStatusInput",
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
    id = "TableRecordExpirationJobMetrics",
    members = {
        deletedDataFiles = {
            type = "long",
        },
        deletedRecords = {
            type = "long",
        },
        removedFilesSize = {
            type = "long",
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
    id = "GetTableRecordExpirationJobStatusOutput",
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
        metrics = M.TableRecordExpirationJobMetrics,
    },
}

M.GetTableReplicationInput = {
    type = "structure",
    id = "GetTableReplicationInput",
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
    id = "TableReplicationRule",
    members = {
        destinations = {
            type = "list",
            member = M.ReplicationDestination,
            traits = {
                required = true,
            },
        },
    },
}

M.TableReplicationConfiguration = {
    type = "structure",
    id = "TableReplicationConfiguration",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rules = {
            type = "list",
            member = M.TableReplicationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableReplicationOutput = {
    type = "structure",
    id = "GetTableReplicationOutput",
    members = {
        versionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableReplicationConfiguration }),
    },
}

M.GetTableReplicationStatusInput = {
    type = "structure",
    id = "GetTableReplicationStatusInput",
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
    id = "LastSuccessfulReplicatedUpdate",
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
    id = "ReplicationDestinationStatusModel",
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
        lastSuccessfulReplicatedUpdate = M.LastSuccessfulReplicatedUpdate,
        failureMessage = {
            type = "string",
        },
    },
}

M.GetTableReplicationStatusOutput = {
    type = "structure",
    id = "GetTableReplicationStatusOutput",
    members = {
        sourceTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinations = {
            type = "list",
            member = M.ReplicationDestinationStatusModel,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableStorageClassInput = {
    type = "structure",
    id = "GetTableStorageClassInput",
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
    id = "GetTableStorageClassOutput",
    members = {
        storageClassConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageClassConfiguration }),
    },
}

M.ListNamespacesInput = {
    type = "structure",
    id = "ListNamespacesInput",
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
            type = "integer",
            traits = {
                http_query = "maxNamespaces",
            },
        },
    },
}

M.NamespaceSummary = {
    type = "structure",
    id = "NamespaceSummary",
    members = {
        namespace = {
            type = "list",
            member = { type = "string" },
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
    id = "ListNamespacesOutput",
    members = {
        namespaces = {
            type = "list",
            member = M.NamespaceSummary,
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
    id = "ListTableBucketsInput",
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
            type = "integer",
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
    id = "TableBucketSummary",
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
    id = "ListTableBucketsOutput",
    members = {
        tableBuckets = {
            type = "list",
            member = M.TableBucketSummary,
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
    id = "ListTablesInput",
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
            type = "integer",
            traits = {
                http_query = "maxTables",
            },
        },
    },
}

M.TableSummary = {
    type = "structure",
    id = "TableSummary",
    members = {
        namespace = {
            type = "list",
            member = { type = "string" },
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
    id = "ListTablesOutput",
    members = {
        tables = {
            type = "list",
            member = M.TableSummary,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutTableBucketEncryptionInput = {
    type = "structure",
    id = "PutTableBucketEncryptionInput",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
    },
}

M.PutTableBucketEncryptionOutput = {
    type = "structure",
    id = "PutTableBucketEncryptionOutput",
}

M.PutTableBucketMaintenanceConfigurationInput = {
    type = "structure",
    id = "PutTableBucketMaintenanceConfigurationInput",
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
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableBucketMaintenanceConfigurationValue }),
    },
}

M.PutTableBucketMaintenanceConfigurationOutput = {
    type = "structure",
    id = "PutTableBucketMaintenanceConfigurationOutput",
}

M.PutTableBucketMetricsConfigurationInput = {
    type = "structure",
    id = "PutTableBucketMetricsConfigurationInput",
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
    id = "PutTableBucketMetricsConfigurationOutput",
}

M.PutTableBucketPolicyInput = {
    type = "structure",
    id = "PutTableBucketPolicyInput",
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
    id = "PutTableBucketPolicyOutput",
}

M.PutTableBucketReplicationInput = {
    type = "structure",
    id = "PutTableBucketReplicationInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableBucketReplicationConfiguration }),
    },
}

M.PutTableBucketReplicationOutput = {
    type = "structure",
    id = "PutTableBucketReplicationOutput",
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
    id = "PutTableBucketStorageClassInput",
    members = {
        tableBucketARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageClassConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageClassConfiguration }),
    },
}

M.PutTableBucketStorageClassOutput = {
    type = "structure",
    id = "PutTableBucketStorageClassOutput",
}

M.PutTableMaintenanceConfigurationInput = {
    type = "structure",
    id = "PutTableMaintenanceConfigurationInput",
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
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableMaintenanceConfigurationValue }),
    },
}

M.PutTableMaintenanceConfigurationOutput = {
    type = "structure",
    id = "PutTableMaintenanceConfigurationOutput",
}

M.PutTablePolicyInput = {
    type = "structure",
    id = "PutTablePolicyInput",
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
    id = "PutTablePolicyOutput",
}

M.PutTableRecordExpirationConfigurationInput = {
    type = "structure",
    id = "PutTableRecordExpirationConfigurationInput",
    members = {
        tableArn = {
            type = "string",
            traits = {
                http_query = "tableArn",
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableRecordExpirationConfigurationValue }),
    },
}

M.PutTableRecordExpirationConfigurationOutput = {
    type = "structure",
    id = "PutTableRecordExpirationConfigurationOutput",
}

M.PutTableReplicationInput = {
    type = "structure",
    id = "PutTableReplicationInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableReplicationConfiguration }),
    },
}

M.PutTableReplicationOutput = {
    type = "structure",
    id = "PutTableReplicationOutput",
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
    id = "RenameTableInput",
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
    id = "RenameTableOutput",
}

M.UpdateTableMetadataLocationInput = {
    type = "structure",
    id = "UpdateTableMetadataLocationInput",
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
    id = "UpdateTableMetadataLocationOutput",
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
            member = { type = "string" },
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
