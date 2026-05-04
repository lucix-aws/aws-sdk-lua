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

M.ConfigurationJobStatus = {
    NEW = "NEW",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    QUEUED = "QUEUED",
    SUCCESS = "SUCCESS",
}

M.BillOfMaterialsImportJob = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBillOfMaterialsImportJobInput = {
    type = "structure",
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
        },
    },
}

M.CreateBillOfMaterialsImportJobOutput = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBillOfMaterialsImportJobInput = {
    type = "structure",
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
    members = {
        fileType = {
            type = "string",
        },
    },
}

M.DataIntegrationFlowS3SourceConfiguration = {
    type = "structure",
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
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.CreateDataLakeNamespaceInput = {
    type = "structure",
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
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.CreateInstanceInput = {
    type = "structure",
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
    members = {
        diagnosticReportsRootS3URI = {
            type = "string",
        },
    },
}

M.DataIntegrationFlowS3Source = {
    type = "structure",
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
    members = {
        flow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlow }),
    },
}

M.ListDataIntegrationFlowsInput = {
    type = "structure",
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
    members = {
        flow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlow }),
    },
}

M.DeleteDataLakeDatasetInput = {
    type = "structure",
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
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.ListDataLakeDatasetsInput = {
    type = "structure",
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
    members = {
        dataset = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeDataset }),
    },
}

M.DeleteDataLakeNamespaceInput = {
    type = "structure",
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
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.ListDataLakeNamespacesInput = {
    type = "structure",
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
    members = {
        namespace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataLakeNamespace }),
    },
}

M.DeleteInstanceInput = {
    type = "structure",
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
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.GetDataIntegrationEventInput = {
    type = "structure",
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
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationEvent }),
    },
}

M.GetDataIntegrationFlowExecutionInput = {
    type = "structure",
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
    members = {
        flowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataIntegrationFlowExecution }),
    },
}

M.GetInstanceInput = {
    type = "structure",
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
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.ListInstancesInput = {
    type = "structure",
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
    members = {
        instance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Instance }),
    },
}

M.ListDataIntegrationEventsInput = {
    type = "structure",
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
        },
        datasetTarget = M.DataIntegrationEventDatasetTargetConfiguration,
    },
}

M.SendDataIntegrationEventOutput = {
    type = "structure",
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
}

return M
