local M = {}

M.ActiveSessionsExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActiveStatementsExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchExecuteStatementException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SqlParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResultFormatString = {
    JSON = "JSON",
    CSV = "CSV",
}

M.BatchExecuteStatementInput = {
    type = "structure",
    members = {
        Sqls = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        WithEvent = {
            type = "boolean",
        },
        StatementName = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.SqlParameter,
        },
        WorkgroupName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ResultFormat = {
            type = "string",
        },
        SessionKeepAliveSeconds = {
            type = "integer",
        },
        SessionId = {
            type = "string",
        },
    },
}

M.BatchExecuteStatementOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ClusterIdentifier = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        DbGroups = {
            type = "list",
            member = { type = "string" },
        },
        Database = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        WorkgroupName = {
            type = "string",
        },
        SessionId = {
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
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelStatementInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelStatementOutput = {
    type = "structure",
    members = {
        Status = {
            type = "boolean",
        },
    },
}

M.DatabaseConnectionException = {
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

M.QueryTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ColumnMetadata = {
    type = "structure",
    members = {
        isCaseSensitive = {
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
        isSigned = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        label = {
            type = "string",
        },
        name = {
            type = "string",
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
        schemaName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        typeName = {
            type = "string",
        },
        length = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        columnDefault = {
            type = "string",
        },
    },
}

M.DescribeStatementInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatusString = {
    SUBMITTED = "SUBMITTED",
    PICKED = "PICKED",
    STARTED = "STARTED",
    FINISHED = "FINISHED",
    ABORTED = "ABORTED",
    FAILED = "FAILED",
    ALL = "ALL",
}

M.StatementStatusString = {
    SUBMITTED = "SUBMITTED",
    PICKED = "PICKED",
    STARTED = "STARTED",
    FINISHED = "FINISHED",
    ABORTED = "ABORTED",
    FAILED = "FAILED",
}

M.SubStatementData = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Error = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        QueryString = {
            type = "string",
        },
        ResultRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ResultSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        RedshiftQueryId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HasResultSet = {
            type = "boolean",
        },
    },
}

M.DescribeStatementOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        Duration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Error = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RedshiftPid = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        HasResultSet = {
            type = "boolean",
        },
        QueryString = {
            type = "string",
        },
        ResultRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ResultSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        RedshiftQueryId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        QueryParameters = {
            type = "list",
            member = M.SqlParameter,
        },
        SubStatements = {
            type = "list",
            member = M.SubStatementData,
        },
        WorkgroupName = {
            type = "string",
        },
        ResultFormat = {
            type = "string",
        },
        SessionId = {
            type = "string",
        },
    },
}

M.DescribeTableInput = {
    type = "structure",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectedDatabase = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkgroupName = {
            type = "string",
        },
    },
}

M.DescribeTableOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        ColumnList = {
            type = "list",
            member = M.ColumnMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecuteStatementException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteStatementInput = {
    type = "structure",
    members = {
        Sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterIdentifier = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        WithEvent = {
            type = "boolean",
        },
        StatementName = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.SqlParameter,
        },
        WorkgroupName = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ResultFormat = {
            type = "string",
        },
        SessionKeepAliveSeconds = {
            type = "integer",
        },
        SessionId = {
            type = "string",
        },
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ClusterIdentifier = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        DbGroups = {
            type = "list",
            member = { type = "string" },
        },
        Database = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        WorkgroupName = {
            type = "string",
        },
        SessionId = {
            type = "string",
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
    },
}

M.QueryRecords = {
    type = "union",
    members = {
        CSVRecords = {
            type = "string",
        },
    },
}

M.GetStatementResultInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetStatementResultOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        ColumnMetadata = {
            type = "list",
            member = M.ColumnMetadata,
        },
        TotalNumRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetStatementResultV2Input = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetStatementResultV2Output = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member = M.QueryRecords,
            traits = {
                required = true,
            },
        },
        ColumnMetadata = {
            type = "list",
            member = M.ColumnMetadata,
        },
        TotalNumRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ResultFormat = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDatabasesInput = {
    type = "structure",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkgroupName = {
            type = "string",
        },
    },
}

M.ListDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectedDatabase = {
            type = "string",
        },
        SchemaPattern = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkgroupName = {
            type = "string",
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    members = {
        Schemas = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStatementsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StatementName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        RoleLevel = {
            type = "boolean",
        },
        Database = {
            type = "string",
        },
        ClusterIdentifier = {
            type = "string",
        },
        WorkgroupName = {
            type = "string",
        },
    },
}

M.StatementData = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
        },
        QueryStrings = {
            type = "list",
            member = { type = "string" },
        },
        SecretArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatementName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        QueryParameters = {
            type = "list",
            member = M.SqlParameter,
        },
        IsBatchStatement = {
            type = "boolean",
        },
        ResultFormat = {
            type = "string",
        },
        SessionId = {
            type = "string",
        },
    },
}

M.ListStatementsOutput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.StatementData,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    members = {
        ClusterIdentifier = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        DbUser = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectedDatabase = {
            type = "string",
        },
        SchemaPattern = {
            type = "string",
        },
        TablePattern = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkgroupName = {
            type = "string",
        },
    },
}

M.TableMember = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        schema = {
            type = "string",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        Tables = {
            type = "list",
            member = M.TableMember,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
