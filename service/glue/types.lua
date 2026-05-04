local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotificationProperty = {
    type = "structure",
    members = {
        NotifyDelayAfter = {
            type = "number",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Timeout = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        CrawlerName = {
            type = "string",
        },
    },
}

M.AdditionalOptionKeys = {
    CacheOption = "performanceTuning.caching",
    ObservationsOption = "observations.scope",
    CompositeOption = "compositeRuleEvaluation.method",
}

M.AggFunction = {
    avg = "avg",
    countDistinct = "countDistinct",
    count = "count",
    first = "first",
    last = "last",
    kurtosis = "kurtosis",
    max = "max",
    min = "min",
    skewness = "skewness",
    stddev_samp = "stddev_samp",
    stddev_pop = "stddev_pop",
    sum = "sum",
    sumDistinct = "sumDistinct",
    var_samp = "var_samp",
    var_pop = "var_pop",
}

M.AggregateOperation = {
    type = "structure",
    members = {
        Column = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AggFunc = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Aggregate = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Groups = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
        Aggs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AllowedValue = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AllowFullTableExternalDataAccessEnum = {
    True = "True",
    False = "False",
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AmazonRedshiftAdvancedOption = {
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

M.Option = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.AmazonRedshiftNodeData = {
    type = "structure",
    members = {
        AccessType = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Connection = {
            type = "structure",
        },
        Schema = {
            type = "structure",
        },
        Table = {
            type = "structure",
        },
        CatalogDatabase = {
            type = "structure",
        },
        CatalogTable = {
            type = "structure",
        },
        CatalogRedshiftSchema = {
            type = "string",
        },
        CatalogRedshiftTable = {
            type = "string",
        },
        TempDir = {
            type = "string",
        },
        IamRole = {
            type = "structure",
        },
        AdvancedOptions = {
            type = "list",
            member_type = "structure",
        },
        SampleQuery = {
            type = "string",
        },
        PreAction = {
            type = "string",
        },
        PostAction = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        TablePrefix = {
            type = "string",
        },
        Upsert = {
            type = "boolean",
        },
        MergeAction = {
            type = "string",
        },
        MergeWhenMatched = {
            type = "string",
        },
        MergeWhenNotMatched = {
            type = "string",
        },
        MergeClause = {
            type = "string",
        },
        CrawlerConnection = {
            type = "string",
        },
        TableSchema = {
            type = "list",
            member_type = "structure",
        },
        StagingTable = {
            type = "string",
        },
        SelectedColumns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AmazonRedshiftSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Data = {
            type = "structure",
        },
    },
}

M.AmazonRedshiftTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Data = {
            type = "structure",
        },
        Inputs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AnnotationError = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
        },
        StatisticId = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.InclusionAnnotationValue = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.TimestampedInclusionAnnotation = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
    },
}

M.StatisticAnnotation = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
        },
        StatisticId = {
            type = "string",
        },
        StatisticRecordedOn = {
            type = "timestamp",
        },
        InclusionAnnotation = {
            type = "structure",
        },
    },
}

M.GlueStudioSchemaColumn = {
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
        GlueStudioType = {
            type = "string",
        },
    },
}

M.GlueSchema = {
    type = "structure",
    members = {
        Columns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AthenaConnectorSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionTable = {
            type = "string",
        },
        SchemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AuditContext = {
    type = "structure",
    members = {
        AdditionalAuditContext = {
            type = "string",
        },
        RequestedColumns = {
            type = "list",
            member_type = "string",
        },
        AllColumnsRequested = {
            type = "boolean",
        },
    },
}

M.DataOperation = {
    READ = "READ",
    WRITE = "WRITE",
}

M.PropertyLocation = {
    HEADER = "HEADER",
    BODY = "BODY",
    QUERY_PARAM = "QUERY_PARAM",
    PATH = "PATH",
}

M.PropertyType = {
    USER_INPUT = "USER_INPUT",
    SECRET = "SECRET",
    READ_ONLY = "READ_ONLY",
    UNUSED = "UNUSED",
    SECRET_OR_USER_INPUT = "SECRET_OR_USER_INPUT",
}

M.Property = {
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
            traits = {
                required = true,
            },
        },
        Required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "string",
        },
        PropertyTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AllowedValues = {
            type = "list",
            member_type = "structure",
        },
        DataOperationScopes = {
            type = "list",
            member_type = "string",
        },
        KeyOverride = {
            type = "string",
        },
        PropertyLocation = {
            type = "string",
        },
    },
}

M.AuthConfiguration = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "structure",
        },
        OAuth2Properties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        BasicAuthenticationProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CustomAuthenticationProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.AuthenticationType = {
    BASIC = "BASIC",
    OAUTH2 = "OAUTH2",
    CUSTOM = "CUSTOM",
    IAM = "IAM",
}

M.OAuth2ClientApplication = {
    type = "structure",
    members = {
        UserManagedClientApplicationClientId = {
            type = "string",
        },
        AWSManagedClientApplicationReference = {
            type = "string",
        },
    },
}

M.OAuth2GrantType = {
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    JWT_BEARER = "JWT_BEARER",
}

M.OAuth2Properties = {
    type = "structure",
    members = {
        OAuth2GrantType = {
            type = "string",
        },
        OAuth2ClientApplication = {
            type = "structure",
        },
        TokenUrl = {
            type = "string",
        },
        TokenUrlParametersMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        OAuth2Properties = {
            type = "structure",
        },
    },
}

M.BasicAuthenticationCredentials = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.AuthorizationCodeProperties = {
    type = "structure",
    members = {
        AuthorizationCode = {
            type = "string",
        },
        RedirectUri = {
            type = "string",
        },
    },
}

M.OAuth2Credentials = {
    type = "structure",
    members = {
        UserManagedClientApplicationClientSecret = {
            type = "string",
        },
        AccessToken = {
            type = "string",
        },
        RefreshToken = {
            type = "string",
        },
        JwtToken = {
            type = "string",
        },
    },
}

M.OAuth2PropertiesInput = {
    type = "structure",
    members = {
        OAuth2GrantType = {
            type = "string",
        },
        OAuth2ClientApplication = {
            type = "structure",
        },
        TokenUrl = {
            type = "string",
        },
        TokenUrlParametersMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AuthorizationCodeProperties = {
            type = "structure",
        },
        OAuth2Credentials = {
            type = "structure",
        },
    },
}

M.AuthenticationConfigurationInput = {
    type = "structure",
    members = {
        AuthenticationType = {
            type = "string",
        },
        OAuth2Properties = {
            type = "structure",
        },
        SecretArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        BasicAuthenticationCredentials = {
            type = "structure",
        },
        CustomAuthenticationCredentials = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AutoDataQuality = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
        EvaluationContext = {
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
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SchemaId = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
    },
}

M.SchemaReference = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        SchemaVersionNumber = {
            type = "number",
        },
    },
}

M.SerDeInfo = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SerializationLibrary = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SkewedInfo = {
    type = "structure",
    members = {
        SkewedColumnNames = {
            type = "list",
            member_type = "string",
        },
        SkewedColumnValues = {
            type = "list",
            member_type = "string",
        },
        SkewedColumnValueLocationMaps = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Order = {
    type = "structure",
    members = {
        Column = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StorageDescriptor = {
    type = "structure",
    members = {
        Columns = {
            type = "list",
            member_type = "structure",
        },
        Location = {
            type = "string",
        },
        AdditionalLocations = {
            type = "list",
            member_type = "string",
        },
        InputFormat = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
        },
        Compressed = {
            type = "boolean",
        },
        NumberOfBuckets = {
            type = "number",
        },
        SerdeInfo = {
            type = "structure",
        },
        BucketColumns = {
            type = "list",
            member_type = "string",
        },
        SortColumns = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SkewedInfo = {
            type = "structure",
        },
        StoredAsSubDirectories = {
            type = "boolean",
        },
        SchemaReference = {
            type = "structure",
        },
    },
}

M.PartitionInput = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
        LastAccessTime = {
            type = "timestamp",
        },
        StorageDescriptor = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastAnalyzedTime = {
            type = "timestamp",
        },
    },
}

M.BatchCreatePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionInputList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PartitionError = {
    type = "structure",
    members = {
        PartitionValues = {
            type = "list",
            member_type = "string",
        },
        ErrorDetail = {
            type = "structure",
        },
    },
}

M.BatchCreatePartitionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EntityNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        FromFederationSource = {
            type = "boolean",
        },
    },
}

M.GlueEncryptionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        FromFederationSource = {
            type = "boolean",
        },
    },
}

M.OperationTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNumberLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDeleteConnectionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        ConnectionNameList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteConnectionOutput = {
    type = "structure",
    members = {
        Succeeded = {
            type = "list",
            member_type = "string",
        },
        Errors = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.PartitionValueList = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionsToDelete = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePartitionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDeleteTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TablesToDelete = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TransactionId = {
            type = "string",
        },
    },
}

M.TableError = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        ErrorDetail = {
            type = "structure",
        },
    },
}

M.BatchDeleteTableOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDeleteTableVersionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        VersionIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableVersionError = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        ErrorDetail = {
            type = "structure",
        },
    },
}

M.BatchDeleteTableVersionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetBlueprintsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IncludeBlueprint = {
            type = "boolean",
        },
        IncludeParameterSpec = {
            type = "boolean",
        },
    },
}

M.LastActiveDefinition = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        ParameterSpec = {
            type = "string",
        },
        BlueprintLocation = {
            type = "string",
        },
        BlueprintServiceLocation = {
            type = "string",
        },
    },
}

M.BlueprintStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
}

M.Blueprint = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        ParameterSpec = {
            type = "string",
        },
        BlueprintLocation = {
            type = "string",
        },
        BlueprintServiceLocation = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LastActiveDefinition = {
            type = "structure",
        },
    },
}

M.BatchGetBlueprintsOutput = {
    type = "structure",
    members = {
        Blueprints = {
            type = "list",
            member_type = "structure",
        },
        MissingBlueprints = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetCrawlersInput = {
    type = "structure",
    members = {
        CrawlerNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LakeFormationConfiguration = {
    type = "structure",
    members = {
        UseLakeFormationCredentials = {
            type = "boolean",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.LastCrawlStatus = {
    SUCCEEDED = "SUCCEEDED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.LastCrawlInfo = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LogGroup = {
            type = "string",
        },
        LogStream = {
            type = "string",
        },
        MessagePrefix = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.CrawlerLineageSettings = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.LineageConfiguration = {
    type = "structure",
    members = {
        CrawlerLineageSettings = {
            type = "string",
        },
    },
}

M.RecrawlBehavior = {
    CRAWL_EVERYTHING = "CRAWL_EVERYTHING",
    CRAWL_NEW_FOLDERS_ONLY = "CRAWL_NEW_FOLDERS_ONLY",
    CRAWL_EVENT_MODE = "CRAWL_EVENT_MODE",
}

M.RecrawlPolicy = {
    type = "structure",
    members = {
        RecrawlBehavior = {
            type = "string",
        },
    },
}

M.ScheduleState = {
    SCHEDULED = "SCHEDULED",
    NOT_SCHEDULED = "NOT_SCHEDULED",
    TRANSITIONING = "TRANSITIONING",
}

M.Schedule = {
    type = "structure",
    members = {
        ScheduleExpression = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DeleteBehavior = {
    LOG = "LOG",
    DELETE_FROM_DATABASE = "DELETE_FROM_DATABASE",
    DEPRECATE_IN_DATABASE = "DEPRECATE_IN_DATABASE",
}

M.UpdateBehavior = {
    LOG = "LOG",
    UPDATE_IN_DATABASE = "UPDATE_IN_DATABASE",
}

M.SchemaChangePolicy = {
    type = "structure",
    members = {
        UpdateBehavior = {
            type = "string",
        },
        DeleteBehavior = {
            type = "string",
        },
    },
}

M.CrawlerState = {
    READY = "READY",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
}

M.CatalogTarget = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tables = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
        },
        EventQueueArn = {
            type = "string",
        },
        DlqEventQueueArn = {
            type = "string",
        },
    },
}

M.DeltaTarget = {
    type = "structure",
    members = {
        DeltaTables = {
            type = "list",
            member_type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        WriteManifest = {
            type = "boolean",
        },
        CreateNativeDeltaTable = {
            type = "boolean",
        },
    },
}

M.DynamoDBTarget = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        scanAll = {
            type = "boolean",
        },
        scanRate = {
            type = "number",
        },
    },
}

M.HudiTarget = {
    type = "structure",
    members = {
        Paths = {
            type = "list",
            member_type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        MaximumTraversalDepth = {
            type = "number",
        },
    },
}

M.IcebergTarget = {
    type = "structure",
    members = {
        Paths = {
            type = "list",
            member_type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        MaximumTraversalDepth = {
            type = "number",
        },
    },
}

M.JdbcMetadataEntry = {
    COMMENTS = "COMMENTS",
    RAWTYPES = "RAWTYPES",
}

M.JdbcTarget = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        EnableAdditionalMetadata = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MongoDBTarget = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        ScanAll = {
            type = "boolean",
        },
    },
}

M.S3Target = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        SampleSize = {
            type = "number",
        },
        EventQueueArn = {
            type = "string",
        },
        DlqEventQueueArn = {
            type = "string",
        },
    },
}

M.CrawlerTargets = {
    type = "structure",
    members = {
        S3Targets = {
            type = "list",
            member_type = "structure",
        },
        JdbcTargets = {
            type = "list",
            member_type = "structure",
        },
        MongoDBTargets = {
            type = "list",
            member_type = "structure",
        },
        DynamoDBTargets = {
            type = "list",
            member_type = "structure",
        },
        CatalogTargets = {
            type = "list",
            member_type = "structure",
        },
        DeltaTargets = {
            type = "list",
            member_type = "structure",
        },
        IcebergTargets = {
            type = "list",
            member_type = "structure",
        },
        HudiTargets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Crawler = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Targets = {
            type = "structure",
        },
        DatabaseName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member_type = "string",
        },
        RecrawlPolicy = {
            type = "structure",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        LineageConfiguration = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        TablePrefix = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        CrawlElapsedTime = {
            type = "number",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        LastCrawl = {
            type = "structure",
        },
        Version = {
            type = "number",
        },
        Configuration = {
            type = "string",
        },
        CrawlerSecurityConfiguration = {
            type = "string",
        },
        LakeFormationConfiguration = {
            type = "structure",
        },
    },
}

M.BatchGetCrawlersOutput = {
    type = "structure",
    members = {
        Crawlers = {
            type = "list",
            member_type = "structure",
        },
        CrawlersNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetCustomEntityTypesInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomEntityType = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegexString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContextWords = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetCustomEntityTypesOutput = {
    type = "structure",
    members = {
        CustomEntityTypes = {
            type = "list",
            member_type = "structure",
        },
        CustomEntityTypesNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetDataQualityResultInput = {
    type = "structure",
    members = {
        ResultIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataQualityAggregatedMetrics = {
    type = "structure",
    members = {
        TotalRowsProcessed = {
            type = "number",
        },
        TotalRowsPassed = {
            type = "number",
        },
        TotalRowsFailed = {
            type = "number",
        },
        TotalRulesProcessed = {
            type = "number",
        },
        TotalRulesPassed = {
            type = "number",
        },
        TotalRulesFailed = {
            type = "number",
        },
    },
}

M.DataQualityAnalyzerResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EvaluationMessage = {
            type = "string",
        },
        EvaluatedMetrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
    },
}

M.DataQualityGlueTable = {
    type = "structure",
    members = {
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
        CatalogId = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PreProcessingQuery = {
            type = "string",
        },
    },
}

M.GlueTable = {
    type = "structure",
    members = {
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
        CatalogId = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        GlueTable = {
            type = "structure",
        },
        DataQualityGlueTable = {
            type = "structure",
        },
    },
}

M.DataQualityMetricValues = {
    type = "structure",
    members = {
        ActualValue = {
            type = "number",
        },
        ExpectedValue = {
            type = "number",
        },
        LowerLimit = {
            type = "number",
        },
        UpperLimit = {
            type = "number",
        },
    },
}

M.MetricBasedObservation = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
        },
        StatisticId = {
            type = "string",
        },
        MetricValues = {
            type = "structure",
        },
        NewRules = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DataQualityObservation = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        MetricBasedObservation = {
            type = "structure",
        },
    },
}

M.DataQualityRuleResultStatus = {
    PASS = "PASS",
    FAIL = "FAIL",
    ERROR = "ERROR",
}

M.DataQualityRuleResult = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EvaluationMessage = {
            type = "string",
        },
        Result = {
            type = "string",
        },
        EvaluatedMetrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        EvaluatedRule = {
            type = "string",
        },
        RuleMetrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        Labels = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DataQualityResult = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        DataSource = {
            type = "structure",
        },
        RulesetName = {
            type = "string",
        },
        EvaluationContext = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        RulesetEvaluationRunId = {
            type = "string",
        },
        RuleResults = {
            type = "list",
            member_type = "structure",
        },
        AnalyzerResults = {
            type = "list",
            member_type = "structure",
        },
        Observations = {
            type = "list",
            member_type = "structure",
        },
        AggregatedMetrics = {
            type = "structure",
        },
    },
}

M.BatchGetDataQualityResultOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ResultsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetDevEndpointsInput = {
    type = "structure",
    members = {
        DevEndpointNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkerType = {
    Standard = "Standard",
    G_1X = "G.1X",
    G_2X = "G.2X",
    G_025X = "G.025X",
    G_4X = "G.4X",
    G_8X = "G.8X",
    Z_2X = "Z.2X",
}

M.DevEndpoint = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
        YarnEndpointAddress = {
            type = "string",
        },
        PrivateAddress = {
            type = "string",
        },
        ZeppelinRemoteSparkInterpreterPort = {
            type = "number",
        },
        PublicAddress = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        WorkerType = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        NumberOfNodes = {
            type = "number",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ExtraPythonLibsS3Path = {
            type = "string",
        },
        ExtraJarsS3Path = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastModifiedTimestamp = {
            type = "timestamp",
        },
        PublicKey = {
            type = "string",
        },
        PublicKeys = {
            type = "list",
            member_type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchGetDevEndpointsOutput = {
    type = "structure",
    members = {
        DevEndpoints = {
            type = "list",
            member_type = "structure",
        },
        DevEndpointsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetJobsInput = {
    type = "structure",
    members = {
        JobNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogDeltaSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalDeltaOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CatalogHudiSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalHudiOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CatalogIcebergSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalIcebergOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StreamingDataPreviewOptions = {
    type = "structure",
    members = {
        PollingTime = {
            type = "number",
        },
        RecordPollingLimit = {
            type = "number",
        },
    },
}

M.KafkaStreamingSourceOptions = {
    type = "structure",
    members = {
        BootstrapServers = {
            type = "string",
        },
        SecurityProtocol = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        TopicName = {
            type = "string",
        },
        Assign = {
            type = "string",
        },
        SubscribePattern = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        StartingOffsets = {
            type = "string",
        },
        EndingOffsets = {
            type = "string",
        },
        PollTimeoutMs = {
            type = "number",
        },
        NumRetries = {
            type = "number",
        },
        RetryIntervalMs = {
            type = "number",
        },
        MaxOffsetsPerTrigger = {
            type = "number",
        },
        MinPartitions = {
            type = "number",
        },
        IncludeHeaders = {
            type = "boolean",
        },
        AddRecordTimestamp = {
            type = "string",
        },
        EmitConsumerLagMetrics = {
            type = "string",
        },
        StartingTimestamp = {
            type = "timestamp",
        },
    },
}

M.CatalogKafkaSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "number",
        },
        DetectSchema = {
            type = "boolean",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingOptions = {
            type = "structure",
        },
        DataPreviewOptions = {
            type = "structure",
        },
    },
}

M.StartingPosition = {
    LATEST = "latest",
    TRIM_HORIZON = "trim_horizon",
    EARLIEST = "earliest",
    TIMESTAMP = "timestamp",
}

M.KinesisStreamingSourceOptions = {
    type = "structure",
    members = {
        EndpointUrl = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        Classification = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        MaxFetchTimeInMs = {
            type = "number",
        },
        MaxFetchRecordsPerShard = {
            type = "number",
        },
        MaxRecordPerRead = {
            type = "number",
        },
        AddIdleTimeBetweenReads = {
            type = "boolean",
        },
        IdleTimeBetweenReadsInMs = {
            type = "number",
        },
        DescribeShardInterval = {
            type = "number",
        },
        NumRetries = {
            type = "number",
        },
        RetryIntervalMs = {
            type = "number",
        },
        MaxRetryIntervalMs = {
            type = "number",
        },
        AvoidEmptyBatches = {
            type = "boolean",
        },
        StreamArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        RoleSessionName = {
            type = "string",
        },
        AddRecordTimestamp = {
            type = "string",
        },
        EmitConsumerLagMetrics = {
            type = "string",
        },
        StartingTimestamp = {
            type = "timestamp",
        },
        FanoutConsumerARN = {
            type = "string",
        },
    },
}

M.CatalogKinesisSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "number",
        },
        DetectSchema = {
            type = "boolean",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingOptions = {
            type = "structure",
        },
        DataPreviewOptions = {
            type = "structure",
        },
    },
}

M.CatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartitionPredicate = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BasicCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectorDataSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConnectorDataTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CustomCode = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClassName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JDBCConnectionType = {
    sqlserver = "sqlserver",
    mysql = "mysql",
    oracle = "oracle",
    postgresql = "postgresql",
    redshift = "redshift",
}

M.DirectJDBCSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedshiftTmpDir = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DirectKafkaSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingOptions = {
            type = "structure",
        },
        WindowSize = {
            type = "number",
        },
        DetectSchema = {
            type = "boolean",
        },
        DataPreviewOptions = {
            type = "structure",
        },
    },
}

M.DirectKinesisSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "number",
        },
        DetectSchema = {
            type = "boolean",
        },
        StreamingOptions = {
            type = "structure",
        },
        DataPreviewOptions = {
            type = "structure",
        },
    },
}

M.DropDuplicates = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member_type = "list",
        },
    },
}

M.DropFields = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.NullCheckBoxList = {
    type = "structure",
    members = {
        IsEmpty = {
            type = "boolean",
        },
        IsNullString = {
            type = "boolean",
        },
        IsNegOne = {
            type = "boolean",
        },
    },
}

M.Datatype = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NullValueField = {
    type = "structure",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Datatype = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DropNullFields = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NullCheckBoxList = {
            type = "structure",
        },
        NullTextList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ParamType = {
    STR = "str",
    INT = "int",
    FLOAT = "float",
    COMPLEX = "complex",
    BOOL = "bool",
    LIST = "list",
    NULL = "null",
}

M.TransformConfigParameter = {
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
        ValidationRule = {
            type = "string",
        },
        ValidationMessage = {
            type = "string",
        },
        Value = {
            type = "list",
            member_type = "string",
        },
        ListType = {
            type = "string",
        },
        IsOptional = {
            type = "boolean",
        },
    },
}

M.DynamicTransform = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransformName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member_type = "structure",
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DDBELTCatalogAdditionalOptions = {
    type = "structure",
    members = {
        DynamodbExport = {
            type = "string",
        },
        DynamodbUnnestDDBJson = {
            type = "boolean",
        },
    },
}

M.DynamoDBCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PitrEnabled = {
            type = "boolean",
        },
        AdditionalOptions = {
            type = "structure",
        },
    },
}

M.DdbExportType = {
    ddb = "ddb",
    s3 = "s3",
}

M.DDBELTConnectionOptions = {
    type = "structure",
    members = {
        DynamodbExport = {
            type = "string",
        },
        DynamodbUnnestDDBJson = {
            type = "boolean",
        },
        DynamodbTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DynamodbS3Bucket = {
            type = "string",
        },
        DynamodbS3Prefix = {
            type = "string",
        },
        DynamodbS3BucketOwner = {
            type = "string",
        },
        DynamodbStsRoleArn = {
            type = "string",
        },
    },
}

M.DynamoDBELTConnectorSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionOptions = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DQTransformOutput = {
    PrimaryInput = "PrimaryInput",
    EvaluationResults = "EvaluationResults",
}

M.DQResultsPublishingOptions = {
    type = "structure",
    members = {
        EvaluationContext = {
            type = "string",
        },
        ResultsS3Prefix = {
            type = "string",
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        ResultsPublishingEnabled = {
            type = "boolean",
        },
    },
}

M.DQStopJobOnFailureTiming = {
    Immediate = "Immediate",
    AfterDataLoad = "AfterDataLoad",
}

M.DQStopJobOnFailureOptions = {
    type = "structure",
    members = {
        StopJobOnFailureTiming = {
            type = "string",
        },
    },
}

M.EvaluateDataQuality = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Ruleset = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Output = {
            type = "string",
        },
        PublishingOptions = {
            type = "structure",
        },
        StopJobOnFailureOptions = {
            type = "structure",
        },
    },
}

M.EvaluateDataQualityMultiFrame = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalDataSources = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Ruleset = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishingOptions = {
            type = "structure",
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        StopJobOnFailureOptions = {
            type = "structure",
        },
    },
}

M.FillMissingValues = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ImputedPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilledPath = {
            type = "string",
        },
    },
}

M.FilterOperation = {
    EQ = "EQ",
    LT = "LT",
    GT = "GT",
    LTE = "LTE",
    GTE = "GTE",
    REGEX = "REGEX",
    ISNULL = "ISNULL",
}

M.FilterValueType = {
    COLUMNEXTRACTED = "COLUMNEXTRACTED",
    CONSTANT = "CONSTANT",
}

M.FilterValue = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterExpression = {
    type = "structure",
    members = {
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Negated = {
            type = "boolean",
        },
        Values = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FilterLogicalOperator = {
    AND = "AND",
    OR = "OR",
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
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        LogicalOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3SourceAdditionalOptions = {
    type = "structure",
    members = {
        BoundedSize = {
            type = "number",
        },
        BoundedFiles = {
            type = "number",
        },
    },
}

M.GovernedCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartitionPredicate = {
            type = "string",
        },
        AdditionalOptions = {
            type = "structure",
        },
    },
}

M.UpdateCatalogBehavior = {
    UPDATE_IN_DATABASE = "UPDATE_IN_DATABASE",
    LOG = "LOG",
}

M.CatalogSchemaChangePolicy = {
    type = "structure",
    members = {
        EnableUpdateCatalog = {
            type = "boolean",
        },
        UpdateBehavior = {
            type = "string",
        },
    },
}

M.GovernedCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = {
            type = "structure",
        },
    },
}

M.JDBCDataType = {
    ARRAY = "ARRAY",
    BIGINT = "BIGINT",
    BINARY = "BINARY",
    BIT = "BIT",
    BLOB = "BLOB",
    BOOLEAN = "BOOLEAN",
    CHAR = "CHAR",
    CLOB = "CLOB",
    DATALINK = "DATALINK",
    DATE = "DATE",
    DECIMAL = "DECIMAL",
    DISTINCT = "DISTINCT",
    DOUBLE = "DOUBLE",
    FLOAT = "FLOAT",
    INTEGER = "INTEGER",
    JAVA_OBJECT = "JAVA_OBJECT",
    LONGNVARCHAR = "LONGNVARCHAR",
    LONGVARBINARY = "LONGVARBINARY",
    LONGVARCHAR = "LONGVARCHAR",
    NCHAR = "NCHAR",
    NCLOB = "NCLOB",
    NULL = "NULL",
    NUMERIC = "NUMERIC",
    NVARCHAR = "NVARCHAR",
    OTHER = "OTHER",
    REAL = "REAL",
    REF = "REF",
    REF_CURSOR = "REF_CURSOR",
    ROWID = "ROWID",
    SMALLINT = "SMALLINT",
    SQLXML = "SQLXML",
    STRUCT = "STRUCT",
    TIME = "TIME",
    TIME_WITH_TIMEZONE = "TIME_WITH_TIMEZONE",
    TIMESTAMP = "TIMESTAMP",
    TIMESTAMP_WITH_TIMEZONE = "TIMESTAMP_WITH_TIMEZONE",
    TINYINT = "TINYINT",
    VARBINARY = "VARBINARY",
    VARCHAR = "VARCHAR",
}

M.GlueRecordType = {
    DATE = "DATE",
    STRING = "STRING",
    TIMESTAMP = "TIMESTAMP",
    INT = "INT",
    FLOAT = "FLOAT",
    LONG = "LONG",
    BIGDECIMAL = "BIGDECIMAL",
    BYTE = "BYTE",
    SHORT = "SHORT",
    DOUBLE = "DOUBLE",
}

M.JDBCConnectorOptions = {
    type = "structure",
    members = {
        FilterPredicate = {
            type = "string",
        },
        PartitionColumn = {
            type = "string",
        },
        LowerBound = {
            type = "number",
        },
        UpperBound = {
            type = "number",
        },
        NumPartitions = {
            type = "number",
        },
        JobBookmarkKeys = {
            type = "list",
            member_type = "string",
        },
        JobBookmarkKeysSortOrder = {
            type = "string",
        },
        DataTypeMapping = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.JDBCConnectorSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "structure",
        },
        ConnectionTable = {
            type = "string",
        },
        Query = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JDBCConnectorTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JoinColumn = {
    type = "structure",
    members = {
        From = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keys = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinType = {
    EQUIJOIN = "equijoin",
    LEFT = "left",
    RIGHT = "right",
    OUTER = "outer",
    LEFT_SEMI = "leftsemi",
    LEFT_ANTI = "leftanti",
}

M.Join = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        JoinType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Merge = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryKeys = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.MicrosoftSQLServerCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MicrosoftSQLServerCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MySQLCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MySQLCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OracleSQLCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OracleSQLCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PiiType = {
    RowAudit = "RowAudit",
    RowHashing = "RowHashing",
    RowMasking = "RowMasking",
    RowPartialMasking = "RowPartialMasking",
    ColumnAudit = "ColumnAudit",
    ColumnHashing = "ColumnHashing",
    ColumnMasking = "ColumnMasking",
}

M.PIIDetection = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PiiType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityTypesToDetect = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        OutputColumnName = {
            type = "string",
        },
        SampleFraction = {
            type = "number",
        },
        ThresholdFraction = {
            type = "number",
        },
        MaskValue = {
            type = "string",
        },
        RedactText = {
            type = "string",
        },
        RedactChar = {
            type = "string",
        },
        MatchPattern = {
            type = "string",
        },
        NumLeftCharsToExclude = {
            type = "number",
        },
        NumRightCharsToExclude = {
            type = "number",
        },
        DetectionParameters = {
            type = "string",
        },
        DetectionSensitivity = {
            type = "string",
        },
    },
}

M.PostgreSQLCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PostgreSQLCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecipeReference = {
    type = "structure",
    members = {
        RecipeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecipeAction = {
    type = "structure",
    members = {
        Operation = {
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
    },
}

M.ConditionExpression = {
    type = "structure",
    members = {
        Condition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
        TargetColumn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecipeStep = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConditionExpressions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Recipe = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        RecipeReference = {
            type = "structure",
        },
        RecipeSteps = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RedshiftSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedshiftTmpDir = {
            type = "string",
        },
        TmpDirIAMRole = {
            type = "string",
        },
    },
}

M.UpsertRedshiftTargetOptions = {
    type = "structure",
    members = {
        TableLocation = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        UpsertKeys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RedshiftTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedshiftTmpDir = {
            type = "string",
        },
        TmpDirIAMRole = {
            type = "string",
        },
        UpsertRedshiftOptions = {
            type = "structure",
        },
    },
}

M.RelationalCatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenameField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SourcePath = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TargetPath = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupFilters = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LogicalOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Route = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        GroupFiltersList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3CatalogDeltaSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalDeltaOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3CatalogHudiSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalHudiOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3CatalogIcebergSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalIcebergOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3CatalogSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartitionPredicate = {
            type = "string",
        },
        AdditionalOptions = {
            type = "structure",
        },
    },
}

M.S3CatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
    },
}

M.S3DirectSourceAdditionalOptions = {
    type = "structure",
    members = {
        BoundedSize = {
            type = "number",
        },
        BoundedFiles = {
            type = "number",
        },
        EnableSamplePath = {
            type = "boolean",
        },
        SamplePath = {
            type = "string",
        },
    },
}

M.CompressionType = {
    GZIP = "gzip",
    BZIP2 = "bzip2",
}

M.QuoteChar = {
    QUOTE = "quote",
    QUILLEMET = "quillemet",
    SINGLE_QUOTE = "single_quote",
    DISABLED = "disabled",
}

M.Separator = {
    COMMA = "comma",
    CTRLA = "ctrla",
    PIPE = "pipe",
    SEMICOLON = "semicolon",
    TAB = "tab",
}

M.S3CsvSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        GroupSize = {
            type = "string",
        },
        GroupFiles = {
            type = "string",
        },
        Recurse = {
            type = "boolean",
        },
        MaxBand = {
            type = "number",
        },
        MaxFilesInBand = {
            type = "number",
        },
        AdditionalOptions = {
            type = "structure",
        },
        Separator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Escaper = {
            type = "string",
        },
        QuoteChar = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Multiline = {
            type = "boolean",
        },
        WithHeader = {
            type = "boolean",
        },
        WriteHeader = {
            type = "boolean",
        },
        SkipFirst = {
            type = "boolean",
        },
        OptimizePerformance = {
            type = "boolean",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3DeltaCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeltaTargetCompressionType = {
    UNCOMPRESSED = "uncompressed",
    SNAPPY = "snappy",
}

M.TargetFormat = {
    JSON = "json",
    CSV = "csv",
    AVRO = "avro",
    ORC = "orc",
    PARQUET = "parquet",
    HUDI = "hudi",
    DELTA = "delta",
    ICEBERG = "iceberg",
    HYPER = "hyper",
    XML = "xml",
}

M.DirectSchemaChangePolicy = {
    type = "structure",
    members = {
        EnableUpdateCatalog = {
            type = "boolean",
        },
        UpdateBehavior = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        Database = {
            type = "string",
        },
    },
}

M.S3DeltaDirectTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberTargetPartitions = {
            type = "string",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
    },
}

M.S3DeltaSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalDeltaOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AdditionalOptions = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3DirectTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
        },
        NumberTargetPartitions = {
            type = "string",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ParquetCompressionType = {
    SNAPPY = "snappy",
    LZO = "lzo",
    GZIP = "gzip",
    BROTLI = "brotli",
    LZ4 = "lz4",
    UNCOMPRESSED = "uncompressed",
    NONE = "none",
}

M.S3ExcelSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        GroupSize = {
            type = "string",
        },
        GroupFiles = {
            type = "string",
        },
        Recurse = {
            type = "boolean",
        },
        MaxBand = {
            type = "number",
        },
        MaxFilesInBand = {
            type = "number",
        },
        AdditionalOptions = {
            type = "structure",
        },
        NumberRows = {
            type = "number",
        },
        SkipFooter = {
            type = "number",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3GlueParquetTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
        },
        NumberTargetPartitions = {
            type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
    },
}

M.S3HudiCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HudiTargetCompressionType = {
    GZIP = "gzip",
    LZO = "lzo",
    UNCOMPRESSED = "uncompressed",
    SNAPPY = "snappy",
}

M.S3HudiDirectTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberTargetPartitions = {
            type = "string",
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
    },
}

M.S3HudiSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalHudiOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AdditionalOptions = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HyperTargetCompressionType = {
    UNCOMPRESSED = "uncompressed",
}

M.S3HyperDirectTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3IcebergCatalogTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
    },
}

M.IcebergTargetCompressionType = {
    GZIP = "gzip",
    LZO = "lzo",
    UNCOMPRESSED = "uncompressed",
    SNAPPY = "snappy",
}

M.S3IcebergDirectTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member_type = "list",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        AutoDataQuality = {
            type = "structure",
        },
        Compression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberTargetPartitions = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3JsonSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        GroupSize = {
            type = "string",
        },
        GroupFiles = {
            type = "string",
        },
        Recurse = {
            type = "boolean",
        },
        MaxBand = {
            type = "number",
        },
        MaxFilesInBand = {
            type = "number",
        },
        AdditionalOptions = {
            type = "structure",
        },
        JsonPath = {
            type = "string",
        },
        Multiline = {
            type = "boolean",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3ParquetSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member_type = "string",
        },
        GroupSize = {
            type = "string",
        },
        GroupFiles = {
            type = "string",
        },
        Recurse = {
            type = "boolean",
        },
        MaxBand = {
            type = "number",
        },
        MaxFilesInBand = {
            type = "number",
        },
        AdditionalOptions = {
            type = "structure",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SelectFields = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.SelectFromCollection = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Index = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SnowflakeNodeData = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
        },
        Connection = {
            type = "structure",
        },
        Schema = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        TempDir = {
            type = "string",
        },
        IamRole = {
            type = "structure",
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SampleQuery = {
            type = "string",
        },
        PreAction = {
            type = "string",
        },
        PostAction = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Upsert = {
            type = "boolean",
        },
        MergeAction = {
            type = "string",
        },
        MergeWhenMatched = {
            type = "string",
        },
        MergeWhenNotMatched = {
            type = "string",
        },
        MergeClause = {
            type = "string",
        },
        StagingTable = {
            type = "string",
        },
        SelectedColumns = {
            type = "list",
            member_type = "structure",
        },
        AutoPushdown = {
            type = "boolean",
        },
        TableSchema = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnowflakeSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnowflakeTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SparkConnectorSource = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SparkConnectorTarget = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SqlAlias = {
    type = "structure",
    members = {
        From = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SparkSQL = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SqlQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SqlAliases = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Spigot = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Topk = {
            type = "number",
        },
        Prob = {
            type = "number",
        },
    },
}

M.SplitFields = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member_type = "list",
            traits = {
                required = true,
            },
        },
    },
}

M.UnionType = {
    ALL = "ALL",
    DISTINCT = "DISTINCT",
}

M.Union = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        UnionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobCommand = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ScriptLocation = {
            type = "string",
        },
        PythonVersion = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
    },
}

M.ConnectionsList = {
    type = "structure",
    members = {
        Connections = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ExecutionClass = {
    FLEX = "FLEX",
    STANDARD = "STANDARD",
}

M.ExecutionProperty = {
    type = "structure",
    members = {
        MaxConcurrentRuns = {
            type = "number",
        },
    },
}

M.JobMode = {
    SCRIPT = "SCRIPT",
    VISUAL = "VISUAL",
    NOTEBOOK = "NOTEBOOK",
}

M.SourceControlAuthStrategy = {
    PERSONAL_ACCESS_TOKEN = "PERSONAL_ACCESS_TOKEN",
    AWS_SECRETS_MANAGER = "AWS_SECRETS_MANAGER",
}

M.SourceControlProvider = {
    GITHUB = "GITHUB",
    GITLAB = "GITLAB",
    BITBUCKET = "BITBUCKET",
    AWS_CODE_COMMIT = "AWS_CODE_COMMIT",
}

M.SourceControlDetails = {
    type = "structure",
    members = {
        Provider = {
            type = "string",
        },
        Repository = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        Branch = {
            type = "string",
        },
        Folder = {
            type = "string",
        },
        LastCommitId = {
            type = "string",
        },
        AuthStrategy = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
    },
}

M.QuerySessionContext = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
        },
        QueryStartTime = {
            type = "timestamp",
        },
        ClusterId = {
            type = "string",
        },
        QueryAuthorizationId = {
            type = "string",
        },
        AdditionalContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BatchGetPartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionsToGet = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AuditContext = {
            type = "structure",
        },
        QuerySessionContext = {
            type = "structure",
        },
    },
}

M.Partition = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastAccessTime = {
            type = "timestamp",
        },
        StorageDescriptor = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastAnalyzedTime = {
            type = "timestamp",
        },
        CatalogId = {
            type = "string",
        },
    },
}

M.BatchGetPartitionOutput = {
    type = "structure",
    members = {
        Partitions = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedKeys = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FederationSourceErrorCode = {
    AccessDeniedException = "AccessDeniedException",
    EntityNotFoundException = "EntityNotFoundException",
    InvalidCredentialsException = "InvalidCredentialsException",
    InvalidInputException = "InvalidInputException",
    InvalidResponseException = "InvalidResponseException",
    OperationTimeoutException = "OperationTimeoutException",
    OperationNotSupportedException = "OperationNotSupportedException",
    InternalServiceException = "InternalServiceException",
    PartialFailureException = "PartialFailureException",
    ThrottlingException = "ThrottlingException",
}

M.FederationSourceException = {
    type = "structure",
    error = "client",
    members = {
        FederationSourceErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.FederationSourceRetryableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TableOptimizerType = {
    COMPACTION = "compaction",
    RETENTION = "retention",
    ORPHAN_FILE_DELETION = "orphan_file_deletion",
}

M.BatchGetTableOptimizerEntry = {
    type = "structure",
    members = {
        catalogId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.BatchGetTableOptimizerInput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTableOptimizerError = {
    type = "structure",
    members = {
        error = {
            type = "structure",
        },
        catalogId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.CompactionStrategy = {
    BINPACK = "binpack",
    SORT = "sort",
    ZORDER = "z-order",
}

M.IcebergCompactionConfiguration = {
    type = "structure",
    members = {
        strategy = {
            type = "string",
        },
        minInputFiles = {
            type = "number",
        },
        deleteFileThreshold = {
            type = "number",
        },
    },
}

M.CompactionConfiguration = {
    type = "structure",
    members = {
        icebergConfiguration = {
            type = "structure",
        },
    },
}

M.IcebergOrphanFileDeletionConfiguration = {
    type = "structure",
    members = {
        orphanFileRetentionPeriodInDays = {
            type = "number",
        },
        location = {
            type = "string",
        },
        runRateInHours = {
            type = "number",
        },
    },
}

M.OrphanFileDeletionConfiguration = {
    type = "structure",
    members = {
        icebergConfiguration = {
            type = "structure",
        },
    },
}

M.IcebergRetentionConfiguration = {
    type = "structure",
    members = {
        snapshotRetentionPeriodInDays = {
            type = "number",
        },
        numberOfSnapshotsToRetain = {
            type = "number",
        },
        cleanExpiredFiles = {
            type = "boolean",
        },
        runRateInHours = {
            type = "number",
        },
    },
}

M.RetentionConfiguration = {
    type = "structure",
    members = {
        icebergConfiguration = {
            type = "structure",
        },
    },
}

M.TableOptimizerVpcConfiguration = {
    type = "union",
    members = {
        glueConnectionName = {
            type = "string",
        },
    },
}

M.TableOptimizerConfiguration = {
    type = "structure",
    members = {
        roleArn = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        vpcConfiguration = {
            type = "union",
        },
        compactionConfiguration = {
            type = "structure",
        },
        retentionConfiguration = {
            type = "structure",
        },
        orphanFileDeletionConfiguration = {
            type = "structure",
        },
    },
}

M.ConfigurationSource = {
    CATALOG = "catalog",
    TABLE = "table",
}

M.IcebergCompactionMetrics = {
    type = "structure",
    members = {
        NumberOfBytesCompacted = {
            type = "number",
        },
        NumberOfFilesCompacted = {
            type = "number",
        },
        DpuHours = {
            type = "number",
        },
        NumberOfDpus = {
            type = "number",
        },
        JobDurationInHour = {
            type = "number",
        },
    },
}

M.CompactionMetrics = {
    type = "structure",
    members = {
        IcebergMetrics = {
            type = "structure",
        },
    },
}

M.TableOptimizerEventType = {
    STARTING = "starting",
    COMPLETED = "completed",
    FAILED = "failed",
    IN_PROGRESS = "in_progress",
}

M.RunMetrics = {
    type = "structure",
    members = {
        NumberOfBytesCompacted = {
            type = "string",
        },
        NumberOfFilesCompacted = {
            type = "string",
        },
        NumberOfDpus = {
            type = "string",
        },
        JobDurationInHour = {
            type = "string",
        },
    },
}

M.IcebergOrphanFileDeletionMetrics = {
    type = "structure",
    members = {
        NumberOfOrphanFilesDeleted = {
            type = "number",
        },
        DpuHours = {
            type = "number",
        },
        NumberOfDpus = {
            type = "number",
        },
        JobDurationInHour = {
            type = "number",
        },
    },
}

M.OrphanFileDeletionMetrics = {
    type = "structure",
    members = {
        IcebergMetrics = {
            type = "structure",
        },
    },
}

M.IcebergRetentionMetrics = {
    type = "structure",
    members = {
        NumberOfDataFilesDeleted = {
            type = "number",
        },
        NumberOfManifestFilesDeleted = {
            type = "number",
        },
        NumberOfManifestListsDeleted = {
            type = "number",
        },
        DpuHours = {
            type = "number",
        },
        NumberOfDpus = {
            type = "number",
        },
        JobDurationInHour = {
            type = "number",
        },
    },
}

M.RetentionMetrics = {
    type = "structure",
    members = {
        IcebergMetrics = {
            type = "structure",
        },
    },
}

M.TableOptimizerRun = {
    type = "structure",
    members = {
        eventType = {
            type = "string",
        },
        startTimestamp = {
            type = "timestamp",
        },
        endTimestamp = {
            type = "timestamp",
        },
        metrics = {
            type = "structure",
        },
        error = {
            type = "string",
        },
        compactionMetrics = {
            type = "structure",
        },
        compactionStrategy = {
            type = "string",
        },
        retentionMetrics = {
            type = "structure",
        },
        orphanFileDeletionMetrics = {
            type = "structure",
        },
    },
}

M.TableOptimizer = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        configuration = {
            type = "structure",
        },
        lastRun = {
            type = "structure",
        },
        configurationSource = {
            type = "string",
        },
    },
}

M.BatchTableOptimizer = {
    type = "structure",
    members = {
        catalogId = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        tableName = {
            type = "string",
        },
        tableOptimizer = {
            type = "structure",
        },
    },
}

M.BatchGetTableOptimizerOutput = {
    type = "structure",
    members = {
        TableOptimizers = {
            type = "list",
            member_type = "structure",
        },
        Failures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchGetTriggersInput = {
    type = "structure",
    members = {
        TriggerNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventBatchingCondition = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        BatchWindow = {
            type = "number",
        },
    },
}

M.CrawlState = {
    RUNNING = "RUNNING",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    ERROR = "ERROR",
}

M.LogicalOperator = {
    EQUALS = "EQUALS",
}

M.JobRunState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
    ERROR = "ERROR",
    WAITING = "WAITING",
    EXPIRED = "EXPIRED",
}

M.Condition = {
    type = "structure",
    members = {
        LogicalOperator = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CrawlerName = {
            type = "string",
        },
        CrawlState = {
            type = "string",
        },
    },
}

M.Logical = {
    AND = "AND",
    ANY = "ANY",
}

M.Predicate = {
    type = "structure",
    members = {
        Logical = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TriggerState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    ACTIVATING = "ACTIVATING",
    ACTIVATED = "ACTIVATED",
    DEACTIVATING = "DEACTIVATING",
    DEACTIVATED = "DEACTIVATED",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.TriggerType = {
    SCHEDULED = "SCHEDULED",
    CONDITIONAL = "CONDITIONAL",
    ON_DEMAND = "ON_DEMAND",
    EVENT = "EVENT",
}

M.Trigger = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        WorkflowName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        Predicate = {
            type = "structure",
        },
        EventBatchingCondition = {
            type = "structure",
        },
    },
}

M.BatchGetTriggersOutput = {
    type = "structure",
    members = {
        Triggers = {
            type = "list",
            member_type = "structure",
        },
        TriggersNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchGetWorkflowsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IncludeGraph = {
            type = "boolean",
        },
    },
}

M.BlueprintDetails = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
    },
}

M.Edge = {
    type = "structure",
    members = {
        SourceId = {
            type = "string",
        },
        DestinationId = {
            type = "string",
        },
    },
}

M.Crawl = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
        LogGroup = {
            type = "string",
        },
        LogStream = {
            type = "string",
        },
    },
}

M.CrawlerNodeDetails = {
    type = "structure",
    members = {
        Crawls = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Predecessor = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
    },
}

M.JobRun = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Attempt = {
            type = "number",
        },
        PreviousRunId = {
            type = "string",
        },
        TriggerName = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobMode = {
            type = "string",
        },
        JobRunQueuingEnabled = {
            type = "boolean",
        },
        StartedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        JobRunState = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        PredecessorRuns = {
            type = "list",
            member_type = "structure",
        },
        AllocatedCapacity = {
            type = "number",
        },
        ExecutionTime = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        GlueVersion = {
            type = "string",
        },
        DPUSeconds = {
            type = "number",
        },
        ExecutionClass = {
            type = "string",
        },
        MaintenanceWindow = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
        StateDetail = {
            type = "string",
        },
        ExecutionRoleSessionPolicy = {
            type = "string",
        },
    },
}

M.JobNodeDetails = {
    type = "structure",
    members = {
        JobRuns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TriggerNodeDetails = {
    type = "structure",
    members = {
        Trigger = {
            type = "structure",
        },
    },
}

M.NodeType = {
    CRAWLER = "CRAWLER",
    JOB = "JOB",
    TRIGGER = "TRIGGER",
}

M.Node = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        UniqueId = {
            type = "string",
        },
        TriggerDetails = {
            type = "structure",
        },
        JobDetails = {
            type = "structure",
        },
        CrawlerDetails = {
            type = "structure",
        },
    },
}

M.WorkflowGraph = {
    type = "structure",
    members = {
        Nodes = {
            type = "list",
            member_type = "structure",
        },
        Edges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartingEventBatchCondition = {
    type = "structure",
    members = {
        BatchSize = {
            type = "number",
        },
        BatchWindow = {
            type = "number",
        },
    },
}

M.WorkflowRunStatistics = {
    type = "structure",
    members = {
        TotalActions = {
            type = "number",
        },
        TimeoutActions = {
            type = "number",
        },
        FailedActions = {
            type = "number",
        },
        StoppedActions = {
            type = "number",
        },
        SucceededActions = {
            type = "number",
        },
        RunningActions = {
            type = "number",
        },
        ErroredActions = {
            type = "number",
        },
        WaitingActions = {
            type = "number",
        },
    },
}

M.WorkflowRunStatus = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    ERROR = "ERROR",
}

M.WorkflowRun = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        WorkflowRunId = {
            type = "string",
        },
        PreviousRunId = {
            type = "string",
        },
        WorkflowRunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        Statistics = {
            type = "structure",
        },
        Graph = {
            type = "structure",
        },
        StartingEventBatchCondition = {
            type = "structure",
        },
    },
}

M.Workflow = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        LastRun = {
            type = "structure",
        },
        Graph = {
            type = "structure",
        },
        MaxConcurrentRuns = {
            type = "number",
        },
        BlueprintDetails = {
            type = "structure",
        },
    },
}

M.BatchGetWorkflowsOutput = {
    type = "structure",
    members = {
        Workflows = {
            type = "list",
            member_type = "structure",
        },
        MissingWorkflows = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DatapointInclusionAnnotation = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
        },
        StatisticId = {
            type = "string",
        },
        InclusionAnnotation = {
            type = "string",
        },
    },
}

M.BatchPutDataQualityStatisticAnnotationInput = {
    type = "structure",
    members = {
        InclusionAnnotations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.BatchPutDataQualityStatisticAnnotationOutput = {
    type = "structure",
    members = {
        FailedInclusionAnnotations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchStopJobRunInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobRunIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchStopJobRunError = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        ErrorDetail = {
            type = "structure",
        },
    },
}

M.BatchStopJobRunSuccessfulSubmission = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
    },
}

M.BatchStopJobRunOutput = {
    type = "structure",
    members = {
        SuccessfulSubmissions = {
            type = "list",
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdatePartitionRequestEntry = {
    type = "structure",
    members = {
        PartitionValueList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdatePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdatePartitionFailureEntry = {
    type = "structure",
    members = {
        PartitionValueList = {
            type = "list",
            member_type = "string",
        },
        ErrorDetail = {
            type = "structure",
        },
    },
}

M.BatchUpdatePartitionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CancelDataQualityRuleRecommendationRunInput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelDataQualityRuleRecommendationRunOutput = {
    type = "structure",
}

M.CancelDataQualityRulesetEvaluationRunInput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelDataQualityRulesetEvaluationRunOutput = {
    type = "structure",
}

M.CancelMLTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskStatusType = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
}

M.CancelMLTaskRunOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
        TaskRunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CancelStatementInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.CancelStatementOutput = {
    type = "structure",
}

M.IllegalSessionStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataFormat = {
    AVRO = "AVRO",
    JSON = "JSON",
    PROTOBUF = "PROTOBUF",
}

M.CheckSchemaVersionValidityInput = {
    type = "structure",
    members = {
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckSchemaVersionValidityOutput = {
    type = "structure",
    members = {
        Valid = {
            type = "boolean",
        },
        Error = {
            type = "string",
        },
    },
}

M.CreateBlueprintInput = {
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
        BlueprintLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateBlueprintOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataLakeAccessProperties = {
    type = "structure",
    members = {
        DataLakeAccess = {
            type = "boolean",
        },
        DataTransferRole = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
        CatalogType = {
            type = "string",
        },
    },
}

M.IcebergOptimizationProperties = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        Compaction = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Retention = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OrphanFileDeletion = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CatalogProperties = {
    type = "structure",
    members = {
        DataLakeAccessProperties = {
            type = "structure",
        },
        IcebergOptimizationProperties = {
            type = "structure",
        },
        CustomProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Permission = {
    ALL = "ALL",
    SELECT = "SELECT",
    ALTER = "ALTER",
    DROP = "DROP",
    DELETE = "DELETE",
    INSERT = "INSERT",
    CREATE_DATABASE = "CREATE_DATABASE",
    CREATE_TABLE = "CREATE_TABLE",
    DATA_LOCATION_ACCESS = "DATA_LOCATION_ACCESS",
}

M.DataLakePrincipal = {
    type = "structure",
    members = {
        DataLakePrincipalIdentifier = {
            type = "string",
        },
    },
}

M.PrincipalPermissions = {
    type = "structure",
    members = {
        Principal = {
            type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.FederatedCatalog = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
    },
}

M.OverwriteChildResourcePermissionsWithDefaultEnum = {
    Accept = "Accept",
    Deny = "Deny",
}

M.TargetRedshiftCatalog = {
    type = "structure",
    members = {
        CatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        FederatedCatalog = {
            type = "structure",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TargetRedshiftCatalog = {
            type = "structure",
        },
        CatalogProperties = {
            type = "structure",
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        CreateDatabaseDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        AllowFullTableExternalDataAccess = {
            type = "string",
        },
        OverwriteChildResourcePermissionsWithDefault = {
            type = "string",
        },
    },
}

M.CreateCatalogInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCatalogOutput = {
    type = "structure",
}

M.FederatedResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        AssociatedGlueResource = {
            type = "string",
        },
    },
}

M.CsvHeaderOption = {
    UNKNOWN = "UNKNOWN",
    PRESENT = "PRESENT",
    ABSENT = "ABSENT",
}

M.CsvSerdeOption = {
    OpenCSVSerDe = "OpenCSVSerDe",
    LazySimpleSerDe = "LazySimpleSerDe",
    None = "None",
}

M.CreateCsvClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Delimiter = {
            type = "string",
        },
        QuoteSymbol = {
            type = "string",
        },
        ContainsHeader = {
            type = "string",
        },
        Header = {
            type = "list",
            member_type = "string",
        },
        DisableValueTrimming = {
            type = "boolean",
        },
        AllowSingleColumn = {
            type = "boolean",
        },
        CustomDatatypeConfigured = {
            type = "boolean",
        },
        CustomDatatypes = {
            type = "list",
            member_type = "string",
        },
        Serde = {
            type = "string",
        },
    },
}

M.CreateGrokClassifierRequest = {
    type = "structure",
    members = {
        Classification = {
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
        GrokPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomPatterns = {
            type = "string",
        },
    },
}

M.CreateJsonClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateXMLClassifierRequest = {
    type = "structure",
    members = {
        Classification = {
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
        RowTag = {
            type = "string",
        },
    },
}

M.CreateClassifierInput = {
    type = "structure",
    members = {
        GrokClassifier = {
            type = "structure",
        },
        XMLClassifier = {
            type = "structure",
        },
        JsonClassifier = {
            type = "structure",
        },
        CsvClassifier = {
            type = "structure",
        },
    },
}

M.CreateClassifierOutput = {
    type = "structure",
}

M.ColumnStatisticsTaskRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateColumnStatisticsTaskSettingsInput = {
    type = "structure",
    members = {
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
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
        },
        ColumnNameList = {
            type = "list",
            member_type = "string",
        },
        SampleSize = {
            type = "number",
        },
        CatalogID = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateColumnStatisticsTaskSettingsOutput = {
    type = "structure",
}

M.ConnectionPropertyKey = {
    HOST = "HOST",
    PORT = "PORT",
    USER_NAME = "USERNAME",
    PASSWORD = "PASSWORD",
    ENCRYPTED_PASSWORD = "ENCRYPTED_PASSWORD",
    JDBC_DRIVER_JAR_URI = "JDBC_DRIVER_JAR_URI",
    JDBC_DRIVER_CLASS_NAME = "JDBC_DRIVER_CLASS_NAME",
    JDBC_ENGINE = "JDBC_ENGINE",
    JDBC_ENGINE_VERSION = "JDBC_ENGINE_VERSION",
    CONFIG_FILES = "CONFIG_FILES",
    INSTANCE_ID = "INSTANCE_ID",
    JDBC_CONNECTION_URL = "JDBC_CONNECTION_URL",
    JDBC_ENFORCE_SSL = "JDBC_ENFORCE_SSL",
    CUSTOM_JDBC_CERT = "CUSTOM_JDBC_CERT",
    SKIP_CUSTOM_JDBC_CERT_VALIDATION = "SKIP_CUSTOM_JDBC_CERT_VALIDATION",
    CUSTOM_JDBC_CERT_STRING = "CUSTOM_JDBC_CERT_STRING",
    CONNECTION_URL = "CONNECTION_URL",
    KAFKA_BOOTSTRAP_SERVERS = "KAFKA_BOOTSTRAP_SERVERS",
    KAFKA_SSL_ENABLED = "KAFKA_SSL_ENABLED",
    KAFKA_CUSTOM_CERT = "KAFKA_CUSTOM_CERT",
    KAFKA_SKIP_CUSTOM_CERT_VALIDATION = "KAFKA_SKIP_CUSTOM_CERT_VALIDATION",
    KAFKA_CLIENT_KEYSTORE = "KAFKA_CLIENT_KEYSTORE",
    KAFKA_CLIENT_KEYSTORE_PASSWORD = "KAFKA_CLIENT_KEYSTORE_PASSWORD",
    KAFKA_CLIENT_KEY_PASSWORD = "KAFKA_CLIENT_KEY_PASSWORD",
    ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD = "ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD",
    ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD = "ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD",
    KAFKA_SASL_MECHANISM = "KAFKA_SASL_MECHANISM",
    KAFKA_SASL_PLAIN_USERNAME = "KAFKA_SASL_PLAIN_USERNAME",
    KAFKA_SASL_PLAIN_PASSWORD = "KAFKA_SASL_PLAIN_PASSWORD",
    ENCRYPTED_KAFKA_SASL_PLAIN_PASSWORD = "ENCRYPTED_KAFKA_SASL_PLAIN_PASSWORD",
    KAFKA_SASL_SCRAM_USERNAME = "KAFKA_SASL_SCRAM_USERNAME",
    KAFKA_SASL_SCRAM_PASSWORD = "KAFKA_SASL_SCRAM_PASSWORD",
    KAFKA_SASL_SCRAM_SECRETS_ARN = "KAFKA_SASL_SCRAM_SECRETS_ARN",
    ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD = "ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD",
    KAFKA_SASL_GSSAPI_KEYTAB = "KAFKA_SASL_GSSAPI_KEYTAB",
    KAFKA_SASL_GSSAPI_KRB5_CONF = "KAFKA_SASL_GSSAPI_KRB5_CONF",
    KAFKA_SASL_GSSAPI_SERVICE = "KAFKA_SASL_GSSAPI_SERVICE",
    KAFKA_SASL_GSSAPI_PRINCIPAL = "KAFKA_SASL_GSSAPI_PRINCIPAL",
    SECRET_ID = "SECRET_ID",
    CONNECTOR_URL = "CONNECTOR_URL",
    CONNECTOR_TYPE = "CONNECTOR_TYPE",
    CONNECTOR_CLASS_NAME = "CONNECTOR_CLASS_NAME",
    ENDPOINT = "ENDPOINT",
    ENDPOINT_TYPE = "ENDPOINT_TYPE",
    ROLE_ARN = "ROLE_ARN",
    REGION = "REGION",
    WORKGROUP_NAME = "WORKGROUP_NAME",
    CLUSTER_IDENTIFIER = "CLUSTER_IDENTIFIER",
    DATABASE = "DATABASE",
}

M.ConnectionType = {
    JDBC = "JDBC",
    SFTP = "SFTP",
    MONGODB = "MONGODB",
    KAFKA = "KAFKA",
    NETWORK = "NETWORK",
    MARKETPLACE = "MARKETPLACE",
    CUSTOM = "CUSTOM",
    SALESFORCE = "SALESFORCE",
    VIEW_VALIDATION_REDSHIFT = "VIEW_VALIDATION_REDSHIFT",
    VIEW_VALIDATION_ATHENA = "VIEW_VALIDATION_ATHENA",
    GOOGLEADS = "GOOGLEADS",
    GOOGLESHEETS = "GOOGLESHEETS",
    GOOGLEANALYTICS4 = "GOOGLEANALYTICS4",
    SERVICENOW = "SERVICENOW",
    MARKETO = "MARKETO",
    SAPODATA = "SAPODATA",
    ZENDESK = "ZENDESK",
    JIRACLOUD = "JIRACLOUD",
    NETSUITEERP = "NETSUITEERP",
    HUBSPOT = "HUBSPOT",
    FACEBOOKADS = "FACEBOOKADS",
    INSTAGRAMADS = "INSTAGRAMADS",
    ZOHOCRM = "ZOHOCRM",
    SALESFORCEPARDOT = "SALESFORCEPARDOT",
    SALESFORCEMARKETINGCLOUD = "SALESFORCEMARKETINGCLOUD",
    ADOBEANALYTICS = "ADOBEANALYTICS",
    SLACK = "SLACK",
    LINKEDIN = "LINKEDIN",
    MIXPANEL = "MIXPANEL",
    ASANA = "ASANA",
    STRIPE = "STRIPE",
    SMARTSHEET = "SMARTSHEET",
    DATADOG = "DATADOG",
    WOOCOMMERCE = "WOOCOMMERCE",
    INTERCOM = "INTERCOM",
    SNAPCHATADS = "SNAPCHATADS",
    PAYPAL = "PAYPAL",
    QUICKBOOKS = "QUICKBOOKS",
    FACEBOOKPAGEINSIGHTS = "FACEBOOKPAGEINSIGHTS",
    FRESHDESK = "FRESHDESK",
    TWILIO = "TWILIO",
    DOCUSIGNMONITOR = "DOCUSIGNMONITOR",
    FRESHSALES = "FRESHSALES",
    ZOOM = "ZOOM",
    GOOGLESEARCHCONSOLE = "GOOGLESEARCHCONSOLE",
    SALESFORCECOMMERCECLOUD = "SALESFORCECOMMERCECLOUD",
    SAPCONCUR = "SAPCONCUR",
    DYNATRACE = "DYNATRACE",
    MICROSOFTDYNAMIC365FINANCEANDOPS = "MICROSOFTDYNAMIC365FINANCEANDOPS",
    MICROSOFTTEAMS = "MICROSOFTTEAMS",
    BLACKBAUDRAISEREDGENXT = "BLACKBAUDRAISEREDGENXT",
    MAILCHIMP = "MAILCHIMP",
    GITLAB = "GITLAB",
    PENDO = "PENDO",
    PRODUCTBOARD = "PRODUCTBOARD",
    CIRCLECI = "CIRCLECI",
    PIPEDIVE = "PIPEDIVE",
    SENDGRID = "SENDGRID",
    AZURECOSMOS = "AZURECOSMOS",
    AZURESQL = "AZURESQL",
    BIGQUERY = "BIGQUERY",
    BLACKBAUD = "BLACKBAUD",
    CLOUDERAHIVE = "CLOUDERAHIVE",
    CLOUDERAIMPALA = "CLOUDERAIMPALA",
    CLOUDWATCH = "CLOUDWATCH",
    CLOUDWATCHMETRICS = "CLOUDWATCHMETRICS",
    CMDB = "CMDB",
    DATALAKEGEN2 = "DATALAKEGEN2",
    DB2 = "DB2",
    DB2AS400 = "DB2AS400",
    DOCUMENTDB = "DOCUMENTDB",
    DOMO = "DOMO",
    DYNAMODB = "DYNAMODB",
    GOOGLECLOUDSTORAGE = "GOOGLECLOUDSTORAGE",
    HBASE = "HBASE",
    KUSTOMER = "KUSTOMER",
    MICROSOFTDYNAMICS365CRM = "MICROSOFTDYNAMICS365CRM",
    MONDAY = "MONDAY",
    MYSQL = "MYSQL",
    OKTA = "OKTA",
    OPENSEARCH = "OPENSEARCH",
    ORACLE = "ORACLE",
    PIPEDRIVE = "PIPEDRIVE",
    POSTGRESQL = "POSTGRESQL",
    SAPHANA = "SAPHANA",
    SQLSERVER = "SQLSERVER",
    SYNAPSE = "SYNAPSE",
    TERADATA = "TERADATA",
    TERADATANOS = "TERADATANOS",
    TIMESTREAM = "TIMESTREAM",
    TPCDS = "TPCDS",
    VERTICA = "VERTICA",
}

M.PhysicalConnectionRequirements = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        SecurityGroupIdList = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
    },
}

M.ComputeEnvironment = {
    SPARK = "SPARK",
    ATHENA = "ATHENA",
    PYTHON = "PYTHON",
}

M.ConnectionInput = {
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
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MatchCriteria = {
            type = "list",
            member_type = "string",
        },
        ConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        SparkProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AthenaProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PythonProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PhysicalConnectionRequirements = {
            type = "structure",
        },
        AuthenticationConfiguration = {
            type = "structure",
        },
        ValidateCredentials = {
            type = "boolean",
        },
        ValidateForComputeEnvironments = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        ConnectionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConnectionStatus = {
    READY = "READY",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        CreateConnectionStatus = {
            type = "string",
        },
    },
}

M.CreateCrawlerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Targets = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member_type = "string",
        },
        TablePrefix = {
            type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        RecrawlPolicy = {
            type = "structure",
        },
        LineageConfiguration = {
            type = "structure",
        },
        LakeFormationConfiguration = {
            type = "structure",
        },
        Configuration = {
            type = "string",
        },
        CrawlerSecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCrawlerOutput = {
    type = "structure",
}

M.CreateCustomEntityTypeInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegexString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContextWords = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCustomEntityTypeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FederatedDatabase = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
    },
}

M.DatabaseIdentifier = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.DatabaseInput = {
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
        LocationUri = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        TargetDatabase = {
            type = "structure",
        },
        FederatedDatabase = {
            type = "structure",
        },
    },
}

M.CreateDatabaseInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDatabaseOutput = {
    type = "structure",
}

M.DataQualityTargetTable = {
    type = "structure",
    members = {
        TableName = {
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
        CatalogId = {
            type = "string",
        },
    },
}

M.CreateDataQualityRulesetInput = {
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
        Ruleset = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TargetTable = {
            type = "structure",
        },
        DataQualitySecurityConfiguration = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateDataQualityRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.CreateDevEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
        PublicKey = {
            type = "string",
        },
        PublicKeys = {
            type = "list",
            member_type = "string",
        },
        NumberOfNodes = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        ExtraPythonLibsS3Path = {
            type = "string",
        },
        ExtraJarsS3Path = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDevEndpointOutput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        YarnEndpointAddress = {
            type = "string",
        },
        ZeppelinRemoteSparkInterpreterPort = {
            type = "number",
        },
        NumberOfNodes = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ExtraPythonLibsS3Path = {
            type = "string",
        },
        ExtraJarsS3Path = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
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

M.CreateGlueIdentityCenterConfigurationInput = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "list",
            member_type = "string",
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationConfig = {
    type = "structure",
    members = {
        RefreshInterval = {
            type = "string",
        },
        SourceProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ContinuousSync = {
            type = "boolean",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
    members = {
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DataFilter = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        IntegrationConfig = {
            type = "structure",
        },
    },
}

M.IntegrationError = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.IntegrationStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    MODIFYING = "MODIFYING",
    FAILED = "FAILED",
    DELETING = "DELETING",
    SYNCING = "SYNCING",
    NEEDS_ATTENTION = "NEEDS_ATTENTION",
}

M.CreateIntegrationOutput = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
        DataFilter = {
            type = "string",
        },
        IntegrationConfig = {
            type = "structure",
        },
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
        },
    },
}

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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
    },
}

M.SourceProcessingProperties = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
    },
}

M.TargetProcessingProperties = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        KmsArn = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        EventBusArn = {
            type = "string",
        },
    },
}

M.CreateIntegrationResourcePropertyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateIntegrationResourcePropertyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
    },
}

M.SourceTableConfig = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "string",
        },
        FilterPredicate = {
            type = "string",
        },
        PrimaryKey = {
            type = "list",
            member_type = "string",
        },
        RecordUpdateField = {
            type = "string",
        },
    },
}

M.IntegrationPartition = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        FunctionSpec = {
            type = "string",
        },
        ConversionSpec = {
            type = "string",
        },
    },
}

M.UnnestSpec = {
    TOPLEVEL = "TOPLEVEL",
    FULL = "FULL",
    NOUNNEST = "NOUNNEST",
}

M.TargetTableConfig = {
    type = "structure",
    members = {
        UnnestSpec = {
            type = "string",
        },
        PartitionSpec = {
            type = "list",
            member_type = "structure",
        },
        TargetTableName = {
            type = "string",
        },
    },
}

M.CreateIntegrationTablePropertiesInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        SourceTableConfig = {
            type = "structure",
        },
        TargetTableConfig = {
            type = "structure",
        },
    },
}

M.CreateIntegrationTablePropertiesOutput = {
    type = "structure",
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FindMatchesParameters = {
    type = "structure",
    members = {
        PrimaryKeyColumnName = {
            type = "string",
        },
        PrecisionRecallTradeoff = {
            type = "number",
        },
        AccuracyCostTradeoff = {
            type = "number",
        },
        EnforceProvidedLabels = {
            type = "boolean",
        },
    },
}

M.TransformType = {
    FIND_MATCHES = "FIND_MATCHES",
}

M.TransformParameters = {
    type = "structure",
    members = {
        TransformType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindMatchesParameters = {
            type = "structure",
        },
    },
}

M.MLUserDataEncryptionModeString = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
}

M.MLUserDataEncryption = {
    type = "structure",
    members = {
        MlUserDataEncryptionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.TransformEncryption = {
    type = "structure",
    members = {
        MlUserDataEncryption = {
            type = "structure",
        },
        TaskRunSecurityConfigurationName = {
            type = "string",
        },
    },
}

M.CreateMLTransformInput = {
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
        InputRecordTables = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TransformEncryption = {
            type = "structure",
        },
    },
}

M.CreateMLTransformOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.CreatePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePartitionOutput = {
    type = "structure",
}

M.PartitionIndex = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePartitionIndexInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionIndex = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePartitionIndexOutput = {
    type = "structure",
}

M.CreateRegistryInput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateRegistryOutput = {
    type = "structure",
    members = {
        RegistryArn = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Compatibility = {
    NONE = "NONE",
    DISABLED = "DISABLED",
    BACKWARD = "BACKWARD",
    BACKWARD_ALL = "BACKWARD_ALL",
    FORWARD = "FORWARD",
    FORWARD_ALL = "FORWARD_ALL",
    FULL = "FULL",
    FULL_ALL = "FULL_ALL",
}

M.RegistryId = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
    members = {
        RegistryId = {
            type = "structure",
        },
        SchemaName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compatibility = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaDefinition = {
            type = "string",
        },
    },
}

M.SchemaStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    DELETING = "DELETING",
}

M.SchemaVersionStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    FAILURE = "FAILURE",
    DELETING = "DELETING",
}

M.CreateSchemaOutput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DataFormat = {
            type = "string",
        },
        Compatibility = {
            type = "string",
        },
        SchemaCheckpoint = {
            type = "number",
        },
        LatestSchemaVersion = {
            type = "number",
        },
        NextSchemaVersion = {
            type = "number",
        },
        SchemaStatus = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SchemaVersionId = {
            type = "string",
        },
        SchemaVersionStatus = {
            type = "string",
        },
    },
}

M.CodeGenEdge = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetParameter = {
            type = "string",
        },
    },
}

M.CodeGenNodeArg = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Param = {
            type = "boolean",
        },
    },
}

M.CodeGenNode = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Args = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LineNumber = {
            type = "number",
        },
    },
}

M.Language = {
    PYTHON = "PYTHON",
    SCALA = "SCALA",
}

M.CreateScriptInput = {
    type = "structure",
    members = {
        DagNodes = {
            type = "list",
            member_type = "structure",
        },
        DagEdges = {
            type = "list",
            member_type = "structure",
        },
        Language = {
            type = "string",
        },
    },
}

M.CreateScriptOutput = {
    type = "structure",
    members = {
        PythonScript = {
            type = "string",
        },
        ScalaCode = {
            type = "string",
        },
    },
}

M.CloudWatchEncryptionMode = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
}

M.CloudWatchEncryption = {
    type = "structure",
    members = {
        CloudWatchEncryptionMode = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.DataQualityEncryptionMode = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
}

M.DataQualityEncryption = {
    type = "structure",
    members = {
        DataQualityEncryptionMode = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.JobBookmarksEncryptionMode = {
    DISABLED = "DISABLED",
    CSEKMS = "CSE-KMS",
}

M.JobBookmarksEncryption = {
    type = "structure",
    members = {
        JobBookmarksEncryptionMode = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.S3EncryptionMode = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
    SSES3 = "SSE-S3",
}

M.S3Encryption = {
    type = "structure",
    members = {
        S3EncryptionMode = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        S3Encryption = {
            type = "list",
            member_type = "structure",
        },
        CloudWatchEncryption = {
            type = "structure",
        },
        JobBookmarksEncryption = {
            type = "structure",
        },
        DataQualityEncryption = {
            type = "structure",
        },
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSecurityConfigurationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.SessionCommand = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        PythonVersion = {
            type = "string",
        },
    },
}

M.CreateSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Command = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Timeout = {
            type = "number",
        },
        IdleTimeout = {
            type = "number",
        },
        DefaultArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Connections = {
            type = "structure",
        },
        MaxCapacity = {
            type = "number",
        },
        NumberOfWorkers = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.SessionStatus = {
    PROVISIONING = "PROVISIONING",
    READY = "READY",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.Session = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Command = {
            type = "structure",
        },
        DefaultArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Connections = {
            type = "structure",
        },
        Progress = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "number",
        },
        DPUSeconds = {
            type = "number",
        },
        IdleTimeout = {
            type = "number",
        },
        ProfileName = {
            type = "string",
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    members = {
        Session = {
            type = "structure",
        },
    },
}

M.IcebergPartitionField = {
    type = "structure",
    members = {
        SourceId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Transform = {
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
        FieldId = {
            type = "number",
        },
    },
}

M.IcebergPartitionSpec = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SpecId = {
            type = "number",
        },
    },
}

M.IcebergStructField = {
    type = "structure",
    members = {
        Id = {
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
        Type = {
            type = "document",
            traits = {
                required = true,
            },
        },
        Required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Doc = {
            type = "string",
        },
        InitialDefault = {
            type = "document",
        },
        WriteDefault = {
            type = "document",
        },
    },
}

M.IcebergStructTypeEnum = {
    STRUCT = "struct",
}

M.IcebergSchema = {
    type = "structure",
    members = {
        SchemaId = {
            type = "number",
        },
        IdentifierFieldIds = {
            type = "list",
            member_type = "number",
        },
        Type = {
            type = "string",
        },
        Fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IcebergSortDirection = {
    ASC = "asc",
    DESC = "desc",
}

M.IcebergNullOrder = {
    NULLS_FIRST = "nulls-first",
    NULLS_LAST = "nulls-last",
}

M.IcebergSortField = {
    type = "structure",
    members = {
        SourceId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Transform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NullOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IcebergSortOrder = {
    type = "structure",
    members = {
        OrderId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIcebergTableInput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PartitionSpec = {
            type = "structure",
        },
        WriteOrder = {
            type = "structure",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MetadataOperation = {
    CREATE = "CREATE",
}

M.IcebergInput = {
    type = "structure",
    members = {
        MetadataOperation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
        CreateIcebergTableInput = {
            type = "structure",
        },
    },
}

M.OpenTableFormatInput = {
    type = "structure",
    members = {
        IcebergInput = {
            type = "structure",
        },
    },
}

M.TableIdentifier = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.LastRefreshType = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.ViewDialect = {
    REDSHIFT = "REDSHIFT",
    ATHENA = "ATHENA",
    SPARK = "SPARK",
}

M.ViewRepresentationInput = {
    type = "structure",
    members = {
        Dialect = {
            type = "string",
        },
        DialectVersion = {
            type = "string",
        },
        ViewOriginalText = {
            type = "string",
        },
        ValidationConnection = {
            type = "string",
        },
        ViewExpandedText = {
            type = "string",
        },
    },
}

M.ViewDefinitionInput = {
    type = "structure",
    members = {
        IsProtected = {
            type = "boolean",
        },
        Definer = {
            type = "string",
        },
        Representations = {
            type = "list",
            member_type = "structure",
        },
        ViewVersionId = {
            type = "number",
        },
        ViewVersionToken = {
            type = "string",
        },
        RefreshSeconds = {
            type = "number",
        },
        LastRefreshType = {
            type = "string",
        },
        SubObjects = {
            type = "list",
            member_type = "string",
        },
        SubObjectVersionIds = {
            type = "list",
            member_type = "number",
        },
    },
}

M.TableInput = {
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
        Owner = {
            type = "string",
        },
        LastAccessTime = {
            type = "timestamp",
        },
        LastAnalyzedTime = {
            type = "timestamp",
        },
        Retention = {
            type = "number",
        },
        StorageDescriptor = {
            type = "structure",
        },
        PartitionKeys = {
            type = "list",
            member_type = "structure",
        },
        ViewOriginalText = {
            type = "string",
        },
        ViewExpandedText = {
            type = "string",
        },
        TableType = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TargetTable = {
            type = "structure",
        },
        ViewDefinition = {
            type = "structure",
        },
    },
}

M.CreateTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        TableInput = {
            type = "structure",
        },
        PartitionIndexes = {
            type = "list",
            member_type = "structure",
        },
        TransactionId = {
            type = "string",
        },
        OpenTableFormatInput = {
            type = "structure",
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
}

M.CreateTableOptimizerInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableOptimizerConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTableOptimizerOutput = {
    type = "structure",
}

M.CreateTriggerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowName = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
        },
        Predicate = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        StartOnCreation = {
            type = "boolean",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        EventBatchingCondition = {
            type = "structure",
        },
    },
}

M.CreateTriggerOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ConfigurationObject = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "list",
            member_type = "string",
        },
        MinValue = {
            type = "string",
        },
        MaxValue = {
            type = "string",
        },
    },
}

M.ProfileConfiguration = {
    type = "structure",
    members = {
        SessionConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        JobConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CreateUsageProfileInput = {
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
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateUsageProfileOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FunctionType = {
    REGULAR_FUNCTION = "REGULAR_FUNCTION",
    AGGREGATE_FUNCTION = "AGGREGATE_FUNCTION",
    STORED_PROCEDURE = "STORED_PROCEDURE",
}

M.PrincipalType = {
    USER = "USER",
    ROLE = "ROLE",
    GROUP = "GROUP",
}

M.ResourceType = {
    JAR = "JAR",
    FILE = "FILE",
    ARCHIVE = "ARCHIVE",
}

M.ResourceUri = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        Uri = {
            type = "string",
        },
    },
}

M.UserDefinedFunctionInput = {
    type = "structure",
    members = {
        FunctionName = {
            type = "string",
        },
        ClassName = {
            type = "string",
        },
        OwnerName = {
            type = "string",
        },
        FunctionType = {
            type = "string",
        },
        OwnerType = {
            type = "string",
        },
        ResourceUris = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateUserDefinedFunctionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserDefinedFunctionOutput = {
    type = "structure",
}

M.CreateWorkflowInput = {
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
        DefaultRunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxConcurrentRuns = {
            type = "number",
        },
    },
}

M.CreateWorkflowOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteBlueprintInput = {
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

M.DeleteBlueprintOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteCatalogInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCatalogOutput = {
    type = "structure",
}

M.DeleteClassifierInput = {
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

M.DeleteClassifierOutput = {
    type = "structure",
}

M.DeleteColumnStatisticsForPartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteColumnStatisticsForPartitionOutput = {
    type = "structure",
}

M.DeleteColumnStatisticsForTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteColumnStatisticsForTableOutput = {
    type = "structure",
}

M.DeleteColumnStatisticsTaskSettingsInput = {
    type = "structure",
    members = {
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
    },
}

M.DeleteColumnStatisticsTaskSettingsOutput = {
    type = "structure",
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
}

M.DeleteConnectionTypeInput = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionTypeOutput = {
    type = "structure",
}

M.CrawlerRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCrawlerInput = {
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

M.DeleteCrawlerOutput = {
    type = "structure",
}

M.SchedulerTransitioningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCustomEntityTypeInput = {
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

M.DeleteCustomEntityTypeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteDatabaseInput = {
    type = "structure",
    members = {
        CatalogId = {
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

M.DeleteDatabaseOutput = {
    type = "structure",
}

M.DeleteDataQualityRulesetInput = {
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

M.DeleteDataQualityRulesetOutput = {
    type = "structure",
}

M.DeleteDevEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDevEndpointOutput = {
    type = "structure",
}

M.DeleteGlueIdentityCenterConfigurationInput = {
    type = "structure",
}

M.DeleteGlueIdentityCenterConfigurationOutput = {
    type = "structure",
}

M.DeleteIntegrationInput = {
    type = "structure",
    members = {
        IntegrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
        DataFilter = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidIntegrationStateFault = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteIntegrationResourcePropertyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationResourcePropertyOutput = {
    type = "structure",
}

M.DeleteIntegrationTablePropertiesInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.DeleteIntegrationTablePropertiesOutput = {
    type = "structure",
}

M.DeleteJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteJobOutput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.DeleteMLTransformInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMLTransformOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.DeletePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePartitionOutput = {
    type = "structure",
}

M.DeletePartitionIndexInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePartitionIndexOutput = {
    type = "structure",
}

M.DeleteRegistryInput = {
    type = "structure",
    members = {
        RegistryId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistryStatus = {
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
}

M.DeleteRegistryOutput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ConditionCheckFailureException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        PolicyHashCondition = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteSchemaInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSchemaOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DeleteSchemaVersionsInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Versions = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.SchemaVersionErrorItem = {
    type = "structure",
    members = {
        VersionNumber = {
            type = "number",
        },
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.DeleteSchemaVersionsOutput = {
    type = "structure",
    members = {
        SchemaVersionErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteSecurityConfigurationInput = {
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

M.DeleteSecurityConfigurationOutput = {
    type = "structure",
}

M.DeleteSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.DeleteSessionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
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
        TransactionId = {
            type = "string",
        },
    },
}

M.DeleteTableOutput = {
    type = "structure",
}

M.DeleteTableOptimizerInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTableOptimizerOutput = {
    type = "structure",
}

M.DeleteTableVersionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTableVersionOutput = {
    type = "structure",
}

M.DeleteTriggerInput = {
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

M.DeleteTriggerOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteUsageProfileInput = {
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

M.DeleteUsageProfileOutput = {
    type = "structure",
}

M.DeleteUserDefinedFunctionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserDefinedFunctionOutput = {
    type = "structure",
}

M.DeleteWorkflowInput = {
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

M.DeleteWorkflowOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DescribeConnectionTypeInput = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Capabilities = {
    type = "structure",
    members = {
        SupportedAuthenticationTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportedDataOperations = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportedComputeEnvironments = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeEnvironmentConfiguration = {
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
            traits = {
                required = true,
            },
        },
        ComputeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportedAuthenticationTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        ConnectionPropertyNameOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionOptionNameOverrides = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionPropertiesRequiredOverrides = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PhysicalConnectionPropertiesRequired = {
            type = "boolean",
        },
    },
}

M.FieldDataType = {
    INT = "INT",
    SMALLINT = "SMALLINT",
    BIGINT = "BIGINT",
    FLOAT = "FLOAT",
    LONG = "LONG",
    DATE = "DATE",
    BOOLEAN = "BOOLEAN",
    MAP = "MAP",
    ARRAY = "ARRAY",
    STRING = "STRING",
    TIMESTAMP = "TIMESTAMP",
    DECIMAL = "DECIMAL",
    BYTE = "BYTE",
    SHORT = "SHORT",
    DOUBLE = "DOUBLE",
    STRUCT = "STRUCT",
    BINARY = "BINARY",
    UNION = "UNION",
}

M.FieldDefinition = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldDataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseExtractionMapping = {
    type = "structure",
    members = {
        ContentPath = {
            type = "string",
        },
        HeaderKey = {
            type = "string",
        },
    },
}

M.ExtractedParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        PropertyLocation = {
            type = "string",
        },
        Value = {
            type = "structure",
        },
    },
}

M.CursorConfiguration = {
    type = "structure",
    members = {
        NextPage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LimitParameter = {
            type = "structure",
        },
    },
}

M.OffsetConfiguration = {
    type = "structure",
    members = {
        OffsetParameter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LimitParameter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PaginationConfiguration = {
    type = "structure",
    members = {
        CursorConfiguration = {
            type = "structure",
        },
        OffsetConfiguration = {
            type = "structure",
        },
    },
}

M.HTTPMethod = {
    GET = "GET",
    POST = "POST",
}

M.ConnectorProperty = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyOverride = {
            type = "string",
        },
        Required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "list",
            member_type = "string",
        },
        PropertyLocation = {
            type = "string",
        },
        PropertyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseConfiguration = {
    type = "structure",
    members = {
        ResultPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorPath = {
            type = "string",
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    members = {
        RequestMethod = {
            type = "string",
        },
        RequestPath = {
            type = "string",
        },
        RequestParameters = {
            type = "list",
            member_type = "structure",
        },
        ResponseConfiguration = {
            type = "structure",
        },
        PaginationConfiguration = {
            type = "structure",
        },
    },
}

M.EntityConfiguration = {
    type = "structure",
    members = {
        SourceConfiguration = {
            type = "structure",
        },
        Schema = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.RestConfiguration = {
    type = "structure",
    members = {
        GlobalSourceConfiguration = {
            type = "structure",
        },
        ValidationEndpointConfiguration = {
            type = "structure",
        },
        EntityConfigurations = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.DescribeConnectionTypeOutput = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Capabilities = {
            type = "structure",
        },
        ConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ConnectionOptions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        AuthenticationConfiguration = {
            type = "structure",
        },
        ComputeEnvironmentConfigurations = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        PhysicalConnectionRequirements = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        AthenaConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        PythonConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        SparkConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RestConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeEntityInput = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogId = {
            type = "string",
        },
        EntityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        DataStoreApiVersion = {
            type = "string",
        },
    },
}

M.FieldFilterOperator = {
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    BETWEEN = "BETWEEN",
    EQUAL_TO = "EQUAL_TO",
    NOT_EQUAL_TO = "NOT_EQUAL_TO",
    GREATER_THAN_OR_EQUAL_TO = "GREATER_THAN_OR_EQUAL_TO",
    LESS_THAN_OR_EQUAL_TO = "LESS_THAN_OR_EQUAL_TO",
    CONTAINS = "CONTAINS",
    ORDER_BY = "ORDER_BY",
}

M.Field = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        FieldType = {
            type = "string",
        },
        IsPrimaryKey = {
            type = "boolean",
        },
        IsNullable = {
            type = "boolean",
        },
        IsRetrievable = {
            type = "boolean",
        },
        IsFilterable = {
            type = "boolean",
        },
        IsPartitionable = {
            type = "boolean",
        },
        IsCreateable = {
            type = "boolean",
        },
        IsUpdateable = {
            type = "boolean",
        },
        IsUpsertable = {
            type = "boolean",
        },
        IsDefaultOnCreate = {
            type = "boolean",
        },
        SupportedValues = {
            type = "list",
            member_type = "string",
        },
        SupportedFilterOperators = {
            type = "list",
            member_type = "string",
        },
        ParentField = {
            type = "string",
        },
        NativeDataType = {
            type = "string",
        },
        CustomProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeEntityOutput = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInboundIntegrationsInput = {
    type = "structure",
    members = {
        IntegrationArn = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        TargetArn = {
            type = "string",
        },
    },
}

M.InboundIntegration = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationArn = {
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
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IntegrationConfig = {
            type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeInboundIntegrationsOutput = {
    type = "structure",
    members = {
        InboundIntegrations = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.TargetResourceNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeIntegrationsInput = {
    type = "structure",
    members = {
        IntegrationIdentifier = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Integration = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IntegrationConfig = {
            type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
        DataFilter = {
            type = "string",
        },
    },
}

M.DescribeIntegrationsOutput = {
    type = "structure",
    members = {
        Integrations = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.GetBlueprintInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeBlueprint = {
            type = "boolean",
        },
        IncludeParameterSpec = {
            type = "boolean",
        },
    },
}

M.GetBlueprintOutput = {
    type = "structure",
    members = {
        Blueprint = {
            type = "structure",
        },
    },
}

M.GetBlueprintRunInput = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BlueprintRunState = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    ROLLING_BACK = "ROLLING_BACK",
}

M.BlueprintRun = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        WorkflowName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
        RollbackErrorMessage = {
            type = "string",
        },
        Parameters = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetBlueprintRunOutput = {
    type = "structure",
    members = {
        BlueprintRun = {
            type = "structure",
        },
    },
}

M.GetBlueprintRunsInput = {
    type = "structure",
    members = {
        BlueprintName = {
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

M.GetBlueprintRunsOutput = {
    type = "structure",
    members = {
        BlueprintRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCatalogInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataLakeAccessPropertiesOutput = {
    type = "structure",
    members = {
        DataLakeAccess = {
            type = "boolean",
        },
        DataTransferRole = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
        ManagedWorkgroupName = {
            type = "string",
        },
        ManagedWorkgroupStatus = {
            type = "string",
        },
        RedshiftDatabaseName = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CatalogType = {
            type = "string",
        },
    },
}

M.IcebergOptimizationPropertiesOutput = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        Compaction = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Retention = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OrphanFileDeletion = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CatalogPropertiesOutput = {
    type = "structure",
    members = {
        DataLakeAccessProperties = {
            type = "structure",
        },
        IcebergOptimizationProperties = {
            type = "structure",
        },
        CustomProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Catalog = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        TargetRedshiftCatalog = {
            type = "structure",
        },
        FederatedCatalog = {
            type = "structure",
        },
        CatalogProperties = {
            type = "structure",
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        CreateDatabaseDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        AllowFullTableExternalDataAccess = {
            type = "string",
        },
    },
}

M.GetCatalogOutput = {
    type = "structure",
    members = {
        Catalog = {
            type = "structure",
        },
    },
}

M.GetCatalogImportStatusInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.CatalogImportStatus = {
    type = "structure",
    members = {
        ImportCompleted = {
            type = "boolean",
        },
        ImportTime = {
            type = "timestamp",
        },
        ImportedBy = {
            type = "string",
        },
    },
}

M.GetCatalogImportStatusOutput = {
    type = "structure",
    members = {
        ImportStatus = {
            type = "structure",
        },
    },
}

M.GetCatalogsInput = {
    type = "structure",
    members = {
        ParentCatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Recursive = {
            type = "boolean",
        },
        IncludeRoot = {
            type = "boolean",
        },
    },
}

M.GetCatalogsOutput = {
    type = "structure",
    members = {
        CatalogList = {
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

M.GetClassifierInput = {
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

M.CsvClassifier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Version = {
            type = "number",
        },
        Delimiter = {
            type = "string",
        },
        QuoteSymbol = {
            type = "string",
        },
        ContainsHeader = {
            type = "string",
        },
        Header = {
            type = "list",
            member_type = "string",
        },
        DisableValueTrimming = {
            type = "boolean",
        },
        AllowSingleColumn = {
            type = "boolean",
        },
        CustomDatatypeConfigured = {
            type = "boolean",
        },
        CustomDatatypes = {
            type = "list",
            member_type = "string",
        },
        Serde = {
            type = "string",
        },
    },
}

M.GrokClassifier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Classification = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Version = {
            type = "number",
        },
        GrokPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomPatterns = {
            type = "string",
        },
    },
}

M.JsonClassifier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Version = {
            type = "number",
        },
        JsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.XMLClassifier = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Classification = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Version = {
            type = "number",
        },
        RowTag = {
            type = "string",
        },
    },
}

M.Classifier = {
    type = "structure",
    members = {
        GrokClassifier = {
            type = "structure",
        },
        XMLClassifier = {
            type = "structure",
        },
        JsonClassifier = {
            type = "structure",
        },
        CsvClassifier = {
            type = "structure",
        },
    },
}

M.GetClassifierOutput = {
    type = "structure",
    members = {
        Classifier = {
            type = "structure",
        },
    },
}

M.GetClassifiersInput = {
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

M.GetClassifiersOutput = {
    type = "structure",
    members = {
        Classifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsForPartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ColumnNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BinaryColumnStatisticsData = {
    type = "structure",
    members = {
        MaximumLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AverageLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BooleanColumnStatisticsData = {
    type = "structure",
    members = {
        NumberOfTrues = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfFalses = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DateColumnStatisticsData = {
    type = "structure",
    members = {
        MinimumValue = {
            type = "timestamp",
        },
        MaximumValue = {
            type = "timestamp",
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DecimalNumber = {
    type = "structure",
    members = {
        UnscaledValue = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        Scale = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DecimalColumnStatisticsData = {
    type = "structure",
    members = {
        MinimumValue = {
            type = "structure",
        },
        MaximumValue = {
            type = "structure",
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DoubleColumnStatisticsData = {
    type = "structure",
    members = {
        MinimumValue = {
            type = "number",
        },
        MaximumValue = {
            type = "number",
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LongColumnStatisticsData = {
    type = "structure",
    members = {
        MinimumValue = {
            type = "number",
        },
        MaximumValue = {
            type = "number",
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StringColumnStatisticsData = {
    type = "structure",
    members = {
        MaximumLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AverageLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfNulls = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnStatisticsType = {
    BOOLEAN = "BOOLEAN",
    DATE = "DATE",
    DECIMAL = "DECIMAL",
    DOUBLE = "DOUBLE",
    LONG = "LONG",
    STRING = "STRING",
    BINARY = "BINARY",
}

M.ColumnStatisticsData = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BooleanColumnStatisticsData = {
            type = "structure",
        },
        DateColumnStatisticsData = {
            type = "structure",
        },
        DecimalColumnStatisticsData = {
            type = "structure",
        },
        DoubleColumnStatisticsData = {
            type = "structure",
        },
        LongColumnStatisticsData = {
            type = "structure",
        },
        StringColumnStatisticsData = {
            type = "structure",
        },
        BinaryColumnStatisticsData = {
            type = "structure",
        },
    },
}

M.ColumnStatistics = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ColumnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalyzedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StatisticsData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnError = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.GetColumnStatisticsForPartitionOutput = {
    type = "structure",
    members = {
        ColumnStatisticsList = {
            type = "list",
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetColumnStatisticsForTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        ColumnNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetColumnStatisticsForTableOutput = {
    type = "structure",
    members = {
        ColumnStatisticsList = {
            type = "list",
            member_type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetColumnStatisticsTaskRunInput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComputationType = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.ColumnStatisticsState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.ColumnStatisticsTaskRun = {
    type = "structure",
    members = {
        CustomerId = {
            type = "string",
        },
        ColumnStatisticsTaskRunId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        ColumnNameList = {
            type = "list",
            member_type = "string",
        },
        CatalogID = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SampleSize = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        ComputationType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
        DPUSeconds = {
            type = "number",
        },
    },
}

M.GetColumnStatisticsTaskRunOutput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskRun = {
            type = "structure",
        },
    },
}

M.GetColumnStatisticsTaskRunsInput = {
    type = "structure",
    members = {
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
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsTaskRunsOutput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsTaskSettingsInput = {
    type = "structure",
    members = {
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
    },
}

M.ExecutionStatus = {
    FAILED = "FAILED",
    STARTED = "STARTED",
}

M.ExecutionAttempt = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        ColumnStatisticsTaskRunId = {
            type = "string",
        },
        ExecutionTimestamp = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ScheduleType = {
    CRON = "CRON",
    AUTO = "AUTO",
}

M.SettingSource = {
    CATALOG = "CATALOG",
    TABLE = "TABLE",
}

M.ColumnStatisticsTaskSettings = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        ColumnNameList = {
            type = "list",
            member_type = "string",
        },
        CatalogID = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SampleSize = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        ScheduleType = {
            type = "string",
        },
        SettingSource = {
            type = "string",
        },
        LastExecutionAttempt = {
            type = "structure",
        },
    },
}

M.GetColumnStatisticsTaskSettingsOutput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskSettings = {
            type = "structure",
        },
    },
}

M.GetConnectionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HidePassword = {
            type = "boolean",
        },
        ApplyOverrideForComputeEnvironment = {
            type = "string",
        },
    },
}

M.Connection = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        MatchCriteria = {
            type = "list",
            member_type = "string",
        },
        ConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SparkProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AthenaProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PythonProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PhysicalConnectionRequirements = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        LastUpdatedBy = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastConnectionValidationTime = {
            type = "timestamp",
        },
        AuthenticationConfiguration = {
            type = "structure",
        },
        ConnectionSchemaVersion = {
            type = "number",
        },
        CompatibleComputeEnvironments = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
    },
}

M.GetConnectionsFilter = {
    type = "structure",
    members = {
        MatchCriteria = {
            type = "list",
            member_type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        ConnectionSchemaVersion = {
            type = "number",
        },
    },
}

M.GetConnectionsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
        HidePassword = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetConnectionsOutput = {
    type = "structure",
    members = {
        ConnectionList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCrawlerInput = {
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

M.GetCrawlerOutput = {
    type = "structure",
    members = {
        Crawler = {
            type = "structure",
        },
    },
}

M.GetCrawlerMetricsInput = {
    type = "structure",
    members = {
        CrawlerNameList = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CrawlerMetrics = {
    type = "structure",
    members = {
        CrawlerName = {
            type = "string",
        },
        TimeLeftSeconds = {
            type = "number",
        },
        StillEstimating = {
            type = "boolean",
        },
        LastRuntimeSeconds = {
            type = "number",
        },
        MedianRuntimeSeconds = {
            type = "number",
        },
        TablesCreated = {
            type = "number",
        },
        TablesUpdated = {
            type = "number",
        },
        TablesDeleted = {
            type = "number",
        },
    },
}

M.GetCrawlerMetricsOutput = {
    type = "structure",
    members = {
        CrawlerMetricsList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCrawlersInput = {
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

M.GetCrawlersOutput = {
    type = "structure",
    members = {
        Crawlers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCustomEntityTypeInput = {
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

M.GetCustomEntityTypeOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        RegexString = {
            type = "string",
        },
        ContextWords = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetDatabaseInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        LocationUri = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member_type = "structure",
        },
        TargetDatabase = {
            type = "structure",
        },
        CatalogId = {
            type = "string",
        },
        FederatedDatabase = {
            type = "structure",
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

M.DatabaseAttributes = {
    NAME = "NAME",
    TARGET_DATABASE = "TARGET_DATABASE",
}

M.ResourceShareType = {
    FOREIGN = "FOREIGN",
    ALL = "ALL",
    FEDERATED = "FEDERATED",
}

M.GetDatabasesInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ResourceShareType = {
            type = "string",
        },
        AttributesToGet = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetDatabasesOutput = {
    type = "structure",
    members = {
        DatabaseList = {
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

M.GetDataCatalogEncryptionSettingsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.ConnectionPasswordEncryption = {
    type = "structure",
    members = {
        ReturnConnectionPasswordEncrypted = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AwsKmsKeyId = {
            type = "string",
        },
    },
}

M.CatalogEncryptionMode = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
    SSEKMSWITHSERVICEROLE = "SSE-KMS-WITH-SERVICE-ROLE",
}

M.EncryptionAtRest = {
    type = "structure",
    members = {
        CatalogEncryptionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SseAwsKmsKeyId = {
            type = "string",
        },
        CatalogEncryptionServiceRole = {
            type = "string",
        },
    },
}

M.DataCatalogEncryptionSettings = {
    type = "structure",
    members = {
        EncryptionAtRest = {
            type = "structure",
        },
        ConnectionPasswordEncryption = {
            type = "structure",
        },
    },
}

M.GetDataCatalogEncryptionSettingsOutput = {
    type = "structure",
    members = {
        DataCatalogEncryptionSettings = {
            type = "structure",
        },
    },
}

M.GetDataflowGraphInput = {
    type = "structure",
    members = {
        PythonScript = {
            type = "string",
        },
    },
}

M.GetDataflowGraphOutput = {
    type = "structure",
    members = {
        DagNodes = {
            type = "list",
            member_type = "structure",
        },
        DagEdges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDataQualityModelInput = {
    type = "structure",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataQualityModelStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetDataQualityModelOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.GetDataQualityModelResultInput = {
    type = "structure",
    members = {
        StatisticId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatisticModelResult = {
    type = "structure",
    members = {
        LowerBound = {
            type = "number",
        },
        UpperBound = {
            type = "number",
        },
        PredictedValue = {
            type = "number",
        },
        ActualValue = {
            type = "number",
        },
        Date = {
            type = "timestamp",
        },
        InclusionAnnotation = {
            type = "string",
        },
    },
}

M.GetDataQualityModelResultOutput = {
    type = "structure",
    members = {
        CompletedOn = {
            type = "timestamp",
        },
        Model = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDataQualityResultInput = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataQualityResultOutput = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        Score = {
            type = "number",
        },
        DataSource = {
            type = "structure",
        },
        RulesetName = {
            type = "string",
        },
        EvaluationContext = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        RulesetEvaluationRunId = {
            type = "string",
        },
        RuleResults = {
            type = "list",
            member_type = "structure",
        },
        AnalyzerResults = {
            type = "list",
            member_type = "structure",
        },
        Observations = {
            type = "list",
            member_type = "structure",
        },
        AggregatedMetrics = {
            type = "structure",
        },
    },
}

M.GetDataQualityRuleRecommendationRunInput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataQualityRuleRecommendationRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        DataSource = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        ErrorString = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "number",
        },
        RecommendedRuleset = {
            type = "string",
        },
        CreatedRulesetName = {
            type = "string",
        },
        DataQualitySecurityConfiguration = {
            type = "string",
        },
    },
}

M.GetDataQualityRulesetInput = {
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

M.GetDataQualityRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Ruleset = {
            type = "string",
        },
        TargetTable = {
            type = "structure",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        RecommendationRunId = {
            type = "string",
        },
        DataQualitySecurityConfiguration = {
            type = "string",
        },
    },
}

M.GetDataQualityRulesetEvaluationRunInput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DQCompositeRuleEvaluationMethod = {
    COLUMN = "COLUMN",
    ROW = "ROW",
}

M.DataQualityEvaluationRunAdditionalRunOptions = {
    type = "structure",
    members = {
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        ResultsS3Prefix = {
            type = "string",
        },
        CompositeRuleEvaluationMethod = {
            type = "string",
        },
    },
}

M.GetDataQualityRulesetEvaluationRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        DataSource = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        AdditionalRunOptions = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        ErrorString = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "number",
        },
        RulesetNames = {
            type = "list",
            member_type = "string",
        },
        ResultIds = {
            type = "list",
            member_type = "string",
        },
        AdditionalDataSources = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetDevEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDevEndpointOutput = {
    type = "structure",
    members = {
        DevEndpoint = {
            type = "structure",
        },
    },
}

M.GetDevEndpointsInput = {
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

M.GetDevEndpointsOutput = {
    type = "structure",
    members = {
        DevEndpoints = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetEntityRecordsInput = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        EntityName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        DataStoreApiVersion = {
            type = "string",
        },
        ConnectionOptions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        FilterPredicate = {
            type = "string",
        },
        Limit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        OrderBy = {
            type = "string",
        },
        SelectedFields = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetEntityRecordsOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member_type = "document",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetGlueIdentityCenterConfigurationInput = {
    type = "structure",
}

M.GetGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        Scopes = {
            type = "list",
            member_type = "string",
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.GetIntegrationResourcePropertyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIntegrationResourcePropertyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
    },
}

M.GetIntegrationTablePropertiesInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.GetIntegrationTablePropertiesOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        SourceTableConfig = {
            type = "structure",
        },
        TargetTableConfig = {
            type = "structure",
        },
    },
}

M.GetJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobBookmarkInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
        },
    },
}

M.JobBookmarkEntry = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        Version = {
            type = "number",
        },
        Run = {
            type = "number",
        },
        Attempt = {
            type = "number",
        },
        PreviousRunId = {
            type = "string",
        },
        RunId = {
            type = "string",
        },
        JobBookmark = {
            type = "string",
        },
    },
}

M.GetJobBookmarkOutput = {
    type = "structure",
    members = {
        JobBookmarkEntry = {
            type = "structure",
        },
    },
}

M.GetJobRunInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PredecessorsIncluded = {
            type = "boolean",
        },
    },
}

M.GetJobRunOutput = {
    type = "structure",
    members = {
        JobRun = {
            type = "structure",
        },
    },
}

M.GetJobRunsInput = {
    type = "structure",
    members = {
        JobName = {
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

M.GetJobRunsOutput = {
    type = "structure",
    members = {
        JobRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetJobsInput = {
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

M.Location = {
    type = "structure",
    members = {
        Jdbc = {
            type = "list",
            member_type = "structure",
        },
        S3 = {
            type = "list",
            member_type = "structure",
        },
        DynamoDB = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CatalogEntry = {
    type = "structure",
    members = {
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
    },
}

M.GetMappingInput = {
    type = "structure",
    members = {
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member_type = "structure",
        },
        Location = {
            type = "structure",
        },
    },
}

M.MappingEntry = {
    type = "structure",
    members = {
        SourceTable = {
            type = "string",
        },
        SourcePath = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        TargetTable = {
            type = "string",
        },
        TargetPath = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
    },
}

M.GetMappingOutput = {
    type = "structure",
    members = {
        Mapping = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaterializedViewRefreshTaskRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MaterializedViewRefreshType = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.MaterializedViewRefreshState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.MaterializedViewRefreshTaskRun = {
    type = "structure",
    members = {
        CustomerId = {
            type = "string",
        },
        MaterializedViewRefreshTaskRunId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
        DPUSeconds = {
            type = "number",
        },
        RefreshType = {
            type = "string",
        },
        ProcessedBytes = {
            type = "number",
        },
    },
}

M.GetMaterializedViewRefreshTaskRunOutput = {
    type = "structure",
    members = {
        MaterializedViewRefreshTaskRun = {
            type = "structure",
        },
    },
}

M.GetMLTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportLabelsTaskRunProperties = {
    type = "structure",
    members = {
        OutputS3Path = {
            type = "string",
        },
    },
}

M.FindMatchesTaskRunProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
    },
}

M.ImportLabelsTaskRunProperties = {
    type = "structure",
    members = {
        InputS3Path = {
            type = "string",
        },
        Replace = {
            type = "boolean",
        },
    },
}

M.LabelingSetGenerationTaskRunProperties = {
    type = "structure",
    members = {
        OutputS3Path = {
            type = "string",
        },
    },
}

M.TaskType = {
    EVALUATION = "EVALUATION",
    LABELING_SET_GENERATION = "LABELING_SET_GENERATION",
    IMPORT_LABELS = "IMPORT_LABELS",
    EXPORT_LABELS = "EXPORT_LABELS",
    FIND_MATCHES = "FIND_MATCHES",
}

M.TaskRunProperties = {
    type = "structure",
    members = {
        TaskType = {
            type = "string",
        },
        ImportLabelsTaskRunProperties = {
            type = "structure",
        },
        ExportLabelsTaskRunProperties = {
            type = "structure",
        },
        LabelingSetGenerationTaskRunProperties = {
            type = "structure",
        },
        FindMatchesTaskRunProperties = {
            type = "structure",
        },
    },
}

M.GetMLTaskRunOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
        TaskRunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        Properties = {
            type = "structure",
        },
        ErrorString = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "number",
        },
    },
}

M.TaskRunFilterCriteria = {
    type = "structure",
    members = {
        TaskRunType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartedBefore = {
            type = "timestamp",
        },
        StartedAfter = {
            type = "timestamp",
        },
    },
}

M.TaskRunSortColumnType = {
    TASK_RUN_TYPE = "TASK_RUN_TYPE",
    STATUS = "STATUS",
    STARTED = "STARTED",
}

M.SortDirectionType = {
    DESCENDING = "DESCENDING",
    ASCENDING = "ASCENDING",
}

M.TaskRunSortCriteria = {
    type = "structure",
    members = {
        Column = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMLTaskRunsInput = {
    type = "structure",
    members = {
        TransformId = {
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
        Filter = {
            type = "structure",
        },
        Sort = {
            type = "structure",
        },
    },
}

M.TaskRun = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
        TaskRunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        Properties = {
            type = "structure",
        },
        ErrorString = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "number",
        },
    },
}

M.GetMLTaskRunsOutput = {
    type = "structure",
    members = {
        TaskRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetMLTransformInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnImportance = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        Importance = {
            type = "number",
        },
    },
}

M.ConfusionMatrix = {
    type = "structure",
    members = {
        NumTruePositives = {
            type = "number",
        },
        NumFalsePositives = {
            type = "number",
        },
        NumTrueNegatives = {
            type = "number",
        },
        NumFalseNegatives = {
            type = "number",
        },
    },
}

M.FindMatchesMetrics = {
    type = "structure",
    members = {
        AreaUnderPRCurve = {
            type = "number",
        },
        Precision = {
            type = "number",
        },
        Recall = {
            type = "number",
        },
        F1 = {
            type = "number",
        },
        ConfusionMatrix = {
            type = "structure",
        },
        ColumnImportances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EvaluationMetrics = {
    type = "structure",
    members = {
        TransformType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindMatchesMetrics = {
            type = "structure",
        },
    },
}

M.SchemaColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
    },
}

M.TransformStatusType = {
    NOT_READY = "NOT_READY",
    READY = "READY",
    DELETING = "DELETING",
}

M.GetMLTransformOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        InputRecordTables = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "structure",
        },
        EvaluationMetrics = {
            type = "structure",
        },
        LabelCount = {
            type = "number",
        },
        Schema = {
            type = "list",
            member_type = "structure",
        },
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        TransformEncryption = {
            type = "structure",
        },
    },
}

M.TransformFilterCriteria = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        TransformType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        LastModifiedBefore = {
            type = "timestamp",
        },
        LastModifiedAfter = {
            type = "timestamp",
        },
        Schema = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TransformSortColumnType = {
    NAME = "NAME",
    TRANSFORM_TYPE = "TRANSFORM_TYPE",
    STATUS = "STATUS",
    CREATED = "CREATED",
    LAST_MODIFIED = "LAST_MODIFIED",
}

M.TransformSortCriteria = {
    type = "structure",
    members = {
        Column = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMLTransformsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filter = {
            type = "structure",
        },
        Sort = {
            type = "structure",
        },
    },
}

M.MLTransform = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        InputRecordTables = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "structure",
        },
        EvaluationMetrics = {
            type = "structure",
        },
        LabelCount = {
            type = "number",
        },
        Schema = {
            type = "list",
            member_type = "structure",
        },
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
        TransformEncryption = {
            type = "structure",
        },
    },
}

M.GetMLTransformsOutput = {
    type = "structure",
    members = {
        Transforms = {
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

M.GetPartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AuditContext = {
            type = "structure",
        },
    },
}

M.GetPartitionOutput = {
    type = "structure",
    members = {
        Partition = {
            type = "structure",
        },
    },
}

M.GetPartitionIndexesInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        NextToken = {
            type = "string",
        },
    },
}

M.BackfillErrorCode = {
    ENCRYPTED_PARTITION_ERROR = "ENCRYPTED_PARTITION_ERROR",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_PARTITION_TYPE_DATA_ERROR = "INVALID_PARTITION_TYPE_DATA_ERROR",
    MISSING_PARTITION_VALUE_ERROR = "MISSING_PARTITION_VALUE_ERROR",
    UNSUPPORTED_PARTITION_CHARACTER_ERROR = "UNSUPPORTED_PARTITION_CHARACTER_ERROR",
}

M.BackfillError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Partitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PartitionIndexStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.KeySchemaElement = {
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
    },
}

M.PartitionIndexDescriptor = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IndexStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackfillErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetPartitionIndexesOutput = {
    type = "structure",
    members = {
        PartitionIndexDescriptorList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Segment = {
    type = "structure",
    members = {
        SegmentNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TotalSegments = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPartitionsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        Expression = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Segment = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        ExcludeColumnSchema = {
            type = "boolean",
        },
        TransactionId = {
            type = "string",
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        AuditContext = {
            type = "structure",
        },
    },
}

M.GetPartitionsOutput = {
    type = "structure",
    members = {
        Partitions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetPlanInput = {
    type = "structure",
    members = {
        Mapping = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Sinks = {
            type = "list",
            member_type = "structure",
        },
        Location = {
            type = "structure",
        },
        Language = {
            type = "string",
        },
        AdditionalPlanOptionsMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetPlanOutput = {
    type = "structure",
    members = {
        PythonScript = {
            type = "string",
        },
        ScalaCode = {
            type = "string",
        },
    },
}

M.GetRegistryInput = {
    type = "structure",
    members = {
        RegistryId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRegistryOutput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        UpdatedTime = {
            type = "string",
        },
    },
}

M.GetResourcePoliciesInput = {
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

M.GluePolicy = {
    type = "structure",
    members = {
        PolicyInJson = {
            type = "string",
        },
        PolicyHash = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
    },
}

M.GetResourcePoliciesOutput = {
    type = "structure",
    members = {
        GetResourcePoliciesResponseList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyInJson = {
            type = "string",
        },
        PolicyHash = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
    },
}

M.GetSchemaInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaOutput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DataFormat = {
            type = "string",
        },
        Compatibility = {
            type = "string",
        },
        SchemaCheckpoint = {
            type = "number",
        },
        LatestSchemaVersion = {
            type = "number",
        },
        NextSchemaVersion = {
            type = "number",
        },
        SchemaStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        UpdatedTime = {
            type = "string",
        },
    },
}

M.GetSchemaByDefinitionInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SchemaDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaByDefinitionOutput = {
    type = "structure",
    members = {
        SchemaVersionId = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        DataFormat = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
    },
}

M.SchemaVersionNumber = {
    type = "structure",
    members = {
        LatestVersion = {
            type = "boolean",
        },
        VersionNumber = {
            type = "number",
        },
    },
}

M.GetSchemaVersionInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        SchemaVersionNumber = {
            type = "structure",
        },
    },
}

M.GetSchemaVersionOutput = {
    type = "structure",
    members = {
        SchemaVersionId = {
            type = "string",
        },
        SchemaDefinition = {
            type = "string",
        },
        DataFormat = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
    },
}

M.SchemaDiffType = {
    SYNTAX_DIFF = "SYNTAX_DIFF",
}

M.GetSchemaVersionsDiffInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FirstSchemaVersionNumber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecondSchemaVersionNumber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SchemaDiffType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaVersionsDiffOutput = {
    type = "structure",
    members = {
        Diff = {
            type = "string",
        },
    },
}

M.GetSecurityConfigurationInput = {
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

M.SecurityConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.GetSecurityConfigurationOutput = {
    type = "structure",
    members = {
        SecurityConfiguration = {
            type = "structure",
        },
    },
}

M.GetSecurityConfigurationsInput = {
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

M.GetSecurityConfigurationsOutput = {
    type = "structure",
    members = {
        SecurityConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        Session = {
            type = "structure",
        },
    },
}

M.GetStatementInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.StatementOutputData = {
    type = "structure",
    members = {
        TextPlain = {
            type = "string",
        },
    },
}

M.StatementState = {
    WAITING = "WAITING",
    RUNNING = "RUNNING",
    AVAILABLE = "AVAILABLE",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    ERROR = "ERROR",
}

M.StatementOutput = {
    type = "structure",
    members = {
        Data = {
            type = "structure",
        },
        ExecutionCount = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        ErrorName = {
            type = "string",
        },
        ErrorValue = {
            type = "string",
        },
        Traceback = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Statement = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
        Code = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Output = {
            type = "structure",
        },
        Progress = {
            type = "number",
        },
        StartedOn = {
            type = "number",
        },
        CompletedOn = {
            type = "number",
        },
    },
}

M.GetStatementOutput = {
    type = "structure",
    members = {
        Statement = {
            type = "structure",
        },
    },
}

M.GetTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
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
        TransactionId = {
            type = "string",
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        AuditContext = {
            type = "structure",
        },
        IncludeStatusDetails = {
            type = "boolean",
        },
    },
}

M.FederatedTable = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        DatabaseIdentifier = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
    },
}

M.ResourceAction = {
    UPDATE = "UPDATE",
    CREATE = "CREATE",
}

M.ResourceState = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
}

M.ViewValidation = {
    type = "structure",
    members = {
        Dialect = {
            type = "string",
        },
        DialectVersion = {
            type = "string",
        },
        ViewValidationText = {
            type = "string",
        },
        UpdateTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.ViewRepresentation = {
    type = "structure",
    members = {
        Dialect = {
            type = "string",
        },
        DialectVersion = {
            type = "string",
        },
        ViewOriginalText = {
            type = "string",
        },
        ViewExpandedText = {
            type = "string",
        },
        ValidationConnection = {
            type = "string",
        },
        IsStale = {
            type = "boolean",
        },
    },
}

M.ViewDefinition = {
    type = "structure",
    members = {
        IsProtected = {
            type = "boolean",
        },
        Definer = {
            type = "string",
        },
        ViewVersionId = {
            type = "number",
        },
        ViewVersionToken = {
            type = "string",
        },
        RefreshSeconds = {
            type = "number",
        },
        LastRefreshType = {
            type = "string",
        },
        SubObjects = {
            type = "list",
            member_type = "string",
        },
        SubObjectVersionIds = {
            type = "list",
            member_type = "number",
        },
        Representations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTableOptimizerInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTableOptimizerOutput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        TableOptimizer = {
            type = "structure",
        },
    },
}

M.TableAttributes = {
    NAME = "NAME",
    TABLE_TYPE = "TABLE_TYPE",
}

M.GetTablesInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        TransactionId = {
            type = "string",
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        AuditContext = {
            type = "structure",
        },
        IncludeStatusDetails = {
            type = "boolean",
        },
        AttributesToGet = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetTableVersionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        VersionId = {
            type = "string",
        },
        AuditContext = {
            type = "structure",
        },
    },
}

M.GetTableVersionsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        AuditContext = {
            type = "structure",
        },
    },
}

M.GetTagsInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTagsOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetTriggerInput = {
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

M.GetTriggerOutput = {
    type = "structure",
    members = {
        Trigger = {
            type = "structure",
        },
    },
}

M.GetTriggersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DependentJobName = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetTriggersOutput = {
    type = "structure",
    members = {
        Triggers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PermissionType = {
    COLUMN_PERMISSION = "COLUMN_PERMISSION",
    CELL_FILTER_PERMISSION = "CELL_FILTER_PERMISSION",
    NESTED_PERMISSION = "NESTED_PERMISSION",
    NESTED_CELL_PERMISSION = "NESTED_CELL_PERMISSION",
}

M.GetUnfilteredPartitionMetadataInput = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        CatalogId = {
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AuditContext = {
            type = "structure",
        },
        SupportedPermissionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        QuerySessionContext = {
            type = "structure",
        },
    },
}

M.GetUnfilteredPartitionMetadataOutput = {
    type = "structure",
    members = {
        Partition = {
            type = "structure",
        },
        AuthorizedColumns = {
            type = "list",
            member_type = "string",
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
        },
    },
}

M.PermissionTypeMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetUnfilteredPartitionsMetadataInput = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        CatalogId = {
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
        Expression = {
            type = "string",
        },
        AuditContext = {
            type = "structure",
        },
        SupportedPermissionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Segment = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        QuerySessionContext = {
            type = "structure",
        },
    },
}

M.UnfilteredPartition = {
    type = "structure",
    members = {
        Partition = {
            type = "structure",
        },
        AuthorizedColumns = {
            type = "list",
            member_type = "string",
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
        },
    },
}

M.GetUnfilteredPartitionsMetadataOutput = {
    type = "structure",
    members = {
        UnfilteredPartitions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SupportedDialect = {
    type = "structure",
    members = {
        Dialect = {
            type = "string",
        },
        DialectVersion = {
            type = "string",
        },
    },
}

M.GetUnfilteredTableMetadataInput = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        CatalogId = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuditContext = {
            type = "structure",
        },
        SupportedPermissionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ParentResourceArn = {
            type = "string",
        },
        RootResourceArn = {
            type = "string",
        },
        SupportedDialect = {
            type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
        QuerySessionContext = {
            type = "structure",
        },
    },
}

M.ColumnRowFilter = {
    type = "structure",
    members = {
        ColumnName = {
            type = "string",
        },
        RowFilterExpression = {
            type = "string",
        },
    },
}

M.GetUsageProfileInput = {
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

M.GetUsageProfileOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Configuration = {
            type = "structure",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
    },
}

M.GetUserDefinedFunctionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserDefinedFunction = {
    type = "structure",
    members = {
        FunctionName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        ClassName = {
            type = "string",
        },
        OwnerName = {
            type = "string",
        },
        FunctionType = {
            type = "string",
        },
        OwnerType = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        ResourceUris = {
            type = "list",
            member_type = "structure",
        },
        CatalogId = {
            type = "string",
        },
    },
}

M.GetUserDefinedFunctionOutput = {
    type = "structure",
    members = {
        UserDefinedFunction = {
            type = "structure",
        },
    },
}

M.GetUserDefinedFunctionsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        Pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetUserDefinedFunctionsOutput = {
    type = "structure",
    members = {
        UserDefinedFunctions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeGraph = {
            type = "boolean",
        },
    },
}

M.GetWorkflowOutput = {
    type = "structure",
    members = {
        Workflow = {
            type = "structure",
        },
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeGraph = {
            type = "boolean",
        },
    },
}

M.GetWorkflowRunOutput = {
    type = "structure",
    members = {
        Run = {
            type = "structure",
        },
    },
}

M.GetWorkflowRunPropertiesInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkflowRunPropertiesOutput = {
    type = "structure",
    members = {
        RunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetWorkflowRunsInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeGraph = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetWorkflowRunsOutput = {
    type = "structure",
    members = {
        Runs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImportCatalogToGlueInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.ImportCatalogToGlueOutput = {
    type = "structure",
}

M.ListBlueprintsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListBlueprintsOutput = {
    type = "structure",
    members = {
        Blueprints = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListColumnStatisticsTaskRunsInput = {
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

M.ListColumnStatisticsTaskRunsOutput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskRunIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionTypesInput = {
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

M.ConnectionTypeVariant = {
    type = "structure",
    members = {
        ConnectionTypeVariantName = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LogoUrl = {
            type = "string",
        },
    },
}

M.ConnectionTypeBrief = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Vendor = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Categories = {
            type = "list",
            member_type = "string",
        },
        Capabilities = {
            type = "structure",
        },
        LogoUrl = {
            type = "string",
        },
        ConnectionTypeVariants = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConnectionTypesOutput = {
    type = "structure",
    members = {
        ConnectionTypes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrawlersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListCrawlersOutput = {
    type = "structure",
    members = {
        CrawlerNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FieldName = {
    CRAWL_ID = "CRAWL_ID",
    STATE = "STATE",
    START_TIME = "START_TIME",
    END_TIME = "END_TIME",
    DPU_HOUR = "DPU_HOUR",
}

M.FilterOperator = {
    GT = "GT",
    GE = "GE",
    LT = "LT",
    LE = "LE",
    EQ = "EQ",
    NE = "NE",
}

M.CrawlsFilter = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        FilterOperator = {
            type = "string",
        },
        FieldValue = {
            type = "string",
        },
    },
}

M.ListCrawlsInput = {
    type = "structure",
    members = {
        CrawlerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CrawlerHistoryState = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.CrawlerHistory = {
    type = "structure",
    members = {
        CrawlId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Summary = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        LogGroup = {
            type = "string",
        },
        LogStream = {
            type = "string",
        },
        MessagePrefix = {
            type = "string",
        },
        DPUHour = {
            type = "number",
        },
    },
}

M.ListCrawlsOutput = {
    type = "structure",
    members = {
        Crawls = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomEntityTypesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListCustomEntityTypesOutput = {
    type = "structure",
    members = {
        CustomEntityTypes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityResultFilterCriteria = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
        },
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        StartedAfter = {
            type = "timestamp",
        },
        StartedBefore = {
            type = "timestamp",
        },
    },
}

M.ListDataQualityResultsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DataQualityResultDescription = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
        },
        DataSource = {
            type = "structure",
        },
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
    },
}

M.ListDataQualityResultsOutput = {
    type = "structure",
    members = {
        Results = {
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

M.DataQualityRuleRecommendationRunFilter = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StartedBefore = {
            type = "timestamp",
        },
        StartedAfter = {
            type = "timestamp",
        },
    },
}

M.ListDataQualityRuleRecommendationRunsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DataQualityRuleRecommendationRunDescription = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        DataSource = {
            type = "structure",
        },
    },
}

M.ListDataQualityRuleRecommendationRunsOutput = {
    type = "structure",
    members = {
        Runs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityRulesetEvaluationRunFilter = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StartedBefore = {
            type = "timestamp",
        },
        StartedAfter = {
            type = "timestamp",
        },
    },
}

M.ListDataQualityRulesetEvaluationRunsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DataQualityRulesetEvaluationRunDescription = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartedOn = {
            type = "timestamp",
        },
        DataSource = {
            type = "structure",
        },
    },
}

M.ListDataQualityRulesetEvaluationRunsOutput = {
    type = "structure",
    members = {
        Runs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityRulesetFilterCriteria = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        LastModifiedBefore = {
            type = "timestamp",
        },
        LastModifiedAfter = {
            type = "timestamp",
        },
        TargetTable = {
            type = "structure",
        },
    },
}

M.ListDataQualityRulesetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filter = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DataQualityRulesetListDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        TargetTable = {
            type = "structure",
        },
        RecommendationRunId = {
            type = "string",
        },
        RuleCount = {
            type = "number",
        },
    },
}

M.ListDataQualityRulesetsOutput = {
    type = "structure",
    members = {
        Rulesets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TimestampFilter = {
    type = "structure",
    members = {
        RecordedBefore = {
            type = "timestamp",
        },
        RecordedAfter = {
            type = "timestamp",
        },
    },
}

M.ListDataQualityStatisticAnnotationsInput = {
    type = "structure",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        TimestampFilter = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataQualityStatisticAnnotationsOutput = {
    type = "structure",
    members = {
        Annotations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataQualityStatisticsInput = {
    type = "structure",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        TimestampFilter = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StatisticEvaluationLevel = {
    DATASET = "Dataset",
    COLUMN = "Column",
    MULTICOLUMN = "Multicolumn",
}

M.RunIdentifier = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
    },
}

M.StatisticSummary = {
    type = "structure",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        RunIdentifier = {
            type = "structure",
        },
        StatisticName = {
            type = "string",
        },
        DoubleValue = {
            type = "number",
        },
        EvaluationLevel = {
            type = "string",
        },
        ColumnsReferenced = {
            type = "list",
            member_type = "string",
        },
        ReferencedDatasets = {
            type = "list",
            member_type = "string",
        },
        StatisticProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RecordedOn = {
            type = "timestamp",
        },
        InclusionAnnotation = {
            type = "structure",
        },
    },
}

M.ListDataQualityStatisticsOutput = {
    type = "structure",
    members = {
        Statistics = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevEndpointsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDevEndpointsOutput = {
    type = "structure",
    members = {
        DevEndpointNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntitiesInput = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        ParentEntityName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        DataStoreApiVersion = {
            type = "string",
        },
    },
}

M.Entity = {
    type = "structure",
    members = {
        EntityName = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        IsParentEntity = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        CustomProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEntitiesOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IntegrationResourcePropertyFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListIntegrationResourcePropertiesInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.IntegrationResourceProperty = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
    },
}

M.ListIntegrationResourcePropertiesOutput = {
    type = "structure",
    members = {
        IntegrationResourcePropertyList = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        JobNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMaterializedViewRefreshTaskRunsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
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

M.ListMaterializedViewRefreshTaskRunsOutput = {
    type = "structure",
    members = {
        MaterializedViewRefreshTaskRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMLTransformsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Filter = {
            type = "structure",
        },
        Sort = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListMLTransformsOutput = {
    type = "structure",
    members = {
        TransformIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegistriesInput = {
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

M.RegistryListItem = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        UpdatedTime = {
            type = "string",
        },
    },
}

M.ListRegistriesOutput = {
    type = "structure",
    members = {
        Registries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    members = {
        RegistryId = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SchemaListItem = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        SchemaArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SchemaStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        UpdatedTime = {
            type = "string",
        },
    },
}

M.ListSchemasOutput = {
    type = "structure",
    members = {
        Schemas = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemaVersionsInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
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

M.SchemaVersionListItem = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaVersionId = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
    },
}

M.ListSchemaVersionsOutput = {
    type = "structure",
    members = {
        Schemas = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    members = {
        Ids = {
            type = "list",
            member_type = "string",
        },
        Sessions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStatementsInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStatementsOutput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTableOptimizerRunsInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        Type = {
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

M.ListTableOptimizerRunsOutput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        TableOptimizerRuns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTriggersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        DependentJobName = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTriggersOutput = {
    type = "structure",
    members = {
        TriggerNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsageProfilesInput = {
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

M.UsageProfileDefinition = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
    },
}

M.ListUsageProfilesOutput = {
    type = "structure",
    members = {
        Profiles = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
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

M.ListWorkflowsOutput = {
    type = "structure",
    members = {
        Workflows = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
    members = {
        IntegrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DataFilter = {
            type = "string",
        },
        IntegrationConfig = {
            type = "structure",
        },
        IntegrationName = {
            type = "string",
        },
    },
}

M.ModifyIntegrationOutput = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
        },
        DataFilter = {
            type = "string",
        },
        IntegrationConfig = {
            type = "structure",
        },
    },
}

M.PutDataCatalogEncryptionSettingsInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DataCatalogEncryptionSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDataCatalogEncryptionSettingsOutput = {
    type = "structure",
}

M.PutDataQualityProfileAnnotationInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InclusionAnnotation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDataQualityProfileAnnotationOutput = {
    type = "structure",
}

M.EnableHybridValues = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.ExistCondition = {
    MUST_EXIST = "MUST_EXIST",
    NOT_EXIST = "NOT_EXIST",
    NONE = "NONE",
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        PolicyInJson = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
        },
        PolicyHashCondition = {
            type = "string",
        },
        PolicyExistsCondition = {
            type = "string",
        },
        EnableHybrid = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyHash = {
            type = "string",
        },
    },
}

M.MetadataKeyValuePair = {
    type = "structure",
    members = {
        MetadataKey = {
            type = "string",
        },
        MetadataValue = {
            type = "string",
        },
    },
}

M.PutSchemaVersionMetadataInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
        },
        SchemaVersionNumber = {
            type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        MetadataKeyValue = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSchemaVersionMetadataOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        LatestVersion = {
            type = "boolean",
        },
        VersionNumber = {
            type = "number",
        },
        SchemaVersionId = {
            type = "string",
        },
        MetadataKey = {
            type = "string",
        },
        MetadataValue = {
            type = "string",
        },
    },
}

M.PutWorkflowRunPropertiesInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutWorkflowRunPropertiesOutput = {
    type = "structure",
}

M.QuerySchemaVersionMetadataInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
        },
        SchemaVersionNumber = {
            type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        MetadataList = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OtherMetadataValueListItem = {
    type = "structure",
    members = {
        MetadataValue = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
    },
}

M.MetadataInfo = {
    type = "structure",
    members = {
        MetadataValue = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        OtherMetadataValueList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.QuerySchemaVersionMetadataOutput = {
    type = "structure",
    members = {
        MetadataInfoMap = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConnectionPropertiesConfiguration = {
    type = "structure",
    members = {
        Url = {
            type = "structure",
        },
        AdditionalRequestParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BasicAuthenticationProperties = {
    type = "structure",
    members = {
        Username = {
            type = "structure",
        },
        Password = {
            type = "structure",
        },
    },
}

M.CustomAuthenticationProperties = {
    type = "structure",
    members = {
        AuthenticationParameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentType = {
    APPLICATION_JSON = "APPLICATION_JSON",
    URL_ENCODED = "URL_ENCODED",
}

M.ConnectorAuthorizationCodeProperties = {
    type = "structure",
    members = {
        AuthorizationCodeUrl = {
            type = "structure",
        },
        AuthorizationCode = {
            type = "structure",
        },
        RedirectUri = {
            type = "structure",
        },
        TokenUrl = {
            type = "structure",
        },
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ClientId = {
            type = "structure",
        },
        ClientSecret = {
            type = "structure",
        },
        Scope = {
            type = "structure",
        },
        Prompt = {
            type = "structure",
        },
        TokenUrlParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ClientCredentialsProperties = {
    type = "structure",
    members = {
        TokenUrl = {
            type = "structure",
        },
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ClientId = {
            type = "structure",
        },
        ClientSecret = {
            type = "structure",
        },
        Scope = {
            type = "structure",
        },
        TokenUrlParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.JWTBearerProperties = {
    type = "structure",
    members = {
        TokenUrl = {
            type = "structure",
        },
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        JwtToken = {
            type = "structure",
        },
        TokenUrlParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConnectorOAuth2GrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    JWT_BEARER = "JWT_BEARER",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
}

M.ConnectorOAuth2Properties = {
    type = "structure",
    members = {
        OAuth2GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientCredentialsProperties = {
            type = "structure",
        },
        JWTBearerProperties = {
            type = "structure",
        },
        AuthorizationCodeProperties = {
            type = "structure",
        },
    },
}

M.ConnectorAuthenticationConfiguration = {
    type = "structure",
    members = {
        AuthenticationTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        OAuth2Properties = {
            type = "structure",
        },
        BasicAuthenticationProperties = {
            type = "structure",
        },
        CustomAuthenticationProperties = {
            type = "structure",
        },
    },
}

M.IntegrationType = {
    REST = "REST",
}

M.RegisterConnectionTypeInput = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ConnectionProperties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConnectorAuthenticationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RestConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterConnectionTypeOutput = {
    type = "structure",
    members = {
        ConnectionTypeArn = {
            type = "string",
        },
    },
}

M.RegisterSchemaVersionInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SchemaDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterSchemaVersionOutput = {
    type = "structure",
    members = {
        SchemaVersionId = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Status = {
            type = "string",
        },
    },
}

M.RemoveSchemaVersionMetadataInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
        },
        SchemaVersionNumber = {
            type = "structure",
        },
        SchemaVersionId = {
            type = "string",
        },
        MetadataKeyValue = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveSchemaVersionMetadataOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
        LatestVersion = {
            type = "boolean",
        },
        VersionNumber = {
            type = "number",
        },
        SchemaVersionId = {
            type = "string",
        },
        MetadataKey = {
            type = "string",
        },
        MetadataValue = {
            type = "string",
        },
    },
}

M.ResetJobBookmarkInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
        },
    },
}

M.ResetJobBookmarkOutput = {
    type = "structure",
    members = {
        JobBookmarkEntry = {
            type = "structure",
        },
    },
}

M.ConcurrentRunsExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IllegalWorkflowStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResumeWorkflowRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeWorkflowRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
        NodeIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RunStatementInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.RunStatementOutput = {
    type = "structure",
    members = {
        Id = {
            type = "number",
        },
    },
}

M.Comparator = {
    EQUALS = "EQUALS",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN_EQUALS = "GREATER_THAN_EQUALS",
    LESS_THAN_EQUALS = "LESS_THAN_EQUALS",
}

M.PropertyPredicate = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Comparator = {
            type = "string",
        },
    },
}

M.Sort = {
    ASCENDING = "ASC",
    DESCENDING = "DESC",
}

M.SortCriterion = {
    type = "structure",
    members = {
        FieldName = {
            type = "string",
        },
        Sort = {
            type = "string",
        },
    },
}

M.SearchTablesInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        SearchText = {
            type = "string",
        },
        SortCriteria = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        ResourceShareType = {
            type = "string",
        },
        IncludeStatusDetails = {
            type = "boolean",
        },
    },
}

M.IllegalBlueprintStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartBlueprintRunInput = {
    type = "structure",
    members = {
        BlueprintName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartBlueprintRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartColumnStatisticsTaskRunInput = {
    type = "structure",
    members = {
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
        ColumnNameList = {
            type = "list",
            member_type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleSize = {
            type = "number",
        },
        CatalogID = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
    },
}

M.StartColumnStatisticsTaskRunOutput = {
    type = "structure",
    members = {
        ColumnStatisticsTaskRunId = {
            type = "string",
        },
    },
}

M.StartColumnStatisticsTaskRunScheduleInput = {
    type = "structure",
    members = {
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
    },
}

M.StartColumnStatisticsTaskRunScheduleOutput = {
    type = "structure",
}

M.StartCrawlerInput = {
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

M.StartCrawlerOutput = {
    type = "structure",
}

M.NoScheduleException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SchedulerRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCrawlerScheduleInput = {
    type = "structure",
    members = {
        CrawlerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartCrawlerScheduleOutput = {
    type = "structure",
}

M.StartDataQualityRuleRecommendationRunInput = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        CreatedRulesetName = {
            type = "string",
        },
        DataQualitySecurityConfiguration = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.StartDataQualityRuleRecommendationRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartDataQualityRulesetEvaluationRunInput = {
    type = "structure",
    members = {
        DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        ClientToken = {
            type = "string",
        },
        AdditionalRunOptions = {
            type = "structure",
        },
        RulesetNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalDataSources = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.StartDataQualityRulesetEvaluationRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartExportLabelsTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartExportLabelsTaskRunOutput = {
    type = "structure",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartImportLabelsTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplaceAllLabels = {
            type = "boolean",
        },
    },
}

M.StartImportLabelsTaskRunOutput = {
    type = "structure",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartJobRunInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobRunQueuingEnabled = {
            type = "boolean",
        },
        JobRunId = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        AllocatedCapacity = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        ExecutionClass = {
            type = "string",
        },
        ExecutionRoleSessionPolicy = {
            type = "string",
        },
    },
}

M.StartJobRunOutput = {
    type = "structure",
    members = {
        JobRunId = {
            type = "string",
        },
    },
}

M.MaterializedViewRefreshTaskRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        FullRefresh = {
            type = "boolean",
        },
    },
}

M.StartMaterializedViewRefreshTaskRunOutput = {
    type = "structure",
    members = {
        MaterializedViewRefreshTaskRunId = {
            type = "string",
        },
    },
}

M.MLTransformNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartMLEvaluationTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMLEvaluationTaskRunOutput = {
    type = "structure",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartMLLabelingSetGenerationTaskRunInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMLLabelingSetGenerationTaskRunOutput = {
    type = "structure",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartTriggerInput = {
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

M.StartTriggerOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.StartWorkflowRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartWorkflowRunOutput = {
    type = "structure",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.ColumnStatisticsTaskNotRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ColumnStatisticsTaskStoppingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopColumnStatisticsTaskRunInput = {
    type = "structure",
    members = {
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
    },
}

M.StopColumnStatisticsTaskRunOutput = {
    type = "structure",
}

M.StopColumnStatisticsTaskRunScheduleInput = {
    type = "structure",
    members = {
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
    },
}

M.StopColumnStatisticsTaskRunScheduleOutput = {
    type = "structure",
}

M.CrawlerNotRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CrawlerStoppingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopCrawlerInput = {
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

M.StopCrawlerOutput = {
    type = "structure",
}

M.SchedulerNotRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopCrawlerScheduleInput = {
    type = "structure",
    members = {
        CrawlerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopCrawlerScheduleOutput = {
    type = "structure",
}

M.MaterializedViewRefreshTaskNotRunningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaterializedViewRefreshTaskStoppingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    members = {
        CatalogId = {
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
    },
}

M.StopMaterializedViewRefreshTaskRunOutput = {
    type = "structure",
}

M.StopSessionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.StopSessionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.StopTriggerInput = {
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

M.StopTriggerOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.StopWorkflowRunInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopWorkflowRunOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToAdd = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TestConnectionInput = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationConfiguration = {
            type = "structure",
        },
    },
}

M.TestConnectionOperationInput = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        TestConnectionInput = {
            type = "structure",
        },
    },
}

M.TestConnectionOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToRemove = {
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

M.UpdateBlueprintInput = {
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
        BlueprintLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBlueprintOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.UpdateCatalogInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCatalogOutput = {
    type = "structure",
}

M.UpdateCsvClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Delimiter = {
            type = "string",
        },
        QuoteSymbol = {
            type = "string",
        },
        ContainsHeader = {
            type = "string",
        },
        Header = {
            type = "list",
            member_type = "string",
        },
        DisableValueTrimming = {
            type = "boolean",
        },
        AllowSingleColumn = {
            type = "boolean",
        },
        CustomDatatypeConfigured = {
            type = "boolean",
        },
        CustomDatatypes = {
            type = "list",
            member_type = "string",
        },
        Serde = {
            type = "string",
        },
    },
}

M.UpdateGrokClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Classification = {
            type = "string",
        },
        GrokPattern = {
            type = "string",
        },
        CustomPatterns = {
            type = "string",
        },
    },
}

M.UpdateJsonClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JsonPath = {
            type = "string",
        },
    },
}

M.UpdateXMLClassifierRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Classification = {
            type = "string",
        },
        RowTag = {
            type = "string",
        },
    },
}

M.UpdateClassifierInput = {
    type = "structure",
    members = {
        GrokClassifier = {
            type = "structure",
        },
        XMLClassifier = {
            type = "structure",
        },
        JsonClassifier = {
            type = "structure",
        },
        CsvClassifier = {
            type = "structure",
        },
    },
}

M.UpdateClassifierOutput = {
    type = "structure",
}

M.VersionMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateColumnStatisticsForPartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ColumnStatisticsList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnStatisticsError = {
    type = "structure",
    members = {
        ColumnStatistics = {
            type = "structure",
        },
        Error = {
            type = "structure",
        },
    },
}

M.UpdateColumnStatisticsForPartitionOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateColumnStatisticsForTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        ColumnStatisticsList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateColumnStatisticsForTableOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateColumnStatisticsTaskSettingsInput = {
    type = "structure",
    members = {
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
        Role = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        ColumnNameList = {
            type = "list",
            member_type = "string",
        },
        SampleSize = {
            type = "number",
        },
        CatalogID = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
    },
}

M.UpdateColumnStatisticsTaskSettingsOutput = {
    type = "structure",
}

M.UpdateConnectionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
}

M.UpdateCrawlerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Targets = {
            type = "structure",
        },
        Schedule = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member_type = "string",
        },
        TablePrefix = {
            type = "string",
        },
        SchemaChangePolicy = {
            type = "structure",
        },
        RecrawlPolicy = {
            type = "structure",
        },
        LineageConfiguration = {
            type = "structure",
        },
        LakeFormationConfiguration = {
            type = "structure",
        },
        Configuration = {
            type = "string",
        },
        CrawlerSecurityConfiguration = {
            type = "string",
        },
    },
}

M.UpdateCrawlerOutput = {
    type = "structure",
}

M.UpdateCrawlerScheduleInput = {
    type = "structure",
    members = {
        CrawlerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = {
            type = "string",
        },
    },
}

M.UpdateCrawlerScheduleOutput = {
    type = "structure",
}

M.UpdateDatabaseInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatabaseOutput = {
    type = "structure",
}

M.UpdateDataQualityRulesetInput = {
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
        Ruleset = {
            type = "string",
        },
    },
}

M.UpdateDataQualityRulesetOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Ruleset = {
            type = "string",
        },
    },
}

M.DevEndpointCustomLibraries = {
    type = "structure",
    members = {
        ExtraPythonLibsS3Path = {
            type = "string",
        },
        ExtraJarsS3Path = {
            type = "string",
        },
    },
}

M.UpdateDevEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKey = {
            type = "string",
        },
        AddPublicKeys = {
            type = "list",
            member_type = "string",
        },
        DeletePublicKeys = {
            type = "list",
            member_type = "string",
        },
        CustomLibraries = {
            type = "structure",
        },
        UpdateEtlLibraries = {
            type = "boolean",
        },
        DeleteArguments = {
            type = "list",
            member_type = "string",
        },
        AddArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateDevEndpointOutput = {
    type = "structure",
}

M.UpdateGlueIdentityCenterConfigurationInput = {
    type = "structure",
    members = {
        Scopes = {
            type = "list",
            member_type = "string",
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateGlueIdentityCenterConfigurationOutput = {
    type = "structure",
}

M.UpdateIntegrationResourcePropertyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
    },
}

M.UpdateIntegrationResourcePropertyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = {
            type = "structure",
        },
        TargetProcessingProperties = {
            type = "structure",
        },
    },
}

M.UpdateIntegrationTablePropertiesInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        SourceTableConfig = {
            type = "structure",
        },
        TargetTableConfig = {
            type = "structure",
        },
    },
}

M.UpdateIntegrationTablePropertiesOutput = {
    type = "structure",
}

M.UpdateJobOutput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.UpdateJobFromSourceControlInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        Provider = {
            type = "string",
        },
        RepositoryName = {
            type = "string",
        },
        RepositoryOwner = {
            type = "string",
        },
        BranchName = {
            type = "string",
        },
        Folder = {
            type = "string",
        },
        CommitId = {
            type = "string",
        },
        AuthStrategy = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
    },
}

M.UpdateJobFromSourceControlOutput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.UpdateMLTransformInput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Parameters = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxRetries = {
            type = "number",
        },
    },
}

M.UpdateMLTransformOutput = {
    type = "structure",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.UpdatePartitionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
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
        PartitionValueList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PartitionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePartitionOutput = {
    type = "structure",
}

M.UpdateRegistryInput = {
    type = "structure",
    members = {
        RegistryId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRegistryOutput = {
    type = "structure",
    members = {
        RegistryName = {
            type = "string",
        },
        RegistryArn = {
            type = "string",
        },
    },
}

M.UpdateSchemaInput = {
    type = "structure",
    members = {
        SchemaId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SchemaVersionNumber = {
            type = "structure",
        },
        Compatibility = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateSchemaOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaName = {
            type = "string",
        },
        RegistryName = {
            type = "string",
        },
    },
}

M.UpdateSourceControlFromJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        Provider = {
            type = "string",
        },
        RepositoryName = {
            type = "string",
        },
        RepositoryOwner = {
            type = "string",
        },
        BranchName = {
            type = "string",
        },
        Folder = {
            type = "string",
        },
        CommitId = {
            type = "string",
        },
        AuthStrategy = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
    },
}

M.UpdateSourceControlFromJobOutput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.IcebergUpdateAction = {
    ADD_SCHEMA = "add-schema",
    SET_CURRENT_SCHEMA = "set-current-schema",
    ADD_SPEC = "add-spec",
    SET_DEFAULT_SPEC = "set-default-spec",
    ADD_SORT_ORDER = "add-sort-order",
    SET_DEFAULT_SORT_ORDER = "set-default-sort-order",
    SET_LOCATION = "set-location",
    SET_PROPERTIES = "set-properties",
    REMOVE_PROPERTIES = "remove-properties",
    ADD_ENCRYPTION_KEY = "add-encryption-key",
    REMOVE_ENCRYPTION_KEY = "remove-encryption-key",
}

M.IcebergEncryptedKey = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptedKeyMetadata = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptedById = {
            type = "string",
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.IcebergTableUpdate = {
    type = "structure",
    members = {
        Schema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PartitionSpec = {
            type = "structure",
        },
        SortOrder = {
            type = "structure",
        },
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Action = {
            type = "string",
        },
        EncryptionKey = {
            type = "structure",
        },
        KeyId = {
            type = "string",
        },
    },
}

M.UpdateIcebergTableInput = {
    type = "structure",
    members = {
        Updates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIcebergInput = {
    type = "structure",
    members = {
        UpdateIcebergTableInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOpenTableFormatInput = {
    type = "structure",
    members = {
        UpdateIcebergInput = {
            type = "structure",
        },
    },
}

M.ViewUpdateAction = {
    ADD = "ADD",
    REPLACE = "REPLACE",
    ADD_OR_REPLACE = "ADD_OR_REPLACE",
    DROP = "DROP",
}

M.UpdateTableInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        TableInput = {
            type = "structure",
        },
        SkipArchive = {
            type = "boolean",
        },
        TransactionId = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        ViewUpdateAction = {
            type = "string",
        },
        Force = {
            type = "boolean",
        },
        UpdateOpenTableFormatInput = {
            type = "structure",
        },
    },
}

M.UpdateTableOutput = {
    type = "structure",
}

M.UpdateTableOptimizerInput = {
    type = "structure",
    members = {
        CatalogId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableOptimizerConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTableOptimizerOutput = {
    type = "structure",
}

M.TriggerUpdate = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Schedule = {
            type = "string",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        Predicate = {
            type = "structure",
        },
        EventBatchingCondition = {
            type = "structure",
        },
    },
}

M.UpdateTriggerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTriggerOutput = {
    type = "structure",
    members = {
        Trigger = {
            type = "structure",
        },
    },
}

M.UpdateUsageProfileInput = {
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
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUsageProfileOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.UpdateUserDefinedFunctionInput = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionInput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserDefinedFunctionOutput = {
    type = "structure",
}

M.UpdateWorkflowInput = {
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
        DefaultRunProperties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxConcurrentRuns = {
            type = "number",
        },
    },
}

M.UpdateWorkflowOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Mapping = {
    type = "structure",
    members = {
        ToKey = {
            type = "string",
        },
        FromPath = {
            type = "list",
            member_type = "string",
        },
        FromType = {
            type = "string",
        },
        ToType = {
            type = "string",
        },
        Dropped = {
            type = "boolean",
        },
        Children = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApplyMapping = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Mapping = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StatusDetails = {
    type = "structure",
    members = {
        RequestedChange = {
            type = "structure",
        },
        ViewValidations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Table = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        LastAccessTime = {
            type = "timestamp",
        },
        LastAnalyzedTime = {
            type = "timestamp",
        },
        Retention = {
            type = "number",
        },
        StorageDescriptor = {
            type = "structure",
        },
        PartitionKeys = {
            type = "list",
            member_type = "structure",
        },
        ViewOriginalText = {
            type = "string",
        },
        ViewExpandedText = {
            type = "string",
        },
        TableType = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
        },
        TargetTable = {
            type = "structure",
        },
        CatalogId = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        FederatedTable = {
            type = "structure",
        },
        ViewDefinition = {
            type = "structure",
        },
        IsMultiDialectView = {
            type = "boolean",
        },
        IsMaterializedView = {
            type = "boolean",
        },
        Status = {
            type = "structure",
        },
    },
}

M.TableStatus = {
    type = "structure",
    members = {
        RequestedBy = {
            type = "string",
        },
        UpdatedBy = {
            type = "string",
        },
        RequestTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        Action = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
        Details = {
            type = "structure",
        },
    },
}

M.CodeGenConfigurationNode = {
    type = "structure",
    members = {
        AthenaConnectorSource = {
            type = "structure",
        },
        JDBCConnectorSource = {
            type = "structure",
        },
        SparkConnectorSource = {
            type = "structure",
        },
        CatalogSource = {
            type = "structure",
        },
        RedshiftSource = {
            type = "structure",
        },
        S3CatalogSource = {
            type = "structure",
        },
        S3CsvSource = {
            type = "structure",
        },
        S3JsonSource = {
            type = "structure",
        },
        S3ParquetSource = {
            type = "structure",
        },
        RelationalCatalogSource = {
            type = "structure",
        },
        DynamoDBCatalogSource = {
            type = "structure",
        },
        JDBCConnectorTarget = {
            type = "structure",
        },
        SparkConnectorTarget = {
            type = "structure",
        },
        CatalogTarget = {
            type = "structure",
        },
        RedshiftTarget = {
            type = "structure",
        },
        S3CatalogTarget = {
            type = "structure",
        },
        S3GlueParquetTarget = {
            type = "structure",
        },
        S3DirectTarget = {
            type = "structure",
        },
        ApplyMapping = {
            type = "structure",
        },
        SelectFields = {
            type = "structure",
        },
        DropFields = {
            type = "structure",
        },
        RenameField = {
            type = "structure",
        },
        Spigot = {
            type = "structure",
        },
        Join = {
            type = "structure",
        },
        SplitFields = {
            type = "structure",
        },
        SelectFromCollection = {
            type = "structure",
        },
        FillMissingValues = {
            type = "structure",
        },
        Filter = {
            type = "structure",
        },
        CustomCode = {
            type = "structure",
        },
        SparkSQL = {
            type = "structure",
        },
        DirectKinesisSource = {
            type = "structure",
        },
        DirectKafkaSource = {
            type = "structure",
        },
        CatalogKinesisSource = {
            type = "structure",
        },
        CatalogKafkaSource = {
            type = "structure",
        },
        DropNullFields = {
            type = "structure",
        },
        Merge = {
            type = "structure",
        },
        Union = {
            type = "structure",
        },
        PIIDetection = {
            type = "structure",
        },
        Aggregate = {
            type = "structure",
        },
        DropDuplicates = {
            type = "structure",
        },
        GovernedCatalogTarget = {
            type = "structure",
        },
        GovernedCatalogSource = {
            type = "structure",
        },
        MicrosoftSQLServerCatalogSource = {
            type = "structure",
        },
        MySQLCatalogSource = {
            type = "structure",
        },
        OracleSQLCatalogSource = {
            type = "structure",
        },
        PostgreSQLCatalogSource = {
            type = "structure",
        },
        MicrosoftSQLServerCatalogTarget = {
            type = "structure",
        },
        MySQLCatalogTarget = {
            type = "structure",
        },
        OracleSQLCatalogTarget = {
            type = "structure",
        },
        PostgreSQLCatalogTarget = {
            type = "structure",
        },
        Route = {
            type = "structure",
        },
        DynamicTransform = {
            type = "structure",
        },
        EvaluateDataQuality = {
            type = "structure",
        },
        S3CatalogHudiSource = {
            type = "structure",
        },
        CatalogHudiSource = {
            type = "structure",
        },
        S3HudiSource = {
            type = "structure",
        },
        S3HudiCatalogTarget = {
            type = "structure",
        },
        S3HudiDirectTarget = {
            type = "structure",
        },
        DirectJDBCSource = {
            type = "structure",
        },
        S3CatalogDeltaSource = {
            type = "structure",
        },
        CatalogDeltaSource = {
            type = "structure",
        },
        S3DeltaSource = {
            type = "structure",
        },
        S3DeltaCatalogTarget = {
            type = "structure",
        },
        S3DeltaDirectTarget = {
            type = "structure",
        },
        AmazonRedshiftSource = {
            type = "structure",
        },
        AmazonRedshiftTarget = {
            type = "structure",
        },
        EvaluateDataQualityMultiFrame = {
            type = "structure",
        },
        Recipe = {
            type = "structure",
        },
        SnowflakeSource = {
            type = "structure",
        },
        SnowflakeTarget = {
            type = "structure",
        },
        ConnectorDataSource = {
            type = "structure",
        },
        ConnectorDataTarget = {
            type = "structure",
        },
        S3CatalogIcebergSource = {
            type = "structure",
        },
        CatalogIcebergSource = {
            type = "structure",
        },
        S3IcebergCatalogTarget = {
            type = "structure",
        },
        S3IcebergDirectTarget = {
            type = "structure",
        },
        S3ExcelSource = {
            type = "structure",
        },
        S3HyperDirectTarget = {
            type = "structure",
        },
        DynamoDBELTConnectorSource = {
            type = "structure",
        },
    },
}

M.GetTableOutput = {
    type = "structure",
    members = {
        Table = {
            type = "structure",
        },
    },
}

M.GetUnfilteredTableMetadataOutput = {
    type = "structure",
    members = {
        Table = {
            type = "structure",
        },
        AuthorizedColumns = {
            type = "list",
            member_type = "string",
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
        },
        CellFilters = {
            type = "list",
            member_type = "structure",
        },
        QueryAuthorizationId = {
            type = "string",
        },
        IsMultiDialectView = {
            type = "boolean",
        },
        IsMaterializedView = {
            type = "boolean",
        },
        ResourceArn = {
            type = "string",
        },
        IsProtected = {
            type = "boolean",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
        RowFilter = {
            type = "string",
        },
    },
}

M.TableVersion = {
    type = "structure",
    members = {
        Table = {
            type = "structure",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.GetTablesOutput = {
    type = "structure",
    members = {
        TableList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTableVersionOutput = {
    type = "structure",
    members = {
        TableVersion = {
            type = "structure",
        },
    },
}

M.SearchTablesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        TableList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobMode = {
            type = "string",
        },
        JobRunQueuingEnabled = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionProperty = {
            type = "structure",
        },
        Command = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DefaultArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NonOverridableArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Connections = {
            type = "structure",
        },
        MaxRetries = {
            type = "number",
        },
        AllocatedCapacity = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = {
            type = "structure",
        },
        MaintenanceWindow = {
            type = "string",
        },
    },
}

M.GetTableVersionsOutput = {
    type = "structure",
    members = {
        TableVersions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Job = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        JobMode = {
            type = "string",
        },
        JobRunQueuingEnabled = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        ExecutionProperty = {
            type = "structure",
        },
        Command = {
            type = "structure",
        },
        DefaultArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NonOverridableArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Connections = {
            type = "structure",
        },
        MaxRetries = {
            type = "number",
        },
        AllocatedCapacity = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        GlueVersion = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = {
            type = "structure",
        },
        MaintenanceWindow = {
            type = "string",
        },
        ProfileName = {
            type = "string",
        },
    },
}

M.JobUpdate = {
    type = "structure",
    members = {
        JobMode = {
            type = "string",
        },
        JobRunQueuingEnabled = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        LogUri = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        ExecutionProperty = {
            type = "structure",
        },
        Command = {
            type = "structure",
        },
        DefaultArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NonOverridableArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Connections = {
            type = "structure",
        },
        MaxRetries = {
            type = "number",
        },
        AllocatedCapacity = {
            type = "number",
        },
        Timeout = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "number",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = {
            type = "structure",
        },
        GlueVersion = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = {
            type = "structure",
        },
        MaintenanceWindow = {
            type = "string",
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    members = {
        Job = {
            type = "structure",
        },
    },
}

M.UpdateJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member_type = "structure",
        },
        JobsNotFound = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
