local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        QueryStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableConfigurations = {
            type = "map",
            key_type = "string",
            value_type = "map",
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
        S3OutputConfigurations = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationConfigurations = {
    type = "structure",
    members = {
        S3Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FrequencyOption = {
    SYNCHRONOUS = "SYNCHRONOUS",
}

M.RefreshCadence = {
    type = "structure",
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
        DataQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DestinationConfigurations = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RefreshCadence = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTag = {
    type = "structure",
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
    members = {
        Export = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateExportOutput = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DeleteExportInput = {
    type = "structure",
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
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        Export = {
            type = "structure",
        },
        ExportStatus = {
            type = "structure",
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExportReference = {
    type = "structure",
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
        ExportStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    members = {
        Exports = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateExportInput = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Export = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateExportOutput = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
        },
    },
}

M.GetExecutionInput = {
    type = "structure",
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
    members = {
        ExecutionId = {
            type = "string",
        },
        Export = {
            type = "structure",
        },
        ExecutionStatus = {
            type = "structure",
        },
    },
}

M.GetTableInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Column = {
    type = "structure",
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
    members = {
        TableName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TableProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Schema = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListExecutionsInput = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecutionReference = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    members = {
        Executions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.TablePropertyDescription = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ValidValues = {
            type = "list",
            member_type = "string",
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
    members = {
        TableName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        TableProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        Tables = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
