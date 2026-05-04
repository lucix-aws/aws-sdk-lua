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

M.ConfigurationJobStatus = {
    NEW = "NEW",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    QUEUED = "QUEUED",
    SUCCESS = "SUCCESS",
}

M.BillOfMaterialsImportJob = {
    type = "structure",
    id = "BillOfMaterialsImportJob",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
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
        s3uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.CreateBillOfMaterialsImportJobInput = {
    type = "structure",
    id = "CreateBillOfMaterialsImportJobInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        s3uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateBillOfMaterialsImportJobOutput = {
    type = "structure",
    id = "CreateBillOfMaterialsImportJobOutput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBillOfMaterialsImportJobInput = {
    type = "structure",
    id = "GetBillOfMaterialsImportJobInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBillOfMaterialsImportJobOutput = {
    type = "structure",
    id = "GetBillOfMaterialsImportJobOutput",
    members = {
        job = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BillOfMaterialsImportJob }),
    },
}

M.DataIntegrationFlowFieldPriorityDedupeSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.DataIntegrationFlowFieldPriorityDedupeField = {
    type = "structure",
    id = "DataIntegrationFlowFieldPriorityDedupeField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration",
    members = {
        fields = {
            type = "list",
            member = M.DataIntegrationFlowFieldPriorityDedupeField,
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowDedupeStrategyType = {
    FIELD_PRIORITY = "FIELD_PRIORITY",
}

M.DataIntegrationFlowDedupeStrategy = {
    type = "structure",
    id = "DataIntegrationFlowDedupeStrategy",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldPriority = M.DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration,
    },
}

M.DataIntegrationFlowLoadType = {
    INCREMENTAL = "INCREMENTAL",
    REPLACE = "REPLACE",
}

M.DataIntegrationFlowDatasetOptions = {
    type = "structure",
    id = "DataIntegrationFlowDatasetOptions",
    members = {
        loadType = {
            type = "string",
        },
        dedupeRecords = {
            type = "boolean",
        },
        dedupeStrategy = M.DataIntegrationFlowDedupeStrategy,
    },
}

M.DataIntegrationFlowDatasetSourceConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowDatasetSourceConfiguration",
    members = {
        datasetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = M.DataIntegrationFlowDatasetOptions,
    },
}

M.DataIntegrationFlowFileType = {
    CSV = "CSV",
    PARQUET = "PARQUET",
    JSON = "JSON",
}

M.DataIntegrationFlowS3Options = {
    type = "structure",
    id = "DataIntegrationFlowS3Options",
    members = {
        fileType = {
            type = "string",
        },
    },
}

M.DataIntegrationFlowS3SourceConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowS3SourceConfiguration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = M.DataIntegrationFlowS3Options,
    },
}

M.DataIntegrationFlowSourceType = {
    S3 = "S3",
    DATASET = "DATASET",
}

M.DataIntegrationFlowSource = {
    type = "structure",
    id = "DataIntegrationFlowSource",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Source = M.DataIntegrationFlowS3SourceConfiguration,
        datasetSource = M.DataIntegrationFlowDatasetSourceConfiguration,
    },
}

M.DataIntegrationFlowDatasetTargetConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowDatasetTargetConfiguration",
    members = {
        datasetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = M.DataIntegrationFlowDatasetOptions,
    },
}

M.DataIntegrationFlowS3TargetConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowS3TargetConfiguration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = M.DataIntegrationFlowS3Options,
    },
}

M.DataIntegrationFlowTargetType = {
    S3 = "S3",
    DATASET = "DATASET",
}

M.DataIntegrationFlowTarget = {
    type = "structure",
    id = "DataIntegrationFlowTarget",
    members = {
        targetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Target = M.DataIntegrationFlowS3TargetConfiguration,
        datasetTarget = M.DataIntegrationFlowDatasetTargetConfiguration,
    },
}

M.DataIntegrationFlowSQLTransformationConfiguration = {
    type = "structure",
    id = "DataIntegrationFlowSQLTransformationConfiguration",
    members = {
        query = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowTransformationType = {
    SQL = "SQL",
    NONE = "NONE",
}

M.DataIntegrationFlowTransformation = {
    type = "structure",
    id = "DataIntegrationFlowTransformation",
    members = {
        transformationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sqlTransformation = M.DataIntegrationFlowSQLTransformationConfiguration,
    },
}

M.CreateDataIntegrationFlowInput = {
    type = "structure",
    id = "CreateDataIntegrationFlowInput",
    members = {
        instanceId = {
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
        sources = {
            type = "list",
            member = M.DataIntegrationFlowSource,
            traits = {
                required = true,
            },
        },
        transformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowTransformation }),
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowTarget }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDataIntegrationFlowOutput = {
    type = "structure",
    id = "CreateDataIntegrationFlowOutput",
    members = {
        instanceId = {
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
    },
}

M.DataLakeDatasetPartitionTransformType = {
    YEAR = "YEAR",
    MONTH = "MONTH",
    DAY = "DAY",
    HOUR = "HOUR",
    IDENTITY = "IDENTITY",
}

M.DataLakeDatasetPartitionFieldTransform = {
    type = "structure",
    id = "DataLakeDatasetPartitionFieldTransform",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataLakeDatasetPartitionField = {
    type = "structure",
    id = "DataLakeDatasetPartitionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transform = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDatasetPartitionFieldTransform }),
    },
}

M.DataLakeDatasetPartitionSpec = {
    type = "structure",
    id = "DataLakeDatasetPartitionSpec",
    members = {
        fields = {
            type = "list",
            member = M.DataLakeDatasetPartitionField,
            traits = {
                required = true,
            },
        },
    },
}

M.DataLakeDatasetSchemaFieldType = {
    INT = "INT",
    DOUBLE = "DOUBLE",
    STRING = "STRING",
    TIMESTAMP = "TIMESTAMP",
    LONG = "LONG",
}

M.DataLakeDatasetSchemaField = {
    type = "structure",
    id = "DataLakeDatasetSchemaField",
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
        isRequired = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DataLakeDatasetPrimaryKeyField = {
    type = "structure",
    id = "DataLakeDatasetPrimaryKeyField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataLakeDatasetSchema = {
    type = "structure",
    id = "DataLakeDatasetSchema",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.DataLakeDatasetSchemaField,
            traits = {
                required = true,
            },
        },
        primaryKeys = {
            type = "list",
            member = M.DataLakeDatasetPrimaryKeyField,
        },
    },
}

M.CreateDataLakeDatasetInput = {
    type = "structure",
    id = "CreateDataLakeDatasetInput",
    members = {
        instanceId = {
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
        schema = M.DataLakeDatasetSchema,
        description = {
            type = "string",
        },
        partitionSpec = M.DataLakeDatasetPartitionSpec,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataLakeDataset = {
    type = "structure",
    id = "DataLakeDataset",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDatasetSchema }),
        description = {
            type = "string",
        },
        partitionSpec = M.DataLakeDatasetPartitionSpec,
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataLakeDatasetOutput = {
    type = "structure",
    id = "CreateDataLakeDatasetOutput",
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.CreateDataLakeNamespaceInput = {
    type = "structure",
    id = "CreateDataLakeNamespaceInput",
    members = {
        instanceId = {
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
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataLakeNamespace = {
    type = "structure",
    id = "DataLakeNamespace",
    members = {
        instanceId = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataLakeNamespaceOutput = {
    type = "structure",
    id = "CreateDataLakeNamespaceOutput",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.CreateInstanceInput = {
    type = "structure",
    id = "CreateInstanceInput",
    members = {
        instanceName = {
            type = "string",
        },
        instanceDescription = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        webAppDnsDomain = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.InstanceState = {
    INITIALIZING = "Initializing",
    ACTIVE = "Active",
    CREATE_FAILED = "CreateFailed",
    DELETE_FAILED = "DeleteFailed",
    DELETING = "Deleting",
    DELETED = "Deleted",
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
        webAppDnsDomain = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        instanceName = {
            type = "string",
        },
        instanceDescription = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        versionNumber = {
            type = "double",
        },
    },
}

M.CreateInstanceOutput = {
    type = "structure",
    id = "CreateInstanceOutput",
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.DataIntegrationEventDatasetLoadStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DataIntegrationEventDatasetLoadExecutionDetails = {
    type = "structure",
    id = "DataIntegrationEventDatasetLoadExecutionDetails",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.DataIntegrationEventDatasetOperationType = {
    APPEND = "APPEND",
    UPSERT = "UPSERT",
    DELETE = "DELETE",
}

M.DataIntegrationEventDatasetTargetDetails = {
    type = "structure",
    id = "DataIntegrationEventDatasetTargetDetails",
    members = {
        datasetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        datasetLoadExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationEventDatasetLoadExecutionDetails }),
    },
}

M.DataIntegrationEventType = {
    FORECAST = "scn.data.forecast",
    INVENTORY_LEVEL = "scn.data.inventorylevel",
    INBOUND_ORDER = "scn.data.inboundorder",
    INBOUND_ORDER_LINE = "scn.data.inboundorderline",
    INBOUND_ORDER_LINE_SCHEDULE = "scn.data.inboundorderlineschedule",
    OUTBOUND_ORDER_LINE = "scn.data.outboundorderline",
    OUTBOUND_SHIPMENT = "scn.data.outboundshipment",
    PROCESS_HEADER = "scn.data.processheader",
    PROCESS_OPERATION = "scn.data.processoperation",
    PROCESS_PRODUCT = "scn.data.processproduct",
    RESERVATION = "scn.data.reservation",
    SHIPMENT = "scn.data.shipment",
    SHIPMENT_STOP = "scn.data.shipmentstop",
    SHIPMENT_STOP_ORDER = "scn.data.shipmentstoporder",
    SUPPLY_PLAN = "scn.data.supplyplan",
    DATASET = "scn.data.dataset",
}

M.DataIntegrationEvent = {
    type = "structure",
    id = "DataIntegrationEvent",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        datasetTargetDetails = M.DataIntegrationEventDatasetTargetDetails,
    },
}

M.DataIntegrationEventDatasetTargetConfiguration = {
    type = "structure",
    id = "DataIntegrationEventDatasetTargetConfiguration",
    members = {
        datasetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlow = {
    type = "structure",
    id = "DataIntegrationFlow",
    members = {
        instanceId = {
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
        sources = {
            type = "list",
            member = M.DataIntegrationFlowSource,
            traits = {
                required = true,
            },
        },
        transformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowTransformation }),
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowTarget }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowDatasetSource = {
    type = "structure",
    id = "DataIntegrationFlowDatasetSource",
    members = {
        datasetIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowExecutionOutputMetadata = {
    type = "structure",
    id = "DataIntegrationFlowExecutionOutputMetadata",
    members = {
        diagnosticReportsRootS3URI = {
            type = "string",
        },
    },
}

M.DataIntegrationFlowS3Source = {
    type = "structure",
    id = "DataIntegrationFlowS3Source",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataIntegrationFlowExecutionSourceInfo = {
    type = "structure",
    id = "DataIntegrationFlowExecutionSourceInfo",
    members = {
        sourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Source = M.DataIntegrationFlowS3Source,
        datasetSource = M.DataIntegrationFlowDatasetSource,
    },
}

M.DataIntegrationFlowExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.DataIntegrationFlowExecution = {
    type = "structure",
    id = "DataIntegrationFlowExecution",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        sourceInfo = M.DataIntegrationFlowExecutionSourceInfo,
        message = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        outputMetadata = M.DataIntegrationFlowExecutionOutputMetadata,
    },
}

M.DeleteDataIntegrationFlowInput = {
    type = "structure",
    id = "DeleteDataIntegrationFlowInput",
    members = {
        instanceId = {
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

M.DeleteDataIntegrationFlowOutput = {
    type = "structure",
    id = "DeleteDataIntegrationFlowOutput",
    members = {
        instanceId = {
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
    },
}

M.GetDataIntegrationFlowInput = {
    type = "structure",
    id = "GetDataIntegrationFlowInput",
    members = {
        instanceId = {
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

M.GetDataIntegrationFlowOutput = {
    type = "structure",
    id = "GetDataIntegrationFlowOutput",
    members = {
        flow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlow }),
    },
}

M.ListDataIntegrationFlowsInput = {
    type = "structure",
    id = "ListDataIntegrationFlowsInput",
    members = {
        instanceId = {
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
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataIntegrationFlowsOutput = {
    type = "structure",
    id = "ListDataIntegrationFlowsOutput",
    members = {
        flows = {
            type = "list",
            member = M.DataIntegrationFlow,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataIntegrationFlowInput = {
    type = "structure",
    id = "UpdateDataIntegrationFlowInput",
    members = {
        instanceId = {
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
        sources = {
            type = "list",
            member = M.DataIntegrationFlowSource,
        },
        transformation = M.DataIntegrationFlowTransformation,
        target = M.DataIntegrationFlowTarget,
    },
}

M.UpdateDataIntegrationFlowOutput = {
    type = "structure",
    id = "UpdateDataIntegrationFlowOutput",
    members = {
        flow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlow }),
    },
}

M.DeleteDataLakeDatasetInput = {
    type = "structure",
    id = "DeleteDataLakeDatasetInput",
    members = {
        instanceId = {
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

M.DeleteDataLakeDatasetOutput = {
    type = "structure",
    id = "DeleteDataLakeDatasetOutput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
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
    },
}

M.GetDataLakeDatasetInput = {
    type = "structure",
    id = "GetDataLakeDatasetInput",
    members = {
        instanceId = {
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

M.GetDataLakeDatasetOutput = {
    type = "structure",
    id = "GetDataLakeDatasetOutput",
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.ListDataLakeDatasetsInput = {
    type = "structure",
    id = "ListDataLakeDatasetsInput",
    members = {
        instanceId = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataLakeDatasetsOutput = {
    type = "structure",
    id = "ListDataLakeDatasetsOutput",
    members = {
        datasets = {
            type = "list",
            member = M.DataLakeDataset,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataLakeDatasetInput = {
    type = "structure",
    id = "UpdateDataLakeDatasetInput",
    members = {
        instanceId = {
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
        description = {
            type = "string",
        },
    },
}

M.UpdateDataLakeDatasetOutput = {
    type = "structure",
    id = "UpdateDataLakeDatasetOutput",
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.DeleteDataLakeNamespaceInput = {
    type = "structure",
    id = "DeleteDataLakeNamespaceInput",
    members = {
        instanceId = {
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

M.DeleteDataLakeNamespaceOutput = {
    type = "structure",
    id = "DeleteDataLakeNamespaceOutput",
    members = {
        instanceId = {
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
    },
}

M.GetDataLakeNamespaceInput = {
    type = "structure",
    id = "GetDataLakeNamespaceInput",
    members = {
        instanceId = {
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

M.GetDataLakeNamespaceOutput = {
    type = "structure",
    id = "GetDataLakeNamespaceOutput",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.ListDataLakeNamespacesInput = {
    type = "structure",
    id = "ListDataLakeNamespacesInput",
    members = {
        instanceId = {
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
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataLakeNamespacesOutput = {
    type = "structure",
    id = "ListDataLakeNamespacesOutput",
    members = {
        namespaces = {
            type = "list",
            member = M.DataLakeNamespace,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataLakeNamespaceInput = {
    type = "structure",
    id = "UpdateDataLakeNamespaceInput",
    members = {
        instanceId = {
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
        description = {
            type = "string",
        },
    },
}

M.UpdateDataLakeNamespaceOutput = {
    type = "structure",
    id = "UpdateDataLakeNamespaceOutput",
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.DeleteInstanceInput = {
    type = "structure",
    id = "DeleteInstanceInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInstanceOutput = {
    type = "structure",
    id = "DeleteInstanceOutput",
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.GetDataIntegrationEventInput = {
    type = "structure",
    id = "GetDataIntegrationEventInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataIntegrationEventOutput = {
    type = "structure",
    id = "GetDataIntegrationEventOutput",
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationEvent }),
    },
}

M.GetDataIntegrationFlowExecutionInput = {
    type = "structure",
    id = "GetDataIntegrationFlowExecutionInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowName = {
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

M.GetDataIntegrationFlowExecutionOutput = {
    type = "structure",
    id = "GetDataIntegrationFlowExecutionOutput",
    members = {
        flowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowExecution }),
    },
}

M.GetInstanceInput = {
    type = "structure",
    id = "GetInstanceInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInstanceOutput = {
    type = "structure",
    id = "GetInstanceOutput",
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.ListInstancesInput = {
    type = "structure",
    id = "ListInstancesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
        instanceNameFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "instanceNameFilter",
            },
        },
        instanceStateFilter = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "instanceStateFilter",
            },
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    id = "ListInstancesOutput",
    members = {
        instances = {
            type = "list",
            member = M.Instance,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateInstanceInput = {
    type = "structure",
    id = "UpdateInstanceInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        instanceName = {
            type = "string",
        },
        instanceDescription = {
            type = "string",
        },
    },
}

M.UpdateInstanceOutput = {
    type = "structure",
    id = "UpdateInstanceOutput",
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.ListDataIntegrationEventsInput = {
    type = "structure",
    id = "ListDataIntegrationEventsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                http_query = "eventType",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataIntegrationEventsOutput = {
    type = "structure",
    id = "ListDataIntegrationEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.DataIntegrationEvent,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataIntegrationFlowExecutionsInput = {
    type = "structure",
    id = "ListDataIntegrationFlowExecutionsInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flowName = {
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
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataIntegrationFlowExecutionsOutput = {
    type = "structure",
    id = "ListDataIntegrationFlowExecutionsOutput",
    members = {
        flowExecutions = {
            type = "list",
            member = M.DataIntegrationFlowExecution,
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
            traits = {
                required = true,
            },
        },
    },
}

M.SendDataIntegrationEventInput = {
    type = "structure",
    id = "SendDataIntegrationEventInput",
    members = {
        instanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        data = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "epoch-seconds",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        datasetTarget = M.DataIntegrationEventDatasetTargetConfiguration,
    },
}

M.SendDataIntegrationEventOutput = {
    type = "structure",
    id = "SendDataIntegrationEventOutput",
    members = {
        eventId = {
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
