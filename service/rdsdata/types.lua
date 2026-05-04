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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseResumingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DatabaseUnavailableException = {
    type = "structure",
    error = "server",
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

M.HttpEndpointNotEnabledException = {
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
}

M.InvalidResourceStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSecretException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SecretsErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableError = {
    type = "structure",
    error = "server",
}

M.StatementTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        dbConnectionId = {
            type = "number",
        },
    },
}

M.TransactionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BeginTransactionInput = {
    type = "structure",
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
    members = {
        transactionId = {
            type = "string",
        },
    },
}

M.ColumnMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "number",
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
        },
        isSigned = {
            type = "boolean",
        },
        isCurrency = {
            type = "boolean",
        },
        isCaseSensitive = {
            type = "boolean",
        },
        nullable = {
            type = "number",
        },
        precision = {
            type = "number",
        },
        scale = {
            type = "number",
        },
        arrayBaseColumnType = {
            type = "number",
        },
    },
}

M.CommitTransactionInput = {
    type = "structure",
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
    members = {
        transactionStatus = {
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

M.DecimalReturnType = {
    STRING = "STRING",
    DOUBLE_OR_LONG = "DOUBLE_OR_LONG",
}

M.ExecuteSqlInput = {
    type = "structure",
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
    members = {
        columnCount = {
            type = "number",
        },
        columnMetadata = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RollbackTransactionInput = {
    type = "structure",
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
    members = {
        transactionStatus = {
            type = "string",
        },
    },
}

M.ArrayValue = {
    type = "union",
    members = {
        booleanValues = {
            type = "list",
            member_type = "boolean",
        },
        longValues = {
            type = "list",
            member_type = "number",
        },
        doubleValues = {
            type = "list",
            member_type = "number",
        },
        stringValues = {
            type = "list",
            member_type = "string",
        },
        arrayValues = {
            type = "list",
            member_type = "union",
        },
    },
}

M.Field = {
    type = "union",
    members = {
        isNull = {
            type = "boolean",
        },
        booleanValue = {
            type = "boolean",
        },
        longValue = {
            type = "number",
        },
        doubleValue = {
            type = "number",
        },
        stringValue = {
            type = "string",
        },
        blobValue = {
            type = "blob",
        },
        arrayValue = {
            type = "union",
        },
    },
}

M.SqlParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "union",
        },
        typeHint = {
            type = "string",
        },
    },
}

M.UpdateResult = {
    type = "structure",
    members = {
        generatedFields = {
            type = "list",
            member_type = "union",
        },
    },
}

M.Value = {
    type = "union",
    members = {
        isNull = {
            type = "boolean",
        },
        bitValue = {
            type = "boolean",
        },
        bigIntValue = {
            type = "number",
        },
        intValue = {
            type = "number",
        },
        doubleValue = {
            type = "number",
        },
        realValue = {
            type = "number",
        },
        stringValue = {
            type = "string",
        },
        blobValue = {
            type = "blob",
        },
        arrayValues = {
            type = "list",
            member_type = "union",
        },
        structValue = {
            type = "structure",
        },
    },
}

M.ExecuteStatementInput = {
    type = "structure",
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
            member_type = "structure",
        },
        transactionId = {
            type = "string",
        },
        includeResultMetadata = {
            type = "boolean",
        },
        continueAfterTimeout = {
            type = "boolean",
        },
        resultSetOptions = {
            type = "structure",
        },
        formatRecordsAs = {
            type = "string",
        },
    },
}

M.StructValue = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "union",
        },
    },
}

M.BatchExecuteStatementInput = {
    type = "structure",
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
            member_type = "list",
        },
        transactionId = {
            type = "string",
        },
    },
}

M.BatchExecuteStatementOutput = {
    type = "structure",
    members = {
        updateResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        values = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
    members = {
        records = {
            type = "list",
            member_type = "list",
        },
        columnMetadata = {
            type = "list",
            member_type = "structure",
        },
        numberOfRecordsUpdated = {
            type = "number",
        },
        generatedFields = {
            type = "list",
            member_type = "union",
        },
        formattedRecords = {
            type = "string",
        },
    },
}

M.ResultFrame = {
    type = "structure",
    members = {
        resultSetMetadata = {
            type = "structure",
        },
        records = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SqlStatementResult = {
    type = "structure",
    members = {
        resultFrame = {
            type = "structure",
        },
        numberOfRecordsUpdated = {
            type = "number",
        },
    },
}

M.ExecuteSqlOutput = {
    type = "structure",
    members = {
        sqlStatementResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
