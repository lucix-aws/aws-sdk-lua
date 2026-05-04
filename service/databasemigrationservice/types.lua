local M = {}

M.AccessDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccountQuota = {
    type = "structure",
    members = {
        AccountQuotaName = {
            type = "string",
        },
        Used = {
            type = "number",
        },
        Max = {
            type = "number",
        },
    },
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
        ResourceArn = {
            type = "string",
        },
    },
}

M.AddTagsToResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.AddTagsToResourceOutput = {
    type = "structure",
}

M.InvalidResourceStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplyPendingMaintenanceActionInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptInType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PendingMaintenanceAction = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        AutoAppliedAfterDate = {
            type = "timestamp",
        },
        ForcedApplyDate = {
            type = "timestamp",
        },
        OptInStatus = {
            type = "string",
        },
        CurrentApplyDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.ResourcePendingMaintenanceActions = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
        },
        PendingMaintenanceActionDetails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApplyPendingMaintenanceActionOutput = {
    type = "structure",
    members = {
        ResourcePendingMaintenanceActions = {
            type = "structure",
        },
    },
}

M.RecommendationSettings = {
    type = "structure",
    members = {
        InstanceSizingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRecommendationsRequestEntry = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchStartRecommendationsInput = {
    type = "structure",
    members = {
        Data = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchStartRecommendationsErrorEntry = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.BatchStartRecommendationsOutput = {
    type = "structure",
    members = {
        ErrorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelMetadataModelConversionInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultErrorDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ErrorDetails = {
    type = "union",
    members = {
        defaultErrorDetails = {
            type = "structure",
        },
    },
}

M.ExportSqlDetails = {
    type = "structure",
    members = {
        S3ObjectKey = {
            type = "string",
        },
        ObjectURL = {
            type = "string",
        },
    },
}

M.ProcessedObject = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
    },
}

M.Progress = {
    type = "structure",
    members = {
        ProgressPercent = {
            type = "number",
        },
        TotalObjects = {
            type = "number",
        },
        ProgressStep = {
            type = "string",
        },
        ProcessedObject = {
            type = "structure",
        },
    },
}

M.SchemaConversionRequest = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        RequestIdentifier = {
            type = "string",
        },
        MigrationProjectArn = {
            type = "string",
        },
        Error = {
            type = "union",
        },
        ExportSqlDetails = {
            type = "structure",
        },
        Progress = {
            type = "structure",
        },
    },
}

M.CancelMetadataModelConversionOutput = {
    type = "structure",
    members = {
        Request = {
            type = "structure",
        },
    },
}

M.CancelMetadataModelCreationInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMetadataModelCreationOutput = {
    type = "structure",
    members = {
        Request = {
            type = "structure",
        },
    },
}

M.CancelReplicationTaskAssessmentRunInput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationTaskAssessmentRunProgress = {
    type = "structure",
    members = {
        IndividualAssessmentCount = {
            type = "number",
        },
        IndividualAssessmentCompletedCount = {
            type = "number",
        },
    },
}

M.ReplicationTaskAssessmentRunResultStatistic = {
    type = "structure",
    members = {
        Passed = {
            type = "number",
        },
        Failed = {
            type = "number",
        },
        Error = {
            type = "number",
        },
        Warning = {
            type = "number",
        },
        Cancelled = {
            type = "number",
        },
        Skipped = {
            type = "number",
        },
    },
}

M.ReplicationTaskAssessmentRun = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = {
            type = "string",
        },
        ReplicationTaskArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ReplicationTaskAssessmentRunCreationDate = {
            type = "timestamp",
        },
        AssessmentProgress = {
            type = "structure",
        },
        LastFailureMessage = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        ResultLocationBucket = {
            type = "string",
        },
        ResultLocationFolder = {
            type = "string",
        },
        ResultEncryptionMode = {
            type = "string",
        },
        ResultKmsKeyArn = {
            type = "string",
        },
        AssessmentRunName = {
            type = "string",
        },
        IsLatestTaskAssessmentRun = {
            type = "boolean",
        },
        ResultStatistic = {
            type = "structure",
        },
    },
}

M.CancelReplicationTaskAssessmentRunOutput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = {
            type = "structure",
        },
    },
}

M.MigrationTypeValue = {
    FULL_LOAD = "full-load",
    CDC = "cdc",
    FULL_LOAD_AND_CDC = "full-load-and-cdc",
}

M.SourceDataSetting = {
    type = "structure",
    members = {
        CDCStartPosition = {
            type = "string",
        },
        CDCStartTime = {
            type = "timestamp",
        },
        CDCStopTime = {
            type = "timestamp",
        },
        SlotName = {
            type = "string",
        },
    },
}

M.TablePreparationMode = {
    DO_NOTHING = "do-nothing",
    TRUNCATE = "truncate",
    DROP_TABLES_ON_TARGET = "drop-tables-on-target",
}

M.TargetDataSetting = {
    type = "structure",
    members = {
        TablePreparationMode = {
            type = "string",
        },
    },
}

M.CreateDataMigrationInput = {
    type = "structure",
    members = {
        DataMigrationName = {
            type = "string",
        },
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataMigrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableCloudwatchLogs = {
            type = "boolean",
        },
        SourceDataSettings = {
            type = "list",
            member_type = "structure",
        },
        TargetDataSettings = {
            type = "list",
            member_type = "structure",
        },
        NumberOfJobs = {
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SelectionRules = {
            type = "string",
        },
    },
}

M.DataMigrationSettings = {
    type = "structure",
    members = {
        NumberOfJobs = {
            type = "number",
        },
        CloudwatchLogsEnabled = {
            type = "boolean",
        },
        SelectionRules = {
            type = "string",
        },
    },
}

M.DataMigrationStatistics = {
    type = "structure",
    members = {
        TablesLoaded = {
            type = "number",
        },
        ElapsedTimeMillis = {
            type = "number",
        },
        TablesLoading = {
            type = "number",
        },
        FullLoadPercentage = {
            type = "number",
        },
        CDCLatency = {
            type = "number",
        },
        TablesQueued = {
            type = "number",
        },
        TablesErrored = {
            type = "number",
        },
        StartTime = {
            type = "timestamp",
        },
        StopTime = {
            type = "timestamp",
        },
    },
}

M.DataMigration = {
    type = "structure",
    members = {
        DataMigrationName = {
            type = "string",
        },
        DataMigrationArn = {
            type = "string",
        },
        DataMigrationCreateTime = {
            type = "timestamp",
        },
        DataMigrationStartTime = {
            type = "timestamp",
        },
        DataMigrationEndTime = {
            type = "timestamp",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        MigrationProjectArn = {
            type = "string",
        },
        DataMigrationType = {
            type = "string",
        },
        DataMigrationSettings = {
            type = "structure",
        },
        SourceDataSettings = {
            type = "list",
            member_type = "structure",
        },
        TargetDataSettings = {
            type = "list",
            member_type = "structure",
        },
        DataMigrationStatistics = {
            type = "structure",
        },
        DataMigrationStatus = {
            type = "string",
        },
        PublicIpAddresses = {
            type = "list",
            member_type = "string",
        },
        DataMigrationCidrBlocks = {
            type = "list",
            member_type = "string",
        },
        LastFailureMessage = {
            type = "string",
        },
        StopReason = {
            type = "string",
        },
    },
}

M.CreateDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = {
            type = "structure",
        },
    },
}

M.FailedDependencyFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOperationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.ResourceQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DmsSslModeValue = {
    NONE = "none",
    REQUIRE = "require",
    VERIFY_CA = "verify-ca",
    VERIFY_FULL = "verify-full",
}

M.DocDbDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
    },
}

M.IbmDb2LuwDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        EncryptionAlgorithm = {
            type = "number",
        },
        SecurityMechanism = {
            type = "number",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.IbmDb2zOsDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.MariaDbDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.MicrosoftSqlServerDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.AuthMechanismValue = {
    DEFAULT = "default",
    MONGODB_CR = "mongodb_cr",
    SCRAM_SHA_1 = "scram_sha_1",
}

M.AuthTypeValue = {
    NO = "no",
    PASSWORD = "password",
}

M.MongoDbDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        AuthType = {
            type = "string",
        },
        AuthSource = {
            type = "string",
        },
        AuthMechanism = {
            type = "string",
        },
    },
}

M.MySqlDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.OracleDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        AsmServer = {
            type = "string",
        },
        SecretsManagerOracleAsmSecretId = {
            type = "string",
        },
        SecretsManagerOracleAsmAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecurityDbEncryptionSecretId = {
            type = "string",
        },
        SecretsManagerSecurityDbEncryptionAccessRoleArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.PostgreSqlDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.RedshiftDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        S3AccessRoleArn = {
            type = "string",
        },
    },
}

M.SybaseAseDataProviderSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        EncryptPassword = {
            type = "boolean",
        },
        CertificateArn = {
            type = "string",
        },
    },
}

M.DataProviderSettings = {
    type = "union",
    members = {
        RedshiftSettings = {
            type = "structure",
        },
        PostgreSqlSettings = {
            type = "structure",
        },
        MySqlSettings = {
            type = "structure",
        },
        OracleSettings = {
            type = "structure",
        },
        SybaseAseSettings = {
            type = "structure",
        },
        MicrosoftSqlServerSettings = {
            type = "structure",
        },
        DocDbSettings = {
            type = "structure",
        },
        MariaDbSettings = {
            type = "structure",
        },
        IbmDb2LuwSettings = {
            type = "structure",
        },
        IbmDb2zOsSettings = {
            type = "structure",
        },
        MongoDbSettings = {
            type = "structure",
        },
    },
}

M.CreateDataProviderInput = {
    type = "structure",
    members = {
        DataProviderName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Virtual = {
            type = "boolean",
        },
        Settings = {
            type = "union",
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

M.DataProvider = {
    type = "structure",
    members = {
        DataProviderName = {
            type = "string",
        },
        DataProviderArn = {
            type = "string",
        },
        DataProviderCreationTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        Virtual = {
            type = "boolean",
        },
        Settings = {
            type = "union",
        },
    },
}

M.CreateDataProviderOutput = {
    type = "structure",
    members = {
        DataProvider = {
            type = "structure",
        },
    },
}

M.DmsTransferSettings = {
    type = "structure",
    members = {
        ServiceAccessRoleArn = {
            type = "string",
        },
        BucketName = {
            type = "string",
        },
    },
}

M.NestingLevelValue = {
    NONE = "none",
    ONE = "one",
}

M.DocDbSettings = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        NestingLevel = {
            type = "string",
        },
        ExtractDocId = {
            type = "boolean",
        },
        DocsToInvestigate = {
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        UseUpdateLookUp = {
            type = "boolean",
        },
        ReplicateShardCollections = {
            type = "boolean",
        },
    },
}

M.DynamoDbSettings = {
    type = "structure",
    members = {
        ServiceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ElasticsearchSettings = {
    type = "structure",
    members = {
        ServiceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FullLoadErrorPercentage = {
            type = "number",
        },
        ErrorRetryDuration = {
            type = "number",
        },
        UseNewMappingType = {
            type = "boolean",
        },
    },
}

M.ReplicationEndpointTypeValue = {
    SOURCE = "source",
    TARGET = "target",
}

M.TargetDbType = {
    SPECIFIC_DATABASE = "specific-database",
    MULTIPLE_DATABASES = "multiple-databases",
}

M.GcpMySQLSettings = {
    type = "structure",
    members = {
        AfterConnectScript = {
            type = "string",
        },
        CleanSourceMetadataOnMismatch = {
            type = "boolean",
        },
        DatabaseName = {
            type = "string",
        },
        EventsPollInterval = {
            type = "number",
        },
        TargetDbType = {
            type = "string",
        },
        MaxFileSize = {
            type = "number",
        },
        ParallelLoadThreads = {
            type = "number",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ServerName = {
            type = "string",
        },
        ServerTimezone = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
    },
}

M.IBMDb2Settings = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ServerName = {
            type = "string",
        },
        SetDataCaptureChanges = {
            type = "boolean",
        },
        CurrentLsn = {
            type = "string",
        },
        MaxKBytesPerRead = {
            type = "number",
        },
        Username = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        LoadTimeout = {
            type = "number",
        },
        WriteBufferSize = {
            type = "number",
        },
        MaxFileSize = {
            type = "number",
        },
        KeepCsvFiles = {
            type = "boolean",
        },
    },
}

M.MessageFormatValue = {
    JSON = "json",
    JSON_UNFORMATTED = "json-unformatted",
}

M.KafkaSaslMechanism = {
    SCRAM_SHA_512 = "scram-sha-512",
    PLAIN = "plain",
}

M.KafkaSecurityProtocol = {
    PLAINTEXT = "plaintext",
    SSL_AUTHENTICATION = "ssl-authentication",
    SSL_ENCRYPTION = "ssl-encryption",
    SASL_SSL = "sasl-ssl",
}

M.KafkaSslEndpointIdentificationAlgorithm = {
    NONE = "none",
    HTTPS = "https",
}

M.KafkaSettings = {
    type = "structure",
    members = {
        Broker = {
            type = "string",
        },
        Topic = {
            type = "string",
        },
        MessageFormat = {
            type = "string",
        },
        IncludeTransactionDetails = {
            type = "boolean",
        },
        IncludePartitionValue = {
            type = "boolean",
        },
        PartitionIncludeSchemaTable = {
            type = "boolean",
        },
        IncludeTableAlterOperations = {
            type = "boolean",
        },
        IncludeControlDetails = {
            type = "boolean",
        },
        MessageMaxBytes = {
            type = "number",
        },
        IncludeNullAndEmpty = {
            type = "boolean",
        },
        SecurityProtocol = {
            type = "string",
        },
        SslClientCertificateArn = {
            type = "string",
        },
        SslClientKeyArn = {
            type = "string",
        },
        SslClientKeyPassword = {
            type = "string",
        },
        SslCaCertificateArn = {
            type = "string",
        },
        SaslUsername = {
            type = "string",
        },
        SaslPassword = {
            type = "string",
        },
        NoHexPrefix = {
            type = "boolean",
        },
        SaslMechanism = {
            type = "string",
        },
        SslEndpointIdentificationAlgorithm = {
            type = "string",
        },
        UseLargeIntegerValue = {
            type = "boolean",
        },
    },
}

M.KinesisSettings = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
        MessageFormat = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        IncludeTransactionDetails = {
            type = "boolean",
        },
        IncludePartitionValue = {
            type = "boolean",
        },
        PartitionIncludeSchemaTable = {
            type = "boolean",
        },
        IncludeTableAlterOperations = {
            type = "boolean",
        },
        IncludeControlDetails = {
            type = "boolean",
        },
        IncludeNullAndEmpty = {
            type = "boolean",
        },
        NoHexPrefix = {
            type = "boolean",
        },
        UseLargeIntegerValue = {
            type = "boolean",
        },
    },
}

M.SqlServerAuthenticationMethod = {
    Password = "password",
    Kerberos = "kerberos",
}

M.SafeguardPolicy = {
    RELY_ON_SQL_SERVER_REPLICATION_AGENT = "rely-on-sql-server-replication-agent",
    EXCLUSIVE_AUTOMATIC_TRUNCATION = "exclusive-automatic-truncation",
    SHARED_AUTOMATIC_TRUNCATION = "shared-automatic-truncation",
}

M.TlogAccessMode = {
    BackupOnly = "BackupOnly",
    PreferBackup = "PreferBackup",
    PreferTlog = "PreferTlog",
    TlogOnly = "TlogOnly",
}

M.MicrosoftSQLServerSettings = {
    type = "structure",
    members = {
        Port = {
            type = "number",
        },
        BcpPacketSize = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        ControlTablesFileGroup = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        QuerySingleAlwaysOnNode = {
            type = "boolean",
        },
        ReadBackupOnly = {
            type = "boolean",
        },
        SafeguardPolicy = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        UseBcpFullLoad = {
            type = "boolean",
        },
        UseThirdPartyBackupDevice = {
            type = "boolean",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        TrimSpaceInChar = {
            type = "boolean",
        },
        TlogAccessMode = {
            type = "string",
        },
        ForceLobLookup = {
            type = "boolean",
        },
        AuthenticationMethod = {
            type = "string",
        },
    },
}

M.MongoDbSettings = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        AuthType = {
            type = "string",
        },
        AuthMechanism = {
            type = "string",
        },
        NestingLevel = {
            type = "string",
        },
        ExtractDocId = {
            type = "string",
        },
        DocsToInvestigate = {
            type = "string",
        },
        AuthSource = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        UseUpdateLookUp = {
            type = "boolean",
        },
        ReplicateShardCollections = {
            type = "boolean",
        },
    },
}

M.MySQLAuthenticationMethod = {
    Password = "password",
    IAM = "iam",
}

M.MySQLSettings = {
    type = "structure",
    members = {
        AfterConnectScript = {
            type = "string",
        },
        CleanSourceMetadataOnMismatch = {
            type = "boolean",
        },
        DatabaseName = {
            type = "string",
        },
        EventsPollInterval = {
            type = "number",
        },
        TargetDbType = {
            type = "string",
        },
        MaxFileSize = {
            type = "number",
        },
        ParallelLoadThreads = {
            type = "number",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ServerName = {
            type = "string",
        },
        ServerTimezone = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        ExecuteTimeout = {
            type = "number",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        AuthenticationMethod = {
            type = "string",
        },
    },
}

M.NeptuneSettings = {
    type = "structure",
    members = {
        ServiceAccessRoleArn = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketFolder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorRetryDuration = {
            type = "number",
        },
        MaxFileSize = {
            type = "number",
        },
        MaxRetryCount = {
            type = "number",
        },
        IamAuthEnabled = {
            type = "boolean",
        },
    },
}

M.OracleAuthenticationMethod = {
    Password = "password",
    Kerberos = "kerberos",
}

M.CharLengthSemantics = {
    DEFAULT = "default",
    CHAR = "char",
    BYTE = "byte",
}

M.OracleSettings = {
    type = "structure",
    members = {
        AddSupplementalLogging = {
            type = "boolean",
        },
        ArchivedLogDestId = {
            type = "number",
        },
        AdditionalArchivedLogDestId = {
            type = "number",
        },
        ExtraArchivedLogDestIds = {
            type = "list",
            member_type = "number",
        },
        AllowSelectNestedTables = {
            type = "boolean",
        },
        ParallelAsmReadThreads = {
            type = "number",
        },
        ReadAheadBlocks = {
            type = "number",
        },
        AccessAlternateDirectly = {
            type = "boolean",
        },
        UseAlternateFolderForOnline = {
            type = "boolean",
        },
        OraclePathPrefix = {
            type = "string",
        },
        UsePathPrefix = {
            type = "string",
        },
        ReplacePathPrefix = {
            type = "boolean",
        },
        EnableHomogenousTablespace = {
            type = "boolean",
        },
        DirectPathNoLog = {
            type = "boolean",
        },
        ArchivedLogsOnly = {
            type = "boolean",
        },
        AsmPassword = {
            type = "string",
        },
        AsmServer = {
            type = "string",
        },
        AsmUser = {
            type = "string",
        },
        CharLengthSemantics = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DirectPathParallelLoad = {
            type = "boolean",
        },
        FailTasksOnLobTruncation = {
            type = "boolean",
        },
        NumberDatatypeScale = {
            type = "number",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ReadTableSpaceName = {
            type = "boolean",
        },
        RetryInterval = {
            type = "number",
        },
        SecurityDbEncryption = {
            type = "string",
        },
        SecurityDbEncryptionName = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        SpatialDataOptionToGeoJsonFunctionName = {
            type = "string",
        },
        StandbyDelayTime = {
            type = "number",
        },
        Username = {
            type = "string",
        },
        UseBFile = {
            type = "boolean",
        },
        UseDirectPathFullLoad = {
            type = "boolean",
        },
        UseLogminerReader = {
            type = "boolean",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        SecretsManagerOracleAsmAccessRoleArn = {
            type = "string",
        },
        SecretsManagerOracleAsmSecretId = {
            type = "string",
        },
        TrimSpaceInChar = {
            type = "boolean",
        },
        ConvertTimestampWithZoneToUTC = {
            type = "boolean",
        },
        OpenTransactionWindow = {
            type = "number",
        },
        AuthenticationMethod = {
            type = "string",
        },
    },
}

M.PostgreSQLAuthenticationMethod = {
    Password = "password",
    IAM = "iam",
}

M.DatabaseMode = {
    DEFAULT = "default",
    BABELFISH = "babelfish",
}

M.LongVarcharMappingType = {
    WSTRING = "wstring",
    CLOB = "clob",
    NCLOB = "nclob",
}

M.PluginNameValue = {
    NO_PREFERENCE = "no-preference",
    TEST_DECODING = "test-decoding",
    PGLOGICAL = "pglogical",
}

M.PostgreSQLSettings = {
    type = "structure",
    members = {
        AfterConnectScript = {
            type = "string",
        },
        CaptureDdls = {
            type = "boolean",
        },
        MaxFileSize = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        DdlArtifactsSchema = {
            type = "string",
        },
        ExecuteTimeout = {
            type = "number",
        },
        FailTasksOnLobTruncation = {
            type = "boolean",
        },
        HeartbeatEnable = {
            type = "boolean",
        },
        HeartbeatSchema = {
            type = "string",
        },
        HeartbeatFrequency = {
            type = "number",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ServerName = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        SlotName = {
            type = "string",
        },
        PluginName = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        TrimSpaceInChar = {
            type = "boolean",
        },
        MapBooleanAsBoolean = {
            type = "boolean",
        },
        MapJsonbAsClob = {
            type = "boolean",
        },
        MapLongVarcharAs = {
            type = "string",
        },
        DatabaseMode = {
            type = "string",
        },
        BabelfishDatabaseName = {
            type = "string",
        },
        DisableUnicodeSourceFilter = {
            type = "boolean",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        AuthenticationMethod = {
            type = "string",
        },
    },
}

M.RedisAuthTypeValue = {
    NONE = "none",
    AUTH_ROLE = "auth-role",
    AUTH_TOKEN = "auth-token",
}

M.SslSecurityProtocolValue = {
    PLAINTEXT = "plaintext",
    SSL_ENCRYPTION = "ssl-encryption",
}

M.RedisSettings = {
    type = "structure",
    members = {
        ServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SslSecurityProtocol = {
            type = "string",
        },
        AuthType = {
            type = "string",
        },
        AuthUserName = {
            type = "string",
        },
        AuthPassword = {
            type = "string",
        },
        SslCaCertificateArn = {
            type = "string",
        },
    },
}

M.EncryptionModeValue = {
    SSE_S3 = "sse-s3",
    SSE_KMS = "sse-kms",
}

M.RedshiftSettings = {
    type = "structure",
    members = {
        AcceptAnyDate = {
            type = "boolean",
        },
        AfterConnectScript = {
            type = "string",
        },
        BucketFolder = {
            type = "string",
        },
        BucketName = {
            type = "string",
        },
        CaseSensitiveNames = {
            type = "boolean",
        },
        CompUpdate = {
            type = "boolean",
        },
        ConnectionTimeout = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        DateFormat = {
            type = "string",
        },
        EmptyAsNull = {
            type = "boolean",
        },
        EncryptionMode = {
            type = "string",
        },
        ExplicitIds = {
            type = "boolean",
        },
        FileTransferUploadStreams = {
            type = "number",
        },
        LoadTimeout = {
            type = "number",
        },
        MaxFileSize = {
            type = "number",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        RemoveQuotes = {
            type = "boolean",
        },
        ReplaceInvalidChars = {
            type = "string",
        },
        ReplaceChars = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        ServerSideEncryptionKmsKeyId = {
            type = "string",
        },
        TimeFormat = {
            type = "string",
        },
        TrimBlanks = {
            type = "boolean",
        },
        TruncateColumns = {
            type = "boolean",
        },
        Username = {
            type = "string",
        },
        WriteBufferSize = {
            type = "number",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        MapBooleanAsBoolean = {
            type = "boolean",
        },
    },
}

M.CannedAclForObjectsValue = {
    NONE = "none",
    PRIVATE = "private",
    PUBLIC_READ = "public-read",
    PUBLIC_READ_WRITE = "public-read-write",
    AUTHENTICATED_READ = "authenticated-read",
    AWS_EXEC_READ = "aws-exec-read",
    BUCKET_OWNER_READ = "bucket-owner-read",
    BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control",
}

M.CompressionTypeValue = {
    NONE = "none",
    GZIP = "gzip",
}

M.DataFormatValue = {
    CSV = "csv",
    PARQUET = "parquet",
}

M.DatePartitionDelimiterValue = {
    SLASH = "SLASH",
    UNDERSCORE = "UNDERSCORE",
    DASH = "DASH",
    NONE = "NONE",
}

M.DatePartitionSequenceValue = {
    YYYYMMDD = "YYYYMMDD",
    YYYYMMDDHH = "YYYYMMDDHH",
    YYYYMM = "YYYYMM",
    MMYYYYDD = "MMYYYYDD",
    DDMMYYYY = "DDMMYYYY",
}

M.EncodingTypeValue = {
    PLAIN = "plain",
    PLAIN_DICTIONARY = "plain-dictionary",
    RLE_DICTIONARY = "rle-dictionary",
}

M.ParquetVersionValue = {
    PARQUET_1_0 = "parquet-1-0",
    PARQUET_2_0 = "parquet-2-0",
}

M.S3Settings = {
    type = "structure",
    members = {
        ServiceAccessRoleArn = {
            type = "string",
        },
        ExternalTableDefinition = {
            type = "string",
        },
        CsvRowDelimiter = {
            type = "string",
        },
        CsvDelimiter = {
            type = "string",
        },
        BucketFolder = {
            type = "string",
        },
        BucketName = {
            type = "string",
        },
        CompressionType = {
            type = "string",
        },
        EncryptionMode = {
            type = "string",
        },
        ServerSideEncryptionKmsKeyId = {
            type = "string",
        },
        DataFormat = {
            type = "string",
        },
        EncodingType = {
            type = "string",
        },
        DictPageSizeLimit = {
            type = "number",
        },
        RowGroupLength = {
            type = "number",
        },
        DataPageSize = {
            type = "number",
        },
        ParquetVersion = {
            type = "string",
        },
        EnableStatistics = {
            type = "boolean",
        },
        IncludeOpForFullLoad = {
            type = "boolean",
        },
        CdcInsertsOnly = {
            type = "boolean",
        },
        TimestampColumnName = {
            type = "string",
        },
        ParquetTimestampInMillisecond = {
            type = "boolean",
        },
        CdcInsertsAndUpdates = {
            type = "boolean",
        },
        DatePartitionEnabled = {
            type = "boolean",
        },
        DatePartitionSequence = {
            type = "string",
        },
        DatePartitionDelimiter = {
            type = "string",
        },
        UseCsvNoSupValue = {
            type = "boolean",
        },
        CsvNoSupValue = {
            type = "string",
        },
        PreserveTransactions = {
            type = "boolean",
        },
        CdcPath = {
            type = "string",
        },
        UseTaskStartTimeForFullLoadTimestamp = {
            type = "boolean",
        },
        CannedAclForObjects = {
            type = "string",
        },
        AddColumnName = {
            type = "boolean",
        },
        CdcMaxBatchInterval = {
            type = "number",
        },
        CdcMinFileSize = {
            type = "number",
        },
        CsvNullValue = {
            type = "string",
        },
        IgnoreHeaderRows = {
            type = "number",
        },
        MaxFileSize = {
            type = "number",
        },
        Rfc4180 = {
            type = "boolean",
        },
        DatePartitionTimezone = {
            type = "string",
        },
        AddTrailingPaddingCharacter = {
            type = "boolean",
        },
        ExpectedBucketOwner = {
            type = "string",
        },
        GlueCatalogGeneration = {
            type = "boolean",
        },
    },
}

M.SybaseSettings = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        ServerName = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        SecretsManagerSecretId = {
            type = "string",
        },
    },
}

M.TimestreamSettings = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemoryDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MagneticDuration = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CdcInsertsAndUpdates = {
            type = "boolean",
        },
        EnableMagneticStoreWrites = {
            type = "boolean",
        },
    },
}

M.CreateEndpointInput = {
    type = "structure",
    members = {
        EndpointIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        ExtraConnectionAttributes = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CertificateArn = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        ExternalTableDefinition = {
            type = "string",
        },
        DynamoDbSettings = {
            type = "structure",
        },
        S3Settings = {
            type = "structure",
        },
        DmsTransferSettings = {
            type = "structure",
        },
        MongoDbSettings = {
            type = "structure",
        },
        KinesisSettings = {
            type = "structure",
        },
        KafkaSettings = {
            type = "structure",
        },
        ElasticsearchSettings = {
            type = "structure",
        },
        NeptuneSettings = {
            type = "structure",
        },
        RedshiftSettings = {
            type = "structure",
        },
        PostgreSQLSettings = {
            type = "structure",
        },
        MySQLSettings = {
            type = "structure",
        },
        OracleSettings = {
            type = "structure",
        },
        SybaseSettings = {
            type = "structure",
        },
        MicrosoftSQLServerSettings = {
            type = "structure",
        },
        IBMDb2Settings = {
            type = "structure",
        },
        ResourceIdentifier = {
            type = "string",
        },
        DocDbSettings = {
            type = "structure",
        },
        RedisSettings = {
            type = "structure",
        },
        GcpMySQLSettings = {
            type = "structure",
        },
        TimestreamSettings = {
            type = "structure",
        },
    },
}

M.LakehouseSettings = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Endpoint = {
    type = "structure",
    members = {
        EndpointIdentifier = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        EngineDisplayName = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        ExtraConnectionAttributes = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        EndpointArn = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        ExternalTableDefinition = {
            type = "string",
        },
        ExternalId = {
            type = "string",
        },
        IsReadOnly = {
            type = "boolean",
        },
        DynamoDbSettings = {
            type = "structure",
        },
        S3Settings = {
            type = "structure",
        },
        DmsTransferSettings = {
            type = "structure",
        },
        MongoDbSettings = {
            type = "structure",
        },
        KinesisSettings = {
            type = "structure",
        },
        KafkaSettings = {
            type = "structure",
        },
        ElasticsearchSettings = {
            type = "structure",
        },
        NeptuneSettings = {
            type = "structure",
        },
        RedshiftSettings = {
            type = "structure",
        },
        PostgreSQLSettings = {
            type = "structure",
        },
        MySQLSettings = {
            type = "structure",
        },
        OracleSettings = {
            type = "structure",
        },
        SybaseSettings = {
            type = "structure",
        },
        MicrosoftSQLServerSettings = {
            type = "structure",
        },
        IBMDb2Settings = {
            type = "structure",
        },
        DocDbSettings = {
            type = "structure",
        },
        RedisSettings = {
            type = "structure",
        },
        GcpMySQLSettings = {
            type = "structure",
        },
        TimestreamSettings = {
            type = "structure",
        },
        LakehouseSettings = {
            type = "structure",
        },
    },
}

M.CreateEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = {
            type = "structure",
        },
    },
}

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3AccessDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
        SourceIds = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EventSubscription = {
    type = "structure",
    members = {
        CustomerAwsId = {
            type = "string",
        },
        CustSubscriptionId = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SubscriptionCreationTime = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        SourceIdsList = {
            type = "list",
            member_type = "string",
        },
        EventCategoriesList = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.CreateEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = {
            type = "structure",
        },
    },
}

M.KMSAccessDeniedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSDisabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSThrottlingFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateFleetAdvisorCollectorInput = {
    type = "structure",
    members = {
        CollectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFleetAdvisorCollectorOutput = {
    type = "structure",
    members = {
        CollectorReferencedId = {
            type = "string",
        },
        CollectorName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
    },
}

M.S3ResourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateInstanceProfileInput = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NetworkType = {
            type = "string",
        },
        InstanceProfileName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SubnetGroupIdentifier = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InstanceProfile = {
    type = "structure",
    members = {
        InstanceProfileArn = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        InstanceProfileName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InstanceProfileCreationTime = {
            type = "timestamp",
        },
        SubnetGroupIdentifier = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateInstanceProfileOutput = {
    type = "structure",
    members = {
        InstanceProfile = {
            type = "structure",
        },
    },
}

M.SCApplicationAttributes = {
    type = "structure",
    members = {
        S3BucketPath = {
            type = "string",
        },
        S3BucketRoleArn = {
            type = "string",
        },
    },
}

M.DataProviderDescriptorDefinition = {
    type = "structure",
    members = {
        DataProviderIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretsManagerSecretId = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
    },
}

M.CreateMigrationProjectInput = {
    type = "structure",
    members = {
        MigrationProjectName = {
            type = "string",
        },
        SourceDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        InstanceProfileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformationRules = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SchemaConversionApplicationAttributes = {
            type = "structure",
        },
    },
}

M.DataProviderDescriptor = {
    type = "structure",
    members = {
        SecretsManagerSecretId = {
            type = "string",
        },
        SecretsManagerAccessRoleArn = {
            type = "string",
        },
        DataProviderName = {
            type = "string",
        },
        DataProviderArn = {
            type = "string",
        },
    },
}

M.MigrationProject = {
    type = "structure",
    members = {
        MigrationProjectName = {
            type = "string",
        },
        MigrationProjectArn = {
            type = "string",
        },
        MigrationProjectCreationTime = {
            type = "timestamp",
        },
        SourceDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
        },
        InstanceProfileArn = {
            type = "string",
        },
        InstanceProfileName = {
            type = "string",
        },
        TransformationRules = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SchemaConversionApplicationAttributes = {
            type = "structure",
        },
    },
}

M.CreateMigrationProjectOutput = {
    type = "structure",
    members = {
        MigrationProject = {
            type = "structure",
        },
    },
}

M.ComputeConfig = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        DnsNameServers = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        MaxCapacityUnits = {
            type = "number",
        },
        MinCapacityUnits = {
            type = "number",
        },
        MultiAZ = {
            type = "boolean",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        ReplicationSubnetGroupId = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateReplicationConfigInput = {
    type = "structure",
    members = {
        ReplicationConfigIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReplicationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableMappings = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationSettings = {
            type = "string",
        },
        SupplementalSettings = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReplicationConfig = {
    type = "structure",
    members = {
        ReplicationConfigIdentifier = {
            type = "string",
        },
        ReplicationConfigArn = {
            type = "string",
        },
        SourceEndpointArn = {
            type = "string",
        },
        TargetEndpointArn = {
            type = "string",
        },
        ReplicationType = {
            type = "string",
        },
        ComputeConfig = {
            type = "structure",
        },
        ReplicationSettings = {
            type = "string",
        },
        SupplementalSettings = {
            type = "string",
        },
        TableMappings = {
            type = "string",
        },
        ReplicationConfigCreateTime = {
            type = "timestamp",
        },
        ReplicationConfigUpdateTime = {
            type = "timestamp",
        },
        IsReadOnly = {
            type = "boolean",
        },
    },
}

M.CreateReplicationConfigOutput = {
    type = "structure",
    members = {
        ReplicationConfig = {
            type = "structure",
        },
    },
}

M.InvalidSubnet = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationSubnetGroupDoesNotCoverEnoughAZs = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KerberosAuthenticationSettings = {
    type = "structure",
    members = {
        KeyCacheSecretId = {
            type = "string",
        },
        KeyCacheSecretIamArn = {
            type = "string",
        },
        Krb5FileContents = {
            type = "string",
        },
    },
}

M.CreateReplicationInstanceInput = {
    type = "structure",
    members = {
        ReplicationInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "number",
        },
        ReplicationInstanceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        ReplicationSubnetGroupIdentifier = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        DnsNameServers = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        KerberosAuthenticationSettings = {
            type = "structure",
        },
    },
}

M.ReplicationPendingModifiedValues = {
    type = "structure",
    members = {
        ReplicationInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "structure",
        },
        SubnetStatus = {
            type = "string",
        },
    },
}

M.ReplicationSubnetGroup = {
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
        },
        ReplicationSubnetGroupDescription = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetGroupStatus = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member_type = "structure",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
        },
        IsReadOnly = {
            type = "boolean",
        },
    },
}

M.VpcSecurityGroupMembership = {
    type = "structure",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ReplicationInstance = {
    type = "structure",
    members = {
        ReplicationInstanceIdentifier = {
            type = "string",
        },
        ReplicationInstanceClass = {
            type = "string",
        },
        ReplicationInstanceStatus = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZone = {
            type = "string",
        },
        ReplicationSubnetGroup = {
            type = "structure",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = {
            type = "structure",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ReplicationInstanceArn = {
            type = "string",
        },
        ReplicationInstancePublicIpAddress = {
            type = "string",
        },
        ReplicationInstancePrivateIpAddress = {
            type = "string",
        },
        ReplicationInstancePublicIpAddresses = {
            type = "list",
            member_type = "string",
        },
        ReplicationInstancePrivateIpAddresses = {
            type = "list",
            member_type = "string",
        },
        ReplicationInstanceIpv6Addresses = {
            type = "list",
            member_type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        SecondaryAvailabilityZone = {
            type = "string",
        },
        FreeUntil = {
            type = "timestamp",
        },
        DnsNameServers = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        KerberosAuthenticationSettings = {
            type = "structure",
        },
    },
}

M.CreateReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = {
            type = "structure",
        },
    },
}

M.InsufficientResourceCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReplicationSubnetGroupInput = {
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationSubnetGroupDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
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

M.CreateReplicationSubnetGroupOutput = {
    type = "structure",
    members = {
        ReplicationSubnetGroup = {
            type = "structure",
        },
    },
}

M.CreateReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableMappings = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationTaskSettings = {
            type = "string",
        },
        CdcStartTime = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TaskData = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
    },
}

M.ReplicationTaskStats = {
    type = "structure",
    members = {
        FullLoadProgressPercent = {
            type = "number",
        },
        ElapsedTimeMillis = {
            type = "number",
        },
        TablesLoaded = {
            type = "number",
        },
        TablesLoading = {
            type = "number",
        },
        TablesQueued = {
            type = "number",
        },
        TablesErrored = {
            type = "number",
        },
        FreshStartDate = {
            type = "timestamp",
        },
        StartDate = {
            type = "timestamp",
        },
        StopDate = {
            type = "timestamp",
        },
        FullLoadStartDate = {
            type = "timestamp",
        },
        FullLoadFinishDate = {
            type = "timestamp",
        },
    },
}

M.ReplicationTask = {
    type = "structure",
    members = {
        ReplicationTaskIdentifier = {
            type = "string",
        },
        SourceEndpointArn = {
            type = "string",
        },
        TargetEndpointArn = {
            type = "string",
        },
        ReplicationInstanceArn = {
            type = "string",
        },
        MigrationType = {
            type = "string",
        },
        TableMappings = {
            type = "string",
        },
        ReplicationTaskSettings = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastFailureMessage = {
            type = "string",
        },
        StopReason = {
            type = "string",
        },
        ReplicationTaskCreationDate = {
            type = "timestamp",
        },
        ReplicationTaskStartDate = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
        RecoveryCheckpoint = {
            type = "string",
        },
        ReplicationTaskArn = {
            type = "string",
        },
        ReplicationTaskStats = {
            type = "structure",
        },
        TaskData = {
            type = "string",
        },
        TargetReplicationInstanceArn = {
            type = "string",
        },
    },
}

M.CreateReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.DeleteCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Certificate = {
    type = "structure",
    members = {
        CertificateIdentifier = {
            type = "string",
        },
        CertificateCreationDate = {
            type = "timestamp",
        },
        CertificatePem = {
            type = "string",
        },
        CertificateWallet = {
            type = "blob",
        },
        CertificateArn = {
            type = "string",
        },
        CertificateOwner = {
            type = "string",
        },
        ValidFromDate = {
            type = "timestamp",
        },
        ValidToDate = {
            type = "timestamp",
        },
        SigningAlgorithm = {
            type = "string",
        },
        KeyLength = {
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.DeleteCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "structure",
        },
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Connection = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
        },
        EndpointArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastFailureMessage = {
            type = "string",
        },
        EndpointIdentifier = {
            type = "string",
        },
        ReplicationInstanceIdentifier = {
            type = "string",
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
    },
}

M.DeleteDataMigrationInput = {
    type = "structure",
    members = {
        DataMigrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = {
            type = "structure",
        },
    },
}

M.DeleteDataProviderInput = {
    type = "structure",
    members = {
        DataProviderIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataProviderOutput = {
    type = "structure",
    members = {
        DataProvider = {
            type = "structure",
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = {
            type = "structure",
        },
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = {
            type = "structure",
        },
    },
}

M.CollectorNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFleetAdvisorCollectorInput = {
    type = "structure",
    members = {
        CollectorReferencedId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetAdvisorCollectorOutput = {
    type = "structure",
}

M.DeleteFleetAdvisorDatabasesInput = {
    type = "structure",
    members = {
        DatabaseIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetAdvisorDatabasesOutput = {
    type = "structure",
    members = {
        DatabaseIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeleteInstanceProfileInput = {
    type = "structure",
    members = {
        InstanceProfileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceProfileOutput = {
    type = "structure",
    members = {
        InstanceProfile = {
            type = "structure",
        },
    },
}

M.DeleteMigrationProjectInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMigrationProjectOutput = {
    type = "structure",
    members = {
        MigrationProject = {
            type = "structure",
        },
    },
}

M.DeleteReplicationConfigInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationConfigOutput = {
    type = "structure",
    members = {
        ReplicationConfig = {
            type = "structure",
        },
    },
}

M.DeleteReplicationInstanceInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = {
            type = "structure",
        },
    },
}

M.DeleteReplicationSubnetGroupInput = {
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationSubnetGroupOutput = {
    type = "structure",
}

M.DeleteReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.DeleteReplicationTaskAssessmentRunInput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationTaskAssessmentRunOutput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = {
            type = "structure",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        AccountQuotas = {
            type = "list",
            member_type = "structure",
        },
        UniqueAccountIdentifier = {
            type = "string",
        },
    },
}

M.DescribeApplicableIndividualAssessmentsInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
        },
        ReplicationInstanceArn = {
            type = "string",
        },
        ReplicationConfigArn = {
            type = "string",
        },
        SourceEngineName = {
            type = "string",
        },
        TargetEngineName = {
            type = "string",
        },
        MigrationType = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeApplicableIndividualAssessmentsOutput = {
    type = "structure",
    members = {
        IndividualAssessmentNames = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCertificatesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCertificatesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeConnectionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeConnectionsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Connections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeConversionConfigurationInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConversionConfigurationOutput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
        },
        ConversionConfiguration = {
            type = "string",
        },
    },
}

M.DescribeDataMigrationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        WithoutSettings = {
            type = "boolean",
        },
        WithoutStatistics = {
            type = "boolean",
        },
    },
}

M.DescribeDataMigrationsOutput = {
    type = "structure",
    members = {
        DataMigrations = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataProvidersInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDataProvidersOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        DataProviders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEndpointsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEndpointsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEndpointSettingsInput = {
    type = "structure",
    members = {
        EngineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.EndpointSettingTypeValue = {
    STRING = "string",
    BOOLEAN = "boolean",
    INTEGER = "integer",
    ENUM = "enum",
}

M.EndpointSetting = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        EnumValues = {
            type = "list",
            member_type = "string",
        },
        Sensitive = {
            type = "boolean",
        },
        Units = {
            type = "string",
        },
        Applicability = {
            type = "string",
        },
        IntValueMin = {
            type = "number",
        },
        IntValueMax = {
            type = "number",
        },
        DefaultValue = {
            type = "string",
        },
    },
}

M.DescribeEndpointSettingsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        EndpointSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEndpointTypesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.SupportedEndpointType = {
    type = "structure",
    members = {
        EngineName = {
            type = "string",
        },
        SupportsCDC = {
            type = "boolean",
        },
        EndpointType = {
            type = "string",
        },
        ReplicationInstanceEngineMinimumVersion = {
            type = "string",
        },
        EngineDisplayName = {
            type = "string",
        },
    },
}

M.DescribeEndpointTypesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        SupportedEndpointTypes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEngineVersionsInput = {
    type = "structure",
    members = {
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReleaseStatusValues = {
    BETA = "beta",
    PROD = "prod",
}

M.EngineVersion = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        ReleaseStatus = {
            type = "string",
        },
        LaunchDate = {
            type = "timestamp",
        },
        AutoUpgradeDate = {
            type = "timestamp",
        },
        DeprecationDate = {
            type = "timestamp",
        },
        ForceUpgradeDate = {
            type = "timestamp",
        },
        AvailableUpgrades = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEngineVersionsOutput = {
    type = "structure",
    members = {
        EngineVersions = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEventCategoriesInput = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EventCategoryGroup = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEventCategoriesOutput = {
    type = "structure",
    members = {
        EventCategoryGroupList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SourceType = {
    replication_instance = "replication-instance",
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Duration = {
            type = "number",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
        Date = {
            type = "timestamp",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Events = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEventSubscriptionsInput = {
    type = "structure",
    members = {
        SubscriptionName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEventSubscriptionsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        EventSubscriptionsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeExtensionPackAssociationsInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeExtensionPackAssociationsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeFleetAdvisorCollectorsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CollectorStatus = {
    UNREGISTERED = "UNREGISTERED",
    ACTIVE = "ACTIVE",
}

M.CollectorHealthCheck = {
    type = "structure",
    members = {
        CollectorStatus = {
            type = "string",
        },
        LocalCollectorS3Access = {
            type = "boolean",
        },
        WebCollectorS3Access = {
            type = "boolean",
        },
        WebCollectorGrantedRoleBasedAccess = {
            type = "boolean",
        },
    },
}

M.InventoryData = {
    type = "structure",
    members = {
        NumberOfDatabases = {
            type = "number",
        },
        NumberOfSchemas = {
            type = "number",
        },
    },
}

M.VersionStatus = {
    UP_TO_DATE = "UP_TO_DATE",
    OUTDATED = "OUTDATED",
    UNSUPPORTED = "UNSUPPORTED",
}

M.CollectorResponse = {
    type = "structure",
    members = {
        CollectorReferencedId = {
            type = "string",
        },
        CollectorName = {
            type = "string",
        },
        CollectorVersion = {
            type = "string",
        },
        VersionStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        CollectorHealthCheck = {
            type = "structure",
        },
        LastDataReceived = {
            type = "string",
        },
        RegisteredDate = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        ModifiedDate = {
            type = "string",
        },
        InventoryData = {
            type = "structure",
        },
    },
}

M.DescribeFleetAdvisorCollectorsOutput = {
    type = "structure",
    members = {
        Collectors = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetAdvisorDatabasesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CollectorShortInfoResponse = {
    type = "structure",
    members = {
        CollectorReferencedId = {
            type = "string",
        },
        CollectorName = {
            type = "string",
        },
    },
}

M.ServerShortInfoResponse = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
    },
}

M.DatabaseInstanceSoftwareDetailsResponse = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EngineEdition = {
            type = "string",
        },
        ServicePack = {
            type = "string",
        },
        SupportLevel = {
            type = "string",
        },
        OsArchitecture = {
            type = "number",
        },
        Tooltip = {
            type = "string",
        },
    },
}

M.DatabaseResponse = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        NumberOfSchemas = {
            type = "number",
        },
        Server = {
            type = "structure",
        },
        SoftwareDetails = {
            type = "structure",
        },
        Collectors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeFleetAdvisorDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetAdvisorLsaAnalysisInput = {
    type = "structure",
    members = {
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FleetAdvisorLsaAnalysisResponse = {
    type = "structure",
    members = {
        LsaAnalysisId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DescribeFleetAdvisorLsaAnalysisOutput = {
    type = "structure",
    members = {
        Analysis = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetAdvisorSchemaObjectSummaryInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FleetAdvisorSchemaObjectResponse = {
    type = "structure",
    members = {
        SchemaId = {
            type = "string",
        },
        ObjectType = {
            type = "string",
        },
        NumberOfObjects = {
            type = "number",
        },
        CodeLineCount = {
            type = "number",
        },
        CodeSize = {
            type = "number",
        },
    },
}

M.DescribeFleetAdvisorSchemaObjectSummaryOutput = {
    type = "structure",
    members = {
        FleetAdvisorSchemaObjects = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFleetAdvisorSchemasInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DatabaseShortInfoResponse = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DatabaseIpAddress = {
            type = "string",
        },
        DatabaseEngine = {
            type = "string",
        },
    },
}

M.SchemaShortInfoResponse = {
    type = "structure",
    members = {
        SchemaId = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        DatabaseId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DatabaseIpAddress = {
            type = "string",
        },
    },
}

M.SchemaResponse = {
    type = "structure",
    members = {
        CodeLineCount = {
            type = "number",
        },
        CodeSize = {
            type = "number",
        },
        Complexity = {
            type = "string",
        },
        Server = {
            type = "structure",
        },
        DatabaseInstance = {
            type = "structure",
        },
        SchemaId = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        OriginalSchema = {
            type = "structure",
        },
        Similarity = {
            type = "number",
        },
    },
}

M.DescribeFleetAdvisorSchemasOutput = {
    type = "structure",
    members = {
        FleetAdvisorSchemas = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInstanceProfilesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeInstanceProfilesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        InstanceProfiles = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OriginTypeValue = {
    SOURCE = "SOURCE",
    TARGET = "TARGET",
}

M.DescribeMetadataModelInput = {
    type = "structure",
    members = {
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataModelReference = {
    type = "structure",
    members = {
        MetadataModelName = {
            type = "string",
        },
        SelectionRules = {
            type = "string",
        },
    },
}

M.DescribeMetadataModelOutput = {
    type = "structure",
    members = {
        MetadataModelName = {
            type = "string",
        },
        MetadataModelType = {
            type = "string",
        },
        TargetMetadataModels = {
            type = "list",
            member_type = "structure",
        },
        Definition = {
            type = "string",
        },
    },
}

M.DescribeMetadataModelAssessmentsInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelAssessmentsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelChildrenInput = {
    type = "structure",
    members = {
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelChildrenOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MetadataModelChildren = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelConversionsInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelConversionsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelCreationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeMetadataModelCreationsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelExportsAsScriptInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelExportsAsScriptOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelExportsToTargetInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelExportsToTargetOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMetadataModelImportsInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeMetadataModelImportsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Requests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeMigrationProjectsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeMigrationProjectsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MigrationProjects = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeOrderableReplicationInstancesInput = {
    type = "structure",
    members = {
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.OrderableReplicationInstance = {
    type = "structure",
    members = {
        EngineVersion = {
            type = "string",
        },
        ReplicationInstanceClass = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        MinAllocatedStorage = {
            type = "number",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
        DefaultAllocatedStorage = {
            type = "number",
        },
        IncludedAllocatedStorage = {
            type = "number",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        ReleaseStatus = {
            type = "string",
        },
    },
}

M.DescribeOrderableReplicationInstancesOutput = {
    type = "structure",
    members = {
        OrderableReplicationInstances = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribePendingMaintenanceActionsInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribePendingMaintenanceActionsOutput = {
    type = "structure",
    members = {
        PendingMaintenanceActions = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeRecommendationLimitationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Limitation = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Impact = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.DescribeRecommendationLimitationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Limitations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRecommendationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RdsRequirements = {
    type = "structure",
    members = {
        EngineEdition = {
            type = "string",
        },
        InstanceVcpu = {
            type = "number",
        },
        InstanceMemory = {
            type = "number",
        },
        StorageSize = {
            type = "number",
        },
        StorageIops = {
            type = "number",
        },
        DeploymentOption = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
    },
}

M.RdsConfiguration = {
    type = "structure",
    members = {
        EngineEdition = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        InstanceVcpu = {
            type = "number",
        },
        InstanceMemory = {
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        StorageSize = {
            type = "number",
        },
        StorageIops = {
            type = "number",
        },
        DeploymentOption = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
    },
}

M.RdsRecommendation = {
    type = "structure",
    members = {
        RequirementsToTarget = {
            type = "structure",
        },
        TargetConfiguration = {
            type = "structure",
        },
    },
}

M.RecommendationData = {
    type = "structure",
    members = {
        RdsEngine = {
            type = "structure",
        },
    },
}

M.Recommendation = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Preferred = {
            type = "boolean",
        },
        Settings = {
            type = "structure",
        },
        Data = {
            type = "structure",
        },
    },
}

M.DescribeRecommendationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Recommendations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRefreshSchemasStatusInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RefreshSchemasStatusTypeValue = {
    SUCCESSFUL = "successful",
    FAILED = "failed",
    REFRESHING = "refreshing",
}

M.RefreshSchemasStatus = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
        },
        ReplicationInstanceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastRefreshDate = {
            type = "timestamp",
        },
        LastFailureMessage = {
            type = "string",
        },
    },
}

M.DescribeRefreshSchemasStatusOutput = {
    type = "structure",
    members = {
        RefreshSchemasStatus = {
            type = "structure",
        },
    },
}

M.DescribeReplicationConfigsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationInstancesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReplicationInstancesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationInstances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationInstanceTaskLogsInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReplicationInstanceTaskLog = {
    type = "structure",
    members = {
        ReplicationTaskName = {
            type = "string",
        },
        ReplicationTaskArn = {
            type = "string",
        },
        ReplicationInstanceTaskLogSize = {
            type = "number",
        },
    },
}

M.DescribeReplicationInstanceTaskLogsOutput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
        },
        ReplicationInstanceTaskLogs = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReplicationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.PremigrationAssessmentStatus = {
    type = "structure",
    members = {
        PremigrationAssessmentRunArn = {
            type = "string",
        },
        FailOnAssessmentFailure = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        PremigrationAssessmentRunCreationDate = {
            type = "timestamp",
        },
        AssessmentProgress = {
            type = "structure",
        },
        LastFailureMessage = {
            type = "string",
        },
        ResultLocationBucket = {
            type = "string",
        },
        ResultLocationFolder = {
            type = "string",
        },
        ResultEncryptionMode = {
            type = "string",
        },
        ResultKmsKeyArn = {
            type = "string",
        },
        ResultStatistic = {
            type = "structure",
        },
    },
}

M.ProvisionData = {
    type = "structure",
    members = {
        ProvisionState = {
            type = "string",
        },
        ProvisionedCapacityUnits = {
            type = "number",
        },
        DateProvisioned = {
            type = "timestamp",
        },
        IsNewProvisioningAvailable = {
            type = "boolean",
        },
        DateNewProvisioningDataAvailable = {
            type = "timestamp",
        },
        ReasonForNewProvisioningData = {
            type = "string",
        },
    },
}

M.ReplicationStats = {
    type = "structure",
    members = {
        FullLoadProgressPercent = {
            type = "number",
        },
        ElapsedTimeMillis = {
            type = "number",
        },
        TablesLoaded = {
            type = "number",
        },
        TablesLoading = {
            type = "number",
        },
        TablesQueued = {
            type = "number",
        },
        TablesErrored = {
            type = "number",
        },
        FreshStartDate = {
            type = "timestamp",
        },
        StartDate = {
            type = "timestamp",
        },
        StopDate = {
            type = "timestamp",
        },
        FullLoadStartDate = {
            type = "timestamp",
        },
        FullLoadFinishDate = {
            type = "timestamp",
        },
    },
}

M.Replication = {
    type = "structure",
    members = {
        ReplicationConfigIdentifier = {
            type = "string",
        },
        ReplicationConfigArn = {
            type = "string",
        },
        SourceEndpointArn = {
            type = "string",
        },
        TargetEndpointArn = {
            type = "string",
        },
        ReplicationType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ProvisionData = {
            type = "structure",
        },
        PremigrationAssessmentStatuses = {
            type = "list",
            member_type = "structure",
        },
        StopReason = {
            type = "string",
        },
        FailureMessages = {
            type = "list",
            member_type = "string",
        },
        ReplicationStats = {
            type = "structure",
        },
        StartReplicationType = {
            type = "string",
        },
        CdcStartTime = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
        RecoveryCheckpoint = {
            type = "string",
        },
        ReplicationCreateTime = {
            type = "timestamp",
        },
        ReplicationUpdateTime = {
            type = "timestamp",
        },
        ReplicationLastStopTime = {
            type = "timestamp",
        },
        ReplicationDeprovisionTime = {
            type = "timestamp",
        },
        IsReadOnly = {
            type = "boolean",
        },
    },
}

M.DescribeReplicationsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Replications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationSubnetGroupsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReplicationSubnetGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationSubnetGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationTableStatisticsInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TableStatistics = {
    type = "structure",
    members = {
        SchemaName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Inserts = {
            type = "number",
        },
        Deletes = {
            type = "number",
        },
        Updates = {
            type = "number",
        },
        Ddls = {
            type = "number",
        },
        AppliedInserts = {
            type = "number",
        },
        AppliedDeletes = {
            type = "number",
        },
        AppliedUpdates = {
            type = "number",
        },
        AppliedDdls = {
            type = "number",
        },
        FullLoadRows = {
            type = "number",
        },
        FullLoadCondtnlChkFailedRows = {
            type = "number",
        },
        FullLoadErrorRows = {
            type = "number",
        },
        FullLoadStartTime = {
            type = "timestamp",
        },
        FullLoadEndTime = {
            type = "timestamp",
        },
        FullLoadReloaded = {
            type = "boolean",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        TableState = {
            type = "string",
        },
        ValidationPendingRecords = {
            type = "number",
        },
        ValidationFailedRecords = {
            type = "number",
        },
        ValidationSuspendedRecords = {
            type = "number",
        },
        ValidationState = {
            type = "string",
        },
        ValidationStateDetails = {
            type = "string",
        },
        ResyncState = {
            type = "string",
        },
        ResyncRowsAttempted = {
            type = "number",
        },
        ResyncRowsSucceeded = {
            type = "number",
        },
        ResyncRowsFailed = {
            type = "number",
        },
        ResyncProgress = {
            type = "number",
        },
    },
}

M.DescribeReplicationTableStatisticsOutput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        ReplicationTableStatistics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationTaskAssessmentResultsInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReplicationTaskAssessmentResult = {
    type = "structure",
    members = {
        ReplicationTaskIdentifier = {
            type = "string",
        },
        ReplicationTaskArn = {
            type = "string",
        },
        ReplicationTaskLastAssessmentDate = {
            type = "timestamp",
        },
        AssessmentStatus = {
            type = "string",
        },
        AssessmentResultsFile = {
            type = "string",
        },
        AssessmentResults = {
            type = "string",
        },
        S3ObjectUrl = {
            type = "string",
        },
    },
}

M.DescribeReplicationTaskAssessmentResultsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        BucketName = {
            type = "string",
        },
        ReplicationTaskAssessmentResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationTaskAssessmentRunsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReplicationTaskAssessmentRunsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationTaskAssessmentRuns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationTaskIndividualAssessmentsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReplicationTaskIndividualAssessment = {
    type = "structure",
    members = {
        ReplicationTaskIndividualAssessmentArn = {
            type = "string",
        },
        ReplicationTaskAssessmentRunArn = {
            type = "string",
        },
        IndividualAssessmentName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ReplicationTaskIndividualAssessmentStartDate = {
            type = "timestamp",
        },
    },
}

M.DescribeReplicationTaskIndividualAssessmentsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationTaskIndividualAssessments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeReplicationTasksInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        WithoutSettings = {
            type = "boolean",
        },
    },
}

M.DescribeReplicationTasksOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationTasks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeSchemasInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeSchemasOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Schemas = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeTableStatisticsInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTableStatisticsOutput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
        },
        TableStatistics = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.AssessmentReportType = {
    PDF = "pdf",
    CSV = "csv",
}

M.ExportMetadataModelAssessmentInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileName = {
            type = "string",
        },
        AssessmentReportTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ExportMetadataModelAssessmentResultEntry = {
    type = "structure",
    members = {
        S3ObjectKey = {
            type = "string",
        },
        ObjectURL = {
            type = "string",
        },
    },
}

M.ExportMetadataModelAssessmentOutput = {
    type = "structure",
    members = {
        PdfReport = {
            type = "structure",
        },
        CsvReport = {
            type = "structure",
        },
    },
}

M.GetTargetSelectionRulesInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTargetSelectionRulesOutput = {
    type = "structure",
    members = {
        TargetSelectionRules = {
            type = "string",
        },
    },
}

M.ImportCertificateInput = {
    type = "structure",
    members = {
        CertificateIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificatePem = {
            type = "string",
        },
        CertificateWallet = {
            type = "blob",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ImportCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "structure",
        },
    },
}

M.InvalidCertificateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourceArnList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyConversionConfigurationInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConversionConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyConversionConfigurationOutput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
        },
    },
}

M.ModifyDataMigrationInput = {
    type = "structure",
    members = {
        DataMigrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataMigrationName = {
            type = "string",
        },
        EnableCloudwatchLogs = {
            type = "boolean",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        DataMigrationType = {
            type = "string",
        },
        SourceDataSettings = {
            type = "list",
            member_type = "structure",
        },
        TargetDataSettings = {
            type = "list",
            member_type = "structure",
        },
        NumberOfJobs = {
            type = "number",
        },
        SelectionRules = {
            type = "string",
        },
    },
}

M.ModifyDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = {
            type = "structure",
        },
    },
}

M.ModifyDataProviderInput = {
    type = "structure",
    members = {
        DataProviderIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataProviderName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        Virtual = {
            type = "boolean",
        },
        ExactSettings = {
            type = "boolean",
        },
        Settings = {
            type = "union",
        },
    },
}

M.ModifyDataProviderOutput = {
    type = "structure",
    members = {
        DataProvider = {
            type = "structure",
        },
    },
}

M.ModifyEndpointInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointIdentifier = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        DatabaseName = {
            type = "string",
        },
        ExtraConnectionAttributes = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        SslMode = {
            type = "string",
        },
        ServiceAccessRoleArn = {
            type = "string",
        },
        ExternalTableDefinition = {
            type = "string",
        },
        DynamoDbSettings = {
            type = "structure",
        },
        S3Settings = {
            type = "structure",
        },
        DmsTransferSettings = {
            type = "structure",
        },
        MongoDbSettings = {
            type = "structure",
        },
        KinesisSettings = {
            type = "structure",
        },
        KafkaSettings = {
            type = "structure",
        },
        ElasticsearchSettings = {
            type = "structure",
        },
        NeptuneSettings = {
            type = "structure",
        },
        RedshiftSettings = {
            type = "structure",
        },
        PostgreSQLSettings = {
            type = "structure",
        },
        MySQLSettings = {
            type = "structure",
        },
        OracleSettings = {
            type = "structure",
        },
        SybaseSettings = {
            type = "structure",
        },
        MicrosoftSQLServerSettings = {
            type = "structure",
        },
        IBMDb2Settings = {
            type = "structure",
        },
        DocDbSettings = {
            type = "structure",
        },
        RedisSettings = {
            type = "structure",
        },
        ExactSettings = {
            type = "boolean",
        },
        GcpMySQLSettings = {
            type = "structure",
        },
        TimestreamSettings = {
            type = "structure",
        },
    },
}

M.ModifyEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = {
            type = "structure",
        },
    },
}

M.ModifyEventSubscriptionInput = {
    type = "structure",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ModifyEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = {
            type = "structure",
        },
    },
}

M.ModifyInstanceProfileInput = {
    type = "structure",
    members = {
        InstanceProfileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        InstanceProfileName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SubnetGroupIdentifier = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyInstanceProfileOutput = {
    type = "structure",
    members = {
        InstanceProfile = {
            type = "structure",
        },
    },
}

M.ModifyMigrationProjectInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MigrationProjectName = {
            type = "string",
        },
        SourceDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member_type = "structure",
        },
        InstanceProfileIdentifier = {
            type = "string",
        },
        TransformationRules = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SchemaConversionApplicationAttributes = {
            type = "structure",
        },
    },
}

M.ModifyMigrationProjectOutput = {
    type = "structure",
    members = {
        MigrationProject = {
            type = "structure",
        },
    },
}

M.ModifyReplicationConfigInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationConfigIdentifier = {
            type = "string",
        },
        ReplicationType = {
            type = "string",
        },
        TableMappings = {
            type = "string",
        },
        ReplicationSettings = {
            type = "string",
        },
        SupplementalSettings = {
            type = "string",
        },
        ComputeConfig = {
            type = "structure",
        },
        SourceEndpointArn = {
            type = "string",
        },
        TargetEndpointArn = {
            type = "string",
        },
    },
}

M.ModifyReplicationConfigOutput = {
    type = "structure",
    members = {
        ReplicationConfig = {
            type = "structure",
        },
    },
}

M.ModifyReplicationInstanceInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "number",
        },
        ApplyImmediately = {
            type = "boolean",
        },
        ReplicationInstanceClass = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AllowMajorVersionUpgrade = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        ReplicationInstanceIdentifier = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        KerberosAuthenticationSettings = {
            type = "structure",
        },
    },
}

M.ModifyReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = {
            type = "structure",
        },
    },
}

M.UpgradeDependencyFailureFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyReplicationSubnetGroupInput = {
    type = "structure",
    members = {
        ReplicationSubnetGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationSubnetGroupDescription = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyReplicationSubnetGroupOutput = {
    type = "structure",
    members = {
        ReplicationSubnetGroup = {
            type = "structure",
        },
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationTaskIdentifier = {
            type = "string",
        },
        MigrationType = {
            type = "string",
        },
        TableMappings = {
            type = "string",
        },
        ReplicationTaskSettings = {
            type = "string",
        },
        CdcStartTime = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
        TaskData = {
            type = "string",
        },
    },
}

M.ModifyReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.MoveReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MoveReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.RebootReplicationInstanceInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceFailover = {
            type = "boolean",
        },
        ForcePlannedFailover = {
            type = "boolean",
        },
    },
}

M.RebootReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = {
            type = "structure",
        },
    },
}

M.RefreshSchemasInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RefreshSchemasOutput = {
    type = "structure",
    members = {
        RefreshSchemasStatus = {
            type = "structure",
        },
    },
}

M.ReloadOptionValue = {
    DATA_RELOAD = "data-reload",
    VALIDATE_ONLY = "validate-only",
}

M.TableToReload = {
    type = "structure",
    members = {
        SchemaName = {
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
    },
}

M.ReloadReplicationTablesInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TablesToReload = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ReloadOption = {
            type = "string",
        },
    },
}

M.ReloadReplicationTablesOutput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
        },
    },
}

M.ReloadTablesInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TablesToReload = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ReloadOption = {
            type = "string",
        },
    },
}

M.ReloadTablesOutput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.RemoveTagsFromResourceOutput = {
    type = "structure",
}

M.RunFleetAdvisorLsaAnalysisInput = {
    type = "structure",
}

M.RunFleetAdvisorLsaAnalysisOutput = {
    type = "structure",
    members = {
        LsaAnalysisId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StartReplicationMigrationTypeValue = {
    RELOAD_TARGET = "reload-target",
    RESUME_PROCESSING = "resume-processing",
    START_REPLICATION = "start-replication",
}

M.StartDataMigrationInput = {
    type = "structure",
    members = {
        DataMigrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = {
            type = "structure",
        },
    },
}

M.StartExtensionPackAssociationInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartExtensionPackAssociationOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelAssessmentInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMetadataModelAssessmentOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelConversionInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMetadataModelConversionOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StatementProperties = {
    type = "structure",
    members = {
        Definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataModelProperties = {
    type = "union",
    members = {
        StatementProperties = {
            type = "structure",
        },
    },
}

M.StartMetadataModelCreationInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetadataModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMetadataModelCreationOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelExportAsScriptInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileName = {
            type = "string",
        },
    },
}

M.StartMetadataModelExportAsScriptOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelExportToTargetInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OverwriteExtensionPack = {
            type = "boolean",
        },
    },
}

M.StartMetadataModelExportToTargetOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelImportInput = {
    type = "structure",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectionRules = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Refresh = {
            type = "boolean",
        },
    },
}

M.StartMetadataModelImportOutput = {
    type = "structure",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartRecommendationsInput = {
    type = "structure",
    members = {
        DatabaseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRecommendationsOutput = {
    type = "structure",
}

M.StartReplicationInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartReplicationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PremigrationAssessmentSettings = {
            type = "string",
        },
        CdcStartTime = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
    },
}

M.StartReplicationOutput = {
    type = "structure",
    members = {
        Replication = {
            type = "structure",
        },
    },
}

M.StartReplicationTaskTypeValue = {
    START_REPLICATION = "start-replication",
    RESUME_PROCESSING = "resume-processing",
    RELOAD_TARGET = "reload-target",
}

M.StartReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartReplicationTaskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CdcStartTime = {
            type = "timestamp",
        },
        CdcStartPosition = {
            type = "string",
        },
        CdcStopPosition = {
            type = "string",
        },
    },
}

M.StartReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.StartReplicationTaskAssessmentInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartReplicationTaskAssessmentOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.KMSFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartReplicationTaskAssessmentRunInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResultLocationBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResultLocationFolder = {
            type = "string",
        },
        ResultEncryptionMode = {
            type = "string",
        },
        ResultKmsKeyArn = {
            type = "string",
        },
        AssessmentRunName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeOnly = {
            type = "list",
            member_type = "string",
        },
        Exclude = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartReplicationTaskAssessmentRunOutput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = {
            type = "structure",
        },
    },
}

M.StopDataMigrationInput = {
    type = "structure",
    members = {
        DataMigrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = {
            type = "structure",
        },
    },
}

M.StopReplicationInput = {
    type = "structure",
    members = {
        ReplicationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopReplicationOutput = {
    type = "structure",
    members = {
        Replication = {
            type = "structure",
        },
    },
}

M.StopReplicationTaskInput = {
    type = "structure",
    members = {
        ReplicationTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopReplicationTaskOutput = {
    type = "structure",
    members = {
        ReplicationTask = {
            type = "structure",
        },
    },
}

M.TestConnectionInput = {
    type = "structure",
    members = {
        ReplicationInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
    },
}

M.UpdateSubscriptionsToEventBridgeInput = {
    type = "structure",
    members = {
        ForceMove = {
            type = "boolean",
        },
    },
}

M.UpdateSubscriptionsToEventBridgeOutput = {
    type = "structure",
    members = {
        Result = {
            type = "string",
        },
    },
}

return M
