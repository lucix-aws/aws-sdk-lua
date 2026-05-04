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
            type = "long",
            traits = {
                default = 0,
            },
        },
        Max = {
            type = "long",
            traits = {
                default = 0,
            },
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
            member = M.Tag,
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
            member = M.PendingMaintenanceAction,
        },
    },
}

M.ApplyPendingMaintenanceActionOutput = {
    type = "structure",
    members = {
        ResourcePendingMaintenanceActions = M.ResourcePendingMaintenanceActions,
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
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationSettings }),
    },
}

M.BatchStartRecommendationsInput = {
    type = "structure",
    members = {
        Data = {
            type = "list",
            member = M.StartRecommendationsRequestEntry,
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
            member = M.BatchStartRecommendationsErrorEntry,
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
        defaultErrorDetails = M.DefaultErrorDetails,
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
            type = "double",
        },
        TotalObjects = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ProgressStep = {
            type = "string",
        },
        ProcessedObject = M.ProcessedObject,
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
        Error = M.ErrorDetails,
        ExportSqlDetails = M.ExportSqlDetails,
        Progress = M.Progress,
    },
}

M.CancelMetadataModelConversionOutput = {
    type = "structure",
    members = {
        Request = M.SchemaConversionRequest,
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
        Request = M.SchemaConversionRequest,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        IndividualAssessmentCompletedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ReplicationTaskAssessmentRunResultStatistic = {
    type = "structure",
    members = {
        Passed = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Failed = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Error = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Warning = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Cancelled = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Skipped = {
            type = "integer",
            traits = {
                default = 0,
            },
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
        AssessmentProgress = M.ReplicationTaskAssessmentRunProgress,
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
            traits = {
                default = false,
            },
        },
        ResultStatistic = M.ReplicationTaskAssessmentRunResultStatistic,
    },
}

M.CancelReplicationTaskAssessmentRunOutput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = M.ReplicationTaskAssessmentRun,
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        CDCStopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.SourceDataSetting,
        },
        TargetDataSettings = {
            type = "list",
            member = M.TargetDataSetting,
        },
        NumberOfJobs = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ElapsedTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TablesLoading = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FullLoadPercentage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        CDCLatency = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesQueued = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesErrored = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StopTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataMigrationStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataMigrationEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
        DataMigrationSettings = M.DataMigrationSettings,
        SourceDataSettings = {
            type = "list",
            member = M.SourceDataSetting,
        },
        TargetDataSettings = {
            type = "list",
            member = M.TargetDataSetting,
        },
        DataMigrationStatistics = M.DataMigrationStatistics,
        DataMigrationStatus = {
            type = "string",
        },
        PublicIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        DataMigrationCidrBlocks = {
            type = "list",
            member = { type = "string" },
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
        DataMigration = M.DataMigration,
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        SecurityMechanism = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
        RedshiftSettings = M.RedshiftDataProviderSettings,
        PostgreSqlSettings = M.PostgreSqlDataProviderSettings,
        MySqlSettings = M.MySqlDataProviderSettings,
        OracleSettings = M.OracleDataProviderSettings,
        SybaseAseSettings = M.SybaseAseDataProviderSettings,
        MicrosoftSqlServerSettings = M.MicrosoftSqlServerDataProviderSettings,
        DocDbSettings = M.DocDbDataProviderSettings,
        MariaDbSettings = M.MariaDbDataProviderSettings,
        IbmDb2LuwSettings = M.IbmDb2LuwDataProviderSettings,
        IbmDb2zOsSettings = M.IbmDb2zOsDataProviderSettings,
        MongoDbSettings = M.MongoDbDataProviderSettings,
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
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataProviderSettings }),
        Tags = {
            type = "list",
            member = M.Tag,
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
            traits = {
                timestamp_format = "date-time",
            },
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
        Settings = M.DataProviderSettings,
    },
}

M.CreateDataProviderOutput = {
    type = "structure",
    members = {
        DataProvider = M.DataProvider,
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        ErrorRetryDuration = {
            type = "integer",
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
            type = "integer",
        },
        TargetDbType = {
            type = "string",
        },
        MaxFileSize = {
            type = "integer",
        },
        ParallelLoadThreads = {
            type = "integer",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        WriteBufferSize = {
            type = "integer",
        },
        MaxFileSize = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        BcpPacketSize = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        TargetDbType = {
            type = "string",
        },
        MaxFileSize = {
            type = "integer",
        },
        ParallelLoadThreads = {
            type = "integer",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        MaxFileSize = {
            type = "integer",
        },
        MaxRetryCount = {
            type = "integer",
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
            type = "integer",
        },
        AdditionalArchivedLogDestId = {
            type = "integer",
        },
        ExtraArchivedLogDestIds = {
            type = "list",
            member = { type = "integer" },
        },
        AllowSelectNestedTables = {
            type = "boolean",
        },
        ParallelAsmReadThreads = {
            type = "integer",
        },
        ReadAheadBlocks = {
            type = "integer",
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
            type = "integer",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        ReadTableSpaceName = {
            type = "boolean",
        },
        RetryInterval = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        DatabaseName = {
            type = "string",
        },
        DdlArtifactsSchema = {
            type = "string",
        },
        ExecuteTimeout = {
            type = "integer",
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
            type = "integer",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
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
            type = "integer",
        },
        LoadTimeout = {
            type = "integer",
        },
        MaxFileSize = {
            type = "integer",
        },
        Password = {
            type = "string",
        },
        Port = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
        },
        RowGroupLength = {
            type = "integer",
        },
        DataPageSize = {
            type = "integer",
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
            type = "integer",
        },
        CdcMinFileSize = {
            type = "integer",
        },
        CsvNullValue = {
            type = "string",
        },
        IgnoreHeaderRows = {
            type = "integer",
        },
        MaxFileSize = {
            type = "integer",
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
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        MagneticDuration = {
            type = "integer",
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
            type = "integer",
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
            member = M.Tag,
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
        DynamoDbSettings = M.DynamoDbSettings,
        S3Settings = M.S3Settings,
        DmsTransferSettings = M.DmsTransferSettings,
        MongoDbSettings = M.MongoDbSettings,
        KinesisSettings = M.KinesisSettings,
        KafkaSettings = M.KafkaSettings,
        ElasticsearchSettings = M.ElasticsearchSettings,
        NeptuneSettings = M.NeptuneSettings,
        RedshiftSettings = M.RedshiftSettings,
        PostgreSQLSettings = M.PostgreSQLSettings,
        MySQLSettings = M.MySQLSettings,
        OracleSettings = M.OracleSettings,
        SybaseSettings = M.SybaseSettings,
        MicrosoftSQLServerSettings = M.MicrosoftSQLServerSettings,
        IBMDb2Settings = M.IBMDb2Settings,
        ResourceIdentifier = {
            type = "string",
        },
        DocDbSettings = M.DocDbSettings,
        RedisSettings = M.RedisSettings,
        GcpMySQLSettings = M.GcpMySQLSettings,
        TimestreamSettings = M.TimestreamSettings,
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
            type = "integer",
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
        DynamoDbSettings = M.DynamoDbSettings,
        S3Settings = M.S3Settings,
        DmsTransferSettings = M.DmsTransferSettings,
        MongoDbSettings = M.MongoDbSettings,
        KinesisSettings = M.KinesisSettings,
        KafkaSettings = M.KafkaSettings,
        ElasticsearchSettings = M.ElasticsearchSettings,
        NeptuneSettings = M.NeptuneSettings,
        RedshiftSettings = M.RedshiftSettings,
        PostgreSQLSettings = M.PostgreSQLSettings,
        MySQLSettings = M.MySQLSettings,
        OracleSettings = M.OracleSettings,
        SybaseSettings = M.SybaseSettings,
        MicrosoftSQLServerSettings = M.MicrosoftSQLServerSettings,
        IBMDb2Settings = M.IBMDb2Settings,
        DocDbSettings = M.DocDbSettings,
        RedisSettings = M.RedisSettings,
        GcpMySQLSettings = M.GcpMySQLSettings,
        TimestreamSettings = M.TimestreamSettings,
        LakehouseSettings = M.LakehouseSettings,
    },
}

M.CreateEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = M.Endpoint,
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
            member = { type = "string" },
        },
        SourceIds = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            member = { type = "string" },
        },
        EventCategoriesList = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = M.EventSubscription,
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
            member = M.Tag,
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
            member = { type = "string" },
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        SubnetGroupIdentifier = {
            type = "string",
        },
        VpcSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateInstanceProfileOutput = {
    type = "structure",
    members = {
        InstanceProfile = M.InstanceProfile,
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
            member = M.DataProviderDescriptorDefinition,
            traits = {
                required = true,
            },
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member = M.DataProviderDescriptorDefinition,
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
            member = M.Tag,
        },
        SchemaConversionApplicationAttributes = M.SCApplicationAttributes,
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        SourceDataProviderDescriptors = {
            type = "list",
            member = M.DataProviderDescriptor,
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member = M.DataProviderDescriptor,
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
        SchemaConversionApplicationAttributes = M.SCApplicationAttributes,
    },
}

M.CreateMigrationProjectOutput = {
    type = "structure",
    members = {
        MigrationProject = M.MigrationProject,
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
            type = "integer",
        },
        MinCapacityUnits = {
            type = "integer",
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
            member = { type = "string" },
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
        ComputeConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ComputeConfig }),
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
            member = M.Tag,
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
        ComputeConfig = M.ComputeConfig,
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
        ReplicationConfig = M.ReplicationConfig,
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
            type = "integer",
        },
        ReplicationInstanceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            member = M.Tag,
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
        KerberosAuthenticationSettings = M.KerberosAuthenticationSettings,
    },
}

M.ReplicationPendingModifiedValues = {
    type = "structure",
    members = {
        ReplicationInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
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
        SubnetAvailabilityZone = M.AvailabilityZone,
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
            member = M.Subnet,
        },
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        AvailabilityZone = {
            type = "string",
        },
        ReplicationSubnetGroup = M.ReplicationSubnetGroup,
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = M.ReplicationPendingModifiedValues,
        MultiAZ = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "string" },
        },
        ReplicationInstancePrivateIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        ReplicationInstanceIpv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        PubliclyAccessible = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        KerberosAuthenticationSettings = M.KerberosAuthenticationSettings,
    },
}

M.CreateReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = M.ReplicationInstance,
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
            member = { type = "string" },
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

M.CreateReplicationSubnetGroupOutput = {
    type = "structure",
    members = {
        ReplicationSubnetGroup = M.ReplicationSubnetGroup,
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ElapsedTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TablesLoaded = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesLoading = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesQueued = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesErrored = {
            type = "integer",
            traits = {
                default = 0,
            },
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
        ReplicationTaskStats = M.ReplicationTaskStats,
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
        ReplicationTask = M.ReplicationTask,
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
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.DeleteCertificateOutput = {
    type = "structure",
    members = {
        Certificate = M.Certificate,
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
        Connection = M.Connection,
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
        DataMigration = M.DataMigration,
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
        DataProvider = M.DataProvider,
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
        Endpoint = M.Endpoint,
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
        EventSubscription = M.EventSubscription,
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
            member = { type = "string" },
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
            member = { type = "string" },
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
        InstanceProfile = M.InstanceProfile,
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
        MigrationProject = M.MigrationProject,
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
        ReplicationConfig = M.ReplicationConfig,
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
        ReplicationInstance = M.ReplicationInstance,
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
        ReplicationTask = M.ReplicationTask,
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
        ReplicationTaskAssessmentRun = M.ReplicationTaskAssessmentRun,
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
            member = M.AccountQuota,
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
            type = "integer",
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
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.Certificate,
        },
    },
}

M.DescribeConnectionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.Connection,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.DataMigration,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.DataProvider,
        },
    },
}

M.DescribeEndpointsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.Endpoint,
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
            type = "integer",
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
            member = { type = "string" },
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
            type = "integer",
        },
        IntValueMax = {
            type = "integer",
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
            member = M.EndpointSetting,
        },
    },
}

M.DescribeEndpointTypesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            traits = {
                default = false,
            },
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
            member = M.SupportedEndpointType,
        },
    },
}

M.DescribeEngineVersionsInput = {
    type = "structure",
    members = {
        MaxRecords = {
            type = "integer",
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
            member = { type = "string" },
        },
    },
}

M.DescribeEngineVersionsOutput = {
    type = "structure",
    members = {
        EngineVersions = {
            type = "list",
            member = M.EngineVersion,
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
            member = M.Filter,
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
            member = { type = "string" },
        },
    },
}

M.DescribeEventCategoriesOutput = {
    type = "structure",
    members = {
        EventCategoryGroupList = {
            type = "list",
            member = M.EventCategoryGroup,
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
            type = "integer",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = { type = "string" },
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
            member = M.Event,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.EventSubscription,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
        },
    },
}

M.DescribeFleetAdvisorCollectorsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            type = "integer",
        },
        NumberOfSchemas = {
            type = "integer",
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
        CollectorHealthCheck = M.CollectorHealthCheck,
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
        InventoryData = M.InventoryData,
    },
}

M.DescribeFleetAdvisorCollectorsOutput = {
    type = "structure",
    members = {
        Collectors = {
            type = "list",
            member = M.CollectorResponse,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            type = "integer",
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
            type = "long",
        },
        Server = M.ServerShortInfoResponse,
        SoftwareDetails = M.DatabaseInstanceSoftwareDetailsResponse,
        Collectors = {
            type = "list",
            member = M.CollectorShortInfoResponse,
        },
    },
}

M.DescribeFleetAdvisorDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member = M.DatabaseResponse,
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
            type = "integer",
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
            member = M.FleetAdvisorLsaAnalysisResponse,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            type = "long",
        },
        CodeLineCount = {
            type = "long",
        },
        CodeSize = {
            type = "long",
        },
    },
}

M.DescribeFleetAdvisorSchemaObjectSummaryOutput = {
    type = "structure",
    members = {
        FleetAdvisorSchemaObjects = {
            type = "list",
            member = M.FleetAdvisorSchemaObjectResponse,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            type = "long",
        },
        CodeSize = {
            type = "long",
        },
        Complexity = {
            type = "string",
        },
        Server = M.ServerShortInfoResponse,
        DatabaseInstance = M.DatabaseShortInfoResponse,
        SchemaId = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        OriginalSchema = M.SchemaShortInfoResponse,
        Similarity = {
            type = "double",
        },
    },
}

M.DescribeFleetAdvisorSchemasOutput = {
    type = "structure",
    members = {
        FleetAdvisorSchemas = {
            type = "list",
            member = M.SchemaResponse,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.InstanceProfile,
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
            member = M.MetadataModelReference,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
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
            type = "integer",
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
            member = M.MetadataModelReference,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
        },
    },
}

M.DescribeMetadataModelCreationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
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
            member = M.SchemaConversionRequest,
        },
    },
}

M.DescribeMigrationProjectsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.MigrationProject,
        },
    },
}

M.DescribeOrderableReplicationInstancesInput = {
    type = "structure",
    members = {
        MaxRecords = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MaxAllocatedStorage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DefaultAllocatedStorage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        IncludedAllocatedStorage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
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
            member = M.OrderableReplicationInstance,
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
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribePendingMaintenanceActionsOutput = {
    type = "structure",
    members = {
        PendingMaintenanceActions = {
            type = "list",
            member = M.ResourcePendingMaintenanceActions,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.Limitation,
        },
    },
}

M.DescribeRecommendationsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            type = "double",
        },
        InstanceMemory = {
            type = "double",
        },
        StorageSize = {
            type = "integer",
        },
        StorageIops = {
            type = "integer",
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
            type = "double",
        },
        InstanceMemory = {
            type = "double",
        },
        StorageType = {
            type = "string",
        },
        StorageSize = {
            type = "integer",
        },
        StorageIops = {
            type = "integer",
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
        RequirementsToTarget = M.RdsRequirements,
        TargetConfiguration = M.RdsConfiguration,
    },
}

M.RecommendationData = {
    type = "structure",
    members = {
        RdsEngine = M.RdsRecommendation,
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
        Settings = M.RecommendationSettings,
        Data = M.RecommendationData,
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
            member = M.Recommendation,
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
        RefreshSchemasStatus = M.RefreshSchemasStatus,
    },
}

M.DescribeReplicationConfigsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationConfig,
        },
    },
}

M.DescribeReplicationInstancesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationInstance,
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
            type = "integer",
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
            type = "long",
            traits = {
                default = 0,
            },
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
            member = M.ReplicationInstanceTaskLog,
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
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            traits = {
                default = false,
            },
        },
        Status = {
            type = "string",
        },
        PremigrationAssessmentRunCreationDate = {
            type = "timestamp",
        },
        AssessmentProgress = M.ReplicationTaskAssessmentRunProgress,
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
        ResultStatistic = M.ReplicationTaskAssessmentRunResultStatistic,
    },
}

M.ProvisionData = {
    type = "structure",
    members = {
        ProvisionState = {
            type = "string",
        },
        ProvisionedCapacityUnits = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DateProvisioned = {
            type = "timestamp",
        },
        IsNewProvisioningAvailable = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ElapsedTimeMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TablesLoaded = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesLoading = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesQueued = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesErrored = {
            type = "integer",
            traits = {
                default = 0,
            },
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
        ProvisionData = M.ProvisionData,
        PremigrationAssessmentStatuses = {
            type = "list",
            member = M.PremigrationAssessmentStatus,
        },
        StopReason = {
            type = "string",
        },
        FailureMessages = {
            type = "list",
            member = { type = "string" },
        },
        ReplicationStats = M.ReplicationStats,
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
            member = M.Replication,
        },
    },
}

M.DescribeReplicationSubnetGroupsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationSubnetGroup,
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
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        Deletes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Updates = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Ddls = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AppliedInserts = {
            type = "long",
        },
        AppliedDeletes = {
            type = "long",
        },
        AppliedUpdates = {
            type = "long",
        },
        AppliedDdls = {
            type = "long",
        },
        FullLoadRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FullLoadCondtnlChkFailedRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FullLoadErrorRows = {
            type = "long",
            traits = {
                default = 0,
            },
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        ValidationFailedRecords = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ValidationSuspendedRecords = {
            type = "long",
            traits = {
                default = 0,
            },
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
            type = "long",
        },
        ResyncRowsSucceeded = {
            type = "long",
        },
        ResyncRowsFailed = {
            type = "long",
        },
        ResyncProgress = {
            type = "double",
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
            member = M.TableStatistics,
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
            type = "integer",
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
            member = M.ReplicationTaskAssessmentResult,
        },
    },
}

M.DescribeReplicationTaskAssessmentRunsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationTaskAssessmentRun,
        },
    },
}

M.DescribeReplicationTaskIndividualAssessmentsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationTaskIndividualAssessment,
        },
    },
}

M.DescribeReplicationTasksInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
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
            member = M.ReplicationTask,
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
            type = "integer",
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
            member = { type = "string" },
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
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
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
            member = M.TableStatistics,
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
            member = { type = "string" },
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
        PdfReport = M.ExportMetadataModelAssessmentResultEntry,
        CsvReport = M.ExportMetadataModelAssessmentResultEntry,
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
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ImportCertificateOutput = {
    type = "structure",
    members = {
        Certificate = M.Certificate,
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
            member = { type = "string" },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
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
            member = M.SourceDataSetting,
        },
        TargetDataSettings = {
            type = "list",
            member = M.TargetDataSetting,
        },
        NumberOfJobs = {
            type = "integer",
        },
        SelectionRules = {
            type = "string",
        },
    },
}

M.ModifyDataMigrationOutput = {
    type = "structure",
    members = {
        DataMigration = M.DataMigration,
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
        Settings = M.DataProviderSettings,
    },
}

M.ModifyDataProviderOutput = {
    type = "structure",
    members = {
        DataProvider = M.DataProvider,
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
            type = "integer",
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
        DynamoDbSettings = M.DynamoDbSettings,
        S3Settings = M.S3Settings,
        DmsTransferSettings = M.DmsTransferSettings,
        MongoDbSettings = M.MongoDbSettings,
        KinesisSettings = M.KinesisSettings,
        KafkaSettings = M.KafkaSettings,
        ElasticsearchSettings = M.ElasticsearchSettings,
        NeptuneSettings = M.NeptuneSettings,
        RedshiftSettings = M.RedshiftSettings,
        PostgreSQLSettings = M.PostgreSQLSettings,
        MySQLSettings = M.MySQLSettings,
        OracleSettings = M.OracleSettings,
        SybaseSettings = M.SybaseSettings,
        MicrosoftSQLServerSettings = M.MicrosoftSQLServerSettings,
        IBMDb2Settings = M.IBMDb2Settings,
        DocDbSettings = M.DocDbSettings,
        RedisSettings = M.RedisSettings,
        ExactSettings = {
            type = "boolean",
        },
        GcpMySQLSettings = M.GcpMySQLSettings,
        TimestreamSettings = M.TimestreamSettings,
    },
}

M.ModifyEndpointOutput = {
    type = "structure",
    members = {
        Endpoint = M.Endpoint,
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
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ModifyEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = M.EventSubscription,
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
            member = { type = "string" },
        },
    },
}

M.ModifyInstanceProfileOutput = {
    type = "structure",
    members = {
        InstanceProfile = M.InstanceProfile,
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
            member = M.DataProviderDescriptorDefinition,
        },
        TargetDataProviderDescriptors = {
            type = "list",
            member = M.DataProviderDescriptorDefinition,
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
        SchemaConversionApplicationAttributes = M.SCApplicationAttributes,
    },
}

M.ModifyMigrationProjectOutput = {
    type = "structure",
    members = {
        MigrationProject = M.MigrationProject,
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
        ComputeConfig = M.ComputeConfig,
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
        ReplicationConfig = M.ReplicationConfig,
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
            type = "integer",
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ReplicationInstanceClass = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                default = false,
            },
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
        KerberosAuthenticationSettings = M.KerberosAuthenticationSettings,
    },
}

M.ModifyReplicationInstanceOutput = {
    type = "structure",
    members = {
        ReplicationInstance = M.ReplicationInstance,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyReplicationSubnetGroupOutput = {
    type = "structure",
    members = {
        ReplicationSubnetGroup = M.ReplicationSubnetGroup,
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
        ReplicationTask = M.ReplicationTask,
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
        ReplicationTask = M.ReplicationTask,
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
        ReplicationInstance = M.ReplicationInstance,
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
        RefreshSchemasStatus = M.RefreshSchemasStatus,
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
            member = M.TableToReload,
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
            member = M.TableToReload,
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
            member = { type = "string" },
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
        DataMigration = M.DataMigration,
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
        StatementProperties = M.StatementProperties,
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
        Properties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataModelProperties }),
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
            traits = {
                default = false,
            },
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
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationSettings }),
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
        Replication = M.Replication,
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
        ReplicationTask = M.ReplicationTask,
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
        ReplicationTask = M.ReplicationTask,
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
            member = { type = "string" },
        },
        Exclude = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartReplicationTaskAssessmentRunOutput = {
    type = "structure",
    members = {
        ReplicationTaskAssessmentRun = M.ReplicationTaskAssessmentRun,
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
        DataMigration = M.DataMigration,
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
        Replication = M.Replication,
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
        ReplicationTask = M.ReplicationTask,
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
        Connection = M.Connection,
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
