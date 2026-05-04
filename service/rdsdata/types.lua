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
            type = "long",
            traits = {
                default = 0,
            },
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
    members = {
        generatedFields = {
            type = "list",
            member = M.Field,
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
    members = {
        attributes = {
            type = "list",
            member = M.Value,
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
            member = { type = "list" },
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
            member = M.UpdateResult,
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        values = {
            type = "list",
            member = M.Value,
        },
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
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
    members = {
        sqlStatementResults = {
            type = "list",
            member = M.SqlStatementResult,
        },
    },
}

return M
