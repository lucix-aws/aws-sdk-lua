local M = {}

M.S3AclOption = {
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
}

M.AclConfiguration = {
    type = "structure",
    id = "AclConfiguration",
    members = {
        S3AclOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetNamedQueryInput = {
    type = "structure",
    id = "BatchGetNamedQueryInput",
    members = {
        NamedQueryIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NamedQuery = {
    type = "structure",
    id = "NamedQuery",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NamedQueryId = {
            type = "string",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.UnprocessedNamedQueryId = {
    type = "structure",
    id = "UnprocessedNamedQueryId",
    members = {
        NamedQueryId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchGetNamedQueryOutput = {
    type = "structure",
    id = "BatchGetNamedQueryOutput",
    members = {
        NamedQueries = {
            type = "list",
            member = M.NamedQuery,
        },
        UnprocessedNamedQueryIds = {
            type = "list",
            member = M.UnprocessedNamedQueryId,
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
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        AthenaErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.BatchGetPreparedStatementInput = {
    type = "structure",
    id = "BatchGetPreparedStatementInput",
    members = {
        PreparedStatementNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PreparedStatement = {
    type = "structure",
    id = "PreparedStatement",
    members = {
        StatementName = {
            type = "string",
        },
        QueryStatement = {
            type = "string",
        },
        WorkGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.UnprocessedPreparedStatementName = {
    type = "structure",
    id = "UnprocessedPreparedStatementName",
    members = {
        StatementName = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchGetPreparedStatementOutput = {
    type = "structure",
    id = "BatchGetPreparedStatementOutput",
    members = {
        PreparedStatements = {
            type = "list",
            member = M.PreparedStatement,
        },
        UnprocessedPreparedStatementNames = {
            type = "list",
            member = M.UnprocessedPreparedStatementName,
        },
    },
}

M.BatchGetQueryExecutionInput = {
    type = "structure",
    id = "BatchGetQueryExecutionInput",
    members = {
        QueryExecutionIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EngineVersion = {
    type = "structure",
    id = "EngineVersion",
    members = {
        SelectedEngineVersion = {
            type = "string",
        },
        EffectiveEngineVersion = {
            type = "string",
        },
    },
}

M.ManagedQueryResultsEncryptionConfiguration = {
    type = "structure",
    id = "ManagedQueryResultsEncryptionConfiguration",
    members = {
        KmsKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedQueryResultsConfiguration = {
    type = "structure",
    id = "ManagedQueryResultsConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        EncryptionConfiguration = M.ManagedQueryResultsEncryptionConfiguration,
    },
}

M.QueryExecutionContext = {
    type = "structure",
    id = "QueryExecutionContext",
    members = {
        Database = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
    },
}

M.AuthenticationType = {
    DIRECTORY_IDENTITY = "DIRECTORY_IDENTITY",
}

M.QueryResultsS3AccessGrantsConfiguration = {
    type = "structure",
    id = "QueryResultsS3AccessGrantsConfiguration",
    members = {
        EnableS3AccessGrants = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CreateUserLevelPrefix = {
            type = "boolean",
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionOption = {
    SSE_S3 = "SSE_S3",
    SSE_KMS = "SSE_KMS",
    CSE_KMS = "CSE_KMS",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        EncryptionOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKey = {
            type = "string",
        },
    },
}

M.ResultConfiguration = {
    type = "structure",
    id = "ResultConfiguration",
    members = {
        OutputLocation = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        ExpectedBucketOwner = {
            type = "string",
        },
        AclConfiguration = M.AclConfiguration,
    },
}

M.ResultReuseByAgeConfiguration = {
    type = "structure",
    id = "ResultReuseByAgeConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        MaxAgeInMinutes = {
            type = "integer",
        },
    },
}

M.ResultReuseConfiguration = {
    type = "structure",
    id = "ResultReuseConfiguration",
    members = {
        ResultReuseByAgeConfiguration = M.ResultReuseByAgeConfiguration,
    },
}

M.StatementType = {
    DDL = "DDL",
    DML = "DML",
    UTILITY = "UTILITY",
}

M.ResultReuseInformation = {
    type = "structure",
    id = "ResultReuseInformation",
    members = {
        ReusedPreviousResult = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.QueryExecutionStatistics = {
    type = "structure",
    id = "QueryExecutionStatistics",
    members = {
        EngineExecutionTimeInMillis = {
            type = "long",
        },
        DataScannedInBytes = {
            type = "long",
        },
        DataManifestLocation = {
            type = "string",
        },
        TotalExecutionTimeInMillis = {
            type = "long",
        },
        QueryQueueTimeInMillis = {
            type = "long",
        },
        ServicePreProcessingTimeInMillis = {
            type = "long",
        },
        QueryPlanningTimeInMillis = {
            type = "long",
        },
        ServiceProcessingTimeInMillis = {
            type = "long",
        },
        ResultReuseInformation = M.ResultReuseInformation,
        DpuCount = {
            type = "double",
        },
    },
}

M.AthenaError = {
    type = "structure",
    id = "AthenaError",
    members = {
        ErrorCategory = {
            type = "integer",
        },
        ErrorType = {
            type = "integer",
        },
        Retryable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.QueryExecutionState = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.QueryExecutionStatus = {
    type = "structure",
    id = "QueryExecutionStatus",
    members = {
        State = {
            type = "string",
        },
        StateChangeReason = {
            type = "string",
        },
        SubmissionDateTime = {
            type = "timestamp",
        },
        CompletionDateTime = {
            type = "timestamp",
        },
        AthenaError = M.AthenaError,
    },
}

M.QueryExecution = {
    type = "structure",
    id = "QueryExecution",
    members = {
        QueryExecutionId = {
            type = "string",
        },
        Query = {
            type = "string",
        },
        StatementType = {
            type = "string",
        },
        ManagedQueryResultsConfiguration = M.ManagedQueryResultsConfiguration,
        ResultConfiguration = M.ResultConfiguration,
        ResultReuseConfiguration = M.ResultReuseConfiguration,
        QueryExecutionContext = M.QueryExecutionContext,
        Status = M.QueryExecutionStatus,
        Statistics = M.QueryExecutionStatistics,
        WorkGroup = {
            type = "string",
        },
        EngineVersion = M.EngineVersion,
        ExecutionParameters = {
            type = "list",
            member = { type = "string" },
        },
        SubstatementType = {
            type = "string",
        },
        QueryResultsS3AccessGrantsConfiguration = M.QueryResultsS3AccessGrantsConfiguration,
    },
}

M.UnprocessedQueryExecutionId = {
    type = "structure",
    id = "UnprocessedQueryExecutionId",
    members = {
        QueryExecutionId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchGetQueryExecutionOutput = {
    type = "structure",
    id = "BatchGetQueryExecutionOutput",
    members = {
        QueryExecutions = {
            type = "list",
            member = M.QueryExecution,
        },
        UnprocessedQueryExecutionIds = {
            type = "list",
            member = M.UnprocessedQueryExecutionId,
        },
    },
}

M.CancelCapacityReservationInput = {
    type = "structure",
    id = "CancelCapacityReservationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelCapacityReservationOutput = {
    type = "structure",
    id = "CancelCapacityReservationOutput",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateCapacityReservationInput = {
    type = "structure",
    id = "CreateCapacityReservationInput",
    members = {
        TargetDpus = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCapacityReservationOutput = {
    type = "structure",
    id = "CreateCapacityReservationOutput",
}

M.DataCatalogType = {
    LAMBDA = "LAMBDA",
    GLUE = "GLUE",
    HIVE = "HIVE",
    FEDERATED = "FEDERATED",
}

M.CreateDataCatalogInput = {
    type = "structure",
    id = "CreateDataCatalogInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ConnectionType = {
    DYNAMODB = "DYNAMODB",
    MYSQL = "MYSQL",
    POSTGRESQL = "POSTGRESQL",
    REDSHIFT = "REDSHIFT",
    ORACLE = "ORACLE",
    SYNAPSE = "SYNAPSE",
    SQLSERVER = "SQLSERVER",
    DB2 = "DB2",
    OPENSEARCH = "OPENSEARCH",
    BIGQUERY = "BIGQUERY",
    GOOGLECLOUDSTORAGE = "GOOGLECLOUDSTORAGE",
    HBASE = "HBASE",
    DOCUMENTDB = "DOCUMENTDB",
    CMDB = "CMDB",
    TPCDS = "TPCDS",
    TIMESTREAM = "TIMESTREAM",
    SAPHANA = "SAPHANA",
    SNOWFLAKE = "SNOWFLAKE",
    DATALAKEGEN2 = "DATALAKEGEN2",
    DB2AS400 = "DB2AS400",
}

M.DataCatalogStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_FAILED_CLEANUP_IN_PROGRESS = "CREATE_FAILED_CLEANUP_IN_PROGRESS",
    CREATE_FAILED_CLEANUP_COMPLETE = "CREATE_FAILED_CLEANUP_COMPLETE",
    CREATE_FAILED_CLEANUP_FAILED = "CREATE_FAILED_CLEANUP_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DataCatalog = {
    type = "structure",
    id = "DataCatalog",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        Error = {
            type = "string",
        },
    },
}

M.CreateDataCatalogOutput = {
    type = "structure",
    id = "CreateDataCatalogOutput",
    members = {
        DataCatalog = M.DataCatalog,
    },
}

M.CreateNamedQueryInput = {
    type = "structure",
    id = "CreateNamedQueryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.CreateNamedQueryOutput = {
    type = "structure",
    id = "CreateNamedQueryOutput",
    members = {
        NamedQueryId = {
            type = "string",
        },
    },
}

M.CreateNotebookInput = {
    type = "structure",
    id = "CreateNotebookInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateNotebookOutput = {
    type = "structure",
    id = "CreateNotebookOutput",
    members = {
        NotebookId = {
            type = "string",
        },
    },
}

M.ThrottleReason = {
    CONCURRENT_QUERY_LIMIT_EXCEEDED = "CONCURRENT_QUERY_LIMIT_EXCEEDED",
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.CreatePreparedStatementInput = {
    type = "structure",
    id = "CreatePreparedStatementInput",
    members = {
        StatementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.CreatePreparedStatementOutput = {
    type = "structure",
    id = "CreatePreparedStatementOutput",
}

M.CreatePresignedNotebookUrlInput = {
    type = "structure",
    id = "CreatePresignedNotebookUrlInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePresignedNotebookUrlOutput = {
    type = "structure",
    id = "CreatePresignedNotebookUrlOutput",
    members = {
        NotebookUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthTokenExpirationTime = {
            type = "long",
            traits = {
                required = true,
            },
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
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.CustomerContentEncryptionConfiguration = {
    type = "structure",
    id = "CustomerContentEncryptionConfiguration",
    members = {
        KmsKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Classification = {
    type = "structure",
    id = "Classification",
    members = {
        Name = {
            type = "string",
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EngineConfiguration = {
    type = "structure",
    id = "EngineConfiguration",
    members = {
        CoordinatorDpuSize = {
            type = "integer",
        },
        MaxConcurrentDpus = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        DefaultExecutorDpuSize = {
            type = "integer",
        },
        AdditionalConfigs = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SparkProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Classifications = {
            type = "list",
            member = M.Classification,
        },
    },
}

M.IdentityCenterConfiguration = {
    type = "structure",
    id = "IdentityCenterConfiguration",
    members = {
        EnableIdentityCenter = {
            type = "boolean",
        },
        IdentityCenterInstanceArn = {
            type = "string",
        },
    },
}

M.CloudWatchLoggingConfiguration = {
    type = "structure",
    id = "CloudWatchLoggingConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        LogGroup = {
            type = "string",
        },
        LogStreamNamePrefix = {
            type = "string",
        },
        LogTypes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ManagedLoggingConfiguration = {
    type = "structure",
    id = "ManagedLoggingConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        KmsKey = {
            type = "string",
        },
    },
}

M.S3LoggingConfiguration = {
    type = "structure",
    id = "S3LoggingConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        KmsKey = {
            type = "string",
        },
        LogLocation = {
            type = "string",
        },
    },
}

M.MonitoringConfiguration = {
    type = "structure",
    id = "MonitoringConfiguration",
    members = {
        CloudWatchLoggingConfiguration = M.CloudWatchLoggingConfiguration,
        ManagedLoggingConfiguration = M.ManagedLoggingConfiguration,
        S3LoggingConfiguration = M.S3LoggingConfiguration,
    },
}

M.WorkGroupConfiguration = {
    type = "structure",
    id = "WorkGroupConfiguration",
    members = {
        ResultConfiguration = M.ResultConfiguration,
        ManagedQueryResultsConfiguration = M.ManagedQueryResultsConfiguration,
        EnforceWorkGroupConfiguration = {
            type = "boolean",
        },
        PublishCloudWatchMetricsEnabled = {
            type = "boolean",
        },
        BytesScannedCutoffPerQuery = {
            type = "long",
        },
        RequesterPaysEnabled = {
            type = "boolean",
        },
        EngineVersion = M.EngineVersion,
        AdditionalConfiguration = {
            type = "string",
        },
        ExecutionRole = {
            type = "string",
        },
        MonitoringConfiguration = M.MonitoringConfiguration,
        EngineConfiguration = M.EngineConfiguration,
        CustomerContentEncryptionConfiguration = M.CustomerContentEncryptionConfiguration,
        EnableMinimumEncryptionConfiguration = {
            type = "boolean",
        },
        IdentityCenterConfiguration = M.IdentityCenterConfiguration,
        QueryResultsS3AccessGrantsConfiguration = M.QueryResultsS3AccessGrantsConfiguration,
    },
}

M.CreateWorkGroupInput = {
    type = "structure",
    id = "CreateWorkGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = M.WorkGroupConfiguration,
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWorkGroupOutput = {
    type = "structure",
    id = "CreateWorkGroupOutput",
}

M.DeleteCapacityReservationInput = {
    type = "structure",
    id = "DeleteCapacityReservationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCapacityReservationOutput = {
    type = "structure",
    id = "DeleteCapacityReservationOutput",
}

M.DeleteDataCatalogInput = {
    type = "structure",
    id = "DeleteDataCatalogInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteCatalogOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteDataCatalogOutput = {
    type = "structure",
    id = "DeleteDataCatalogOutput",
    members = {
        DataCatalog = M.DataCatalog,
    },
}

M.DeleteNamedQueryInput = {
    type = "structure",
    id = "DeleteNamedQueryInput",
    members = {
        NamedQueryId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.DeleteNamedQueryOutput = {
    type = "structure",
    id = "DeleteNamedQueryOutput",
}

M.DeleteNotebookInput = {
    type = "structure",
    id = "DeleteNotebookInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotebookOutput = {
    type = "structure",
    id = "DeleteNotebookOutput",
}

M.DeletePreparedStatementInput = {
    type = "structure",
    id = "DeletePreparedStatementInput",
    members = {
        StatementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePreparedStatementOutput = {
    type = "structure",
    id = "DeletePreparedStatementOutput",
}

M.DeleteWorkGroupInput = {
    type = "structure",
    id = "DeleteWorkGroupInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecursiveDeleteOption = {
            type = "boolean",
        },
    },
}

M.DeleteWorkGroupOutput = {
    type = "structure",
    id = "DeleteWorkGroupOutput",
}

M.ExportNotebookInput = {
    type = "structure",
    id = "ExportNotebookInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotebookType = {
    IPYNB = "IPYNB",
}

M.NotebookMetadata = {
    type = "structure",
    id = "NotebookMetadata",
    members = {
        NotebookId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        WorkGroup = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ExportNotebookOutput = {
    type = "structure",
    id = "ExportNotebookOutput",
    members = {
        NotebookMetadata = M.NotebookMetadata,
        Payload = {
            type = "string",
        },
    },
}

M.GetCalculationExecutionInput = {
    type = "structure",
    id = "GetCalculationExecutionInput",
    members = {
        CalculationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CalculationResult = {
    type = "structure",
    id = "CalculationResult",
    members = {
        StdOutS3Uri = {
            type = "string",
        },
        StdErrorS3Uri = {
            type = "string",
        },
        ResultS3Uri = {
            type = "string",
        },
        ResultType = {
            type = "string",
        },
    },
}

M.CalculationStatistics = {
    type = "structure",
    id = "CalculationStatistics",
    members = {
        DpuExecutionInMillis = {
            type = "long",
        },
        Progress = {
            type = "string",
        },
    },
}

M.CalculationExecutionState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    CANCELING = "CANCELING",
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.CalculationStatus = {
    type = "structure",
    id = "CalculationStatus",
    members = {
        SubmissionDateTime = {
            type = "timestamp",
        },
        CompletionDateTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StateChangeReason = {
            type = "string",
        },
    },
}

M.GetCalculationExecutionOutput = {
    type = "structure",
    id = "GetCalculationExecutionOutput",
    members = {
        CalculationExecutionId = {
            type = "string",
        },
        SessionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        WorkingDirectory = {
            type = "string",
        },
        Status = M.CalculationStatus,
        Statistics = M.CalculationStatistics,
        Result = M.CalculationResult,
    },
}

M.GetCalculationExecutionCodeInput = {
    type = "structure",
    id = "GetCalculationExecutionCodeInput",
    members = {
        CalculationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCalculationExecutionCodeOutput = {
    type = "structure",
    id = "GetCalculationExecutionCodeOutput",
    members = {
        CodeBlock = {
            type = "string",
        },
    },
}

M.GetCalculationExecutionStatusInput = {
    type = "structure",
    id = "GetCalculationExecutionStatusInput",
    members = {
        CalculationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCalculationExecutionStatusOutput = {
    type = "structure",
    id = "GetCalculationExecutionStatusOutput",
    members = {
        Status = M.CalculationStatus,
        Statistics = M.CalculationStatistics,
    },
}

M.GetCapacityAssignmentConfigurationInput = {
    type = "structure",
    id = "GetCapacityAssignmentConfigurationInput",
    members = {
        CapacityReservationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityAssignment = {
    type = "structure",
    id = "CapacityAssignment",
    members = {
        WorkGroupNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CapacityAssignmentConfiguration = {
    type = "structure",
    id = "CapacityAssignmentConfiguration",
    members = {
        CapacityReservationName = {
            type = "string",
        },
        CapacityAssignments = {
            type = "list",
            member = M.CapacityAssignment,
        },
    },
}

M.GetCapacityAssignmentConfigurationOutput = {
    type = "structure",
    id = "GetCapacityAssignmentConfigurationOutput",
    members = {
        CapacityAssignmentConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityAssignmentConfiguration }),
    },
}

M.GetCapacityReservationInput = {
    type = "structure",
    id = "GetCapacityReservationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityAllocationStatus = {
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.CapacityAllocation = {
    type = "structure",
    id = "CapacityAllocation",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        RequestTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RequestCompletionTime = {
            type = "timestamp",
        },
    },
}

M.CapacityReservationStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    UPDATE_PENDING = "UPDATE_PENDING",
}

M.CapacityReservation = {
    type = "structure",
    id = "CapacityReservation",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDpus = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AllocatedDpus = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LastAllocation = M.CapacityAllocation,
        LastSuccessfulAllocationTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCapacityReservationOutput = {
    type = "structure",
    id = "GetCapacityReservationOutput",
    members = {
        CapacityReservation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityReservation }),
    },
}

M.GetDatabaseInput = {
    type = "structure",
    id = "GetDatabaseInput",
    members = {
        CatalogName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.Database = {
    type = "structure",
    id = "Database",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDatabaseOutput = {
    type = "structure",
    id = "GetDatabaseOutput",
    members = {
        Database = M.Database,
    },
}

M.MetadataException = {
    type = "structure",
    id = "MetadataException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDataCatalogInput = {
    type = "structure",
    id = "GetDataCatalogInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.GetDataCatalogOutput = {
    type = "structure",
    id = "GetDataCatalogOutput",
    members = {
        DataCatalog = M.DataCatalog,
    },
}

M.GetNamedQueryInput = {
    type = "structure",
    id = "GetNamedQueryInput",
    members = {
        NamedQueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNamedQueryOutput = {
    type = "structure",
    id = "GetNamedQueryOutput",
    members = {
        NamedQuery = M.NamedQuery,
    },
}

M.GetNotebookMetadataInput = {
    type = "structure",
    id = "GetNotebookMetadataInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNotebookMetadataOutput = {
    type = "structure",
    id = "GetNotebookMetadataOutput",
    members = {
        NotebookMetadata = M.NotebookMetadata,
    },
}

M.GetPreparedStatementInput = {
    type = "structure",
    id = "GetPreparedStatementInput",
    members = {
        StatementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPreparedStatementOutput = {
    type = "structure",
    id = "GetPreparedStatementOutput",
    members = {
        PreparedStatement = M.PreparedStatement,
    },
}

M.GetQueryExecutionInput = {
    type = "structure",
    id = "GetQueryExecutionInput",
    members = {
        QueryExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetQueryExecutionOutput = {
    type = "structure",
    id = "GetQueryExecutionOutput",
    members = {
        QueryExecution = M.QueryExecution,
    },
}

M.QueryResultType = {
    DATA_MANIFEST = "DATA_MANIFEST",
    DATA_ROWS = "DATA_ROWS",
}

M.GetQueryResultsInput = {
    type = "structure",
    id = "GetQueryResultsInput",
    members = {
        QueryExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        QueryResultType = {
            type = "string",
        },
    },
}

M.ColumnNullable = {
    NOT_NULL = "NOT_NULL",
    NULLABLE = "NULLABLE",
    UNKNOWN = "UNKNOWN",
}

M.ColumnInfo = {
    type = "structure",
    id = "ColumnInfo",
    members = {
        CatalogName = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Precision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Scale = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Nullable = {
            type = "string",
        },
        CaseSensitive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ResultSetMetadata = {
    type = "structure",
    id = "ResultSetMetadata",
    members = {
        ColumnInfo = {
            type = "list",
            member = M.ColumnInfo,
        },
    },
}

M.Datum = {
    type = "structure",
    id = "Datum",
    members = {
        VarCharValue = {
            type = "string",
        },
    },
}

M.Row = {
    type = "structure",
    id = "Row",
    members = {
        Data = {
            type = "list",
            member = M.Datum,
        },
    },
}

M.ResultSet = {
    type = "structure",
    id = "ResultSet",
    members = {
        Rows = {
            type = "list",
            member = M.Row,
        },
        ResultSetMetadata = M.ResultSetMetadata,
    },
}

M.GetQueryResultsOutput = {
    type = "structure",
    id = "GetQueryResultsOutput",
    members = {
        UpdateCount = {
            type = "long",
        },
        ResultSet = M.ResultSet,
        NextToken = {
            type = "string",
        },
    },
}

M.GetQueryRuntimeStatisticsInput = {
    type = "structure",
    id = "GetQueryRuntimeStatisticsInput",
    members = {
        QueryExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryRuntimeStatisticsRows = {
    type = "structure",
    id = "QueryRuntimeStatisticsRows",
    members = {
        InputRows = {
            type = "long",
        },
        InputBytes = {
            type = "long",
        },
        OutputBytes = {
            type = "long",
        },
        OutputRows = {
            type = "long",
        },
    },
}

M.QueryRuntimeStatisticsTimeline = {
    type = "structure",
    id = "QueryRuntimeStatisticsTimeline",
    members = {
        QueryQueueTimeInMillis = {
            type = "long",
        },
        ServicePreProcessingTimeInMillis = {
            type = "long",
        },
        QueryPlanningTimeInMillis = {
            type = "long",
        },
        EngineExecutionTimeInMillis = {
            type = "long",
        },
        ServiceProcessingTimeInMillis = {
            type = "long",
        },
        TotalExecutionTimeInMillis = {
            type = "long",
        },
    },
}

M.GetResourceDashboardInput = {
    type = "structure",
    id = "GetResourceDashboardInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceDashboardOutput = {
    type = "structure",
    id = "GetResourceDashboardOutput",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionConfiguration = {
    type = "structure",
    id = "SessionConfiguration",
    members = {
        ExecutionRole = {
            type = "string",
        },
        WorkingDirectory = {
            type = "string",
        },
        IdleTimeoutSeconds = {
            type = "long",
        },
        SessionIdleTimeoutInMinutes = {
            type = "integer",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.SessionStatistics = {
    type = "structure",
    id = "SessionStatistics",
    members = {
        DpuExecutionInMillis = {
            type = "long",
        },
    },
}

M.SessionState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    IDLE = "IDLE",
    BUSY = "BUSY",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    DEGRADED = "DEGRADED",
    FAILED = "FAILED",
}

M.SessionStatus = {
    type = "structure",
    id = "SessionStatus",
    members = {
        StartDateTime = {
            type = "timestamp",
        },
        LastModifiedDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
        IdleSinceDateTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        StateChangeReason = {
            type = "string",
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    id = "GetSessionOutput",
    members = {
        SessionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        WorkGroup = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EngineConfiguration = M.EngineConfiguration,
        NotebookVersion = {
            type = "string",
        },
        MonitoringConfiguration = M.MonitoringConfiguration,
        SessionConfiguration = M.SessionConfiguration,
        Status = M.SessionStatus,
        Statistics = M.SessionStatistics,
    },
}

M.GetSessionEndpointInput = {
    type = "structure",
    id = "GetSessionEndpointInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionEndpointOutput = {
    type = "structure",
    id = "GetSessionEndpointOutput",
    members = {
        EndpointUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthTokenExpirationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionStatusInput = {
    type = "structure",
    id = "GetSessionStatusInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionStatusOutput = {
    type = "structure",
    id = "GetSessionStatusOutput",
    members = {
        SessionId = {
            type = "string",
        },
        Status = M.SessionStatus,
    },
}

M.GetTableMetadataInput = {
    type = "structure",
    id = "GetTableMetadataInput",
    members = {
        CatalogName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.Column = {
    type = "structure",
    id = "Column",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
    },
}

M.TableMetadata = {
    type = "structure",
    id = "TableMetadata",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
        },
        LastAccessTime = {
            type = "timestamp",
        },
        TableType = {
            type = "string",
        },
        Columns = {
            type = "list",
            member = M.Column,
        },
        PartitionKeys = {
            type = "list",
            member = M.Column,
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTableMetadataOutput = {
    type = "structure",
    id = "GetTableMetadataOutput",
    members = {
        TableMetadata = M.TableMetadata,
    },
}

M.GetWorkGroupInput = {
    type = "structure",
    id = "GetWorkGroupInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkGroupState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.WorkGroup = {
    type = "structure",
    id = "WorkGroup",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
        },
        Configuration = M.WorkGroupConfiguration,
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        IdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.GetWorkGroupOutput = {
    type = "structure",
    id = "GetWorkGroupOutput",
    members = {
        WorkGroup = M.WorkGroup,
    },
}

M.ImportNotebookInput = {
    type = "structure",
    id = "ImportNotebookInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotebookS3LocationUri = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.ImportNotebookOutput = {
    type = "structure",
    id = "ImportNotebookOutput",
    members = {
        NotebookId = {
            type = "string",
        },
    },
}

M.ListApplicationDPUSizesInput = {
    type = "structure",
    id = "ListApplicationDPUSizesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ApplicationDPUSizes = {
    type = "structure",
    id = "ApplicationDPUSizes",
    members = {
        ApplicationRuntimeId = {
            type = "string",
        },
        SupportedDPUSizes = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.ListApplicationDPUSizesOutput = {
    type = "structure",
    id = "ListApplicationDPUSizesOutput",
    members = {
        ApplicationDPUSizes = {
            type = "list",
            member = M.ApplicationDPUSizes,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCalculationExecutionsInput = {
    type = "structure",
    id = "ListCalculationExecutionsInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateFilter = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CalculationSummary = {
    type = "structure",
    id = "CalculationSummary",
    members = {
        CalculationExecutionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = M.CalculationStatus,
    },
}

M.ListCalculationExecutionsOutput = {
    type = "structure",
    id = "ListCalculationExecutionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Calculations = {
            type = "list",
            member = M.CalculationSummary,
        },
    },
}

M.ListCapacityReservationsInput = {
    type = "structure",
    id = "ListCapacityReservationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListCapacityReservationsOutput = {
    type = "structure",
    id = "ListCapacityReservationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CapacityReservations = {
            type = "list",
            member = M.CapacityReservation,
            traits = {
                required = true,
            },
        },
    },
}

M.ListDatabasesInput = {
    type = "structure",
    id = "ListDatabasesInput",
    members = {
        CatalogName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListDatabasesOutput = {
    type = "structure",
    id = "ListDatabasesOutput",
    members = {
        DatabaseList = {
            type = "list",
            member = M.Database,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataCatalogsInput = {
    type = "structure",
    id = "ListDataCatalogsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.DataCatalogSummary = {
    type = "structure",
    id = "DataCatalogSummary",
    members = {
        CatalogName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        Error = {
            type = "string",
        },
    },
}

M.ListDataCatalogsOutput = {
    type = "structure",
    id = "ListDataCatalogsOutput",
    members = {
        DataCatalogsSummary = {
            type = "list",
            member = M.DataCatalogSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEngineVersionsInput = {
    type = "structure",
    id = "ListEngineVersionsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEngineVersionsOutput = {
    type = "structure",
    id = "ListEngineVersionsOutput",
    members = {
        EngineVersions = {
            type = "list",
            member = M.EngineVersion,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecutorState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    REGISTERED = "REGISTERED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    FAILED = "FAILED",
}

M.ListExecutorsInput = {
    type = "structure",
    id = "ListExecutorsInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutorStateFilter = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecutorType = {
    COORDINATOR = "COORDINATOR",
    GATEWAY = "GATEWAY",
    WORKER = "WORKER",
}

M.ExecutorsSummary = {
    type = "structure",
    id = "ExecutorsSummary",
    members = {
        ExecutorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutorType = {
            type = "string",
        },
        StartDateTime = {
            type = "long",
        },
        TerminationDateTime = {
            type = "long",
        },
        ExecutorState = {
            type = "string",
        },
        ExecutorSize = {
            type = "long",
        },
    },
}

M.ListExecutorsOutput = {
    type = "structure",
    id = "ListExecutorsOutput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        ExecutorsSummary = {
            type = "list",
            member = M.ExecutorsSummary,
        },
    },
}

M.ListNamedQueriesInput = {
    type = "structure",
    id = "ListNamedQueriesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListNamedQueriesOutput = {
    type = "structure",
    id = "ListNamedQueriesOutput",
    members = {
        NamedQueryIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FilterDefinition = {
    type = "structure",
    id = "FilterDefinition",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ListNotebookMetadataInput = {
    type = "structure",
    id = "ListNotebookMetadataInput",
    members = {
        Filters = M.FilterDefinition,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListNotebookMetadataOutput = {
    type = "structure",
    id = "ListNotebookMetadataOutput",
    members = {
        NextToken = {
            type = "string",
        },
        NotebookMetadataList = {
            type = "list",
            member = M.NotebookMetadata,
        },
    },
}

M.ListNotebookSessionsInput = {
    type = "structure",
    id = "ListNotebookSessionsInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NotebookSessionSummary = {
    type = "structure",
    id = "NotebookSessionSummary",
    members = {
        SessionId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.ListNotebookSessionsOutput = {
    type = "structure",
    id = "ListNotebookSessionsOutput",
    members = {
        NotebookSessionsList = {
            type = "list",
            member = M.NotebookSessionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPreparedStatementsInput = {
    type = "structure",
    id = "ListPreparedStatementsInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.PreparedStatementSummary = {
    type = "structure",
    id = "PreparedStatementSummary",
    members = {
        StatementName = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListPreparedStatementsOutput = {
    type = "structure",
    id = "ListPreparedStatementsOutput",
    members = {
        PreparedStatements = {
            type = "list",
            member = M.PreparedStatementSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueryExecutionsInput = {
    type = "structure",
    id = "ListQueryExecutionsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListQueryExecutionsOutput = {
    type = "structure",
    id = "ListQueryExecutionsOutput",
    members = {
        QueryExecutionIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    id = "ListSessionsInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateFilter = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SessionSummary = {
    type = "structure",
    id = "SessionSummary",
    members = {
        SessionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EngineVersion = M.EngineVersion,
        NotebookVersion = {
            type = "string",
        },
        Status = M.SessionStatus,
    },
}

M.ListSessionsOutput = {
    type = "structure",
    id = "ListSessionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Sessions = {
            type = "list",
            member = M.SessionSummary,
        },
    },
}

M.ListTableMetadataInput = {
    type = "structure",
    id = "ListTableMetadataInput",
    members = {
        CatalogName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListTableMetadataOutput = {
    type = "structure",
    id = "ListTableMetadataOutput",
    members = {
        TableMetadataList = {
            type = "list",
            member = M.TableMetadata,
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkGroupsInput = {
    type = "structure",
    id = "ListWorkGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.WorkGroupSummary = {
    type = "structure",
    id = "WorkGroupSummary",
    members = {
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        EngineVersion = M.EngineVersion,
        IdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.ListWorkGroupsOutput = {
    type = "structure",
    id = "ListWorkGroupsOutput",
    members = {
        WorkGroups = {
            type = "list",
            member = M.WorkGroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutCapacityAssignmentConfigurationInput = {
    type = "structure",
    id = "PutCapacityAssignmentConfigurationInput",
    members = {
        CapacityReservationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CapacityAssignments = {
            type = "list",
            member = M.CapacityAssignment,
            traits = {
                required = true,
            },
        },
    },
}

M.PutCapacityAssignmentConfigurationOutput = {
    type = "structure",
    id = "PutCapacityAssignmentConfigurationOutput",
}

M.CalculationConfiguration = {
    type = "structure",
    id = "CalculationConfiguration",
    members = {
        CodeBlock = {
            type = "string",
        },
    },
}

M.StartCalculationExecutionInput = {
    type = "structure",
    id = "StartCalculationExecutionInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CalculationConfiguration = M.CalculationConfiguration,
        CodeBlock = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.StartCalculationExecutionOutput = {
    type = "structure",
    id = "StartCalculationExecutionOutput",
    members = {
        CalculationExecutionId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.StartQueryExecutionInput = {
    type = "structure",
    id = "StartQueryExecutionInput",
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        QueryExecutionContext = M.QueryExecutionContext,
        ResultConfiguration = M.ResultConfiguration,
        WorkGroup = {
            type = "string",
        },
        ExecutionParameters = {
            type = "list",
            member = { type = "string" },
        },
        ResultReuseConfiguration = M.ResultReuseConfiguration,
        EngineConfiguration = M.EngineConfiguration,
    },
}

M.StartQueryExecutionOutput = {
    type = "structure",
    id = "StartQueryExecutionOutput",
    members = {
        QueryExecutionId = {
            type = "string",
        },
    },
}

M.SessionAlreadyExistsException = {
    type = "structure",
    id = "SessionAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
    id = "StartSessionInput",
    members = {
        Description = {
            type = "string",
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EngineConfiguration }),
        ExecutionRole = {
            type = "string",
        },
        MonitoringConfiguration = M.MonitoringConfiguration,
        NotebookVersion = {
            type = "string",
        },
        SessionIdleTimeoutInMinutes = {
            type = "integer",
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CopyWorkGroupTags = {
            type = "boolean",
        },
    },
}

M.StartSessionOutput = {
    type = "structure",
    id = "StartSessionOutput",
    members = {
        SessionId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.StopCalculationExecutionInput = {
    type = "structure",
    id = "StopCalculationExecutionInput",
    members = {
        CalculationExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopCalculationExecutionOutput = {
    type = "structure",
    id = "StopCalculationExecutionOutput",
    members = {
        State = {
            type = "string",
        },
    },
}

M.StopQueryExecutionInput = {
    type = "structure",
    id = "StopQueryExecutionInput",
    members = {
        QueryExecutionId = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.StopQueryExecutionOutput = {
    type = "structure",
    id = "StopQueryExecutionOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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

M.TerminateSessionInput = {
    type = "structure",
    id = "TerminateSessionInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateSessionOutput = {
    type = "structure",
    id = "TerminateSessionOutput",
    members = {
        State = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateCapacityReservationInput = {
    type = "structure",
    id = "UpdateCapacityReservationInput",
    members = {
        TargetDpus = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCapacityReservationOutput = {
    type = "structure",
    id = "UpdateCapacityReservationOutput",
}

M.UpdateDataCatalogInput = {
    type = "structure",
    id = "UpdateDataCatalogInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDataCatalogOutput = {
    type = "structure",
    id = "UpdateDataCatalogOutput",
}

M.UpdateNamedQueryInput = {
    type = "structure",
    id = "UpdateNamedQueryInput",
    members = {
        NamedQueryId = {
            type = "string",
            traits = {
                required = true,
            },
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
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNamedQueryOutput = {
    type = "structure",
    id = "UpdateNamedQueryOutput",
}

M.UpdateNotebookInput = {
    type = "structure",
    id = "UpdateNotebookInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionId = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.UpdateNotebookOutput = {
    type = "structure",
    id = "UpdateNotebookOutput",
}

M.UpdateNotebookMetadataInput = {
    type = "structure",
    id = "UpdateNotebookMetadataInput",
    members = {
        NotebookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotebookMetadataOutput = {
    type = "structure",
    id = "UpdateNotebookMetadataOutput",
}

M.UpdatePreparedStatementInput = {
    type = "structure",
    id = "UpdatePreparedStatementInput",
    members = {
        StatementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryStatement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdatePreparedStatementOutput = {
    type = "structure",
    id = "UpdatePreparedStatementOutput",
}

M.ManagedQueryResultsConfigurationUpdates = {
    type = "structure",
    id = "ManagedQueryResultsConfigurationUpdates",
    members = {
        Enabled = {
            type = "boolean",
        },
        EncryptionConfiguration = M.ManagedQueryResultsEncryptionConfiguration,
        RemoveEncryptionConfiguration = {
            type = "boolean",
        },
    },
}

M.ResultConfigurationUpdates = {
    type = "structure",
    id = "ResultConfigurationUpdates",
    members = {
        OutputLocation = {
            type = "string",
        },
        RemoveOutputLocation = {
            type = "boolean",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        RemoveEncryptionConfiguration = {
            type = "boolean",
        },
        ExpectedBucketOwner = {
            type = "string",
        },
        RemoveExpectedBucketOwner = {
            type = "boolean",
        },
        AclConfiguration = M.AclConfiguration,
        RemoveAclConfiguration = {
            type = "boolean",
        },
    },
}

M.WorkGroupConfigurationUpdates = {
    type = "structure",
    id = "WorkGroupConfigurationUpdates",
    members = {
        EnforceWorkGroupConfiguration = {
            type = "boolean",
        },
        ResultConfigurationUpdates = M.ResultConfigurationUpdates,
        ManagedQueryResultsConfigurationUpdates = M.ManagedQueryResultsConfigurationUpdates,
        PublishCloudWatchMetricsEnabled = {
            type = "boolean",
        },
        BytesScannedCutoffPerQuery = {
            type = "long",
        },
        RemoveBytesScannedCutoffPerQuery = {
            type = "boolean",
        },
        RequesterPaysEnabled = {
            type = "boolean",
        },
        EngineVersion = M.EngineVersion,
        RemoveCustomerContentEncryptionConfiguration = {
            type = "boolean",
        },
        AdditionalConfiguration = {
            type = "string",
        },
        ExecutionRole = {
            type = "string",
        },
        CustomerContentEncryptionConfiguration = M.CustomerContentEncryptionConfiguration,
        EnableMinimumEncryptionConfiguration = {
            type = "boolean",
        },
        QueryResultsS3AccessGrantsConfiguration = M.QueryResultsS3AccessGrantsConfiguration,
        MonitoringConfiguration = M.MonitoringConfiguration,
        EngineConfiguration = M.EngineConfiguration,
    },
}

M.UpdateWorkGroupInput = {
    type = "structure",
    id = "UpdateWorkGroupInput",
    members = {
        WorkGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ConfigurationUpdates = M.WorkGroupConfigurationUpdates,
        State = {
            type = "string",
        },
    },
}

M.UpdateWorkGroupOutput = {
    type = "structure",
    id = "UpdateWorkGroupOutput",
}

M.QueryStagePlanNode = {
    type = "structure",
    id = "QueryStagePlanNode",
    members = {
        Name = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        Children = {
            type = "list",
            member = M.QueryStagePlanNode,
        },
        RemoteSources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueryStage = {
    type = "structure",
    id = "QueryStage",
    members = {
        StageId = {
            type = "long",
        },
        State = {
            type = "string",
        },
        OutputBytes = {
            type = "long",
        },
        OutputRows = {
            type = "long",
        },
        InputBytes = {
            type = "long",
        },
        InputRows = {
            type = "long",
        },
        ExecutionTime = {
            type = "long",
        },
        QueryStagePlan = M.QueryStagePlanNode,
        SubStages = {
            type = "list",
            member = M.QueryStage,
        },
    },
}

M.QueryRuntimeStatistics = {
    type = "structure",
    id = "QueryRuntimeStatistics",
    members = {
        Timeline = M.QueryRuntimeStatisticsTimeline,
        Rows = M.QueryRuntimeStatisticsRows,
        OutputStage = M.QueryStage,
    },
}

M.GetQueryRuntimeStatisticsOutput = {
    type = "structure",
    id = "GetQueryRuntimeStatisticsOutput",
    members = {
        QueryRuntimeStatistics = M.QueryRuntimeStatistics,
    },
}

return M
