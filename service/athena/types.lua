local M = {}

M.S3AclOption = {
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
}

M.AclConfiguration = {
    type = "structure",
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
    members = {
        NamedQueryIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NamedQuery = {
    type = "structure",
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
    members = {
        NamedQueries = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedNamedQueryIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
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
    members = {
        PreparedStatementNames = {
            type = "list",
            member_type = "string",
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
    members = {
        PreparedStatements = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedPreparedStatementNames = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetQueryExecutionInput = {
    type = "structure",
    members = {
        QueryExecutionIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EngineVersion = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.QueryExecutionContext = {
    type = "structure",
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
    members = {
        OutputLocation = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        ExpectedBucketOwner = {
            type = "string",
        },
        AclConfiguration = {
            type = "structure",
        },
    },
}

M.ResultReuseByAgeConfiguration = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MaxAgeInMinutes = {
            type = "number",
        },
    },
}

M.ResultReuseConfiguration = {
    type = "structure",
    members = {
        ResultReuseByAgeConfiguration = {
            type = "structure",
        },
    },
}

M.StatementType = {
    DDL = "DDL",
    DML = "DML",
    UTILITY = "UTILITY",
}

M.ResultReuseInformation = {
    type = "structure",
    members = {
        ReusedPreviousResult = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryExecutionStatistics = {
    type = "structure",
    members = {
        EngineExecutionTimeInMillis = {
            type = "number",
        },
        DataScannedInBytes = {
            type = "number",
        },
        DataManifestLocation = {
            type = "string",
        },
        TotalExecutionTimeInMillis = {
            type = "number",
        },
        QueryQueueTimeInMillis = {
            type = "number",
        },
        ServicePreProcessingTimeInMillis = {
            type = "number",
        },
        QueryPlanningTimeInMillis = {
            type = "number",
        },
        ServiceProcessingTimeInMillis = {
            type = "number",
        },
        ResultReuseInformation = {
            type = "structure",
        },
        DpuCount = {
            type = "number",
        },
    },
}

M.AthenaError = {
    type = "structure",
    members = {
        ErrorCategory = {
            type = "number",
        },
        ErrorType = {
            type = "number",
        },
        Retryable = {
            type = "boolean",
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
        AthenaError = {
            type = "structure",
        },
    },
}

M.QueryExecution = {
    type = "structure",
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
        ManagedQueryResultsConfiguration = {
            type = "structure",
        },
        ResultConfiguration = {
            type = "structure",
        },
        ResultReuseConfiguration = {
            type = "structure",
        },
        QueryExecutionContext = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        Statistics = {
            type = "structure",
        },
        WorkGroup = {
            type = "string",
        },
        EngineVersion = {
            type = "structure",
        },
        ExecutionParameters = {
            type = "list",
            member_type = "string",
        },
        SubstatementType = {
            type = "string",
        },
        QueryResultsS3AccessGrantsConfiguration = {
            type = "structure",
        },
    },
}

M.UnprocessedQueryExecutionId = {
    type = "structure",
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
    members = {
        QueryExecutions = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedQueryExecutionIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelCapacityReservationInput = {
    type = "structure",
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
}

M.Tag = {
    type = "structure",
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
    members = {
        TargetDpus = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.CreateCapacityReservationOutput = {
    type = "structure",
}

M.DataCatalogType = {
    LAMBDA = "LAMBDA",
    GLUE = "GLUE",
    HIVE = "HIVE",
    FEDERATED = "FEDERATED",
}

M.CreateDataCatalogInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        DataCatalog = {
            type = "structure",
        },
    },
}

M.CreateNamedQueryInput = {
    type = "structure",
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
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.CreateNamedQueryOutput = {
    type = "structure",
    members = {
        NamedQueryId = {
            type = "string",
        },
    },
}

M.CreateNotebookInput = {
    type = "structure",
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
}

M.CreatePresignedNotebookUrlInput = {
    type = "structure",
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
            type = "number",
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
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.CustomerContentEncryptionConfiguration = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EngineConfiguration = {
    type = "structure",
    members = {
        CoordinatorDpuSize = {
            type = "number",
        },
        MaxConcurrentDpus = {
            type = "number",
        },
        DefaultExecutorDpuSize = {
            type = "number",
        },
        AdditionalConfigs = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SparkProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Classifications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IdentityCenterConfiguration = {
    type = "structure",
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
            key_type = "string",
            value_type = "list",
        },
    },
}

M.ManagedLoggingConfiguration = {
    type = "structure",
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
    members = {
        CloudWatchLoggingConfiguration = {
            type = "structure",
        },
        ManagedLoggingConfiguration = {
            type = "structure",
        },
        S3LoggingConfiguration = {
            type = "structure",
        },
    },
}

M.WorkGroupConfiguration = {
    type = "structure",
    members = {
        ResultConfiguration = {
            type = "structure",
        },
        ManagedQueryResultsConfiguration = {
            type = "structure",
        },
        EnforceWorkGroupConfiguration = {
            type = "boolean",
        },
        PublishCloudWatchMetricsEnabled = {
            type = "boolean",
        },
        BytesScannedCutoffPerQuery = {
            type = "number",
        },
        RequesterPaysEnabled = {
            type = "boolean",
        },
        EngineVersion = {
            type = "structure",
        },
        AdditionalConfiguration = {
            type = "string",
        },
        ExecutionRole = {
            type = "string",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
        EngineConfiguration = {
            type = "structure",
        },
        CustomerContentEncryptionConfiguration = {
            type = "structure",
        },
        EnableMinimumEncryptionConfiguration = {
            type = "boolean",
        },
        IdentityCenterConfiguration = {
            type = "structure",
        },
        QueryResultsS3AccessGrantsConfiguration = {
            type = "structure",
        },
    },
}

M.CreateWorkGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Configuration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateWorkGroupOutput = {
    type = "structure",
}

M.DeleteCapacityReservationInput = {
    type = "structure",
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
}

M.DeleteDataCatalogInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteCatalogOnly = {
            type = "boolean",
        },
    },
}

M.DeleteDataCatalogOutput = {
    type = "structure",
    members = {
        DataCatalog = {
            type = "structure",
        },
    },
}

M.DeleteNamedQueryInput = {
    type = "structure",
    members = {
        NamedQueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNamedQueryOutput = {
    type = "structure",
}

M.DeleteNotebookInput = {
    type = "structure",
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
}

M.DeletePreparedStatementInput = {
    type = "structure",
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
}

M.DeleteWorkGroupInput = {
    type = "structure",
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
}

M.ExportNotebookInput = {
    type = "structure",
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
    members = {
        NotebookMetadata = {
            type = "structure",
        },
        Payload = {
            type = "string",
        },
    },
}

M.GetCalculationExecutionInput = {
    type = "structure",
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
    members = {
        DpuExecutionInMillis = {
            type = "number",
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
        Status = {
            type = "structure",
        },
        Statistics = {
            type = "structure",
        },
        Result = {
            type = "structure",
        },
    },
}

M.GetCalculationExecutionCodeInput = {
    type = "structure",
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
    members = {
        CodeBlock = {
            type = "string",
        },
    },
}

M.GetCalculationExecutionStatusInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "structure",
        },
        Statistics = {
            type = "structure",
        },
    },
}

M.GetCapacityAssignmentConfigurationInput = {
    type = "structure",
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
    members = {
        WorkGroupNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CapacityAssignmentConfiguration = {
    type = "structure",
    members = {
        CapacityReservationName = {
            type = "string",
        },
        CapacityAssignments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetCapacityAssignmentConfigurationOutput = {
    type = "structure",
    members = {
        CapacityAssignmentConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCapacityReservationInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        AllocatedDpus = {
            type = "number",
            traits = {
                required = true,
            },
        },
        LastAllocation = {
            type = "structure",
        },
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
    members = {
        CapacityReservation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDatabaseInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDatabaseOutput = {
    type = "structure",
    members = {
        Database = {
            type = "structure",
        },
    },
}

M.MetadataException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetDataCatalogInput = {
    type = "structure",
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
    members = {
        DataCatalog = {
            type = "structure",
        },
    },
}

M.GetNamedQueryInput = {
    type = "structure",
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
    members = {
        NamedQuery = {
            type = "structure",
        },
    },
}

M.GetNotebookMetadataInput = {
    type = "structure",
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
    members = {
        NotebookMetadata = {
            type = "structure",
        },
    },
}

M.GetPreparedStatementInput = {
    type = "structure",
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
    members = {
        PreparedStatement = {
            type = "structure",
        },
    },
}

M.GetQueryExecutionInput = {
    type = "structure",
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
    members = {
        QueryExecution = {
            type = "structure",
        },
    },
}

M.QueryResultType = {
    DATA_MANIFEST = "DATA_MANIFEST",
    DATA_ROWS = "DATA_ROWS",
}

M.GetQueryResultsInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        Scale = {
            type = "number",
        },
        Nullable = {
            type = "string",
        },
        CaseSensitive = {
            type = "boolean",
        },
    },
}

M.ResultSetMetadata = {
    type = "structure",
    members = {
        ColumnInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Datum = {
    type = "structure",
    members = {
        VarCharValue = {
            type = "string",
        },
    },
}

M.Row = {
    type = "structure",
    members = {
        Data = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResultSet = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member_type = "structure",
        },
        ResultSetMetadata = {
            type = "structure",
        },
    },
}

M.GetQueryResultsOutput = {
    type = "structure",
    members = {
        UpdateCount = {
            type = "number",
        },
        ResultSet = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetQueryRuntimeStatisticsInput = {
    type = "structure",
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
    members = {
        InputRows = {
            type = "number",
        },
        InputBytes = {
            type = "number",
        },
        OutputBytes = {
            type = "number",
        },
        OutputRows = {
            type = "number",
        },
    },
}

M.QueryRuntimeStatisticsTimeline = {
    type = "structure",
    members = {
        QueryQueueTimeInMillis = {
            type = "number",
        },
        ServicePreProcessingTimeInMillis = {
            type = "number",
        },
        QueryPlanningTimeInMillis = {
            type = "number",
        },
        EngineExecutionTimeInMillis = {
            type = "number",
        },
        ServiceProcessingTimeInMillis = {
            type = "number",
        },
        TotalExecutionTimeInMillis = {
            type = "number",
        },
    },
}

M.GetResourceDashboardInput = {
    type = "structure",
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
    members = {
        ExecutionRole = {
            type = "string",
        },
        WorkingDirectory = {
            type = "string",
        },
        IdleTimeoutSeconds = {
            type = "number",
        },
        SessionIdleTimeoutInMinutes = {
            type = "number",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.SessionStatistics = {
    type = "structure",
    members = {
        DpuExecutionInMillis = {
            type = "number",
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
        EngineConfiguration = {
            type = "structure",
        },
        NotebookVersion = {
            type = "string",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
        SessionConfiguration = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        Statistics = {
            type = "structure",
        },
    },
}

M.GetSessionEndpointInput = {
    type = "structure",
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
    members = {
        SessionId = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
    },
}

M.GetTableMetadataInput = {
    type = "structure",
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
            member_type = "structure",
        },
        PartitionKeys = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetTableMetadataOutput = {
    type = "structure",
    members = {
        TableMetadata = {
            type = "structure",
        },
    },
}

M.GetWorkGroupInput = {
    type = "structure",
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
        Configuration = {
            type = "structure",
        },
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
    members = {
        WorkGroup = {
            type = "structure",
        },
    },
}

M.ImportNotebookInput = {
    type = "structure",
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
    members = {
        NotebookId = {
            type = "string",
        },
    },
}

M.ListApplicationDPUSizesInput = {
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

M.ApplicationDPUSizes = {
    type = "structure",
    members = {
        ApplicationRuntimeId = {
            type = "string",
        },
        SupportedDPUSizes = {
            type = "list",
            member_type = "number",
        },
    },
}

M.ListApplicationDPUSizesOutput = {
    type = "structure",
    members = {
        ApplicationDPUSizes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCalculationExecutionsInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CalculationSummary = {
    type = "structure",
    members = {
        CalculationExecutionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
    },
}

M.ListCalculationExecutionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Calculations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCapacityReservationsInput = {
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

M.ListCapacityReservationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CapacityReservations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDatabasesInput = {
    type = "structure",
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
            type = "number",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListDatabasesOutput = {
    type = "structure",
    members = {
        DatabaseList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataCatalogsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.DataCatalogSummary = {
    type = "structure",
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
    members = {
        DataCatalogsSummary = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEngineVersionsInput = {
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

M.ListEngineVersionsOutput = {
    type = "structure",
    members = {
        EngineVersions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        TerminationDateTime = {
            type = "number",
        },
        ExecutorState = {
            type = "string",
        },
        ExecutorSize = {
            type = "number",
        },
    },
}

M.ListExecutorsOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ListNamedQueriesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListNamedQueriesOutput = {
    type = "structure",
    members = {
        NamedQueryIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FilterDefinition = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ListNotebookMetadataInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        NotebookMetadataList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListNotebookSessionsInput = {
    type = "structure",
    members = {
        NotebookId = {
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

M.NotebookSessionSummary = {
    type = "structure",
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
    members = {
        NotebookSessionsList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.PreparedStatementSummary = {
    type = "structure",
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
    members = {
        PreparedStatements = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQueryExecutionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListQueryExecutionsOutput = {
    type = "structure",
    members = {
        QueryExecutionIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SessionSummary = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EngineVersion = {
            type = "structure",
        },
        NotebookVersion = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Sessions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTableMetadataInput = {
    type = "structure",
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
            type = "number",
        },
        WorkGroup = {
            type = "string",
        },
    },
}

M.ListTableMetadataOutput = {
    type = "structure",
    members = {
        TableMetadataList = {
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
            type = "number",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkGroupsInput = {
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

M.WorkGroupSummary = {
    type = "structure",
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
        EngineVersion = {
            type = "structure",
        },
        IdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.ListWorkGroupsOutput = {
    type = "structure",
    members = {
        WorkGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutCapacityAssignmentConfigurationInput = {
    type = "structure",
    members = {
        CapacityReservationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CapacityAssignments = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutCapacityAssignmentConfigurationOutput = {
    type = "structure",
}

M.CalculationConfiguration = {
    type = "structure",
    members = {
        CodeBlock = {
            type = "string",
        },
    },
}

M.StartCalculationExecutionInput = {
    type = "structure",
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
        CalculationConfiguration = {
            type = "structure",
        },
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
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        QueryExecutionContext = {
            type = "structure",
        },
        ResultConfiguration = {
            type = "structure",
        },
        WorkGroup = {
            type = "string",
        },
        ExecutionParameters = {
            type = "list",
            member_type = "string",
        },
        ResultReuseConfiguration = {
            type = "structure",
        },
        EngineConfiguration = {
            type = "structure",
        },
    },
}

M.StartQueryExecutionOutput = {
    type = "structure",
    members = {
        QueryExecutionId = {
            type = "string",
        },
    },
}

M.SessionAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartSessionInput = {
    type = "structure",
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
        EngineConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExecutionRole = {
            type = "string",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
        NotebookVersion = {
            type = "string",
        },
        SessionIdleTimeoutInMinutes = {
            type = "number",
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CopyWorkGroupTags = {
            type = "boolean",
        },
    },
}

M.StartSessionOutput = {
    type = "structure",
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
    members = {
        State = {
            type = "string",
        },
    },
}

M.StopQueryExecutionInput = {
    type = "structure",
    members = {
        QueryExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQueryExecutionOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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

M.TerminateSessionInput = {
    type = "structure",
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
    members = {
        State = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateCapacityReservationInput = {
    type = "structure",
    members = {
        TargetDpus = {
            type = "number",
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
}

M.UpdateDataCatalogInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateDataCatalogOutput = {
    type = "structure",
}

M.UpdateNamedQueryInput = {
    type = "structure",
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
}

M.UpdateNotebookInput = {
    type = "structure",
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
}

M.UpdateNotebookMetadataInput = {
    type = "structure",
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
}

M.UpdatePreparedStatementInput = {
    type = "structure",
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
}

M.ManagedQueryResultsConfigurationUpdates = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        RemoveEncryptionConfiguration = {
            type = "boolean",
        },
    },
}

M.ResultConfigurationUpdates = {
    type = "structure",
    members = {
        OutputLocation = {
            type = "string",
        },
        RemoveOutputLocation = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        RemoveEncryptionConfiguration = {
            type = "boolean",
        },
        ExpectedBucketOwner = {
            type = "string",
        },
        RemoveExpectedBucketOwner = {
            type = "boolean",
        },
        AclConfiguration = {
            type = "structure",
        },
        RemoveAclConfiguration = {
            type = "boolean",
        },
    },
}

M.WorkGroupConfigurationUpdates = {
    type = "structure",
    members = {
        EnforceWorkGroupConfiguration = {
            type = "boolean",
        },
        ResultConfigurationUpdates = {
            type = "structure",
        },
        ManagedQueryResultsConfigurationUpdates = {
            type = "structure",
        },
        PublishCloudWatchMetricsEnabled = {
            type = "boolean",
        },
        BytesScannedCutoffPerQuery = {
            type = "number",
        },
        RemoveBytesScannedCutoffPerQuery = {
            type = "boolean",
        },
        RequesterPaysEnabled = {
            type = "boolean",
        },
        EngineVersion = {
            type = "structure",
        },
        RemoveCustomerContentEncryptionConfiguration = {
            type = "boolean",
        },
        AdditionalConfiguration = {
            type = "string",
        },
        ExecutionRole = {
            type = "string",
        },
        CustomerContentEncryptionConfiguration = {
            type = "structure",
        },
        EnableMinimumEncryptionConfiguration = {
            type = "boolean",
        },
        QueryResultsS3AccessGrantsConfiguration = {
            type = "structure",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
        EngineConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateWorkGroupInput = {
    type = "structure",
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
        ConfigurationUpdates = {
            type = "structure",
        },
        State = {
            type = "string",
        },
    },
}

M.UpdateWorkGroupOutput = {
    type = "structure",
}

M.QueryStagePlanNode = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        Children = {
            type = "list",
            member_type = "structure",
        },
        RemoteSources = {
            type = "list",
            member_type = "string",
        },
    },
}

M.QueryStage = {
    type = "structure",
    members = {
        StageId = {
            type = "number",
        },
        State = {
            type = "string",
        },
        OutputBytes = {
            type = "number",
        },
        OutputRows = {
            type = "number",
        },
        InputBytes = {
            type = "number",
        },
        InputRows = {
            type = "number",
        },
        ExecutionTime = {
            type = "number",
        },
        QueryStagePlan = {
            type = "structure",
        },
        SubStages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QueryRuntimeStatistics = {
    type = "structure",
    members = {
        Timeline = {
            type = "structure",
        },
        Rows = {
            type = "structure",
        },
        OutputStage = {
            type = "structure",
        },
    },
}

M.GetQueryRuntimeStatisticsOutput = {
    type = "structure",
    members = {
        QueryRuntimeStatistics = {
            type = "structure",
        },
    },
}

return M
