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

M.TypeHint = {
    JSON = "JSON",
    UUID = "UUID",
    TIMESTAMP = "TIMESTAMP",
    DATE = "DATE",
    TIME = "TIME",
    DECIMAL = "DECIMAL",
}

M.DatabaseErrorException = {
    type = "structure",
    id = "DatabaseErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseNotFoundException = {
    type = "structure",
    id = "DatabaseNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseResumingException = {
    type = "structure",
    id = "DatabaseResumingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseUnavailableException = {
    type = "structure",
    id = "DatabaseUnavailableException",
    error = "server",
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

M.HttpEndpointNotEnabledException = {
    type = "structure",
    id = "HttpEndpointNotEnabledException",
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
}

M.InvalidResourceStateException = {
    type = "structure",
    id = "InvalidResourceStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSecretException = {
    type = "structure",
    id = "InvalidSecretException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SecretsErrorException = {
    type = "structure",
    id = "SecretsErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableError = {
    type = "structure",
    id = "ServiceUnavailableError",
    error = "server",
}

M.StatementTimeoutException = {
    type = "structure",
    id = "StatementTimeoutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        dbConnectionId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.TransactionNotFoundException = {
    type = "structure",
    id = "TransactionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BeginTransactionInput = {
    type = "structure",
    id = "BeginTransactionInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        database = {
            type = "string",
        },
        schema = {
            type = "string",
        },
    },
}

M.BeginTransactionOutput = {
    type = "structure",
    id = "BeginTransactionOutput",
    members = {
        transactionId = {
            type = "string",
        },
    },
}

M.ColumnMetadata = {
    type = "structure",
    id = "ColumnMetadata",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        typeName = {
            type = "string",
        },
        label = {
            type = "string",
        },
        schemaName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        isAutoIncrement = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isSigned = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isCurrency = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        isCaseSensitive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        nullable = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        precision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        scale = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        arrayBaseColumnType = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CommitTransactionInput = {
    type = "structure",
    id = "CommitTransactionInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CommitTransactionOutput = {
    type = "structure",
    id = "CommitTransactionOutput",
    members = {
        transactionStatus = {
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

M.DecimalReturnType = {
    STRING = "STRING",
    DOUBLE_OR_LONG = "DOUBLE_OR_LONG",
}

M.ExecuteSqlInput = {
    type = "structure",
    id = "ExecuteSqlInput",
    members = {
        dbClusterOrInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsSecretStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sqlStatements = {
            type = "string",
            traits = {
                required = true,
            },
        },
        database = {
            type = "string",
        },
        schema = {
            type = "string",
        },
    },
}

M.ResultSetMetadata = {
    type = "structure",
    id = "ResultSetMetadata",
    members = {
        columnCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        columnMetadata = {
            type = "list",
            member = M.ColumnMetadata,
        },
    },
}

M.RecordsFormatType = {
    NONE = "NONE",
    JSON = "JSON",
}

M.LongReturnType = {
    STRING = "STRING",
    LONG = "LONG",
}

M.ResultSetOptions = {
    type = "structure",
    id = "ResultSetOptions",
    members = {
        decimalReturnType = {
            type = "string",
        },
        longReturnType = {
            type = "string",
        },
    },
}

M.UnsupportedResultException = {
    type = "structure",
    id = "UnsupportedResultException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackTransactionInput = {
    type = "structure",
    id = "RollbackTransactionInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RollbackTransactionOutput = {
    type = "structure",
    id = "RollbackTransactionOutput",
    members = {
        transactionStatus = {
            type = "string",
        },
    },
}

M.ArrayValue = {
    type = "union",
    id = "ArrayValue",
    members = {
        booleanValues = {
            type = "list",
            member = { type = "boolean" },
        },
        longValues = {
            type = "list",
            member = { type = "long" },
        },
        doubleValues = {
            type = "list",
            member = { type = "double" },
        },
        stringValues = {
            type = "list",
            member = { type = "string" },
        },
        arrayValues = {
            type = "list",
            member = M.ArrayValue,
        },
    },
}

M.Field = {
    type = "union",
    id = "Field",
    members = {
        isNull = {
            type = "boolean",
        },
        booleanValue = {
            type = "boolean",
        },
        longValue = {
            type = "long",
        },
        doubleValue = {
            type = "double",
        },
        stringValue = {
            type = "string",
        },
        blobValue = {
            type = "blob",
        },
        arrayValue = M.ArrayValue,
    },
}

M.SqlParameter = {
    type = "structure",
    id = "SqlParameter",
    members = {
        name = {
            type = "string",
        },
        value = M.Field,
        typeHint = {
            type = "string",
        },
    },
}

M.UpdateResult = {
    type = "structure",
    id = "UpdateResult",
    members = {
        generatedFields = {
            type = "list",
            member = M.Field,
        },
    },
}

M.Value = {
    type = "union",
    id = "Value",
    members = {
        isNull = {
            type = "boolean",
        },
        bitValue = {
            type = "boolean",
        },
        bigIntValue = {
            type = "long",
        },
        intValue = {
            type = "integer",
        },
        doubleValue = {
            type = "double",
        },
        realValue = {
            type = "float",
        },
        stringValue = {
            type = "string",
        },
        blobValue = {
            type = "blob",
        },
        arrayValues = {
            type = "list",
            member = M.Value,
        },
        structValue = M.StructValue,
    },
}

M.ExecuteStatementInput = {
    type = "structure",
    id = "ExecuteStatementInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
        database = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        parameters = {
            type = "list",
            member = M.SqlParameter,
        },
        transactionId = {
            type = "string",
        },
        includeResultMetadata = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        continueAfterTimeout = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        resultSetOptions = M.ResultSetOptions,
        formatRecordsAs = {
            type = "string",
        },
    },
}

M.StructValue = {
    type = "structure",
    id = "StructValue",
    members = {
        attributes = {
            type = "list",
            member = M.Value,
        },
    },
}

M.BatchExecuteStatementInput = {
    type = "structure",
    id = "BatchExecuteStatementInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
        database = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        parameterSets = {
            type = "list",
            member = { type = "list" },
        },
        transactionId = {
            type = "string",
        },
    },
}

M.BatchExecuteStatementOutput = {
    type = "structure",
    id = "BatchExecuteStatementOutput",
    members = {
        updateResults = {
            type = "list",
            member = M.UpdateResult,
        },
    },
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        values = {
            type = "list",
            member = M.Value,
        },
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
    id = "ExecuteStatementOutput",
    members = {
        records = {
            type = "list",
            member = { type = "list" },
        },
        columnMetadata = {
            type = "list",
            member = M.ColumnMetadata,
        },
        numberOfRecordsUpdated = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        generatedFields = {
            type = "list",
            member = M.Field,
        },
        formattedRecords = {
            type = "string",
        },
    },
}

M.ResultFrame = {
    type = "structure",
    id = "ResultFrame",
    members = {
        resultSetMetadata = M.ResultSetMetadata,
        records = {
            type = "list",
            member = M.Record,
        },
    },
}

M.SqlStatementResult = {
    type = "structure",
    id = "SqlStatementResult",
    members = {
        resultFrame = M.ResultFrame,
        numberOfRecordsUpdated = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ExecuteSqlOutput = {
    type = "structure",
    id = "ExecuteSqlOutput",
    members = {
        sqlStatementResults = {
            type = "list",
            member = M.SqlStatementResult,
        },
    },
}

return M
