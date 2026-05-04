local M = {}

M.AccessDeniedFault = {
    type = "structure",
    id = "AccessDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccountQuota = {
    type = "structure",
    id = "AccountQuota",
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
    id = "Tag",
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
    id = "AddTagsToResourceInput",
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
    id = "AddTagsToResourceOutput",
}

M.InvalidResourceStateFault = {
    type = "structure",
    id = "InvalidResourceStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundFault = {
    type = "structure",
    id = "ResourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplyPendingMaintenanceActionInput = {
    type = "structure",
    id = "ApplyPendingMaintenanceActionInput",
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
    id = "PendingMaintenanceAction",
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
    id = "ResourcePendingMaintenanceActions",
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
    id = "ApplyPendingMaintenanceActionOutput",
    members = {
        ResourcePendingMaintenanceActions = M.ResourcePendingMaintenanceActions,
    },
}

M.RecommendationSettings = {
    type = "structure",
    id = "RecommendationSettings",
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
    id = "StartRecommendationsRequestEntry",
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
    id = "BatchStartRecommendationsInput",
    members = {
        Data = {
            type = "list",
            member = M.StartRecommendationsRequestEntry,
        },
    },
}

M.BatchStartRecommendationsErrorEntry = {
    type = "structure",
    id = "BatchStartRecommendationsErrorEntry",
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
    id = "BatchStartRecommendationsOutput",
    members = {
        ErrorEntries = {
            type = "list",
            member = M.BatchStartRecommendationsErrorEntry,
        },
    },
}

M.CancelMetadataModelConversionInput = {
    type = "structure",
    id = "CancelMetadataModelConversionInput",
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
    id = "DefaultErrorDetails",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ErrorDetails = {
    type = "union",
    id = "ErrorDetails",
    members = {
        defaultErrorDetails = M.DefaultErrorDetails,
    },
}

M.ExportSqlDetails = {
    type = "structure",
    id = "ExportSqlDetails",
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
    id = "ProcessedObject",
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
    id = "Progress",
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
    id = "SchemaConversionRequest",
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
    id = "CancelMetadataModelConversionOutput",
    members = {
        Request = M.SchemaConversionRequest,
    },
}

M.CancelMetadataModelCreationInput = {
    type = "structure",
    id = "CancelMetadataModelCreationInput",
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
    id = "CancelMetadataModelCreationOutput",
    members = {
        Request = M.SchemaConversionRequest,
    },
}

M.CancelReplicationTaskAssessmentRunInput = {
    type = "structure",
    id = "CancelReplicationTaskAssessmentRunInput",
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
    id = "ReplicationTaskAssessmentRunProgress",
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
    id = "ReplicationTaskAssessmentRunResultStatistic",
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
    id = "ReplicationTaskAssessmentRun",
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
    id = "CancelReplicationTaskAssessmentRunOutput",
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
    id = "SourceDataSetting",
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
    id = "TargetDataSetting",
    members = {
        TablePreparationMode = {
            type = "string",
        },
    },
}

M.CreateDataMigrationInput = {
    type = "structure",
    id = "CreateDataMigrationInput",
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
    id = "DataMigrationSettings",
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
    id = "DataMigrationStatistics",
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
    id = "DataMigration",
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
    id = "CreateDataMigrationOutput",
    members = {
        DataMigration = M.DataMigration,
    },
}

M.FailedDependencyFault = {
    type = "structure",
    id = "FailedDependencyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOperationFault = {
    type = "structure",
    id = "InvalidOperationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsFault = {
    type = "structure",
    id = "ResourceAlreadyExistsFault",
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
    id = "ResourceQuotaExceededFault",
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
    id = "DocDbDataProviderSettings",
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
    id = "IbmDb2LuwDataProviderSettings",
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
    id = "IbmDb2zOsDataProviderSettings",
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
    id = "MariaDbDataProviderSettings",
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
    id = "MicrosoftSqlServerDataProviderSettings",
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
    id = "MongoDbDataProviderSettings",
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
    id = "MySqlDataProviderSettings",
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
    id = "OracleDataProviderSettings",
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
    id = "PostgreSqlDataProviderSettings",
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
    id = "RedshiftDataProviderSettings",
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
    id = "SybaseAseDataProviderSettings",
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
    id = "DataProviderSettings",
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
    id = "CreateDataProviderInput",
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
    id = "DataProvider",
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
    id = "CreateDataProviderOutput",
    members = {
        DataProvider = M.DataProvider,
    },
}

M.DmsTransferSettings = {
    type = "structure",
    id = "DmsTransferSettings",
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
    id = "DocDbSettings",
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
    id = "DynamoDbSettings",
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
    id = "ElasticsearchSettings",
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
    id = "GcpMySQLSettings",
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
    id = "IBMDb2Settings",
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
    id = "KafkaSettings",
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
    id = "KinesisSettings",
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
    id = "MicrosoftSQLServerSettings",
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
    id = "MongoDbSettings",
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
    id = "MySQLSettings",
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
    id = "NeptuneSettings",
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
    id = "OracleSettings",
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
    id = "PostgreSQLSettings",
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
    id = "RedisSettings",
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
    id = "RedshiftSettings",
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
    id = "S3Settings",
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
    id = "SybaseSettings",
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
    id = "TimestreamSettings",
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
    id = "CreateEndpointInput",
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
    id = "LakehouseSettings",
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
    id = "Endpoint",
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
    id = "CreateEndpointOutput",
    members = {
        Endpoint = M.Endpoint,
    },
}

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    id = "KMSKeyNotAccessibleFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3AccessDeniedFault = {
    type = "structure",
    id = "S3AccessDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
    id = "CreateEventSubscriptionInput",
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
    id = "EventSubscription",
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
    id = "CreateEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.KMSAccessDeniedFault = {
    type = "structure",
    id = "KMSAccessDeniedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSDisabledFault = {
    type = "structure",
    id = "KMSDisabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateFault = {
    type = "structure",
    id = "KMSInvalidStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSNotFoundFault = {
    type = "structure",
    id = "KMSNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSThrottlingFault = {
    type = "structure",
    id = "KMSThrottlingFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    id = "SNSInvalidTopicFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    id = "SNSNoAuthorizationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateFleetAdvisorCollectorInput = {
    type = "structure",
    id = "CreateFleetAdvisorCollectorInput",
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
    id = "CreateFleetAdvisorCollectorOutput",
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
    id = "S3ResourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateInstanceProfileInput = {
    type = "structure",
    id = "CreateInstanceProfileInput",
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
    id = "InstanceProfile",
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
    id = "CreateInstanceProfileOutput",
    members = {
        InstanceProfile = M.InstanceProfile,
    },
}

M.SCApplicationAttributes = {
    type = "structure",
    id = "SCApplicationAttributes",
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
    id = "DataProviderDescriptorDefinition",
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
    id = "CreateMigrationProjectInput",
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
    id = "DataProviderDescriptor",
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
    id = "MigrationProject",
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
    id = "CreateMigrationProjectOutput",
    members = {
        MigrationProject = M.MigrationProject,
    },
}

M.ComputeConfig = {
    type = "structure",
    id = "ComputeConfig",
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
    id = "CreateReplicationConfigInput",
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
    id = "ReplicationConfig",
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
    id = "CreateReplicationConfigOutput",
    members = {
        ReplicationConfig = M.ReplicationConfig,
    },
}

M.InvalidSubnet = {
    type = "structure",
    id = "InvalidSubnet",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationSubnetGroupDoesNotCoverEnoughAZs = {
    type = "structure",
    id = "ReplicationSubnetGroupDoesNotCoverEnoughAZs",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KerberosAuthenticationSettings = {
    type = "structure",
    id = "KerberosAuthenticationSettings",
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
    id = "CreateReplicationInstanceInput",
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
    id = "ReplicationPendingModifiedValues",
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
    id = "AvailabilityZone",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
    id = "Subnet",
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
    id = "ReplicationSubnetGroup",
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
    id = "VpcSecurityGroupMembership",
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
    id = "ReplicationInstance",
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
    id = "CreateReplicationInstanceOutput",
    members = {
        ReplicationInstance = M.ReplicationInstance,
    },
}

M.InsufficientResourceCapacityFault = {
    type = "structure",
    id = "InsufficientResourceCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageQuotaExceededFault = {
    type = "structure",
    id = "StorageQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReplicationSubnetGroupInput = {
    type = "structure",
    id = "CreateReplicationSubnetGroupInput",
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
    id = "CreateReplicationSubnetGroupOutput",
    members = {
        ReplicationSubnetGroup = M.ReplicationSubnetGroup,
    },
}

M.CreateReplicationTaskInput = {
    type = "structure",
    id = "CreateReplicationTaskInput",
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
    id = "ReplicationTaskStats",
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
    id = "ReplicationTask",
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
    id = "CreateReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.DeleteCertificateInput = {
    type = "structure",
    id = "DeleteCertificateInput",
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
    id = "Certificate",
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
    id = "DeleteCertificateOutput",
    members = {
        Certificate = M.Certificate,
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "Connection",
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
    id = "DeleteConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.DeleteDataMigrationInput = {
    type = "structure",
    id = "DeleteDataMigrationInput",
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
    id = "DeleteDataMigrationOutput",
    members = {
        DataMigration = M.DataMigration,
    },
}

M.DeleteDataProviderInput = {
    type = "structure",
    id = "DeleteDataProviderInput",
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
    id = "DeleteDataProviderOutput",
    members = {
        DataProvider = M.DataProvider,
    },
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
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
    id = "DeleteEndpointOutput",
    members = {
        Endpoint = M.Endpoint,
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
    id = "DeleteEventSubscriptionInput",
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
    id = "DeleteEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.CollectorNotFoundFault = {
    type = "structure",
    id = "CollectorNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFleetAdvisorCollectorInput = {
    type = "structure",
    id = "DeleteFleetAdvisorCollectorInput",
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
    id = "DeleteFleetAdvisorCollectorOutput",
}

M.DeleteFleetAdvisorDatabasesInput = {
    type = "structure",
    id = "DeleteFleetAdvisorDatabasesInput",
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
    id = "DeleteFleetAdvisorDatabasesOutput",
    members = {
        DatabaseIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteInstanceProfileInput = {
    type = "structure",
    id = "DeleteInstanceProfileInput",
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
    id = "DeleteInstanceProfileOutput",
    members = {
        InstanceProfile = M.InstanceProfile,
    },
}

M.DeleteMigrationProjectInput = {
    type = "structure",
    id = "DeleteMigrationProjectInput",
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
    id = "DeleteMigrationProjectOutput",
    members = {
        MigrationProject = M.MigrationProject,
    },
}

M.DeleteReplicationConfigInput = {
    type = "structure",
    id = "DeleteReplicationConfigInput",
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
    id = "DeleteReplicationConfigOutput",
    members = {
        ReplicationConfig = M.ReplicationConfig,
    },
}

M.DeleteReplicationInstanceInput = {
    type = "structure",
    id = "DeleteReplicationInstanceInput",
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
    id = "DeleteReplicationInstanceOutput",
    members = {
        ReplicationInstance = M.ReplicationInstance,
    },
}

M.DeleteReplicationSubnetGroupInput = {
    type = "structure",
    id = "DeleteReplicationSubnetGroupInput",
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
    id = "DeleteReplicationSubnetGroupOutput",
}

M.DeleteReplicationTaskInput = {
    type = "structure",
    id = "DeleteReplicationTaskInput",
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
    id = "DeleteReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.DeleteReplicationTaskAssessmentRunInput = {
    type = "structure",
    id = "DeleteReplicationTaskAssessmentRunInput",
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
    id = "DeleteReplicationTaskAssessmentRunOutput",
    members = {
        ReplicationTaskAssessmentRun = M.ReplicationTaskAssessmentRun,
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    id = "DescribeAccountAttributesInput",
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    id = "DescribeAccountAttributesOutput",
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
    id = "DescribeApplicableIndividualAssessmentsInput",
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
    id = "DescribeApplicableIndividualAssessmentsOutput",
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
    id = "Filter",
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
    id = "DescribeCertificatesInput",
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
    id = "DescribeCertificatesOutput",
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
    id = "DescribeConnectionsInput",
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
    id = "DescribeConnectionsOutput",
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
    id = "DescribeConversionConfigurationInput",
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
    id = "DescribeConversionConfigurationOutput",
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
    id = "DescribeDataMigrationsInput",
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
    id = "DescribeDataMigrationsOutput",
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
    id = "DescribeDataProvidersInput",
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
    id = "DescribeDataProvidersOutput",
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
    id = "DescribeEndpointsInput",
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
    id = "DescribeEndpointsOutput",
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
    id = "DescribeEndpointSettingsInput",
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
    id = "EndpointSetting",
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
    id = "DescribeEndpointSettingsOutput",
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
    id = "DescribeEndpointTypesInput",
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
    id = "SupportedEndpointType",
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
    id = "DescribeEndpointTypesOutput",
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
    id = "DescribeEngineVersionsInput",
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
    id = "EngineVersion",
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
    id = "DescribeEngineVersionsOutput",
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
    id = "DescribeEventCategoriesInput",
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
    id = "EventCategoryGroup",
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
    id = "DescribeEventCategoriesOutput",
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
    id = "DescribeEventsInput",
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
    id = "Event",
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
    id = "DescribeEventsOutput",
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
    id = "DescribeEventSubscriptionsInput",
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
    id = "DescribeEventSubscriptionsOutput",
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
    id = "DescribeExtensionPackAssociationsInput",
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
    id = "DescribeExtensionPackAssociationsOutput",
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
    id = "DescribeFleetAdvisorCollectorsInput",
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
    id = "CollectorHealthCheck",
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
    id = "InventoryData",
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
    id = "CollectorResponse",
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
    id = "DescribeFleetAdvisorCollectorsOutput",
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
    id = "DescribeFleetAdvisorDatabasesInput",
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
    id = "CollectorShortInfoResponse",
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
    id = "ServerShortInfoResponse",
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
    id = "DatabaseInstanceSoftwareDetailsResponse",
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
    id = "DatabaseResponse",
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
    id = "DescribeFleetAdvisorDatabasesOutput",
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
    id = "DescribeFleetAdvisorLsaAnalysisInput",
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
    id = "FleetAdvisorLsaAnalysisResponse",
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
    id = "DescribeFleetAdvisorLsaAnalysisOutput",
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
    id = "DescribeFleetAdvisorSchemaObjectSummaryInput",
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
    id = "FleetAdvisorSchemaObjectResponse",
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
    id = "DescribeFleetAdvisorSchemaObjectSummaryOutput",
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
    id = "DescribeFleetAdvisorSchemasInput",
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
    id = "DatabaseShortInfoResponse",
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
    id = "SchemaShortInfoResponse",
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
    id = "SchemaResponse",
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
    id = "DescribeFleetAdvisorSchemasOutput",
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
    id = "DescribeInstanceProfilesInput",
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
    id = "DescribeInstanceProfilesOutput",
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
    id = "DescribeMetadataModelInput",
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
    id = "MetadataModelReference",
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
    id = "DescribeMetadataModelOutput",
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
    id = "DescribeMetadataModelAssessmentsInput",
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
    id = "DescribeMetadataModelAssessmentsOutput",
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
    id = "DescribeMetadataModelChildrenInput",
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
    id = "DescribeMetadataModelChildrenOutput",
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
    id = "DescribeMetadataModelConversionsInput",
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
    id = "DescribeMetadataModelConversionsOutput",
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
    id = "DescribeMetadataModelCreationsInput",
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
    id = "DescribeMetadataModelCreationsOutput",
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
    id = "DescribeMetadataModelExportsAsScriptInput",
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
    id = "DescribeMetadataModelExportsAsScriptOutput",
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
    id = "DescribeMetadataModelExportsToTargetInput",
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
    id = "DescribeMetadataModelExportsToTargetOutput",
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
    id = "DescribeMetadataModelImportsInput",
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
    id = "DescribeMetadataModelImportsOutput",
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
    id = "DescribeMigrationProjectsInput",
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
    id = "DescribeMigrationProjectsOutput",
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
    id = "DescribeOrderableReplicationInstancesInput",
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
    id = "OrderableReplicationInstance",
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
    id = "DescribeOrderableReplicationInstancesOutput",
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
    id = "DescribePendingMaintenanceActionsInput",
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
    id = "DescribePendingMaintenanceActionsOutput",
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
    id = "DescribeRecommendationLimitationsInput",
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
    id = "Limitation",
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
    id = "DescribeRecommendationLimitationsOutput",
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
    id = "DescribeRecommendationsInput",
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
    id = "RdsRequirements",
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
    id = "RdsConfiguration",
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
    id = "RdsRecommendation",
    members = {
        RequirementsToTarget = M.RdsRequirements,
        TargetConfiguration = M.RdsConfiguration,
    },
}

M.RecommendationData = {
    type = "structure",
    id = "RecommendationData",
    members = {
        RdsEngine = M.RdsRecommendation,
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
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
    id = "DescribeRecommendationsOutput",
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
    id = "DescribeRefreshSchemasStatusInput",
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
    id = "RefreshSchemasStatus",
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
    id = "DescribeRefreshSchemasStatusOutput",
    members = {
        RefreshSchemasStatus = M.RefreshSchemasStatus,
    },
}

M.DescribeReplicationConfigsInput = {
    type = "structure",
    id = "DescribeReplicationConfigsInput",
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
    id = "DescribeReplicationConfigsOutput",
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
    id = "DescribeReplicationInstancesInput",
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
    id = "DescribeReplicationInstancesOutput",
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
    id = "DescribeReplicationInstanceTaskLogsInput",
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
    id = "ReplicationInstanceTaskLog",
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
    id = "DescribeReplicationInstanceTaskLogsOutput",
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
    id = "DescribeReplicationsInput",
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
    id = "PremigrationAssessmentStatus",
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
    id = "ProvisionData",
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
    id = "ReplicationStats",
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
    id = "Replication",
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
    id = "DescribeReplicationsOutput",
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
    id = "DescribeReplicationSubnetGroupsInput",
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
    id = "DescribeReplicationSubnetGroupsOutput",
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
    id = "DescribeReplicationTableStatisticsInput",
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
    id = "TableStatistics",
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
    id = "DescribeReplicationTableStatisticsOutput",
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
    id = "DescribeReplicationTaskAssessmentResultsInput",
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
    id = "ReplicationTaskAssessmentResult",
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
    id = "DescribeReplicationTaskAssessmentResultsOutput",
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
    id = "DescribeReplicationTaskAssessmentRunsInput",
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
    id = "DescribeReplicationTaskAssessmentRunsOutput",
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
    id = "DescribeReplicationTaskIndividualAssessmentsInput",
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
    id = "ReplicationTaskIndividualAssessment",
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
    id = "DescribeReplicationTaskIndividualAssessmentsOutput",
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
    id = "DescribeReplicationTasksInput",
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
    id = "DescribeReplicationTasksOutput",
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
    id = "DescribeSchemasInput",
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
    id = "DescribeSchemasOutput",
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
    id = "DescribeTableStatisticsInput",
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
    id = "DescribeTableStatisticsOutput",
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
    id = "ExportMetadataModelAssessmentInput",
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
    id = "ExportMetadataModelAssessmentResultEntry",
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
    id = "ExportMetadataModelAssessmentOutput",
    members = {
        PdfReport = M.ExportMetadataModelAssessmentResultEntry,
        CsvReport = M.ExportMetadataModelAssessmentResultEntry,
    },
}

M.GetTargetSelectionRulesInput = {
    type = "structure",
    id = "GetTargetSelectionRulesInput",
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
    id = "GetTargetSelectionRulesOutput",
    members = {
        TargetSelectionRules = {
            type = "string",
        },
    },
}

M.ImportCertificateInput = {
    type = "structure",
    id = "ImportCertificateInput",
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
    id = "ImportCertificateOutput",
    members = {
        Certificate = M.Certificate,
    },
}

M.InvalidCertificateFault = {
    type = "structure",
    id = "InvalidCertificateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModifyConversionConfigurationInput = {
    type = "structure",
    id = "ModifyConversionConfigurationInput",
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
    id = "ModifyConversionConfigurationOutput",
    members = {
        MigrationProjectIdentifier = {
            type = "string",
        },
    },
}

M.ModifyDataMigrationInput = {
    type = "structure",
    id = "ModifyDataMigrationInput",
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
    id = "ModifyDataMigrationOutput",
    members = {
        DataMigration = M.DataMigration,
    },
}

M.ModifyDataProviderInput = {
    type = "structure",
    id = "ModifyDataProviderInput",
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
    id = "ModifyDataProviderOutput",
    members = {
        DataProvider = M.DataProvider,
    },
}

M.ModifyEndpointInput = {
    type = "structure",
    id = "ModifyEndpointInput",
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
    id = "ModifyEndpointOutput",
    members = {
        Endpoint = M.Endpoint,
    },
}

M.ModifyEventSubscriptionInput = {
    type = "structure",
    id = "ModifyEventSubscriptionInput",
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
    id = "ModifyEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.ModifyInstanceProfileInput = {
    type = "structure",
    id = "ModifyInstanceProfileInput",
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
    id = "ModifyInstanceProfileOutput",
    members = {
        InstanceProfile = M.InstanceProfile,
    },
}

M.ModifyMigrationProjectInput = {
    type = "structure",
    id = "ModifyMigrationProjectInput",
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
    id = "ModifyMigrationProjectOutput",
    members = {
        MigrationProject = M.MigrationProject,
    },
}

M.ModifyReplicationConfigInput = {
    type = "structure",
    id = "ModifyReplicationConfigInput",
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
    id = "ModifyReplicationConfigOutput",
    members = {
        ReplicationConfig = M.ReplicationConfig,
    },
}

M.ModifyReplicationInstanceInput = {
    type = "structure",
    id = "ModifyReplicationInstanceInput",
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
    id = "ModifyReplicationInstanceOutput",
    members = {
        ReplicationInstance = M.ReplicationInstance,
    },
}

M.UpgradeDependencyFailureFault = {
    type = "structure",
    id = "UpgradeDependencyFailureFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyReplicationSubnetGroupInput = {
    type = "structure",
    id = "ModifyReplicationSubnetGroupInput",
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
    id = "ModifyReplicationSubnetGroupOutput",
    members = {
        ReplicationSubnetGroup = M.ReplicationSubnetGroup,
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    id = "SubnetAlreadyInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyReplicationTaskInput = {
    type = "structure",
    id = "ModifyReplicationTaskInput",
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
    id = "ModifyReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.MoveReplicationTaskInput = {
    type = "structure",
    id = "MoveReplicationTaskInput",
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
    id = "MoveReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.RebootReplicationInstanceInput = {
    type = "structure",
    id = "RebootReplicationInstanceInput",
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
    id = "RebootReplicationInstanceOutput",
    members = {
        ReplicationInstance = M.ReplicationInstance,
    },
}

M.RefreshSchemasInput = {
    type = "structure",
    id = "RefreshSchemasInput",
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
    id = "RefreshSchemasOutput",
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
    id = "TableToReload",
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
    id = "ReloadReplicationTablesInput",
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
    id = "ReloadReplicationTablesOutput",
    members = {
        ReplicationConfigArn = {
            type = "string",
        },
    },
}

M.ReloadTablesInput = {
    type = "structure",
    id = "ReloadTablesInput",
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
    id = "ReloadTablesOutput",
    members = {
        ReplicationTaskArn = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    id = "RemoveTagsFromResourceInput",
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
    id = "RemoveTagsFromResourceOutput",
}

M.RunFleetAdvisorLsaAnalysisInput = {
    type = "structure",
    id = "RunFleetAdvisorLsaAnalysisInput",
}

M.RunFleetAdvisorLsaAnalysisOutput = {
    type = "structure",
    id = "RunFleetAdvisorLsaAnalysisOutput",
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
    id = "StartDataMigrationInput",
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
    id = "StartDataMigrationOutput",
    members = {
        DataMigration = M.DataMigration,
    },
}

M.StartExtensionPackAssociationInput = {
    type = "structure",
    id = "StartExtensionPackAssociationInput",
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
    id = "StartExtensionPackAssociationOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelAssessmentInput = {
    type = "structure",
    id = "StartMetadataModelAssessmentInput",
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
    id = "StartMetadataModelAssessmentOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelConversionInput = {
    type = "structure",
    id = "StartMetadataModelConversionInput",
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
    id = "StartMetadataModelConversionOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StatementProperties = {
    type = "structure",
    id = "StatementProperties",
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
    id = "MetadataModelProperties",
    members = {
        StatementProperties = M.StatementProperties,
    },
}

M.StartMetadataModelCreationInput = {
    type = "structure",
    id = "StartMetadataModelCreationInput",
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
    id = "StartMetadataModelCreationOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelExportAsScriptInput = {
    type = "structure",
    id = "StartMetadataModelExportAsScriptInput",
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
    id = "StartMetadataModelExportAsScriptOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelExportToTargetInput = {
    type = "structure",
    id = "StartMetadataModelExportToTargetInput",
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
    id = "StartMetadataModelExportToTargetOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartMetadataModelImportInput = {
    type = "structure",
    id = "StartMetadataModelImportInput",
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
    id = "StartMetadataModelImportOutput",
    members = {
        RequestIdentifier = {
            type = "string",
        },
    },
}

M.StartRecommendationsInput = {
    type = "structure",
    id = "StartRecommendationsInput",
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
    id = "StartRecommendationsOutput",
}

M.StartReplicationInput = {
    type = "structure",
    id = "StartReplicationInput",
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
    id = "StartReplicationOutput",
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
    id = "StartReplicationTaskInput",
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
    id = "StartReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.StartReplicationTaskAssessmentInput = {
    type = "structure",
    id = "StartReplicationTaskAssessmentInput",
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
    id = "StartReplicationTaskAssessmentOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.KMSFault = {
    type = "structure",
    id = "KMSFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartReplicationTaskAssessmentRunInput = {
    type = "structure",
    id = "StartReplicationTaskAssessmentRunInput",
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
    id = "StartReplicationTaskAssessmentRunOutput",
    members = {
        ReplicationTaskAssessmentRun = M.ReplicationTaskAssessmentRun,
    },
}

M.StopDataMigrationInput = {
    type = "structure",
    id = "StopDataMigrationInput",
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
    id = "StopDataMigrationOutput",
    members = {
        DataMigration = M.DataMigration,
    },
}

M.StopReplicationInput = {
    type = "structure",
    id = "StopReplicationInput",
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
    id = "StopReplicationOutput",
    members = {
        Replication = M.Replication,
    },
}

M.StopReplicationTaskInput = {
    type = "structure",
    id = "StopReplicationTaskInput",
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
    id = "StopReplicationTaskOutput",
    members = {
        ReplicationTask = M.ReplicationTask,
    },
}

M.TestConnectionInput = {
    type = "structure",
    id = "TestConnectionInput",
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
    id = "TestConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.UpdateSubscriptionsToEventBridgeInput = {
    type = "structure",
    id = "UpdateSubscriptionsToEventBridgeInput",
    members = {
        ForceMove = {
            type = "boolean",
        },
    },
}

M.UpdateSubscriptionsToEventBridgeOutput = {
    type = "structure",
    id = "UpdateSubscriptionsToEventBridgeOutput",
    members = {
        Result = {
            type = "string",
        },
    },
}

return M
