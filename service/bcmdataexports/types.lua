local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataQuery = {
    type = "structure",
    id = "DataQuery",
    members = {
        QueryStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableConfigurations = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.CompressionOption = {
    GZIP = "GZIP",
    PARQUET = "PARQUET",
}

M.FormatOption = {
    TEXT_OR_CSV = "TEXT_OR_CSV",
    PARQUET = "PARQUET",
}

M.S3OutputType = {
    CUSTOM = "CUSTOM",
}

M.OverwriteOption = {
    CREATE_NEW_REPORT = "CREATE_NEW_REPORT",
    OVERWRITE_REPORT = "OVERWRITE_REPORT",
}

M.S3OutputConfigurations = {
    type = "structure",
    id = "S3OutputConfigurations",
    members = {
        OutputType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Overwrite = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Destination = {
    type = "structure",
    id = "S3Destination",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketOwner = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3OutputConfigurations = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3OutputConfigurations }),
    },
}

M.DestinationConfigurations = {
    type = "structure",
    id = "DestinationConfigurations",
    members = {
        S3Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Destination }),
    },
}

M.FrequencyOption = {
    SYNCHRONOUS = "SYNCHRONOUS",
}

M.RefreshCadence = {
    type = "structure",
    id = "RefreshCadence",
    members = {
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Export = {
    type = "structure",
    id = "Export",
    members = {
        ExportArn = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DataQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataQuery }),
        DestinationConfigurations = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfigurations }),
        RefreshCadence = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RefreshCadence }),
    },
}

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExportInput = {
    type = "structure",
    id = "CreateExportInput",
    members = {
        Export = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Export }),
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CreateExportOutput = {
    type = "structure",
    id = "CreateExportOutput",
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteExportInput = {
    type = "structure",
    id = "DeleteExportInput",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExportOutput = {
    type = "structure",
    id = "DeleteExportOutput",
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetExportInput = {
    type = "structure",
    id = "GetExportInput",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportStatusCode = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.ExecutionStatusReason = {
    INSUFFICIENT_PERMISSION = "INSUFFICIENT_PERMISSION",
    BILL_OWNER_CHANGED = "BILL_OWNER_CHANGED",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.ExportStatus = {
    type = "structure",
    id = "ExportStatus",
    members = {
        StatusCode = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastRefreshedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetExportOutput = {
    type = "structure",
    id = "GetExportOutput",
    members = {
        Export = M.Export,
        ExportStatus = M.ExportStatus,
    },
}

M.ListExportsInput = {
    type = "structure",
    id = "ListExportsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExportReference = {
    type = "structure",
    id = "ExportReference",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportStatus }),
    },
}

M.ListExportsOutput = {
    type = "structure",
    id = "ListExportsOutput",
    members = {
        Exports = {
            type = "list",
            member = M.ExportReference,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateExportInput = {
    type = "structure",
    id = "UpdateExportInput",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Export = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Export }),
    },
}

M.UpdateExportOutput = {
    type = "structure",
    id = "UpdateExportOutput",
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.GetExecutionInput = {
    type = "structure",
    id = "GetExecutionInput",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStatusCode = {
    INITIATION_IN_PROCESS = "INITIATION_IN_PROCESS",
    QUERY_QUEUED = "QUERY_QUEUED",
    QUERY_IN_PROCESS = "QUERY_IN_PROCESS",
    QUERY_FAILURE = "QUERY_FAILURE",
    DELIVERY_IN_PROCESS = "DELIVERY_IN_PROCESS",
    DELIVERY_SUCCESS = "DELIVERY_SUCCESS",
    DELIVERY_FAILURE = "DELIVERY_FAILURE",
}

M.ExecutionStatus = {
    type = "structure",
    id = "ExecutionStatus",
    members = {
        StatusCode = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CompletedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetExecutionOutput = {
    type = "structure",
    id = "GetExecutionOutput",
    members = {
        ExecutionId = {
            type = "string",
        },
        Export = M.Export,
        ExecutionStatus = M.ExecutionStatus,
    },
}

M.GetTableInput = {
    type = "structure",
    id = "GetTableInput",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Column = {
    type = "structure",
    id = "Column",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.GetTableOutput = {
    type = "structure",
    id = "GetTableOutput",
    members = {
        TableName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TableProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Schema = {
            type = "list",
            member = M.Column,
        },
    },
}

M.ListExecutionsInput = {
    type = "structure",
    id = "ListExecutionsInput",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecutionReference = {
    type = "structure",
    id = "ExecutionReference",
    members = {
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionStatus }),
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    id = "ListExecutionsOutput",
    members = {
        Executions = {
            type = "list",
            member = M.ExecutionReference,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    id = "ListTablesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.TablePropertyDescription = {
    type = "structure",
    id = "TablePropertyDescription",
    members = {
        Name = {
            type = "string",
        },
        ValidValues = {
            type = "list",
            member = { type = "string" },
        },
        DefaultValue = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.Table = {
    type = "structure",
    id = "Table",
    members = {
        TableName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TableProperties = {
            type = "list",
            member = M.TablePropertyDescription,
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    id = "ListTablesOutput",
    members = {
        Tables = {
            type = "list",
            member = M.Table,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
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
