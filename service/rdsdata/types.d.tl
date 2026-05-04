local record BatchExecuteStatementInput
    resourceArn: string
    secretArn: string
    sql: string
    database: string
    schema: string
    parameterSets: {{SqlParameter}}
    transactionId: string
end

local record BatchExecuteStatementOutput
    updateResults: {UpdateResult}
end

local record BeginTransactionInput
    resourceArn: string
    secretArn: string
    database: string
    schema: string
end

local record BeginTransactionOutput
    transactionId: string
end

local record CommitTransactionInput
    resourceArn: string
    secretArn: string
    transactionId: string
end

local record CommitTransactionOutput
    transactionStatus: string
end

local record ExecuteSqlInput
    dbClusterOrInstanceArn: string
    awsSecretStoreArn: string
    sqlStatements: string
    database: string
    schema: string
end

local record ExecuteSqlOutput
    sqlStatementResults: {SqlStatementResult}
end

local record ExecuteStatementInput
    resourceArn: string
    secretArn: string
    sql: string
    database: string
    schema: string
    parameters: {SqlParameter}
    transactionId: string
    includeResultMetadata: boolean
    continueAfterTimeout: boolean
    resultSetOptions: ResultSetOptions
    formatRecordsAs: string
end

local record ExecuteStatementOutput
    records: {{Field}}
    columnMetadata: {ColumnMetadata}
    numberOfRecordsUpdated: number
    generatedFields: {Field}
    formattedRecords: string
end

local record RollbackTransactionInput
    resourceArn: string
    secretArn: string
    transactionId: string
end

local record RollbackTransactionOutput
    transactionStatus: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record DatabaseErrorException
    message: string
end

local record DatabaseNotFoundException
    message: string
end

local record DatabaseResumingException
    message: string
end

local record DatabaseUnavailableException
end

local record ForbiddenException
    message: string
end

local record HttpEndpointNotEnabledException
    message: string
end

local record InternalServerErrorException
end

local record InvalidResourceStateException
    message: string
end

local record InvalidSecretException
    message: string
end

local record SecretsErrorException
    message: string
end

local record ServiceUnavailableError
end

local record StatementTimeoutException
    message: string
    dbConnectionId: number
end

local record TransactionNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record DatabaseErrorException
    message: string
end

local record DatabaseNotFoundException
    message: string
end

local record DatabaseResumingException
    message: string
end

local record DatabaseUnavailableException
end

local record ForbiddenException
    message: string
end

local record HttpEndpointNotEnabledException
    message: string
end

local record InternalServerErrorException
end

local record InvalidResourceStateException
    message: string
end

local record InvalidSecretException
    message: string
end

local record SecretsErrorException
    message: string
end

local record ServiceUnavailableError
end

local record StatementTimeoutException
    message: string
    dbConnectionId: number
end

local record TransactionNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record DatabaseErrorException
    message: string
end

local record DatabaseNotFoundException
    message: string
end

local record DatabaseUnavailableException
end

local record ForbiddenException
    message: string
end

local record HttpEndpointNotEnabledException
    message: string
end

local record InternalServerErrorException
end

local record InvalidResourceStateException
    message: string
end

local record InvalidSecretException
    message: string
end

local record NotFoundException
    message: string
end

local record SecretsErrorException
    message: string
end

local record ServiceUnavailableError
end

local record StatementTimeoutException
    message: string
    dbConnectionId: number
end

local record TransactionNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
end

local record ServiceUnavailableError
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record DatabaseErrorException
    message: string
end

local record DatabaseNotFoundException
    message: string
end

local record DatabaseResumingException
    message: string
end

local record DatabaseUnavailableException
end

local record ForbiddenException
    message: string
end

local record HttpEndpointNotEnabledException
    message: string
end

local record InternalServerErrorException
end

local record InvalidResourceStateException
    message: string
end

local record InvalidSecretException
    message: string
end

local record SecretsErrorException
    message: string
end

local record ServiceUnavailableError
end

local record StatementTimeoutException
    message: string
    dbConnectionId: number
end

local record TransactionNotFoundException
    message: string
end

local record UnsupportedResultException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record DatabaseErrorException
    message: string
end

local record DatabaseNotFoundException
    message: string
end

local record DatabaseUnavailableException
end

local record ForbiddenException
    message: string
end

local record HttpEndpointNotEnabledException
    message: string
end

local record InternalServerErrorException
end

local record InvalidResourceStateException
    message: string
end

local record InvalidSecretException
    message: string
end

local record NotFoundException
    message: string
end

local record SecretsErrorException
    message: string
end

local record ServiceUnavailableError
end

local record StatementTimeoutException
    message: string
    dbConnectionId: number
end

local record TransactionNotFoundException
    message: string
end

local record M
    BatchExecuteStatementInput: BatchExecuteStatementInput
    BatchExecuteStatementOutput: BatchExecuteStatementOutput
    BeginTransactionInput: BeginTransactionInput
    BeginTransactionOutput: BeginTransactionOutput
    CommitTransactionInput: CommitTransactionInput
    CommitTransactionOutput: CommitTransactionOutput
    ExecuteSqlInput: ExecuteSqlInput
    ExecuteSqlOutput: ExecuteSqlOutput
    ExecuteStatementInput: ExecuteStatementInput
    ExecuteStatementOutput: ExecuteStatementOutput
    RollbackTransactionInput: RollbackTransactionInput
    RollbackTransactionOutput: RollbackTransactionOutput
end

return M
