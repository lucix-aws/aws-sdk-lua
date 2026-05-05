local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.timestreamwrite"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchLoadProgressReport = schema.new({
    id = id.from(_N, "BatchLoadProgressReport"),
    type = "structure",
    members = {
        RecordsProcessed = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "RecordsProcessed"),
            type = "long",
            name = "RecordsProcessed",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RecordsIngested = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "RecordsIngested"),
            type = "long",
            name = "RecordsIngested",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ParseFailures = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "ParseFailures"),
            type = "long",
            name = "ParseFailures",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RecordIngestionFailures = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "RecordIngestionFailures"),
            type = "long",
            name = "RecordIngestionFailures",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FileFailures = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "FileFailures"),
            type = "long",
            name = "FileFailures",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        BytesMetered = schema.new({
            id = id.from(_N, "BatchLoadProgressReport", "BytesMetered"),
            type = "long",
            name = "BytesMetered",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.BatchLoadTask = schema.new({
    id = id.from(_N, "BatchLoadTask"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "BatchLoadTask", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        TaskStatus = schema.new({
            id = id.from(_N, "BatchLoadTask", "TaskStatus"),
            type = "string",
            name = "TaskStatus",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "BatchLoadTask", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        TableName = schema.new({
            id = id.from(_N, "BatchLoadTask", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "BatchLoadTask", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "BatchLoadTask", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ResumableUntil = schema.new({
            id = id.from(_N, "BatchLoadTask", "ResumableUntil"),
            type = "timestamp",
            name = "ResumableUntil",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DimensionMapping = schema.new({
    id = id.from(_N, "DimensionMapping"),
    type = "structure",
    members = {
        SourceColumn = schema.new({
            id = id.from(_N, "DimensionMapping", "SourceColumn"),
            type = "string",
            name = "SourceColumn",
            target_id = prelude.String.id,
        }),
        DestinationColumn = schema.new({
            id = id.from(_N, "DimensionMapping", "DestinationColumn"),
            type = "string",
            name = "DestinationColumn",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiMeasureAttributeMapping = schema.new({
    id = id.from(_N, "MultiMeasureAttributeMapping"),
    type = "structure",
    members = {
        SourceColumn = schema.new({
            id = id.from(_N, "MultiMeasureAttributeMapping", "SourceColumn"),
            type = "string",
            name = "SourceColumn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetMultiMeasureAttributeName = schema.new({
            id = id.from(_N, "MultiMeasureAttributeMapping", "TargetMultiMeasureAttributeName"),
            type = "string",
            name = "TargetMultiMeasureAttributeName",
            target_id = prelude.String.id,
        }),
        MeasureValueType = schema.new({
            id = id.from(_N, "MultiMeasureAttributeMapping", "MeasureValueType"),
            type = "string",
            name = "MeasureValueType",
            target_id = prelude.String.id,
        }),
    },
})

M.MixedMeasureMapping = schema.new({
    id = id.from(_N, "MixedMeasureMapping"),
    type = "structure",
    members = {
        MeasureName = schema.new({
            id = id.from(_N, "MixedMeasureMapping", "MeasureName"),
            type = "string",
            name = "MeasureName",
            target_id = prelude.String.id,
        }),
        SourceColumn = schema.new({
            id = id.from(_N, "MixedMeasureMapping", "SourceColumn"),
            type = "string",
            name = "SourceColumn",
            target_id = prelude.String.id,
        }),
        TargetMeasureName = schema.new({
            id = id.from(_N, "MixedMeasureMapping", "TargetMeasureName"),
            type = "string",
            name = "TargetMeasureName",
            target_id = prelude.String.id,
        }),
        MeasureValueType = schema.new({
            id = id.from(_N, "MixedMeasureMapping", "MeasureValueType"),
            type = "string",
            name = "MeasureValueType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiMeasureAttributeMappings = schema.new({
            id = id.from(_N, "MixedMeasureMapping", "MultiMeasureAttributeMappings"),
            type = "list",
            name = "MultiMeasureAttributeMappings",
            target_id = prelude.Document.id,
            list_member = M.MultiMeasureAttributeMapping,
        }),
    },
})

M.MultiMeasureMappings = schema.new({
    id = id.from(_N, "MultiMeasureMappings"),
    type = "structure",
    members = {
        TargetMultiMeasureName = schema.new({
            id = id.from(_N, "MultiMeasureMappings", "TargetMultiMeasureName"),
            type = "string",
            name = "TargetMultiMeasureName",
            target_id = prelude.String.id,
        }),
        MultiMeasureAttributeMappings = schema.new({
            id = id.from(_N, "MultiMeasureMappings", "MultiMeasureAttributeMappings"),
            type = "list",
            name = "MultiMeasureAttributeMappings",
            target_id = prelude.Document.id,
            list_member = M.MultiMeasureAttributeMapping,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataModel = schema.new({
    id = id.from(_N, "DataModel"),
    type = "structure",
    members = {
        TimeColumn = schema.new({
            id = id.from(_N, "DataModel", "TimeColumn"),
            type = "string",
            name = "TimeColumn",
            target_id = prelude.String.id,
        }),
        TimeUnit = schema.new({
            id = id.from(_N, "DataModel", "TimeUnit"),
            type = "string",
            name = "TimeUnit",
            target_id = prelude.String.id,
        }),
        DimensionMappings = schema.new({
            id = id.from(_N, "DataModel", "DimensionMappings"),
            type = "list",
            name = "DimensionMappings",
            target_id = prelude.Document.id,
            list_member = M.DimensionMapping,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiMeasureMappings = schema.new({
            id = id.from(_N, "DataModel", "MultiMeasureMappings"),
            type = "structure",
            name = "MultiMeasureMappings",
            target_id = id.from(_N, "MultiMeasureMappings"),
            target = M.MultiMeasureMappings,
        }),
        MixedMeasureMappings = schema.new({
            id = id.from(_N, "DataModel", "MixedMeasureMappings"),
            type = "list",
            name = "MixedMeasureMappings",
            target_id = prelude.Document.id,
            list_member = M.MixedMeasureMapping,
        }),
        MeasureNameColumn = schema.new({
            id = id.from(_N, "DataModel", "MeasureNameColumn"),
            type = "string",
            name = "MeasureNameColumn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataModelS3Configuration = schema.new({
    id = id.from(_N, "DataModelS3Configuration"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "DataModelS3Configuration", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
        ObjectKey = schema.new({
            id = id.from(_N, "DataModelS3Configuration", "ObjectKey"),
            type = "string",
            name = "ObjectKey",
            target_id = prelude.String.id,
        }),
    },
})

M.DataModelConfiguration = schema.new({
    id = id.from(_N, "DataModelConfiguration"),
    type = "structure",
    members = {
        DataModel = schema.new({
            id = id.from(_N, "DataModelConfiguration", "DataModel"),
            type = "structure",
            name = "DataModel",
            target_id = id.from(_N, "DataModel"),
            target = M.DataModel,
        }),
        DataModelS3Configuration = schema.new({
            id = id.from(_N, "DataModelConfiguration", "DataModelS3Configuration"),
            type = "structure",
            name = "DataModelS3Configuration",
            target_id = id.from(_N, "DataModelS3Configuration"),
            target = M.DataModelS3Configuration,
        }),
    },
})

M.CsvConfiguration = schema.new({
    id = id.from(_N, "CsvConfiguration"),
    type = "structure",
    members = {
        ColumnSeparator = schema.new({
            id = id.from(_N, "CsvConfiguration", "ColumnSeparator"),
            type = "string",
            name = "ColumnSeparator",
            target_id = prelude.String.id,
        }),
        EscapeChar = schema.new({
            id = id.from(_N, "CsvConfiguration", "EscapeChar"),
            type = "string",
            name = "EscapeChar",
            target_id = prelude.String.id,
        }),
        QuoteChar = schema.new({
            id = id.from(_N, "CsvConfiguration", "QuoteChar"),
            type = "string",
            name = "QuoteChar",
            target_id = prelude.String.id,
        }),
        NullValue = schema.new({
            id = id.from(_N, "CsvConfiguration", "NullValue"),
            type = "string",
            name = "NullValue",
            target_id = prelude.String.id,
        }),
        TrimWhiteSpace = schema.new({
            id = id.from(_N, "CsvConfiguration", "TrimWhiteSpace"),
            type = "boolean",
            name = "TrimWhiteSpace",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DataSourceS3Configuration = schema.new({
    id = id.from(_N, "DataSourceS3Configuration"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "DataSourceS3Configuration", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ObjectKeyPrefix = schema.new({
            id = id.from(_N, "DataSourceS3Configuration", "ObjectKeyPrefix"),
            type = "string",
            name = "ObjectKeyPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSourceConfiguration = schema.new({
    id = id.from(_N, "DataSourceConfiguration"),
    type = "structure",
    members = {
        DataSourceS3Configuration = schema.new({
            id = id.from(_N, "DataSourceConfiguration", "DataSourceS3Configuration"),
            type = "structure",
            name = "DataSourceS3Configuration",
            target_id = id.from(_N, "DataSourceS3Configuration"),
            target = M.DataSourceS3Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CsvConfiguration = schema.new({
            id = id.from(_N, "DataSourceConfiguration", "CsvConfiguration"),
            type = "structure",
            name = "CsvConfiguration",
            target_id = id.from(_N, "CsvConfiguration"),
            target = M.CsvConfiguration,
        }),
        DataFormat = schema.new({
            id = id.from(_N, "DataSourceConfiguration", "DataFormat"),
            type = "string",
            name = "DataFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReportS3Configuration = schema.new({
    id = id.from(_N, "ReportS3Configuration"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "ReportS3Configuration", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ObjectKeyPrefix = schema.new({
            id = id.from(_N, "ReportS3Configuration", "ObjectKeyPrefix"),
            type = "string",
            name = "ObjectKeyPrefix",
            target_id = prelude.String.id,
        }),
        EncryptionOption = schema.new({
            id = id.from(_N, "ReportS3Configuration", "EncryptionOption"),
            type = "string",
            name = "EncryptionOption",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ReportS3Configuration", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ReportConfiguration = schema.new({
    id = id.from(_N, "ReportConfiguration"),
    type = "structure",
    members = {
        ReportS3Configuration = schema.new({
            id = id.from(_N, "ReportConfiguration", "ReportS3Configuration"),
            type = "structure",
            name = "ReportS3Configuration",
            target_id = id.from(_N, "ReportS3Configuration"),
            target = M.ReportS3Configuration,
        }),
    },
})

M.BatchLoadTaskDescription = schema.new({
    id = id.from(_N, "BatchLoadTaskDescription"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        DataSourceConfiguration = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "DataSourceConfiguration"),
            type = "structure",
            name = "DataSourceConfiguration",
            target_id = id.from(_N, "DataSourceConfiguration"),
            target = M.DataSourceConfiguration,
        }),
        ProgressReport = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "ProgressReport"),
            type = "structure",
            name = "ProgressReport",
            target_id = id.from(_N, "BatchLoadProgressReport"),
            target = M.BatchLoadProgressReport,
        }),
        ReportConfiguration = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "ReportConfiguration"),
            type = "structure",
            name = "ReportConfiguration",
            target_id = id.from(_N, "ReportConfiguration"),
            target = M.ReportConfiguration,
        }),
        DataModelConfiguration = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "DataModelConfiguration"),
            type = "structure",
            name = "DataModelConfiguration",
            target_id = id.from(_N, "DataModelConfiguration"),
            target = M.DataModelConfiguration,
        }),
        TargetDatabaseName = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "TargetDatabaseName"),
            type = "string",
            name = "TargetDatabaseName",
            target_id = prelude.String.id,
        }),
        TargetTableName = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "TargetTableName"),
            type = "string",
            name = "TargetTableName",
            target_id = prelude.String.id,
        }),
        TaskStatus = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "TaskStatus"),
            type = "string",
            name = "TaskStatus",
            target_id = prelude.String.id,
        }),
        RecordVersion = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "RecordVersion"),
            type = "long",
            name = "RecordVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        ResumableUntil = schema.new({
            id = id.from(_N, "BatchLoadTaskDescription", "ResumableUntil"),
            type = "timestamp",
            name = "ResumableUntil",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBatchLoadTaskInput = schema.new({
    id = id.from(_N, "CreateBatchLoadTaskRequest"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        DataModelConfiguration = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "DataModelConfiguration"),
            type = "structure",
            name = "DataModelConfiguration",
            target_id = id.from(_N, "DataModelConfiguration"),
            target = M.DataModelConfiguration,
        }),
        DataSourceConfiguration = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "DataSourceConfiguration"),
            type = "structure",
            name = "DataSourceConfiguration",
            target_id = id.from(_N, "DataSourceConfiguration"),
            target = M.DataSourceConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReportConfiguration = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "ReportConfiguration"),
            type = "structure",
            name = "ReportConfiguration",
            target_id = id.from(_N, "ReportConfiguration"),
            target = M.ReportConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDatabaseName = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "TargetDatabaseName"),
            type = "string",
            name = "TargetDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetTableName = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "TargetTableName"),
            type = "string",
            name = "TargetTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordVersion = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskInput", "RecordVersion"),
            type = "long",
            name = "RecordVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.CreateBatchLoadTaskOutput = schema.new({
    id = id.from(_N, "CreateBatchLoadTaskResponse"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "CreateBatchLoadTaskOutput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidEndpointException = schema.new({
    id = id.from(_N, "InvalidEndpointException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidEndpointException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDatabaseInput = schema.new({
    id = id.from(_N, "CreateDatabaseRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "CreateDatabaseInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateDatabaseInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDatabaseInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Database = schema.new({
    id = id.from(_N, "Database"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Database", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "Database", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        TableCount = schema.new({
            id = id.from(_N, "Database", "TableCount"),
            type = "long",
            name = "TableCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "Database", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Database", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "Database", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateDatabaseOutput = schema.new({
    id = id.from(_N, "CreateDatabaseResponse"),
    type = "structure",
    members = {
        Database = schema.new({
            id = id.from(_N, "CreateDatabaseOutput", "Database"),
            type = "structure",
            name = "Database",
            target_id = id.from(_N, "Database"),
            target = M.Database,
        }),
    },
})

M.S3Configuration = schema.new({
    id = id.from(_N, "S3Configuration"),
    type = "structure",
    members = {
        BucketName = schema.new({
            id = id.from(_N, "S3Configuration", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
        }),
        ObjectKeyPrefix = schema.new({
            id = id.from(_N, "S3Configuration", "ObjectKeyPrefix"),
            type = "string",
            name = "ObjectKeyPrefix",
            target_id = prelude.String.id,
        }),
        EncryptionOption = schema.new({
            id = id.from(_N, "S3Configuration", "EncryptionOption"),
            type = "string",
            name = "EncryptionOption",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "S3Configuration", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.MagneticStoreRejectedDataLocation = schema.new({
    id = id.from(_N, "MagneticStoreRejectedDataLocation"),
    type = "structure",
    members = {
        S3Configuration = schema.new({
            id = id.from(_N, "MagneticStoreRejectedDataLocation", "S3Configuration"),
            type = "structure",
            name = "S3Configuration",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
    },
})

M.MagneticStoreWriteProperties = schema.new({
    id = id.from(_N, "MagneticStoreWriteProperties"),
    type = "structure",
    members = {
        EnableMagneticStoreWrites = schema.new({
            id = id.from(_N, "MagneticStoreWriteProperties", "EnableMagneticStoreWrites"),
            type = "boolean",
            name = "EnableMagneticStoreWrites",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MagneticStoreRejectedDataLocation = schema.new({
            id = id.from(_N, "MagneticStoreWriteProperties", "MagneticStoreRejectedDataLocation"),
            type = "structure",
            name = "MagneticStoreRejectedDataLocation",
            target_id = id.from(_N, "MagneticStoreRejectedDataLocation"),
            target = M.MagneticStoreRejectedDataLocation,
        }),
    },
})

M.RetentionProperties = schema.new({
    id = id.from(_N, "RetentionProperties"),
    type = "structure",
    members = {
        MemoryStoreRetentionPeriodInHours = schema.new({
            id = id.from(_N, "RetentionProperties", "MemoryStoreRetentionPeriodInHours"),
            type = "long",
            name = "MemoryStoreRetentionPeriodInHours",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MagneticStoreRetentionPeriodInDays = schema.new({
            id = id.from(_N, "RetentionProperties", "MagneticStoreRetentionPeriodInDays"),
            type = "long",
            name = "MagneticStoreRetentionPeriodInDays",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PartitionKey = schema.new({
    id = id.from(_N, "PartitionKey"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "PartitionKey", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "PartitionKey", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        EnforcementInRecord = schema.new({
            id = id.from(_N, "PartitionKey", "EnforcementInRecord"),
            type = "string",
            name = "EnforcementInRecord",
            target_id = prelude.String.id,
        }),
    },
})

M.Schema = schema.new({
    id = id.from(_N, "Schema"),
    type = "structure",
    members = {
        CompositePartitionKey = schema.new({
            id = id.from(_N, "Schema", "CompositePartitionKey"),
            type = "list",
            name = "CompositePartitionKey",
            target_id = prelude.Document.id,
            list_member = M.PartitionKey,
        }),
    },
})

M.CreateTableInput = schema.new({
    id = id.from(_N, "CreateTableRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "CreateTableInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "CreateTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetentionProperties = schema.new({
            id = id.from(_N, "CreateTableInput", "RetentionProperties"),
            type = "structure",
            name = "RetentionProperties",
            target_id = id.from(_N, "RetentionProperties"),
            target = M.RetentionProperties,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTableInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        MagneticStoreWriteProperties = schema.new({
            id = id.from(_N, "CreateTableInput", "MagneticStoreWriteProperties"),
            type = "structure",
            name = "MagneticStoreWriteProperties",
            target_id = id.from(_N, "MagneticStoreWriteProperties"),
            target = M.MagneticStoreWriteProperties,
        }),
        Schema = schema.new({
            id = id.from(_N, "CreateTableInput", "Schema"),
            type = "structure",
            name = "Schema",
            target_id = id.from(_N, "Schema"),
            target = M.Schema,
        }),
    },
})

M.Table = schema.new({
    id = id.from(_N, "Table"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Table", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        TableName = schema.new({
            id = id.from(_N, "Table", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "Table", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        TableStatus = schema.new({
            id = id.from(_N, "Table", "TableStatus"),
            type = "string",
            name = "TableStatus",
            target_id = prelude.String.id,
        }),
        RetentionProperties = schema.new({
            id = id.from(_N, "Table", "RetentionProperties"),
            type = "structure",
            name = "RetentionProperties",
            target_id = id.from(_N, "RetentionProperties"),
            target = M.RetentionProperties,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "Table", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "Table", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        MagneticStoreWriteProperties = schema.new({
            id = id.from(_N, "Table", "MagneticStoreWriteProperties"),
            type = "structure",
            name = "MagneticStoreWriteProperties",
            target_id = id.from(_N, "MagneticStoreWriteProperties"),
            target = M.MagneticStoreWriteProperties,
        }),
        Schema = schema.new({
            id = id.from(_N, "Table", "Schema"),
            type = "structure",
            name = "Schema",
            target_id = id.from(_N, "Schema"),
            target = M.Schema,
        }),
    },
})

M.CreateTableOutput = schema.new({
    id = id.from(_N, "CreateTableResponse"),
    type = "structure",
    members = {
        Table = schema.new({
            id = id.from(_N, "CreateTableOutput", "Table"),
            type = "structure",
            name = "Table",
            target_id = id.from(_N, "Table"),
            target = M.Table,
        }),
    },
})

M.DeleteDatabaseInput = schema.new({
    id = id.from(_N, "DeleteDatabaseRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "DeleteDatabaseInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDatabaseOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteTableInput = schema.new({
    id = id.from(_N, "DeleteTableRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "DeleteTableInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "DeleteTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTableOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeBatchLoadTaskInput = schema.new({
    id = id.from(_N, "DescribeBatchLoadTaskRequest"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "DescribeBatchLoadTaskInput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBatchLoadTaskOutput = schema.new({
    id = id.from(_N, "DescribeBatchLoadTaskResponse"),
    type = "structure",
    members = {
        BatchLoadTaskDescription = schema.new({
            id = id.from(_N, "DescribeBatchLoadTaskOutput", "BatchLoadTaskDescription"),
            type = "structure",
            name = "BatchLoadTaskDescription",
            target_id = id.from(_N, "BatchLoadTaskDescription"),
            target = M.BatchLoadTaskDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDatabaseInput = schema.new({
    id = id.from(_N, "DescribeDatabaseRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "DescribeDatabaseInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDatabaseOutput = schema.new({
    id = id.from(_N, "DescribeDatabaseResponse"),
    type = "structure",
    members = {
        Database = schema.new({
            id = id.from(_N, "DescribeDatabaseOutput", "Database"),
            type = "structure",
            name = "Database",
            target_id = id.from(_N, "Database"),
            target = M.Database,
        }),
    },
})

M.DescribeEndpointsInput = schema.new({
    id = id.from(_N, "DescribeEndpointsRequest"),
    type = "structure",
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "Endpoint", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CachePeriodInMinutes = schema.new({
            id = id.from(_N, "Endpoint", "CachePeriodInMinutes"),
            type = "long",
            name = "CachePeriodInMinutes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeEndpointsOutput = schema.new({
    id = id.from(_N, "DescribeEndpointsResponse"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "DescribeEndpointsOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTableInput = schema.new({
    id = id.from(_N, "DescribeTableRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "DescribeTableInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "DescribeTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTableOutput = schema.new({
    id = id.from(_N, "DescribeTableResponse"),
    type = "structure",
    members = {
        Table = schema.new({
            id = id.from(_N, "DescribeTableOutput", "Table"),
            type = "structure",
            name = "Table",
            target_id = id.from(_N, "Table"),
            target = M.Table,
        }),
    },
})

M.Dimension = schema.new({
    id = id.from(_N, "Dimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Dimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Dimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DimensionValueType = schema.new({
            id = id.from(_N, "Dimension", "DimensionValueType"),
            type = "string",
            name = "DimensionValueType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchLoadTasksInput = schema.new({
    id = id.from(_N, "ListBatchLoadTasksRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListBatchLoadTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBatchLoadTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        TaskStatus = schema.new({
            id = id.from(_N, "ListBatchLoadTasksInput", "TaskStatus"),
            type = "string",
            name = "TaskStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchLoadTasksOutput = schema.new({
    id = id.from(_N, "ListBatchLoadTasksResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListBatchLoadTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        BatchLoadTasks = schema.new({
            id = id.from(_N, "ListBatchLoadTasksOutput", "BatchLoadTasks"),
            type = "list",
            name = "BatchLoadTasks",
            target_id = prelude.Document.id,
            list_member = M.BatchLoadTask,
        }),
    },
})

M.ListDatabasesInput = schema.new({
    id = id.from(_N, "ListDatabasesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDatabasesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDatabasesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDatabasesOutput = schema.new({
    id = id.from(_N, "ListDatabasesResponse"),
    type = "structure",
    members = {
        Databases = schema.new({
            id = id.from(_N, "ListDatabasesOutput", "Databases"),
            type = "list",
            name = "Databases",
            target_id = prelude.Document.id,
            list_member = M.Database,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatabasesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTablesInput = schema.new({
    id = id.from(_N, "ListTablesRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "ListTablesInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTablesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTablesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTablesOutput = schema.new({
    id = id.from(_N, "ListTablesResponse"),
    type = "structure",
    members = {
        Tables = schema.new({
            id = id.from(_N, "ListTablesOutput", "Tables"),
            type = "list",
            name = "Tables",
            target_id = prelude.Document.id,
            list_member = M.Table,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTablesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.MeasureValue = schema.new({
    id = id.from(_N, "MeasureValue"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "MeasureValue", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "MeasureValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "MeasureValue", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Record = schema.new({
    id = id.from(_N, "Record"),
    type = "structure",
    members = {
        Dimensions = schema.new({
            id = id.from(_N, "Record", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.Dimension,
        }),
        MeasureName = schema.new({
            id = id.from(_N, "Record", "MeasureName"),
            type = "string",
            name = "MeasureName",
            target_id = prelude.String.id,
        }),
        MeasureValue = schema.new({
            id = id.from(_N, "Record", "MeasureValue"),
            type = "string",
            name = "MeasureValue",
            target_id = prelude.String.id,
        }),
        MeasureValueType = schema.new({
            id = id.from(_N, "Record", "MeasureValueType"),
            type = "string",
            name = "MeasureValueType",
            target_id = prelude.String.id,
        }),
        Time = schema.new({
            id = id.from(_N, "Record", "Time"),
            type = "string",
            name = "Time",
            target_id = prelude.String.id,
        }),
        TimeUnit = schema.new({
            id = id.from(_N, "Record", "TimeUnit"),
            type = "string",
            name = "TimeUnit",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "Record", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MeasureValues = schema.new({
            id = id.from(_N, "Record", "MeasureValues"),
            type = "list",
            name = "MeasureValues",
            target_id = prelude.Document.id,
            list_member = M.MeasureValue,
        }),
    },
})

M.RecordsIngested = schema.new({
    id = id.from(_N, "RecordsIngested"),
    type = "structure",
    members = {
        Total = schema.new({
            id = id.from(_N, "RecordsIngested", "Total"),
            type = "integer",
            name = "Total",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MemoryStore = schema.new({
            id = id.from(_N, "RecordsIngested", "MemoryStore"),
            type = "integer",
            name = "MemoryStore",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MagneticStore = schema.new({
            id = id.from(_N, "RecordsIngested", "MagneticStore"),
            type = "integer",
            name = "MagneticStore",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RejectedRecord = schema.new({
    id = id.from(_N, "RejectedRecord"),
    type = "structure",
    members = {
        RecordIndex = schema.new({
            id = id.from(_N, "RejectedRecord", "RecordIndex"),
            type = "integer",
            name = "RecordIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "RejectedRecord", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        ExistingVersion = schema.new({
            id = id.from(_N, "RejectedRecord", "ExistingVersion"),
            type = "long",
            name = "ExistingVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RejectedRecordsException = schema.new({
    id = id.from(_N, "RejectedRecordsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RejectedRecordsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        RejectedRecords = schema.new({
            id = id.from(_N, "RejectedRecordsException", "RejectedRecords"),
            type = "list",
            name = "RejectedRecords",
            target_id = prelude.Document.id,
            list_member = M.RejectedRecord,
        }),
    },
})

M.ResumeBatchLoadTaskInput = schema.new({
    id = id.from(_N, "ResumeBatchLoadTaskRequest"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "ResumeBatchLoadTaskInput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResumeBatchLoadTaskOutput = schema.new({
    id = id.from(_N, "ResumeBatchLoadTaskResponse"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateDatabaseInput = schema.new({
    id = id.from(_N, "UpdateDatabaseRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "UpdateDatabaseInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "UpdateDatabaseInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDatabaseOutput = schema.new({
    id = id.from(_N, "UpdateDatabaseResponse"),
    type = "structure",
    members = {
        Database = schema.new({
            id = id.from(_N, "UpdateDatabaseOutput", "Database"),
            type = "structure",
            name = "Database",
            target_id = id.from(_N, "Database"),
            target = M.Database,
        }),
    },
})

M.UpdateTableInput = schema.new({
    id = id.from(_N, "UpdateTableRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "UpdateTableInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "UpdateTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetentionProperties = schema.new({
            id = id.from(_N, "UpdateTableInput", "RetentionProperties"),
            type = "structure",
            name = "RetentionProperties",
            target_id = id.from(_N, "RetentionProperties"),
            target = M.RetentionProperties,
        }),
        MagneticStoreWriteProperties = schema.new({
            id = id.from(_N, "UpdateTableInput", "MagneticStoreWriteProperties"),
            type = "structure",
            name = "MagneticStoreWriteProperties",
            target_id = id.from(_N, "MagneticStoreWriteProperties"),
            target = M.MagneticStoreWriteProperties,
        }),
        Schema = schema.new({
            id = id.from(_N, "UpdateTableInput", "Schema"),
            type = "structure",
            name = "Schema",
            target_id = id.from(_N, "Schema"),
            target = M.Schema,
        }),
    },
})

M.UpdateTableOutput = schema.new({
    id = id.from(_N, "UpdateTableResponse"),
    type = "structure",
    members = {
        Table = schema.new({
            id = id.from(_N, "UpdateTableOutput", "Table"),
            type = "structure",
            name = "Table",
            target_id = id.from(_N, "Table"),
            target = M.Table,
        }),
    },
})

M.WriteRecordsInput = schema.new({
    id = id.from(_N, "WriteRecordsRequest"),
    type = "structure",
    members = {
        DatabaseName = schema.new({
            id = id.from(_N, "WriteRecordsInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "WriteRecordsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CommonAttributes = schema.new({
            id = id.from(_N, "WriteRecordsInput", "CommonAttributes"),
            type = "structure",
            name = "CommonAttributes",
            target_id = id.from(_N, "Record"),
            target = M.Record,
        }),
        Records = schema.new({
            id = id.from(_N, "WriteRecordsInput", "Records"),
            type = "list",
            name = "Records",
            target_id = prelude.Document.id,
            list_member = M.Record,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WriteRecordsOutput = schema.new({
    id = id.from(_N, "WriteRecordsResponse"),
    type = "structure",
    members = {
        RecordsIngested = schema.new({
            id = id.from(_N, "WriteRecordsOutput", "RecordsIngested"),
            type = "structure",
            name = "RecordsIngested",
            target_id = id.from(_N, "RecordsIngested"),
            target = M.RecordsIngested,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
