local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotificationProperty = {
    type = "structure",
    id = "NotificationProperty",
    members = {
        NotifyDelayAfter = {
            type = "integer",
        },
    },
}

M.Action = {
    type = "structure",
    id = "Action",
    members = {
        JobName = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Timeout = {
            type = "integer",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = M.NotificationProperty,
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
    id = "AggregateOperation",
    members = {
        Column = {
            type = "list",
            member = { type = "string" },
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
    id = "Aggregate",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Groups = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        Aggs = {
            type = "list",
            member = M.AggregateOperation,
            traits = {
                required = true,
            },
        },
    },
}

M.AllowedValue = {
    type = "structure",
    id = "AllowedValue",
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
    id = "AlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AmazonRedshiftAdvancedOption = {
    type = "structure",
    id = "AmazonRedshiftAdvancedOption",
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
    id = "Option",
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
    id = "AmazonRedshiftNodeData",
    members = {
        AccessType = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Connection = M.Option,
        Schema = M.Option,
        Table = M.Option,
        CatalogDatabase = M.Option,
        CatalogTable = M.Option,
        CatalogRedshiftSchema = {
            type = "string",
        },
        CatalogRedshiftTable = {
            type = "string",
        },
        TempDir = {
            type = "string",
        },
        IamRole = M.Option,
        AdvancedOptions = {
            type = "list",
            member = M.AmazonRedshiftAdvancedOption,
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
            traits = {
                default = false,
            },
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
            member = M.Option,
        },
        StagingTable = {
            type = "string",
        },
        SelectedColumns = {
            type = "list",
            member = M.Option,
        },
    },
}

M.AmazonRedshiftSource = {
    type = "structure",
    id = "AmazonRedshiftSource",
    members = {
        Name = {
            type = "string",
        },
        Data = M.AmazonRedshiftNodeData,
    },
}

M.AmazonRedshiftTarget = {
    type = "structure",
    id = "AmazonRedshiftTarget",
    members = {
        Name = {
            type = "string",
        },
        Data = M.AmazonRedshiftNodeData,
        Inputs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AnnotationError = {
    type = "structure",
    id = "AnnotationError",
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
    id = "TimestampedInclusionAnnotation",
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
    id = "StatisticAnnotation",
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
        InclusionAnnotation = M.TimestampedInclusionAnnotation,
    },
}

M.GlueStudioSchemaColumn = {
    type = "structure",
    id = "GlueStudioSchemaColumn",
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
    id = "GlueSchema",
    members = {
        Columns = {
            type = "list",
            member = M.GlueStudioSchemaColumn,
        },
    },
}

M.AthenaConnectorSource = {
    type = "structure",
    id = "AthenaConnectorSource",
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
            member = M.GlueSchema,
        },
    },
}

M.AuditContext = {
    type = "structure",
    id = "AuditContext",
    members = {
        AdditionalAuditContext = {
            type = "string",
        },
        RequestedColumns = {
            type = "list",
            member = { type = "string" },
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
    id = "Property",
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
            member = { type = "string" },
            traits = {
                default = {},
                required = true,
            },
        },
        AllowedValues = {
            type = "list",
            member = M.AllowedValue,
        },
        DataOperationScopes = {
            type = "list",
            member = { type = "string" },
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
    id = "AuthConfiguration",
    members = {
        AuthenticationType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Property }),
        SecretArn = M.Property,
        OAuth2Properties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        BasicAuthenticationProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        CustomAuthenticationProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
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
    id = "OAuth2ClientApplication",
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
    id = "OAuth2Properties",
    members = {
        OAuth2GrantType = {
            type = "string",
        },
        OAuth2ClientApplication = M.OAuth2ClientApplication,
        TokenUrl = {
            type = "string",
        },
        TokenUrlParametersMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    id = "AuthenticationConfiguration",
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
        OAuth2Properties = M.OAuth2Properties,
    },
}

M.BasicAuthenticationCredentials = {
    type = "structure",
    id = "BasicAuthenticationCredentials",
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
    id = "AuthorizationCodeProperties",
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
    id = "OAuth2Credentials",
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
    id = "OAuth2PropertiesInput",
    members = {
        OAuth2GrantType = {
            type = "string",
        },
        OAuth2ClientApplication = M.OAuth2ClientApplication,
        TokenUrl = {
            type = "string",
        },
        TokenUrlParametersMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AuthorizationCodeProperties = M.AuthorizationCodeProperties,
        OAuth2Credentials = M.OAuth2Credentials,
    },
}

M.AuthenticationConfigurationInput = {
    type = "structure",
    id = "AuthenticationConfigurationInput",
    members = {
        AuthenticationType = {
            type = "string",
        },
        OAuth2Properties = M.OAuth2PropertiesInput,
        SecretArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        BasicAuthenticationCredentials = M.BasicAuthenticationCredentials,
        CustomAuthenticationCredentials = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AutoDataQuality = {
    type = "structure",
    id = "AutoDataQuality",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EvaluationContext = {
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
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SchemaId = {
    type = "structure",
    id = "SchemaId",
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
    id = "SchemaReference",
    members = {
        SchemaId = M.SchemaId,
        SchemaVersionId = {
            type = "string",
        },
        SchemaVersionNumber = {
            type = "long",
        },
    },
}

M.SerDeInfo = {
    type = "structure",
    id = "SerDeInfo",
    members = {
        Name = {
            type = "string",
        },
        SerializationLibrary = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SkewedInfo = {
    type = "structure",
    id = "SkewedInfo",
    members = {
        SkewedColumnNames = {
            type = "list",
            member = { type = "string" },
        },
        SkewedColumnValues = {
            type = "list",
            member = { type = "string" },
        },
        SkewedColumnValueLocationMaps = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Order = {
    type = "structure",
    id = "Order",
    members = {
        Column = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.StorageDescriptor = {
    type = "structure",
    id = "StorageDescriptor",
    members = {
        Columns = {
            type = "list",
            member = M.Column,
        },
        Location = {
            type = "string",
        },
        AdditionalLocations = {
            type = "list",
            member = { type = "string" },
        },
        InputFormat = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
        },
        Compressed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NumberOfBuckets = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SerdeInfo = M.SerDeInfo,
        BucketColumns = {
            type = "list",
            member = { type = "string" },
        },
        SortColumns = {
            type = "list",
            member = M.Order,
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SkewedInfo = M.SkewedInfo,
        StoredAsSubDirectories = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SchemaReference = M.SchemaReference,
    },
}

M.PartitionInput = {
    type = "structure",
    id = "PartitionInput",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
        LastAccessTime = {
            type = "timestamp",
        },
        StorageDescriptor = M.StorageDescriptor,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastAnalyzedTime = {
            type = "timestamp",
        },
    },
}

M.BatchCreatePartitionInput = {
    type = "structure",
    id = "BatchCreatePartitionInput",
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
            member = M.PartitionInput,
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    id = "ErrorDetail",
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
    id = "PartitionError",
    members = {
        PartitionValues = {
            type = "list",
            member = { type = "string" },
        },
        ErrorDetail = M.ErrorDetail,
    },
}

M.BatchCreatePartitionOutput = {
    type = "structure",
    id = "BatchCreatePartitionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.PartitionError,
        },
    },
}

M.EntityNotFoundException = {
    type = "structure",
    id = "EntityNotFoundException",
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
    id = "GlueEncryptionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
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
    id = "OperationTimeoutException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNumberLimitExceededException = {
    type = "structure",
    id = "ResourceNumberLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDeleteConnectionInput = {
    type = "structure",
    id = "BatchDeleteConnectionInput",
    members = {
        CatalogId = {
            type = "string",
        },
        ConnectionNameList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteConnectionOutput = {
    type = "structure",
    id = "BatchDeleteConnectionOutput",
    members = {
        Succeeded = {
            type = "list",
            member = { type = "string" },
        },
        Errors = {
            type = "map",
            key = { type = "string" },
            value = M.ErrorDetail,
        },
    },
}

M.PartitionValueList = {
    type = "structure",
    id = "PartitionValueList",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePartitionInput = {
    type = "structure",
    id = "BatchDeletePartitionInput",
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
            member = M.PartitionValueList,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePartitionOutput = {
    type = "structure",
    id = "BatchDeletePartitionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.PartitionError,
        },
    },
}

M.BatchDeleteTableInput = {
    type = "structure",
    id = "BatchDeleteTableInput",
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
            member = { type = "string" },
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
    id = "TableError",
    members = {
        TableName = {
            type = "string",
        },
        ErrorDetail = M.ErrorDetail,
    },
}

M.BatchDeleteTableOutput = {
    type = "structure",
    id = "BatchDeleteTableOutput",
    members = {
        Errors = {
            type = "list",
            member = M.TableError,
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    id = "ResourceNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDeleteTableVersionInput = {
    type = "structure",
    id = "BatchDeleteTableVersionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TableVersionError = {
    type = "structure",
    id = "TableVersionError",
    members = {
        TableName = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        ErrorDetail = M.ErrorDetail,
    },
}

M.BatchDeleteTableVersionOutput = {
    type = "structure",
    id = "BatchDeleteTableVersionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.TableVersionError,
        },
    },
}

M.BatchGetBlueprintsInput = {
    type = "structure",
    id = "BatchGetBlueprintsInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
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
    id = "LastActiveDefinition",
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
    id = "Blueprint",
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
        LastActiveDefinition = M.LastActiveDefinition,
    },
}

M.BatchGetBlueprintsOutput = {
    type = "structure",
    id = "BatchGetBlueprintsOutput",
    members = {
        Blueprints = {
            type = "list",
            member = M.Blueprint,
        },
        MissingBlueprints = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetCrawlersInput = {
    type = "structure",
    id = "BatchGetCrawlersInput",
    members = {
        CrawlerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LakeFormationConfiguration = {
    type = "structure",
    id = "LakeFormationConfiguration",
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
    id = "LastCrawlInfo",
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
    id = "LineageConfiguration",
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
    id = "RecrawlPolicy",
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
    id = "Schedule",
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
    id = "SchemaChangePolicy",
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
    id = "CatalogTarget",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tables = {
            type = "list",
            member = { type = "string" },
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
    id = "DeltaTarget",
    members = {
        DeltaTables = {
            type = "list",
            member = { type = "string" },
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
    id = "DynamoDBTarget",
    members = {
        Path = {
            type = "string",
        },
        scanAll = {
            type = "boolean",
        },
        scanRate = {
            type = "double",
        },
    },
}

M.HudiTarget = {
    type = "structure",
    id = "HudiTarget",
    members = {
        Paths = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionName = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
        },
        MaximumTraversalDepth = {
            type = "integer",
        },
    },
}

M.IcebergTarget = {
    type = "structure",
    id = "IcebergTarget",
    members = {
        Paths = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionName = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
        },
        MaximumTraversalDepth = {
            type = "integer",
        },
    },
}

M.JdbcMetadataEntry = {
    COMMENTS = "COMMENTS",
    RAWTYPES = "RAWTYPES",
}

M.JdbcTarget = {
    type = "structure",
    id = "JdbcTarget",
    members = {
        ConnectionName = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
        },
        EnableAdditionalMetadata = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MongoDBTarget = {
    type = "structure",
    id = "MongoDBTarget",
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
    id = "S3Target",
    members = {
        Path = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionName = {
            type = "string",
        },
        SampleSize = {
            type = "integer",
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
    id = "CrawlerTargets",
    members = {
        S3Targets = {
            type = "list",
            member = M.S3Target,
        },
        JdbcTargets = {
            type = "list",
            member = M.JdbcTarget,
        },
        MongoDBTargets = {
            type = "list",
            member = M.MongoDBTarget,
        },
        DynamoDBTargets = {
            type = "list",
            member = M.DynamoDBTarget,
        },
        CatalogTargets = {
            type = "list",
            member = M.CatalogTarget,
        },
        DeltaTargets = {
            type = "list",
            member = M.DeltaTarget,
        },
        IcebergTargets = {
            type = "list",
            member = M.IcebergTarget,
        },
        HudiTargets = {
            type = "list",
            member = M.HudiTarget,
        },
    },
}

M.Crawler = {
    type = "structure",
    id = "Crawler",
    members = {
        Name = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Targets = M.CrawlerTargets,
        DatabaseName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member = { type = "string" },
        },
        RecrawlPolicy = M.RecrawlPolicy,
        SchemaChangePolicy = M.SchemaChangePolicy,
        LineageConfiguration = M.LineageConfiguration,
        State = {
            type = "string",
        },
        TablePrefix = {
            type = "string",
        },
        Schedule = M.Schedule,
        CrawlElapsedTime = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        LastCrawl = M.LastCrawlInfo,
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Configuration = {
            type = "string",
        },
        CrawlerSecurityConfiguration = {
            type = "string",
        },
        LakeFormationConfiguration = M.LakeFormationConfiguration,
    },
}

M.BatchGetCrawlersOutput = {
    type = "structure",
    id = "BatchGetCrawlersOutput",
    members = {
        Crawlers = {
            type = "list",
            member = M.Crawler,
        },
        CrawlersNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetCustomEntityTypesInput = {
    type = "structure",
    id = "BatchGetCustomEntityTypesInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CustomEntityType = {
    type = "structure",
    id = "CustomEntityType",
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
            member = { type = "string" },
        },
    },
}

M.BatchGetCustomEntityTypesOutput = {
    type = "structure",
    id = "BatchGetCustomEntityTypesOutput",
    members = {
        CustomEntityTypes = {
            type = "list",
            member = M.CustomEntityType,
        },
        CustomEntityTypesNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetDataQualityResultInput = {
    type = "structure",
    id = "BatchGetDataQualityResultInput",
    members = {
        ResultIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DataQualityAggregatedMetrics = {
    type = "structure",
    id = "DataQualityAggregatedMetrics",
    members = {
        TotalRowsProcessed = {
            type = "double",
        },
        TotalRowsPassed = {
            type = "double",
        },
        TotalRowsFailed = {
            type = "double",
        },
        TotalRulesProcessed = {
            type = "double",
        },
        TotalRulesPassed = {
            type = "double",
        },
        TotalRulesFailed = {
            type = "double",
        },
    },
}

M.DataQualityAnalyzerResult = {
    type = "structure",
    id = "DataQualityAnalyzerResult",
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
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.DataQualityGlueTable = {
    type = "structure",
    id = "DataQualityGlueTable",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        PreProcessingQuery = {
            type = "string",
        },
    },
}

M.GlueTable = {
    type = "structure",
    id = "GlueTable",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        GlueTable = M.GlueTable,
        DataQualityGlueTable = M.DataQualityGlueTable,
    },
}

M.DataQualityMetricValues = {
    type = "structure",
    id = "DataQualityMetricValues",
    members = {
        ActualValue = {
            type = "double",
        },
        ExpectedValue = {
            type = "double",
        },
        LowerLimit = {
            type = "double",
        },
        UpperLimit = {
            type = "double",
        },
    },
}

M.MetricBasedObservation = {
    type = "structure",
    id = "MetricBasedObservation",
    members = {
        MetricName = {
            type = "string",
        },
        StatisticId = {
            type = "string",
        },
        MetricValues = M.DataQualityMetricValues,
        NewRules = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataQualityObservation = {
    type = "structure",
    id = "DataQualityObservation",
    members = {
        Description = {
            type = "string",
        },
        MetricBasedObservation = M.MetricBasedObservation,
    },
}

M.DataQualityRuleResultStatus = {
    PASS = "PASS",
    FAIL = "FAIL",
    ERROR = "ERROR",
}

M.DataQualityRuleResult = {
    type = "structure",
    id = "DataQualityRuleResult",
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
            key = { type = "string" },
            value = { type = "double" },
        },
        EvaluatedRule = {
            type = "string",
        },
        RuleMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        Labels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataQualityResult = {
    type = "structure",
    id = "DataQualityResult",
    members = {
        ResultId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        Score = {
            type = "double",
        },
        DataSource = M.DataSource,
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
            member = M.DataQualityRuleResult,
        },
        AnalyzerResults = {
            type = "list",
            member = M.DataQualityAnalyzerResult,
        },
        Observations = {
            type = "list",
            member = M.DataQualityObservation,
        },
        AggregatedMetrics = M.DataQualityAggregatedMetrics,
    },
}

M.BatchGetDataQualityResultOutput = {
    type = "structure",
    id = "BatchGetDataQualityResultOutput",
    members = {
        Results = {
            type = "list",
            member = M.DataQualityResult,
            traits = {
                required = true,
            },
        },
        ResultsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetDevEndpointsInput = {
    type = "structure",
    id = "BatchGetDevEndpointsInput",
    members = {
        DevEndpointNames = {
            type = "list",
            member = { type = "string" },
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
    id = "DevEndpoint",
    members = {
        EndpointName = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
        },
        NumberOfNodes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = { type = "string" },
        },
        SecurityConfiguration = {
            type = "string",
        },
        Arguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchGetDevEndpointsOutput = {
    type = "structure",
    id = "BatchGetDevEndpointsOutput",
    members = {
        DevEndpoints = {
            type = "list",
            member = M.DevEndpoint,
        },
        DevEndpointsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetJobsInput = {
    type = "structure",
    id = "BatchGetJobsInput",
    members = {
        JobNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogDeltaSource = {
    type = "structure",
    id = "CatalogDeltaSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.CatalogHudiSource = {
    type = "structure",
    id = "CatalogHudiSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.CatalogIcebergSource = {
    type = "structure",
    id = "CatalogIcebergSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.StreamingDataPreviewOptions = {
    type = "structure",
    id = "StreamingDataPreviewOptions",
    members = {
        PollingTime = {
            type = "long",
        },
        RecordPollingLimit = {
            type = "long",
        },
    },
}

M.KafkaStreamingSourceOptions = {
    type = "structure",
    id = "KafkaStreamingSourceOptions",
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
            type = "long",
        },
        NumRetries = {
            type = "integer",
        },
        RetryIntervalMs = {
            type = "long",
        },
        MaxOffsetsPerTrigger = {
            type = "long",
        },
        MinPartitions = {
            type = "integer",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CatalogKafkaSource = {
    type = "structure",
    id = "CatalogKafkaSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "integer",
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
        StreamingOptions = M.KafkaStreamingSourceOptions,
        DataPreviewOptions = M.StreamingDataPreviewOptions,
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
    id = "KinesisStreamingSourceOptions",
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
            type = "long",
        },
        MaxFetchRecordsPerShard = {
            type = "long",
        },
        MaxRecordPerRead = {
            type = "long",
        },
        AddIdleTimeBetweenReads = {
            type = "boolean",
        },
        IdleTimeBetweenReadsInMs = {
            type = "long",
        },
        DescribeShardInterval = {
            type = "long",
        },
        NumRetries = {
            type = "integer",
        },
        RetryIntervalMs = {
            type = "long",
        },
        MaxRetryIntervalMs = {
            type = "long",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        FanoutConsumerARN = {
            type = "string",
        },
    },
}

M.CatalogKinesisSource = {
    type = "structure",
    id = "CatalogKinesisSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "integer",
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
        StreamingOptions = M.KinesisStreamingSourceOptions,
        DataPreviewOptions = M.StreamingDataPreviewOptions,
    },
}

M.CatalogSource = {
    type = "structure",
    id = "CatalogSource",
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
            member = M.GlueSchema,
        },
    },
}

M.BasicCatalogTarget = {
    type = "structure",
    id = "BasicCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
    id = "ConnectorDataSource",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.ConnectorDataTarget = {
    type = "structure",
    id = "ConnectorDataTarget",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CustomCode = {
    type = "structure",
    id = "CustomCode",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = M.GlueSchema,
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
    id = "DirectJDBCSource",
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
            member = M.GlueSchema,
        },
    },
}

M.DirectKafkaSource = {
    type = "structure",
    id = "DirectKafkaSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamingOptions = M.KafkaStreamingSourceOptions,
        WindowSize = {
            type = "integer",
        },
        DetectSchema = {
            type = "boolean",
        },
        DataPreviewOptions = M.StreamingDataPreviewOptions,
    },
}

M.DirectKinesisSource = {
    type = "structure",
    id = "DirectKinesisSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WindowSize = {
            type = "integer",
        },
        DetectSchema = {
            type = "boolean",
        },
        StreamingOptions = M.KinesisStreamingSourceOptions,
        DataPreviewOptions = M.StreamingDataPreviewOptions,
    },
}

M.DropDuplicates = {
    type = "structure",
    id = "DropDuplicates",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.DropFields = {
    type = "structure",
    id = "DropFields",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.NullCheckBoxList = {
    type = "structure",
    id = "NullCheckBoxList",
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
    id = "Datatype",
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
    id = "NullValueField",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Datatype = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Datatype }),
    },
}

M.DropNullFields = {
    type = "structure",
    id = "DropNullFields",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NullCheckBoxList = M.NullCheckBoxList,
        NullTextList = {
            type = "list",
            member = M.NullValueField,
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
    id = "TransformConfigParameter",
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
            member = { type = "string" },
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
    id = "DynamicTransform",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.TransformConfigParameter,
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
            member = M.GlueSchema,
        },
    },
}

M.DDBELTCatalogAdditionalOptions = {
    type = "structure",
    id = "DDBELTCatalogAdditionalOptions",
    members = {
        DynamodbExport = {
            type = "string",
        },
        DynamodbUnnestDDBJson = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DynamoDBCatalogSource = {
    type = "structure",
    id = "DynamoDBCatalogSource",
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
        AdditionalOptions = M.DDBELTCatalogAdditionalOptions,
    },
}

M.DdbExportType = {
    ddb = "ddb",
    s3 = "s3",
}

M.DDBELTConnectionOptions = {
    type = "structure",
    id = "DDBELTConnectionOptions",
    members = {
        DynamodbExport = {
            type = "string",
        },
        DynamodbUnnestDDBJson = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "DynamoDBELTConnectorSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionOptions = M.DDBELTConnectionOptions,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.DQTransformOutput = {
    PrimaryInput = "PrimaryInput",
    EvaluationResults = "EvaluationResults",
}

M.DQResultsPublishingOptions = {
    type = "structure",
    id = "DQResultsPublishingOptions",
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
    id = "DQStopJobOnFailureOptions",
    members = {
        StopJobOnFailureTiming = {
            type = "string",
        },
    },
}

M.EvaluateDataQuality = {
    type = "structure",
    id = "EvaluateDataQuality",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
        PublishingOptions = M.DQResultsPublishingOptions,
        StopJobOnFailureOptions = M.DQStopJobOnFailureOptions,
    },
}

M.EvaluateDataQualityMultiFrame = {
    type = "structure",
    id = "EvaluateDataQualityMultiFrame",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AdditionalDataSources = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Ruleset = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishingOptions = M.DQResultsPublishingOptions,
        AdditionalOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StopJobOnFailureOptions = M.DQStopJobOnFailureOptions,
    },
}

M.FillMissingValues = {
    type = "structure",
    id = "FillMissingValues",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "FilterValue",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FilterExpression = {
    type = "structure",
    id = "FilterExpression",
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
            member = M.FilterValue,
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
    id = "Filter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = M.FilterExpression,
            traits = {
                required = true,
            },
        },
    },
}

M.S3SourceAdditionalOptions = {
    type = "structure",
    id = "S3SourceAdditionalOptions",
    members = {
        BoundedSize = {
            type = "long",
        },
        BoundedFiles = {
            type = "long",
        },
    },
}

M.GovernedCatalogSource = {
    type = "structure",
    id = "GovernedCatalogSource",
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
        AdditionalOptions = M.S3SourceAdditionalOptions,
    },
}

M.UpdateCatalogBehavior = {
    UPDATE_IN_DATABASE = "UPDATE_IN_DATABASE",
    LOG = "LOG",
}

M.CatalogSchemaChangePolicy = {
    type = "structure",
    id = "CatalogSchemaChangePolicy",
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
    id = "GovernedCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
        SchemaChangePolicy = M.CatalogSchemaChangePolicy,
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
    id = "JDBCConnectorOptions",
    members = {
        FilterPredicate = {
            type = "string",
        },
        PartitionColumn = {
            type = "string",
        },
        LowerBound = {
            type = "long",
        },
        UpperBound = {
            type = "long",
        },
        NumPartitions = {
            type = "long",
        },
        JobBookmarkKeys = {
            type = "list",
            member = { type = "string" },
        },
        JobBookmarkKeysSortOrder = {
            type = "string",
        },
        DataTypeMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.JDBCConnectorSource = {
    type = "structure",
    id = "JDBCConnectorSource",
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
        AdditionalOptions = M.JDBCConnectorOptions,
        ConnectionTable = {
            type = "string",
        },
        Query = {
            type = "string",
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.JDBCConnectorTarget = {
    type = "structure",
    id = "JDBCConnectorTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.JoinColumn = {
    type = "structure",
    id = "JoinColumn",
    members = {
        From = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keys = {
            type = "list",
            member = { type = "list" },
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
    id = "Join",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = M.JoinColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.Merge = {
    type = "structure",
    id = "Merge",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.MicrosoftSQLServerCatalogSource = {
    type = "structure",
    id = "MicrosoftSQLServerCatalogSource",
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
    id = "MicrosoftSQLServerCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "MySQLCatalogSource",
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
    id = "MySQLCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "OracleSQLCatalogSource",
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
    id = "OracleSQLCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "PIIDetection",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        OutputColumnName = {
            type = "string",
        },
        SampleFraction = {
            type = "double",
        },
        ThresholdFraction = {
            type = "double",
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
            type = "integer",
        },
        NumRightCharsToExclude = {
            type = "integer",
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
    id = "PostgreSQLCatalogSource",
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
    id = "PostgreSQLCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "RecipeReference",
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
    id = "RecipeAction",
    members = {
        Operation = {
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
    },
}

M.ConditionExpression = {
    type = "structure",
    id = "ConditionExpression",
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
    id = "RecipeStep",
    members = {
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecipeAction }),
        ConditionExpressions = {
            type = "list",
            member = M.ConditionExpression,
        },
    },
}

M.Recipe = {
    type = "structure",
    id = "Recipe",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RecipeReference = M.RecipeReference,
        RecipeSteps = {
            type = "list",
            member = M.RecipeStep,
        },
    },
}

M.RedshiftSource = {
    type = "structure",
    id = "RedshiftSource",
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
    id = "UpsertRedshiftTargetOptions",
    members = {
        TableLocation = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
        },
        UpsertKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RedshiftTarget = {
    type = "structure",
    id = "RedshiftTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
        UpsertRedshiftOptions = M.UpsertRedshiftTargetOptions,
    },
}

M.RelationalCatalogSource = {
    type = "structure",
    id = "RelationalCatalogSource",
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
    id = "RenameField",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SourcePath = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetPath = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GroupFilters = {
    type = "structure",
    id = "GroupFilters",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.FilterExpression,
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
    id = "Route",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        GroupFiltersList = {
            type = "list",
            member = M.GroupFilters,
            traits = {
                required = true,
            },
        },
    },
}

M.S3CatalogDeltaSource = {
    type = "structure",
    id = "S3CatalogDeltaSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3CatalogHudiSource = {
    type = "structure",
    id = "S3CatalogHudiSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3CatalogIcebergSource = {
    type = "structure",
    id = "S3CatalogIcebergSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3CatalogSource = {
    type = "structure",
    id = "S3CatalogSource",
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
        AdditionalOptions = M.S3SourceAdditionalOptions,
    },
}

M.S3CatalogTarget = {
    type = "structure",
    id = "S3CatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
        SchemaChangePolicy = M.CatalogSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
    },
}

M.S3DirectSourceAdditionalOptions = {
    type = "structure",
    id = "S3DirectSourceAdditionalOptions",
    members = {
        BoundedSize = {
            type = "long",
        },
        BoundedFiles = {
            type = "long",
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
    id = "S3CsvSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        MaxFilesInBand = {
            type = "integer",
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
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
            traits = {
                default = false,
            },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3DeltaCatalogTarget = {
    type = "structure",
    id = "S3DeltaCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SchemaChangePolicy = M.CatalogSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
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
    id = "DirectSchemaChangePolicy",
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
    id = "S3DeltaDirectTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
    },
}

M.S3DeltaSource = {
    type = "structure",
    id = "S3DeltaSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AdditionalDeltaOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3DirectTarget = {
    type = "structure",
    id = "S3DirectTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
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
    id = "S3ExcelSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        MaxFilesInBand = {
            type = "integer",
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
        NumberRows = {
            type = "long",
        },
        SkipFooter = {
            type = "integer",
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3GlueParquetTarget = {
    type = "structure",
    id = "S3GlueParquetTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
    },
}

M.S3HudiCatalogTarget = {
    type = "structure",
    id = "S3HudiCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = M.CatalogSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
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
    id = "S3HudiDirectTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "list" },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
    },
}

M.S3HudiSource = {
    type = "structure",
    id = "S3HudiSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AdditionalHudiOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.HyperTargetCompressionType = {
    UNCOMPRESSED = "uncompressed",
}

M.S3HyperDirectTarget = {
    type = "structure",
    id = "S3HyperDirectTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3IcebergCatalogTarget = {
    type = "structure",
    id = "S3IcebergCatalogTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SchemaChangePolicy = M.CatalogSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
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
    id = "S3IcebergDirectTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionKeys = {
            type = "list",
            member = { type = "list" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SchemaChangePolicy = M.DirectSchemaChangePolicy,
        AutoDataQuality = M.AutoDataQuality,
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
            member = M.GlueSchema,
        },
    },
}

M.S3JsonSource = {
    type = "structure",
    id = "S3JsonSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        MaxFilesInBand = {
            type = "integer",
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
        JsonPath = {
            type = "string",
        },
        Multiline = {
            type = "boolean",
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.S3ParquetSource = {
    type = "structure",
    id = "S3ParquetSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CompressionType = {
            type = "string",
        },
        Exclusions = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        MaxFilesInBand = {
            type = "integer",
        },
        AdditionalOptions = M.S3DirectSourceAdditionalOptions,
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.SelectFields = {
    type = "structure",
    id = "SelectFields",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.SelectFromCollection = {
    type = "structure",
    id = "SelectFromCollection",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Index = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.SnowflakeNodeData = {
    type = "structure",
    id = "SnowflakeNodeData",
    members = {
        SourceType = {
            type = "string",
        },
        Connection = M.Option,
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
        IamRole = M.Option,
        AdditionalOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            traits = {
                default = false,
            },
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
            member = M.Option,
        },
        AutoPushdown = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TableSchema = {
            type = "list",
            member = M.Option,
        },
    },
}

M.SnowflakeSource = {
    type = "structure",
    id = "SnowflakeSource",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnowflakeNodeData }),
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.SnowflakeTarget = {
    type = "structure",
    id = "SnowflakeTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnowflakeNodeData }),
        Inputs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SparkConnectorSource = {
    type = "structure",
    id = "SparkConnectorSource",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.SparkConnectorTarget = {
    type = "structure",
    id = "SparkConnectorTarget",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.SqlAlias = {
    type = "structure",
    id = "SqlAlias",
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
    id = "SparkSQL",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            member = M.SqlAlias,
            traits = {
                required = true,
            },
        },
        OutputSchemas = {
            type = "list",
            member = M.GlueSchema,
        },
    },
}

M.Spigot = {
    type = "structure",
    id = "Spigot",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
        Prob = {
            type = "double",
        },
    },
}

M.SplitFields = {
    type = "structure",
    id = "SplitFields",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "list" },
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
    id = "Union",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
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
    id = "JobCommand",
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
    id = "ConnectionsList",
    members = {
        Connections = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExecutionClass = {
    FLEX = "FLEX",
    STANDARD = "STANDARD",
}

M.ExecutionProperty = {
    type = "structure",
    id = "ExecutionProperty",
    members = {
        MaxConcurrentRuns = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "SourceControlDetails",
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
    id = "QuerySessionContext",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BatchGetPartitionInput = {
    type = "structure",
    id = "BatchGetPartitionInput",
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
            member = M.PartitionValueList,
            traits = {
                required = true,
            },
        },
        AuditContext = M.AuditContext,
        QuerySessionContext = M.QuerySessionContext,
    },
}

M.Partition = {
    type = "structure",
    id = "Partition",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
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
        StorageDescriptor = M.StorageDescriptor,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "BatchGetPartitionOutput",
    members = {
        Partitions = {
            type = "list",
            member = M.Partition,
        },
        UnprocessedKeys = {
            type = "list",
            member = M.PartitionValueList,
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
    id = "FederationSourceException",
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
    id = "FederationSourceRetryableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
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
    id = "BatchGetTableOptimizerEntry",
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
    id = "BatchGetTableOptimizerInput",
    members = {
        Entries = {
            type = "list",
            member = M.BatchGetTableOptimizerEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTableOptimizerError = {
    type = "structure",
    id = "BatchGetTableOptimizerError",
    members = {
        error = M.ErrorDetail,
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
    id = "IcebergCompactionConfiguration",
    members = {
        strategy = {
            type = "string",
        },
        minInputFiles = {
            type = "integer",
        },
        deleteFileThreshold = {
            type = "integer",
        },
    },
}

M.CompactionConfiguration = {
    type = "structure",
    id = "CompactionConfiguration",
    members = {
        icebergConfiguration = M.IcebergCompactionConfiguration,
    },
}

M.IcebergOrphanFileDeletionConfiguration = {
    type = "structure",
    id = "IcebergOrphanFileDeletionConfiguration",
    members = {
        orphanFileRetentionPeriodInDays = {
            type = "integer",
        },
        location = {
            type = "string",
        },
        runRateInHours = {
            type = "integer",
        },
    },
}

M.OrphanFileDeletionConfiguration = {
    type = "structure",
    id = "OrphanFileDeletionConfiguration",
    members = {
        icebergConfiguration = M.IcebergOrphanFileDeletionConfiguration,
    },
}

M.IcebergRetentionConfiguration = {
    type = "structure",
    id = "IcebergRetentionConfiguration",
    members = {
        snapshotRetentionPeriodInDays = {
            type = "integer",
        },
        numberOfSnapshotsToRetain = {
            type = "integer",
        },
        cleanExpiredFiles = {
            type = "boolean",
        },
        runRateInHours = {
            type = "integer",
        },
    },
}

M.RetentionConfiguration = {
    type = "structure",
    id = "RetentionConfiguration",
    members = {
        icebergConfiguration = M.IcebergRetentionConfiguration,
    },
}

M.TableOptimizerVpcConfiguration = {
    type = "union",
    id = "TableOptimizerVpcConfiguration",
    members = {
        glueConnectionName = {
            type = "string",
        },
    },
}

M.TableOptimizerConfiguration = {
    type = "structure",
    id = "TableOptimizerConfiguration",
    members = {
        roleArn = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        vpcConfiguration = M.TableOptimizerVpcConfiguration,
        compactionConfiguration = M.CompactionConfiguration,
        retentionConfiguration = M.RetentionConfiguration,
        orphanFileDeletionConfiguration = M.OrphanFileDeletionConfiguration,
    },
}

M.ConfigurationSource = {
    CATALOG = "catalog",
    TABLE = "table",
}

M.IcebergCompactionMetrics = {
    type = "structure",
    id = "IcebergCompactionMetrics",
    members = {
        NumberOfBytesCompacted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfFilesCompacted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DpuHours = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NumberOfDpus = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobDurationInHour = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.CompactionMetrics = {
    type = "structure",
    id = "CompactionMetrics",
    members = {
        IcebergMetrics = M.IcebergCompactionMetrics,
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
    id = "RunMetrics",
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
    id = "IcebergOrphanFileDeletionMetrics",
    members = {
        NumberOfOrphanFilesDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DpuHours = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NumberOfDpus = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobDurationInHour = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.OrphanFileDeletionMetrics = {
    type = "structure",
    id = "OrphanFileDeletionMetrics",
    members = {
        IcebergMetrics = M.IcebergOrphanFileDeletionMetrics,
    },
}

M.IcebergRetentionMetrics = {
    type = "structure",
    id = "IcebergRetentionMetrics",
    members = {
        NumberOfDataFilesDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfManifestFilesDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfManifestListsDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DpuHours = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NumberOfDpus = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        JobDurationInHour = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.RetentionMetrics = {
    type = "structure",
    id = "RetentionMetrics",
    members = {
        IcebergMetrics = M.IcebergRetentionMetrics,
    },
}

M.TableOptimizerRun = {
    type = "structure",
    id = "TableOptimizerRun",
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
        metrics = M.RunMetrics,
        error = {
            type = "string",
        },
        compactionMetrics = M.CompactionMetrics,
        compactionStrategy = {
            type = "string",
        },
        retentionMetrics = M.RetentionMetrics,
        orphanFileDeletionMetrics = M.OrphanFileDeletionMetrics,
    },
}

M.TableOptimizer = {
    type = "structure",
    id = "TableOptimizer",
    members = {
        type = {
            type = "string",
        },
        configuration = M.TableOptimizerConfiguration,
        lastRun = M.TableOptimizerRun,
        configurationSource = {
            type = "string",
        },
    },
}

M.BatchTableOptimizer = {
    type = "structure",
    id = "BatchTableOptimizer",
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
        tableOptimizer = M.TableOptimizer,
    },
}

M.BatchGetTableOptimizerOutput = {
    type = "structure",
    id = "BatchGetTableOptimizerOutput",
    members = {
        TableOptimizers = {
            type = "list",
            member = M.BatchTableOptimizer,
        },
        Failures = {
            type = "list",
            member = M.BatchGetTableOptimizerError,
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchGetTriggersInput = {
    type = "structure",
    id = "BatchGetTriggersInput",
    members = {
        TriggerNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EventBatchingCondition = {
    type = "structure",
    id = "EventBatchingCondition",
    members = {
        BatchSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        BatchWindow = {
            type = "integer",
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
    id = "Condition",
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
    id = "Predicate",
    members = {
        Logical = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member = M.Condition,
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
    id = "Trigger",
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
            member = M.Action,
        },
        Predicate = M.Predicate,
        EventBatchingCondition = M.EventBatchingCondition,
    },
}

M.BatchGetTriggersOutput = {
    type = "structure",
    id = "BatchGetTriggersOutput",
    members = {
        Triggers = {
            type = "list",
            member = M.Trigger,
        },
        TriggersNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetWorkflowsInput = {
    type = "structure",
    id = "BatchGetWorkflowsInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
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
    id = "BlueprintDetails",
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
    id = "Edge",
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
    id = "Crawl",
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
    id = "CrawlerNodeDetails",
    members = {
        Crawls = {
            type = "list",
            member = M.Crawl,
        },
    },
}

M.Predecessor = {
    type = "structure",
    id = "Predecessor",
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
    id = "JobRun",
    members = {
        Id = {
            type = "string",
        },
        Attempt = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ErrorMessage = {
            type = "string",
        },
        PredecessorRuns = {
            type = "list",
            member = M.Predecessor,
        },
        AllocatedCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ExecutionTime = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Timeout = {
            type = "integer",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        SecurityConfiguration = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        NotificationProperty = M.NotificationProperty,
        GlueVersion = {
            type = "string",
        },
        DPUSeconds = {
            type = "double",
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
    id = "JobNodeDetails",
    members = {
        JobRuns = {
            type = "list",
            member = M.JobRun,
        },
    },
}

M.TriggerNodeDetails = {
    type = "structure",
    id = "TriggerNodeDetails",
    members = {
        Trigger = M.Trigger,
    },
}

M.NodeType = {
    CRAWLER = "CRAWLER",
    JOB = "JOB",
    TRIGGER = "TRIGGER",
}

M.Node = {
    type = "structure",
    id = "Node",
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
        TriggerDetails = M.TriggerNodeDetails,
        JobDetails = M.JobNodeDetails,
        CrawlerDetails = M.CrawlerNodeDetails,
    },
}

M.WorkflowGraph = {
    type = "structure",
    id = "WorkflowGraph",
    members = {
        Nodes = {
            type = "list",
            member = M.Node,
        },
        Edges = {
            type = "list",
            member = M.Edge,
        },
    },
}

M.StartingEventBatchCondition = {
    type = "structure",
    id = "StartingEventBatchCondition",
    members = {
        BatchSize = {
            type = "integer",
        },
        BatchWindow = {
            type = "integer",
        },
    },
}

M.WorkflowRunStatistics = {
    type = "structure",
    id = "WorkflowRunStatistics",
    members = {
        TotalActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TimeoutActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FailedActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StoppedActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SucceededActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RunningActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ErroredActions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WaitingActions = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "WorkflowRun",
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
            key = { type = "string" },
            value = { type = "string" },
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
        Statistics = M.WorkflowRunStatistics,
        Graph = M.WorkflowGraph,
        StartingEventBatchCondition = M.StartingEventBatchCondition,
    },
}

M.Workflow = {
    type = "structure",
    id = "Workflow",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRunProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedOn = {
            type = "timestamp",
        },
        LastModifiedOn = {
            type = "timestamp",
        },
        LastRun = M.WorkflowRun,
        Graph = M.WorkflowGraph,
        MaxConcurrentRuns = {
            type = "integer",
        },
        BlueprintDetails = M.BlueprintDetails,
    },
}

M.BatchGetWorkflowsOutput = {
    type = "structure",
    id = "BatchGetWorkflowsOutput",
    members = {
        Workflows = {
            type = "list",
            member = M.Workflow,
        },
        MissingWorkflows = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DatapointInclusionAnnotation = {
    type = "structure",
    id = "DatapointInclusionAnnotation",
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
    id = "BatchPutDataQualityStatisticAnnotationInput",
    members = {
        InclusionAnnotations = {
            type = "list",
            member = M.DatapointInclusionAnnotation,
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
    id = "BatchPutDataQualityStatisticAnnotationOutput",
    members = {
        FailedInclusionAnnotations = {
            type = "list",
            member = M.AnnotationError,
        },
    },
}

M.BatchStopJobRunInput = {
    type = "structure",
    id = "BatchStopJobRunInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobRunIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchStopJobRunError = {
    type = "structure",
    id = "BatchStopJobRunError",
    members = {
        JobName = {
            type = "string",
        },
        JobRunId = {
            type = "string",
        },
        ErrorDetail = M.ErrorDetail,
    },
}

M.BatchStopJobRunSuccessfulSubmission = {
    type = "structure",
    id = "BatchStopJobRunSuccessfulSubmission",
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
    id = "BatchStopJobRunOutput",
    members = {
        SuccessfulSubmissions = {
            type = "list",
            member = M.BatchStopJobRunSuccessfulSubmission,
        },
        Errors = {
            type = "list",
            member = M.BatchStopJobRunError,
        },
    },
}

M.BatchUpdatePartitionRequestEntry = {
    type = "structure",
    id = "BatchUpdatePartitionRequestEntry",
    members = {
        PartitionValueList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartitionInput }),
    },
}

M.BatchUpdatePartitionInput = {
    type = "structure",
    id = "BatchUpdatePartitionInput",
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
            member = M.BatchUpdatePartitionRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdatePartitionFailureEntry = {
    type = "structure",
    id = "BatchUpdatePartitionFailureEntry",
    members = {
        PartitionValueList = {
            type = "list",
            member = { type = "string" },
        },
        ErrorDetail = M.ErrorDetail,
    },
}

M.BatchUpdatePartitionOutput = {
    type = "structure",
    id = "BatchUpdatePartitionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.BatchUpdatePartitionFailureEntry,
        },
    },
}

M.CancelDataQualityRuleRecommendationRunInput = {
    type = "structure",
    id = "CancelDataQualityRuleRecommendationRunInput",
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
    id = "CancelDataQualityRuleRecommendationRunOutput",
}

M.CancelDataQualityRulesetEvaluationRunInput = {
    type = "structure",
    id = "CancelDataQualityRulesetEvaluationRunInput",
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
    id = "CancelDataQualityRulesetEvaluationRunOutput",
}

M.CancelMLTaskRunInput = {
    type = "structure",
    id = "CancelMLTaskRunInput",
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
    id = "CancelMLTaskRunOutput",
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
    id = "CancelStatementInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "CancelStatementOutput",
}

M.IllegalSessionStateException = {
    type = "structure",
    id = "IllegalSessionStateException",
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
    id = "CheckSchemaVersionValidityInput",
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
    id = "CheckSchemaVersionValidityOutput",
    members = {
        Valid = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Error = {
            type = "string",
        },
    },
}

M.CreateBlueprintInput = {
    type = "structure",
    id = "CreateBlueprintInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateBlueprintOutput = {
    type = "structure",
    id = "CreateBlueprintOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataLakeAccessProperties = {
    type = "structure",
    id = "DataLakeAccessProperties",
    members = {
        DataLakeAccess = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "IcebergOptimizationProperties",
    members = {
        RoleArn = {
            type = "string",
        },
        Compaction = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Retention = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OrphanFileDeletion = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CatalogProperties = {
    type = "structure",
    id = "CatalogProperties",
    members = {
        DataLakeAccessProperties = M.DataLakeAccessProperties,
        IcebergOptimizationProperties = M.IcebergOptimizationProperties,
        CustomProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DataLakePrincipal",
    members = {
        DataLakePrincipalIdentifier = {
            type = "string",
        },
    },
}

M.PrincipalPermissions = {
    type = "structure",
    id = "PrincipalPermissions",
    members = {
        Principal = M.DataLakePrincipal,
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FederatedCatalog = {
    type = "structure",
    id = "FederatedCatalog",
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
    id = "TargetRedshiftCatalog",
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
    id = "CatalogInput",
    members = {
        Description = {
            type = "string",
        },
        FederatedCatalog = M.FederatedCatalog,
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TargetRedshiftCatalog = M.TargetRedshiftCatalog,
        CatalogProperties = M.CatalogProperties,
        CreateTableDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        CreateDatabaseDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
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
    id = "CreateCatalogInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CatalogInput }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCatalogOutput = {
    type = "structure",
    id = "CreateCatalogOutput",
}

M.FederatedResourceAlreadyExistsException = {
    type = "structure",
    id = "FederatedResourceAlreadyExistsException",
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
    id = "CreateCsvClassifierRequest",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        Serde = {
            type = "string",
        },
    },
}

M.CreateGrokClassifierRequest = {
    type = "structure",
    id = "CreateGrokClassifierRequest",
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
    id = "CreateJsonClassifierRequest",
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
    id = "CreateXMLClassifierRequest",
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
    id = "CreateClassifierInput",
    members = {
        GrokClassifier = M.CreateGrokClassifierRequest,
        XMLClassifier = M.CreateXMLClassifierRequest,
        JsonClassifier = M.CreateJsonClassifierRequest,
        CsvClassifier = M.CreateCsvClassifierRequest,
    },
}

M.CreateClassifierOutput = {
    type = "structure",
    id = "CreateClassifierOutput",
}

M.ColumnStatisticsTaskRunningException = {
    type = "structure",
    id = "ColumnStatisticsTaskRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateColumnStatisticsTaskSettingsInput = {
    type = "structure",
    id = "CreateColumnStatisticsTaskSettingsInput",
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
            member = { type = "string" },
        },
        SampleSize = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        CatalogID = {
            type = "string",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateColumnStatisticsTaskSettingsOutput = {
    type = "structure",
    id = "CreateColumnStatisticsTaskSettingsOutput",
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
    id = "PhysicalConnectionRequirements",
    members = {
        SubnetId = {
            type = "string",
        },
        SecurityGroupIdList = {
            type = "list",
            member = { type = "string" },
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
    id = "ConnectionInput",
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
            member = { type = "string" },
        },
        ConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        SparkProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AthenaProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PythonProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PhysicalConnectionRequirements = M.PhysicalConnectionRequirements,
        AuthenticationConfiguration = M.AuthenticationConfigurationInput,
        ValidateCredentials = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ValidateForComputeEnvironments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
    members = {
        CatalogId = {
            type = "string",
        },
        ConnectionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionInput }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateConnectionOutput",
    members = {
        CreateConnectionStatus = {
            type = "string",
        },
    },
}

M.CreateCrawlerInput = {
    type = "structure",
    id = "CreateCrawlerInput",
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
        Targets = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrawlerTargets }),
        Schedule = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member = { type = "string" },
        },
        TablePrefix = {
            type = "string",
        },
        SchemaChangePolicy = M.SchemaChangePolicy,
        RecrawlPolicy = M.RecrawlPolicy,
        LineageConfiguration = M.LineageConfiguration,
        LakeFormationConfiguration = M.LakeFormationConfiguration,
        Configuration = {
            type = "string",
        },
        CrawlerSecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCrawlerOutput = {
    type = "structure",
    id = "CreateCrawlerOutput",
}

M.CreateCustomEntityTypeInput = {
    type = "structure",
    id = "CreateCustomEntityTypeInput",
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
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCustomEntityTypeOutput = {
    type = "structure",
    id = "CreateCustomEntityTypeOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FederatedDatabase = {
    type = "structure",
    id = "FederatedDatabase",
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
    id = "DatabaseIdentifier",
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
    id = "DatabaseInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        TargetDatabase = M.DatabaseIdentifier,
        FederatedDatabase = M.FederatedDatabase,
    },
}

M.CreateDatabaseInput = {
    type = "structure",
    id = "CreateDatabaseInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DatabaseInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseInput }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDatabaseOutput = {
    type = "structure",
    id = "CreateDatabaseOutput",
}

M.DataQualityTargetTable = {
    type = "structure",
    id = "DataQualityTargetTable",
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
    id = "CreateDataQualityRulesetInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        TargetTable = M.DataQualityTargetTable,
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
    id = "CreateDataQualityRulesetOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.CreateDevEndpointInput = {
    type = "structure",
    id = "CreateDevEndpointInput",
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
            member = { type = "string" },
        },
        SubnetId = {
            type = "string",
        },
        PublicKey = {
            type = "string",
        },
        PublicKeys = {
            type = "list",
            member = { type = "string" },
        },
        NumberOfNodes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkerType = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Arguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDevEndpointOutput = {
    type = "structure",
    id = "CreateDevEndpointOutput",
    members = {
        EndpointName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NumberOfNodes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        WorkerType = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGlueIdentityCenterConfigurationInput = {
    type = "structure",
    id = "CreateGlueIdentityCenterConfigurationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scopes = {
            type = "list",
            member = { type = "string" },
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "CreateGlueIdentityCenterConfigurationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationConfig = {
    type = "structure",
    id = "IntegrationConfig",
    members = {
        RefreshInterval = {
            type = "string",
        },
        SourceProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ContinuousSync = {
            type = "boolean",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "CreateIntegrationInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IntegrationConfig = M.IntegrationConfig,
    },
}

M.IntegrationError = {
    type = "structure",
    id = "IntegrationError",
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
    id = "CreateIntegrationOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            member = M.IntegrationError,
        },
        DataFilter = {
            type = "string",
        },
        IntegrationConfig = M.IntegrationConfig,
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    id = "IntegrationConflictOperationFault",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    id = "IntegrationQuotaExceededFault",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    id = "KMSKeyNotAccessibleFault",
    error = "client",
    members = {
        Message = {
            type = "string",
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
    },
}

M.SourceProcessingProperties = {
    type = "structure",
    id = "SourceProcessingProperties",
    members = {
        RoleArn = {
            type = "string",
        },
    },
}

M.TargetProcessingProperties = {
    type = "structure",
    id = "TargetProcessingProperties",
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
    id = "CreateIntegrationResourcePropertyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateIntegrationResourcePropertyOutput = {
    type = "structure",
    id = "CreateIntegrationResourcePropertyOutput",
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
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
    },
}

M.SourceTableConfig = {
    type = "structure",
    id = "SourceTableConfig",
    members = {
        Fields = {
            type = "list",
            member = { type = "string" },
        },
        FilterPredicate = {
            type = "string",
        },
        PrimaryKey = {
            type = "list",
            member = { type = "string" },
        },
        RecordUpdateField = {
            type = "string",
        },
    },
}

M.IntegrationPartition = {
    type = "structure",
    id = "IntegrationPartition",
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
    id = "TargetTableConfig",
    members = {
        UnnestSpec = {
            type = "string",
        },
        PartitionSpec = {
            type = "list",
            member = M.IntegrationPartition,
        },
        TargetTableName = {
            type = "string",
        },
    },
}

M.CreateIntegrationTablePropertiesInput = {
    type = "structure",
    id = "CreateIntegrationTablePropertiesInput",
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
        SourceTableConfig = M.SourceTableConfig,
        TargetTableConfig = M.TargetTableConfig,
    },
}

M.CreateIntegrationTablePropertiesOutput = {
    type = "structure",
    id = "CreateIntegrationTablePropertiesOutput",
}

M.CreateJobOutput = {
    type = "structure",
    id = "CreateJobOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.FindMatchesParameters = {
    type = "structure",
    id = "FindMatchesParameters",
    members = {
        PrimaryKeyColumnName = {
            type = "string",
        },
        PrecisionRecallTradeoff = {
            type = "double",
        },
        AccuracyCostTradeoff = {
            type = "double",
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
    id = "TransformParameters",
    members = {
        TransformType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindMatchesParameters = M.FindMatchesParameters,
    },
}

M.MLUserDataEncryptionModeString = {
    DISABLED = "DISABLED",
    SSEKMS = "SSE-KMS",
}

M.MLUserDataEncryption = {
    type = "structure",
    id = "MLUserDataEncryption",
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
    id = "TransformEncryption",
    members = {
        MlUserDataEncryption = M.MLUserDataEncryption,
        TaskRunSecurityConfigurationName = {
            type = "string",
        },
    },
}

M.CreateMLTransformInput = {
    type = "structure",
    id = "CreateMLTransformInput",
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
            member = M.GlueTable,
            traits = {
                required = true,
            },
        },
        Parameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TransformParameters }),
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
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        MaxRetries = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TransformEncryption = M.TransformEncryption,
    },
}

M.CreateMLTransformOutput = {
    type = "structure",
    id = "CreateMLTransformOutput",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.CreatePartitionInput = {
    type = "structure",
    id = "CreatePartitionInput",
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
        PartitionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartitionInput }),
    },
}

M.CreatePartitionOutput = {
    type = "structure",
    id = "CreatePartitionOutput",
}

M.PartitionIndex = {
    type = "structure",
    id = "PartitionIndex",
    members = {
        Keys = {
            type = "list",
            member = { type = "string" },
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
    id = "CreatePartitionIndexInput",
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
        PartitionIndex = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartitionIndex }),
    },
}

M.CreatePartitionIndexOutput = {
    type = "structure",
    id = "CreatePartitionIndexOutput",
}

M.CreateRegistryInput = {
    type = "structure",
    id = "CreateRegistryInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRegistryOutput = {
    type = "structure",
    id = "CreateRegistryOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "RegistryId",
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
    id = "CreateSchemaInput",
    members = {
        RegistryId = M.RegistryId,
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreateSchemaOutput",
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
            type = "long",
        },
        LatestSchemaVersion = {
            type = "long",
        },
        NextSchemaVersion = {
            type = "long",
        },
        SchemaStatus = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CodeGenEdge",
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
    id = "CodeGenNodeArg",
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
            traits = {
                default = false,
            },
        },
    },
}

M.CodeGenNode = {
    type = "structure",
    id = "CodeGenNode",
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
            member = M.CodeGenNodeArg,
            traits = {
                required = true,
            },
        },
        LineNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.Language = {
    PYTHON = "PYTHON",
    SCALA = "SCALA",
}

M.CreateScriptInput = {
    type = "structure",
    id = "CreateScriptInput",
    members = {
        DagNodes = {
            type = "list",
            member = M.CodeGenNode,
        },
        DagEdges = {
            type = "list",
            member = M.CodeGenEdge,
        },
        Language = {
            type = "string",
        },
    },
}

M.CreateScriptOutput = {
    type = "structure",
    id = "CreateScriptOutput",
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
    id = "CloudWatchEncryption",
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
    id = "DataQualityEncryption",
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
    id = "JobBookmarksEncryption",
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
    id = "S3Encryption",
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
    id = "EncryptionConfiguration",
    members = {
        S3Encryption = {
            type = "list",
            member = M.S3Encryption,
        },
        CloudWatchEncryption = M.CloudWatchEncryption,
        JobBookmarksEncryption = M.JobBookmarksEncryption,
        DataQualityEncryption = M.DataQualityEncryption,
    },
}

M.CreateSecurityConfigurationInput = {
    type = "structure",
    id = "CreateSecurityConfigurationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
    },
}

M.CreateSecurityConfigurationOutput = {
    type = "structure",
    id = "CreateSecurityConfigurationOutput",
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
    id = "SessionCommand",
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
    id = "CreateSessionInput",
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
        Command = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionCommand }),
        Timeout = {
            type = "integer",
        },
        IdleTimeout = {
            type = "integer",
        },
        DefaultArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Connections = M.ConnectionsList,
        MaxCapacity = {
            type = "double",
        },
        NumberOfWorkers = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "Session",
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
        Command = M.SessionCommand,
        DefaultArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Connections = M.ConnectionsList,
        Progress = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MaxCapacity = {
            type = "double",
        },
        SecurityConfiguration = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        WorkerType = {
            type = "string",
        },
        CompletedOn = {
            type = "timestamp",
        },
        ExecutionTime = {
            type = "double",
        },
        DPUSeconds = {
            type = "double",
        },
        IdleTimeout = {
            type = "integer",
        },
        ProfileName = {
            type = "string",
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    id = "CreateSessionOutput",
    members = {
        Session = M.Session,
    },
}

M.IcebergPartitionField = {
    type = "structure",
    id = "IcebergPartitionField",
    members = {
        SourceId = {
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.IcebergPartitionSpec = {
    type = "structure",
    id = "IcebergPartitionSpec",
    members = {
        Fields = {
            type = "list",
            member = M.IcebergPartitionField,
            traits = {
                required = true,
            },
        },
        SpecId = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.IcebergStructField = {
    type = "structure",
    id = "IcebergStructField",
    members = {
        Id = {
            type = "integer",
            traits = {
                default = 0,
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
                default = false,
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
    id = "IcebergSchema",
    members = {
        SchemaId = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        IdentifierFieldIds = {
            type = "list",
            member = { type = "integer" },
        },
        Type = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.IcebergStructField,
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
    id = "IcebergSortField",
    members = {
        SourceId = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "IcebergSortOrder",
    members = {
        OrderId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Fields = {
            type = "list",
            member = M.IcebergSortField,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIcebergTableInput = {
    type = "structure",
    id = "CreateIcebergTableInput",
    members = {
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IcebergSchema }),
        PartitionSpec = M.IcebergPartitionSpec,
        WriteOrder = M.IcebergSortOrder,
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetadataOperation = {
    CREATE = "CREATE",
}

M.IcebergInput = {
    type = "structure",
    id = "IcebergInput",
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
        CreateIcebergTableInput = M.CreateIcebergTableInput,
    },
}

M.OpenTableFormatInput = {
    type = "structure",
    id = "OpenTableFormatInput",
    members = {
        IcebergInput = M.IcebergInput,
    },
}

M.TableIdentifier = {
    type = "structure",
    id = "TableIdentifier",
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
    id = "ViewRepresentationInput",
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
    id = "ViewDefinitionInput",
    members = {
        IsProtected = {
            type = "boolean",
        },
        Definer = {
            type = "string",
        },
        Representations = {
            type = "list",
            member = M.ViewRepresentationInput,
        },
        ViewVersionId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ViewVersionToken = {
            type = "string",
        },
        RefreshSeconds = {
            type = "long",
        },
        LastRefreshType = {
            type = "string",
        },
        SubObjects = {
            type = "list",
            member = { type = "string" },
        },
        SubObjectVersionIds = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.TableInput = {
    type = "structure",
    id = "TableInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StorageDescriptor = M.StorageDescriptor,
        PartitionKeys = {
            type = "list",
            member = M.Column,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        TargetTable = M.TableIdentifier,
        ViewDefinition = M.ViewDefinitionInput,
    },
}

M.CreateTableInput = {
    type = "structure",
    id = "CreateTableInput",
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
        TableInput = M.TableInput,
        PartitionIndexes = {
            type = "list",
            member = M.PartitionIndex,
        },
        TransactionId = {
            type = "string",
        },
        OpenTableFormatInput = M.OpenTableFormatInput,
    },
}

M.CreateTableOutput = {
    type = "structure",
    id = "CreateTableOutput",
}

M.CreateTableOptimizerInput = {
    type = "structure",
    id = "CreateTableOptimizerInput",
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
        TableOptimizerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableOptimizerConfiguration }),
    },
}

M.CreateTableOptimizerOutput = {
    type = "structure",
    id = "CreateTableOptimizerOutput",
}

M.CreateTriggerInput = {
    type = "structure",
    id = "CreateTriggerInput",
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
        Predicate = M.Predicate,
        Actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        StartOnCreation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EventBatchingCondition = M.EventBatchingCondition,
    },
}

M.CreateTriggerOutput = {
    type = "structure",
    id = "CreateTriggerOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.ConfigurationObject = {
    type = "structure",
    id = "ConfigurationObject",
    members = {
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "list",
            member = { type = "string" },
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
    id = "ProfileConfiguration",
    members = {
        SessionConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.ConfigurationObject,
        },
        JobConfiguration = {
            type = "map",
            key = { type = "string" },
            value = M.ConfigurationObject,
        },
    },
}

M.CreateUsageProfileInput = {
    type = "structure",
    id = "CreateUsageProfileInput",
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
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProfileConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUsageProfileOutput = {
    type = "structure",
    id = "CreateUsageProfileOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    id = "OperationNotSupportedException",
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
    id = "ResourceUri",
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
    id = "UserDefinedFunctionInput",
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
            member = M.ResourceUri,
        },
    },
}

M.CreateUserDefinedFunctionInput = {
    type = "structure",
    id = "CreateUserDefinedFunctionInput",
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
        FunctionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDefinedFunctionInput }),
    },
}

M.CreateUserDefinedFunctionOutput = {
    type = "structure",
    id = "CreateUserDefinedFunctionOutput",
}

M.CreateWorkflowInput = {
    type = "structure",
    id = "CreateWorkflowInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxConcurrentRuns = {
            type = "integer",
        },
    },
}

M.CreateWorkflowOutput = {
    type = "structure",
    id = "CreateWorkflowOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteBlueprintInput = {
    type = "structure",
    id = "DeleteBlueprintInput",
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
    id = "DeleteBlueprintOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteCatalogInput = {
    type = "structure",
    id = "DeleteCatalogInput",
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
    id = "DeleteCatalogOutput",
}

M.DeleteClassifierInput = {
    type = "structure",
    id = "DeleteClassifierInput",
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
    id = "DeleteClassifierOutput",
}

M.DeleteColumnStatisticsForPartitionInput = {
    type = "structure",
    id = "DeleteColumnStatisticsForPartitionInput",
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
            member = { type = "string" },
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
    id = "DeleteColumnStatisticsForPartitionOutput",
}

M.DeleteColumnStatisticsForTableInput = {
    type = "structure",
    id = "DeleteColumnStatisticsForTableInput",
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
    id = "DeleteColumnStatisticsForTableOutput",
}

M.DeleteColumnStatisticsTaskSettingsInput = {
    type = "structure",
    id = "DeleteColumnStatisticsTaskSettingsInput",
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
    id = "DeleteColumnStatisticsTaskSettingsOutput",
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
}

M.DeleteConnectionTypeInput = {
    type = "structure",
    id = "DeleteConnectionTypeInput",
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
    id = "DeleteConnectionTypeOutput",
}

M.CrawlerRunningException = {
    type = "structure",
    id = "CrawlerRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCrawlerInput = {
    type = "structure",
    id = "DeleteCrawlerInput",
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
    id = "DeleteCrawlerOutput",
}

M.SchedulerTransitioningException = {
    type = "structure",
    id = "SchedulerTransitioningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCustomEntityTypeInput = {
    type = "structure",
    id = "DeleteCustomEntityTypeInput",
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
    id = "DeleteCustomEntityTypeOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteDatabaseInput = {
    type = "structure",
    id = "DeleteDatabaseInput",
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
    id = "DeleteDatabaseOutput",
}

M.DeleteDataQualityRulesetInput = {
    type = "structure",
    id = "DeleteDataQualityRulesetInput",
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
    id = "DeleteDataQualityRulesetOutput",
}

M.DeleteDevEndpointInput = {
    type = "structure",
    id = "DeleteDevEndpointInput",
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
    id = "DeleteDevEndpointOutput",
}

M.DeleteGlueIdentityCenterConfigurationInput = {
    type = "structure",
    id = "DeleteGlueIdentityCenterConfigurationInput",
}

M.DeleteGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "DeleteGlueIdentityCenterConfigurationOutput",
}

M.DeleteIntegrationInput = {
    type = "structure",
    id = "DeleteIntegrationInput",
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
    id = "DeleteIntegrationOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            member = M.IntegrationError,
        },
        DataFilter = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    id = "IntegrationNotFoundFault",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidIntegrationStateFault = {
    type = "structure",
    id = "InvalidIntegrationStateFault",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteIntegrationResourcePropertyInput = {
    type = "structure",
    id = "DeleteIntegrationResourcePropertyInput",
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
    id = "DeleteIntegrationResourcePropertyOutput",
}

M.DeleteIntegrationTablePropertiesInput = {
    type = "structure",
    id = "DeleteIntegrationTablePropertiesInput",
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
    id = "DeleteIntegrationTablePropertiesOutput",
}

M.DeleteJobInput = {
    type = "structure",
    id = "DeleteJobInput",
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
    id = "DeleteJobOutput",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.DeleteMLTransformInput = {
    type = "structure",
    id = "DeleteMLTransformInput",
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
    id = "DeleteMLTransformOutput",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.DeletePartitionInput = {
    type = "structure",
    id = "DeletePartitionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePartitionOutput = {
    type = "structure",
    id = "DeletePartitionOutput",
}

M.DeletePartitionIndexInput = {
    type = "structure",
    id = "DeletePartitionIndexInput",
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
    id = "DeletePartitionIndexOutput",
}

M.DeleteRegistryInput = {
    type = "structure",
    id = "DeleteRegistryInput",
    members = {
        RegistryId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryId }),
    },
}

M.RegistryStatus = {
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
}

M.DeleteRegistryOutput = {
    type = "structure",
    id = "DeleteRegistryOutput",
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
    id = "ConditionCheckFailureException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DeleteSchemaInput = {
    type = "structure",
    id = "DeleteSchemaInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
    },
}

M.DeleteSchemaOutput = {
    type = "structure",
    id = "DeleteSchemaOutput",
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
    id = "DeleteSchemaVersionsInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
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
    id = "ErrorDetails",
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
    id = "SchemaVersionErrorItem",
    members = {
        VersionNumber = {
            type = "long",
        },
        ErrorDetails = M.ErrorDetails,
    },
}

M.DeleteSchemaVersionsOutput = {
    type = "structure",
    id = "DeleteSchemaVersionsOutput",
    members = {
        SchemaVersionErrors = {
            type = "list",
            member = M.SchemaVersionErrorItem,
        },
    },
}

M.DeleteSecurityConfigurationInput = {
    type = "structure",
    id = "DeleteSecurityConfigurationInput",
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
    id = "DeleteSecurityConfigurationOutput",
}

M.DeleteSessionInput = {
    type = "structure",
    id = "DeleteSessionInput",
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
    id = "DeleteSessionOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteTableInput = {
    type = "structure",
    id = "DeleteTableInput",
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
    id = "DeleteTableOutput",
}

M.DeleteTableOptimizerInput = {
    type = "structure",
    id = "DeleteTableOptimizerInput",
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
    id = "DeleteTableOptimizerOutput",
}

M.DeleteTableVersionInput = {
    type = "structure",
    id = "DeleteTableVersionInput",
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
    id = "DeleteTableVersionOutput",
}

M.DeleteTriggerInput = {
    type = "structure",
    id = "DeleteTriggerInput",
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
    id = "DeleteTriggerOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DeleteUsageProfileInput = {
    type = "structure",
    id = "DeleteUsageProfileInput",
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
    id = "DeleteUsageProfileOutput",
}

M.DeleteUserDefinedFunctionInput = {
    type = "structure",
    id = "DeleteUserDefinedFunctionInput",
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
    id = "DeleteUserDefinedFunctionOutput",
}

M.DeleteWorkflowInput = {
    type = "structure",
    id = "DeleteWorkflowInput",
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
    id = "DeleteWorkflowOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DescribeConnectionTypeInput = {
    type = "structure",
    id = "DescribeConnectionTypeInput",
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
    id = "Capabilities",
    members = {
        SupportedAuthenticationTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportedDataOperations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportedComputeEnvironments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ComputeEnvironmentConfiguration = {
    type = "structure",
    id = "ComputeEnvironmentConfiguration",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConnectionOptions = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
            traits = {
                required = true,
            },
        },
        ConnectionPropertyNameOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConnectionOptionNameOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConnectionPropertiesRequiredOverrides = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
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
    id = "FieldDefinition",
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
    id = "ResponseExtractionMapping",
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
    id = "ExtractedParameter",
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
        Value = M.ResponseExtractionMapping,
    },
}

M.CursorConfiguration = {
    type = "structure",
    id = "CursorConfiguration",
    members = {
        NextPage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractedParameter }),
        LimitParameter = M.ExtractedParameter,
    },
}

M.OffsetConfiguration = {
    type = "structure",
    id = "OffsetConfiguration",
    members = {
        OffsetParameter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractedParameter }),
        LimitParameter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractedParameter }),
    },
}

M.PaginationConfiguration = {
    type = "structure",
    id = "PaginationConfiguration",
    members = {
        CursorConfiguration = M.CursorConfiguration,
        OffsetConfiguration = M.OffsetConfiguration,
    },
}

M.HTTPMethod = {
    GET = "GET",
    POST = "POST",
}

M.ConnectorProperty = {
    type = "structure",
    id = "ConnectorProperty",
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
            member = { type = "string" },
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
    id = "ResponseConfiguration",
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
    id = "SourceConfiguration",
    members = {
        RequestMethod = {
            type = "string",
        },
        RequestPath = {
            type = "string",
        },
        RequestParameters = {
            type = "list",
            member = M.ConnectorProperty,
        },
        ResponseConfiguration = M.ResponseConfiguration,
        PaginationConfiguration = M.PaginationConfiguration,
    },
}

M.EntityConfiguration = {
    type = "structure",
    id = "EntityConfiguration",
    members = {
        SourceConfiguration = M.SourceConfiguration,
        Schema = {
            type = "map",
            key = { type = "string" },
            value = M.FieldDefinition,
        },
    },
}

M.RestConfiguration = {
    type = "structure",
    id = "RestConfiguration",
    members = {
        GlobalSourceConfiguration = M.SourceConfiguration,
        ValidationEndpointConfiguration = M.SourceConfiguration,
        EntityConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.EntityConfiguration,
        },
    },
}

M.DescribeConnectionTypeOutput = {
    type = "structure",
    id = "DescribeConnectionTypeOutput",
    members = {
        ConnectionType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Capabilities = M.Capabilities,
        ConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        ConnectionOptions = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        AuthenticationConfiguration = M.AuthConfiguration,
        ComputeEnvironmentConfigurations = {
            type = "map",
            key = { type = "string" },
            value = M.ComputeEnvironmentConfiguration,
        },
        PhysicalConnectionRequirements = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        AthenaConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        PythonConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        SparkConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = M.Property,
        },
        RestConfiguration = M.RestConfiguration,
    },
}

M.DescribeEntityInput = {
    type = "structure",
    id = "DescribeEntityInput",
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
    id = "Field",
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
            member = { type = "string" },
        },
        SupportedFilterOperators = {
            type = "list",
            member = { type = "string" },
        },
        ParentField = {
            type = "string",
        },
        NativeDataType = {
            type = "string",
        },
        CustomProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeEntityOutput = {
    type = "structure",
    id = "DescribeEntityOutput",
    members = {
        Fields = {
            type = "list",
            member = M.Field,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInboundIntegrationsInput = {
    type = "structure",
    id = "DescribeInboundIntegrationsInput",
    members = {
        IntegrationArn = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        TargetArn = {
            type = "string",
        },
    },
}

M.InboundIntegration = {
    type = "structure",
    id = "InboundIntegration",
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
        IntegrationConfig = M.IntegrationConfig,
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
    },
}

M.DescribeInboundIntegrationsOutput = {
    type = "structure",
    id = "DescribeInboundIntegrationsOutput",
    members = {
        InboundIntegrations = {
            type = "list",
            member = M.InboundIntegration,
        },
        Marker = {
            type = "string",
        },
    },
}

M.TargetResourceNotFound = {
    type = "structure",
    id = "TargetResourceNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IntegrationFilter = {
    type = "structure",
    id = "IntegrationFilter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeIntegrationsInput = {
    type = "structure",
    id = "DescribeIntegrationsInput",
    members = {
        IntegrationIdentifier = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.IntegrationFilter,
        },
    },
}

M.Integration = {
    type = "structure",
    id = "Integration",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        IntegrationConfig = M.IntegrationConfig,
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
        DataFilter = {
            type = "string",
        },
    },
}

M.DescribeIntegrationsOutput = {
    type = "structure",
    id = "DescribeIntegrationsOutput",
    members = {
        Integrations = {
            type = "list",
            member = M.Integration,
        },
        Marker = {
            type = "string",
        },
    },
}

M.GetBlueprintInput = {
    type = "structure",
    id = "GetBlueprintInput",
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
    id = "GetBlueprintOutput",
    members = {
        Blueprint = M.Blueprint,
    },
}

M.GetBlueprintRunInput = {
    type = "structure",
    id = "GetBlueprintRunInput",
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
    id = "BlueprintRun",
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
    id = "GetBlueprintRunOutput",
    members = {
        BlueprintRun = M.BlueprintRun,
    },
}

M.GetBlueprintRunsInput = {
    type = "structure",
    id = "GetBlueprintRunsInput",
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
            type = "integer",
        },
    },
}

M.GetBlueprintRunsOutput = {
    type = "structure",
    id = "GetBlueprintRunsOutput",
    members = {
        BlueprintRuns = {
            type = "list",
            member = M.BlueprintRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCatalogInput = {
    type = "structure",
    id = "GetCatalogInput",
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
    id = "DataLakeAccessPropertiesOutput",
    members = {
        DataLakeAccess = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "IcebergOptimizationPropertiesOutput",
    members = {
        RoleArn = {
            type = "string",
        },
        Compaction = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Retention = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OrphanFileDeletion = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CatalogPropertiesOutput = {
    type = "structure",
    id = "CatalogPropertiesOutput",
    members = {
        DataLakeAccessProperties = M.DataLakeAccessPropertiesOutput,
        IcebergOptimizationProperties = M.IcebergOptimizationPropertiesOutput,
        CustomProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Catalog = {
    type = "structure",
    id = "Catalog",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        TargetRedshiftCatalog = M.TargetRedshiftCatalog,
        FederatedCatalog = M.FederatedCatalog,
        CatalogProperties = M.CatalogPropertiesOutput,
        CreateTableDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        CreateDatabaseDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        AllowFullTableExternalDataAccess = {
            type = "string",
        },
    },
}

M.GetCatalogOutput = {
    type = "structure",
    id = "GetCatalogOutput",
    members = {
        Catalog = M.Catalog,
    },
}

M.GetCatalogImportStatusInput = {
    type = "structure",
    id = "GetCatalogImportStatusInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.CatalogImportStatus = {
    type = "structure",
    id = "CatalogImportStatus",
    members = {
        ImportCompleted = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "GetCatalogImportStatusOutput",
    members = {
        ImportStatus = M.CatalogImportStatus,
    },
}

M.GetCatalogsInput = {
    type = "structure",
    id = "GetCatalogsInput",
    members = {
        ParentCatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Recursive = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeRoot = {
            type = "boolean",
        },
    },
}

M.GetCatalogsOutput = {
    type = "structure",
    id = "GetCatalogsOutput",
    members = {
        CatalogList = {
            type = "list",
            member = M.Catalog,
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
    id = "GetClassifierInput",
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
    id = "CsvClassifier",
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
            type = "long",
            traits = {
                default = 0,
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        Serde = {
            type = "string",
        },
    },
}

M.GrokClassifier = {
    type = "structure",
    id = "GrokClassifier",
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
            type = "long",
            traits = {
                default = 0,
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

M.JsonClassifier = {
    type = "structure",
    id = "JsonClassifier",
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
            type = "long",
            traits = {
                default = 0,
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

M.XMLClassifier = {
    type = "structure",
    id = "XMLClassifier",
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
            type = "long",
            traits = {
                default = 0,
            },
        },
        RowTag = {
            type = "string",
        },
    },
}

M.Classifier = {
    type = "structure",
    id = "Classifier",
    members = {
        GrokClassifier = M.GrokClassifier,
        XMLClassifier = M.XMLClassifier,
        JsonClassifier = M.JsonClassifier,
        CsvClassifier = M.CsvClassifier,
    },
}

M.GetClassifierOutput = {
    type = "structure",
    id = "GetClassifierOutput",
    members = {
        Classifier = M.Classifier,
    },
}

M.GetClassifiersInput = {
    type = "structure",
    id = "GetClassifiersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetClassifiersOutput = {
    type = "structure",
    id = "GetClassifiersOutput",
    members = {
        Classifiers = {
            type = "list",
            member = M.Classifier,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsForPartitionInput = {
    type = "structure",
    id = "GetColumnStatisticsForPartitionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ColumnNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BinaryColumnStatisticsData = {
    type = "structure",
    id = "BinaryColumnStatisticsData",
    members = {
        MaximumLength = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        AverageLength = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.BooleanColumnStatisticsData = {
    type = "structure",
    id = "BooleanColumnStatisticsData",
    members = {
        NumberOfTrues = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfFalses = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DateColumnStatisticsData = {
    type = "structure",
    id = "DateColumnStatisticsData",
    members = {
        MinimumValue = {
            type = "timestamp",
        },
        MaximumValue = {
            type = "timestamp",
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DecimalNumber = {
    type = "structure",
    id = "DecimalNumber",
    members = {
        UnscaledValue = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        Scale = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DecimalColumnStatisticsData = {
    type = "structure",
    id = "DecimalColumnStatisticsData",
    members = {
        MinimumValue = M.DecimalNumber,
        MaximumValue = M.DecimalNumber,
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DoubleColumnStatisticsData = {
    type = "structure",
    id = "DoubleColumnStatisticsData",
    members = {
        MinimumValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MaximumValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.LongColumnStatisticsData = {
    type = "structure",
    id = "LongColumnStatisticsData",
    members = {
        MinimumValue = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MaximumValue = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.StringColumnStatisticsData = {
    type = "structure",
    id = "StringColumnStatisticsData",
    members = {
        MaximumLength = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        AverageLength = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfNulls = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NumberOfDistinctValues = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ColumnStatisticsData",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BooleanColumnStatisticsData = M.BooleanColumnStatisticsData,
        DateColumnStatisticsData = M.DateColumnStatisticsData,
        DecimalColumnStatisticsData = M.DecimalColumnStatisticsData,
        DoubleColumnStatisticsData = M.DoubleColumnStatisticsData,
        LongColumnStatisticsData = M.LongColumnStatisticsData,
        StringColumnStatisticsData = M.StringColumnStatisticsData,
        BinaryColumnStatisticsData = M.BinaryColumnStatisticsData,
    },
}

M.ColumnStatistics = {
    type = "structure",
    id = "ColumnStatistics",
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
        StatisticsData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ColumnStatisticsData }),
    },
}

M.ColumnError = {
    type = "structure",
    id = "ColumnError",
    members = {
        ColumnName = {
            type = "string",
        },
        Error = M.ErrorDetail,
    },
}

M.GetColumnStatisticsForPartitionOutput = {
    type = "structure",
    id = "GetColumnStatisticsForPartitionOutput",
    members = {
        ColumnStatisticsList = {
            type = "list",
            member = M.ColumnStatistics,
        },
        Errors = {
            type = "list",
            member = M.ColumnError,
        },
    },
}

M.GetColumnStatisticsForTableInput = {
    type = "structure",
    id = "GetColumnStatisticsForTableInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetColumnStatisticsForTableOutput = {
    type = "structure",
    id = "GetColumnStatisticsForTableOutput",
    members = {
        ColumnStatisticsList = {
            type = "list",
            member = M.ColumnStatistics,
        },
        Errors = {
            type = "list",
            member = M.ColumnError,
        },
    },
}

M.GetColumnStatisticsTaskRunInput = {
    type = "structure",
    id = "GetColumnStatisticsTaskRunInput",
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
    id = "ColumnStatisticsTaskRun",
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
            member = { type = "string" },
        },
        CatalogID = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SampleSize = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SecurityConfiguration = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetColumnStatisticsTaskRunOutput = {
    type = "structure",
    id = "GetColumnStatisticsTaskRunOutput",
    members = {
        ColumnStatisticsTaskRun = M.ColumnStatisticsTaskRun,
    },
}

M.GetColumnStatisticsTaskRunsInput = {
    type = "structure",
    id = "GetColumnStatisticsTaskRunsInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsTaskRunsOutput = {
    type = "structure",
    id = "GetColumnStatisticsTaskRunsOutput",
    members = {
        ColumnStatisticsTaskRuns = {
            type = "list",
            member = M.ColumnStatisticsTaskRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetColumnStatisticsTaskSettingsInput = {
    type = "structure",
    id = "GetColumnStatisticsTaskSettingsInput",
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
    id = "ExecutionAttempt",
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
    id = "ColumnStatisticsTaskSettings",
    members = {
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Schedule = M.Schedule,
        ColumnNameList = {
            type = "list",
            member = { type = "string" },
        },
        CatalogID = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SampleSize = {
            type = "double",
            traits = {
                default = 0,
            },
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
        LastExecutionAttempt = M.ExecutionAttempt,
    },
}

M.GetColumnStatisticsTaskSettingsOutput = {
    type = "structure",
    id = "GetColumnStatisticsTaskSettingsOutput",
    members = {
        ColumnStatisticsTaskSettings = M.ColumnStatisticsTaskSettings,
    },
}

M.GetConnectionInput = {
    type = "structure",
    id = "GetConnectionInput",
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
            traits = {
                default = false,
            },
        },
        ApplyOverrideForComputeEnvironment = {
            type = "string",
        },
    },
}

M.Connection = {
    type = "structure",
    id = "Connection",
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
            member = { type = "string" },
        },
        ConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SparkProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AthenaProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PythonProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PhysicalConnectionRequirements = M.PhysicalConnectionRequirements,
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
        AuthenticationConfiguration = M.AuthenticationConfiguration,
        ConnectionSchemaVersion = {
            type = "integer",
        },
        CompatibleComputeEnvironments = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    id = "GetConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.GetConnectionsFilter = {
    type = "structure",
    id = "GetConnectionsFilter",
    members = {
        MatchCriteria = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionType = {
            type = "string",
        },
        ConnectionSchemaVersion = {
            type = "integer",
        },
    },
}

M.GetConnectionsInput = {
    type = "structure",
    id = "GetConnectionsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        Filter = M.GetConnectionsFilter,
        HidePassword = {
            type = "boolean",
            traits = {
                default = false,
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

M.GetConnectionsOutput = {
    type = "structure",
    id = "GetConnectionsOutput",
    members = {
        ConnectionList = {
            type = "list",
            member = M.Connection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCrawlerInput = {
    type = "structure",
    id = "GetCrawlerInput",
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
    id = "GetCrawlerOutput",
    members = {
        Crawler = M.Crawler,
    },
}

M.GetCrawlerMetricsInput = {
    type = "structure",
    id = "GetCrawlerMetricsInput",
    members = {
        CrawlerNameList = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CrawlerMetrics = {
    type = "structure",
    id = "CrawlerMetrics",
    members = {
        CrawlerName = {
            type = "string",
        },
        TimeLeftSeconds = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        StillEstimating = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastRuntimeSeconds = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MedianRuntimeSeconds = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TablesCreated = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesUpdated = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TablesDeleted = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetCrawlerMetricsOutput = {
    type = "structure",
    id = "GetCrawlerMetricsOutput",
    members = {
        CrawlerMetricsList = {
            type = "list",
            member = M.CrawlerMetrics,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCrawlersInput = {
    type = "structure",
    id = "GetCrawlersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCrawlersOutput = {
    type = "structure",
    id = "GetCrawlersOutput",
    members = {
        Crawlers = {
            type = "list",
            member = M.Crawler,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetCustomEntityTypeInput = {
    type = "structure",
    id = "GetCustomEntityTypeInput",
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
    id = "GetCustomEntityTypeOutput",
    members = {
        Name = {
            type = "string",
        },
        RegexString = {
            type = "string",
        },
        ContextWords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDatabaseInput = {
    type = "structure",
    id = "GetDatabaseInput",
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
        LocationUri = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreateTime = {
            type = "timestamp",
        },
        CreateTableDefaultPermissions = {
            type = "list",
            member = M.PrincipalPermissions,
        },
        TargetDatabase = M.DatabaseIdentifier,
        CatalogId = {
            type = "string",
        },
        FederatedDatabase = M.FederatedDatabase,
    },
}

M.GetDatabaseOutput = {
    type = "structure",
    id = "GetDatabaseOutput",
    members = {
        Database = M.Database,
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
    id = "GetDatabasesInput",
    members = {
        CatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResourceShareType = {
            type = "string",
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDatabasesOutput = {
    type = "structure",
    id = "GetDatabasesOutput",
    members = {
        DatabaseList = {
            type = "list",
            member = M.Database,
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
    id = "GetDataCatalogEncryptionSettingsInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.ConnectionPasswordEncryption = {
    type = "structure",
    id = "ConnectionPasswordEncryption",
    members = {
        ReturnConnectionPasswordEncrypted = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "EncryptionAtRest",
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
    id = "DataCatalogEncryptionSettings",
    members = {
        EncryptionAtRest = M.EncryptionAtRest,
        ConnectionPasswordEncryption = M.ConnectionPasswordEncryption,
    },
}

M.GetDataCatalogEncryptionSettingsOutput = {
    type = "structure",
    id = "GetDataCatalogEncryptionSettingsOutput",
    members = {
        DataCatalogEncryptionSettings = M.DataCatalogEncryptionSettings,
    },
}

M.GetDataflowGraphInput = {
    type = "structure",
    id = "GetDataflowGraphInput",
    members = {
        PythonScript = {
            type = "string",
        },
    },
}

M.GetDataflowGraphOutput = {
    type = "structure",
    id = "GetDataflowGraphOutput",
    members = {
        DagNodes = {
            type = "list",
            member = M.CodeGenNode,
        },
        DagEdges = {
            type = "list",
            member = M.CodeGenEdge,
        },
    },
}

M.GetDataQualityModelInput = {
    type = "structure",
    id = "GetDataQualityModelInput",
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
    id = "GetDataQualityModelOutput",
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
    id = "GetDataQualityModelResultInput",
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
    id = "StatisticModelResult",
    members = {
        LowerBound = {
            type = "double",
        },
        UpperBound = {
            type = "double",
        },
        PredictedValue = {
            type = "double",
        },
        ActualValue = {
            type = "double",
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
    id = "GetDataQualityModelResultOutput",
    members = {
        CompletedOn = {
            type = "timestamp",
        },
        Model = {
            type = "list",
            member = M.StatisticModelResult,
        },
    },
}

M.GetDataQualityResultInput = {
    type = "structure",
    id = "GetDataQualityResultInput",
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
    id = "GetDataQualityResultOutput",
    members = {
        ResultId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        Score = {
            type = "double",
        },
        DataSource = M.DataSource,
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
            member = M.DataQualityRuleResult,
        },
        AnalyzerResults = {
            type = "list",
            member = M.DataQualityAnalyzerResult,
        },
        Observations = {
            type = "list",
            member = M.DataQualityObservation,
        },
        AggregatedMetrics = M.DataQualityAggregatedMetrics,
    },
}

M.GetDataQualityRuleRecommendationRunInput = {
    type = "structure",
    id = "GetDataQualityRuleRecommendationRunInput",
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
    id = "GetDataQualityRuleRecommendationRunOutput",
    members = {
        RunId = {
            type = "string",
        },
        DataSource = M.DataSource,
        Role = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "GetDataQualityRulesetInput",
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
    id = "GetDataQualityRulesetOutput",
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
        TargetTable = M.DataQualityTargetTable,
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
    id = "GetDataQualityRulesetEvaluationRunInput",
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
    id = "DataQualityEvaluationRunAdditionalRunOptions",
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
    id = "GetDataQualityRulesetEvaluationRunOutput",
    members = {
        RunId = {
            type = "string",
        },
        DataSource = M.DataSource,
        Role = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        AdditionalRunOptions = M.DataQualityEvaluationRunAdditionalRunOptions,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        RulesetNames = {
            type = "list",
            member = { type = "string" },
        },
        ResultIds = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalDataSources = {
            type = "map",
            key = { type = "string" },
            value = M.DataSource,
        },
    },
}

M.GetDevEndpointInput = {
    type = "structure",
    id = "GetDevEndpointInput",
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
    id = "GetDevEndpointOutput",
    members = {
        DevEndpoint = M.DevEndpoint,
    },
}

M.GetDevEndpointsInput = {
    type = "structure",
    id = "GetDevEndpointsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDevEndpointsOutput = {
    type = "structure",
    id = "GetDevEndpointsOutput",
    members = {
        DevEndpoints = {
            type = "list",
            member = M.DevEndpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetEntityRecordsInput = {
    type = "structure",
    id = "GetEntityRecordsInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        FilterPredicate = {
            type = "string",
        },
        Limit = {
            type = "long",
            traits = {
                required = true,
            },
        },
        OrderBy = {
            type = "string",
        },
        SelectedFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetEntityRecordsOutput = {
    type = "structure",
    id = "GetEntityRecordsOutput",
    members = {
        Records = {
            type = "list",
            member = { type = "document" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetGlueIdentityCenterConfigurationInput = {
    type = "structure",
    id = "GetGlueIdentityCenterConfigurationInput",
}

M.GetGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "GetGlueIdentityCenterConfigurationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        Scopes = {
            type = "list",
            member = { type = "string" },
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.GetIntegrationResourcePropertyInput = {
    type = "structure",
    id = "GetIntegrationResourcePropertyInput",
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
    id = "GetIntegrationResourcePropertyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
    },
}

M.GetIntegrationTablePropertiesInput = {
    type = "structure",
    id = "GetIntegrationTablePropertiesInput",
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
    id = "GetIntegrationTablePropertiesOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        SourceTableConfig = M.SourceTableConfig,
        TargetTableConfig = M.TargetTableConfig,
    },
}

M.GetJobInput = {
    type = "structure",
    id = "GetJobInput",
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
    id = "GetJobBookmarkInput",
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
    id = "JobBookmarkEntry",
    members = {
        JobName = {
            type = "string",
        },
        Version = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Run = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Attempt = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "GetJobBookmarkOutput",
    members = {
        JobBookmarkEntry = M.JobBookmarkEntry,
    },
}

M.GetJobRunInput = {
    type = "structure",
    id = "GetJobRunInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.GetJobRunOutput = {
    type = "structure",
    id = "GetJobRunOutput",
    members = {
        JobRun = M.JobRun,
    },
}

M.GetJobRunsInput = {
    type = "structure",
    id = "GetJobRunsInput",
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
            type = "integer",
        },
    },
}

M.GetJobRunsOutput = {
    type = "structure",
    id = "GetJobRunsOutput",
    members = {
        JobRuns = {
            type = "list",
            member = M.JobRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetJobsInput = {
    type = "structure",
    id = "GetJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Location = {
    type = "structure",
    id = "Location",
    members = {
        Jdbc = {
            type = "list",
            member = M.CodeGenNodeArg,
        },
        S3 = {
            type = "list",
            member = M.CodeGenNodeArg,
        },
        DynamoDB = {
            type = "list",
            member = M.CodeGenNodeArg,
        },
    },
}

M.CatalogEntry = {
    type = "structure",
    id = "CatalogEntry",
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
    id = "GetMappingInput",
    members = {
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CatalogEntry }),
        Sinks = {
            type = "list",
            member = M.CatalogEntry,
        },
        Location = M.Location,
    },
}

M.MappingEntry = {
    type = "structure",
    id = "MappingEntry",
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
    id = "GetMappingOutput",
    members = {
        Mapping = {
            type = "list",
            member = M.MappingEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.GetMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    id = "GetMaterializedViewRefreshTaskRunInput",
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
    id = "MaterializedViewRefreshTaskRun",
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
            type = "double",
            traits = {
                default = 0,
            },
        },
        RefreshType = {
            type = "string",
        },
        ProcessedBytes = {
            type = "long",
        },
    },
}

M.GetMaterializedViewRefreshTaskRunOutput = {
    type = "structure",
    id = "GetMaterializedViewRefreshTaskRunOutput",
    members = {
        MaterializedViewRefreshTaskRun = M.MaterializedViewRefreshTaskRun,
    },
}

M.GetMLTaskRunInput = {
    type = "structure",
    id = "GetMLTaskRunInput",
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
    id = "ExportLabelsTaskRunProperties",
    members = {
        OutputS3Path = {
            type = "string",
        },
    },
}

M.FindMatchesTaskRunProperties = {
    type = "structure",
    id = "FindMatchesTaskRunProperties",
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
    id = "ImportLabelsTaskRunProperties",
    members = {
        InputS3Path = {
            type = "string",
        },
        Replace = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LabelingSetGenerationTaskRunProperties = {
    type = "structure",
    id = "LabelingSetGenerationTaskRunProperties",
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
    id = "TaskRunProperties",
    members = {
        TaskType = {
            type = "string",
        },
        ImportLabelsTaskRunProperties = M.ImportLabelsTaskRunProperties,
        ExportLabelsTaskRunProperties = M.ExportLabelsTaskRunProperties,
        LabelingSetGenerationTaskRunProperties = M.LabelingSetGenerationTaskRunProperties,
        FindMatchesTaskRunProperties = M.FindMatchesTaskRunProperties,
    },
}

M.GetMLTaskRunOutput = {
    type = "structure",
    id = "GetMLTaskRunOutput",
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
        Properties = M.TaskRunProperties,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TaskRunFilterCriteria = {
    type = "structure",
    id = "TaskRunFilterCriteria",
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
    id = "TaskRunSortCriteria",
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
    id = "GetMLTaskRunsInput",
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
            type = "integer",
        },
        Filter = M.TaskRunFilterCriteria,
        Sort = M.TaskRunSortCriteria,
    },
}

M.TaskRun = {
    type = "structure",
    id = "TaskRun",
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
        Properties = M.TaskRunProperties,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetMLTaskRunsOutput = {
    type = "structure",
    id = "GetMLTaskRunsOutput",
    members = {
        TaskRuns = {
            type = "list",
            member = M.TaskRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetMLTransformInput = {
    type = "structure",
    id = "GetMLTransformInput",
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
    id = "ColumnImportance",
    members = {
        ColumnName = {
            type = "string",
        },
        Importance = {
            type = "double",
        },
    },
}

M.ConfusionMatrix = {
    type = "structure",
    id = "ConfusionMatrix",
    members = {
        NumTruePositives = {
            type = "long",
        },
        NumFalsePositives = {
            type = "long",
        },
        NumTrueNegatives = {
            type = "long",
        },
        NumFalseNegatives = {
            type = "long",
        },
    },
}

M.FindMatchesMetrics = {
    type = "structure",
    id = "FindMatchesMetrics",
    members = {
        AreaUnderPRCurve = {
            type = "double",
        },
        Precision = {
            type = "double",
        },
        Recall = {
            type = "double",
        },
        F1 = {
            type = "double",
        },
        ConfusionMatrix = M.ConfusionMatrix,
        ColumnImportances = {
            type = "list",
            member = M.ColumnImportance,
        },
    },
}

M.EvaluationMetrics = {
    type = "structure",
    id = "EvaluationMetrics",
    members = {
        TransformType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FindMatchesMetrics = M.FindMatchesMetrics,
    },
}

M.SchemaColumn = {
    type = "structure",
    id = "SchemaColumn",
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
    id = "GetMLTransformOutput",
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
            member = M.GlueTable,
        },
        Parameters = M.TransformParameters,
        EvaluationMetrics = M.EvaluationMetrics,
        LabelCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Schema = {
            type = "list",
            member = M.SchemaColumn,
        },
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        MaxRetries = {
            type = "integer",
        },
        TransformEncryption = M.TransformEncryption,
    },
}

M.TransformFilterCriteria = {
    type = "structure",
    id = "TransformFilterCriteria",
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
            member = M.SchemaColumn,
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
    id = "TransformSortCriteria",
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
    id = "GetMLTransformsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filter = M.TransformFilterCriteria,
        Sort = M.TransformSortCriteria,
    },
}

M.MLTransform = {
    type = "structure",
    id = "MLTransform",
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
            member = M.GlueTable,
        },
        Parameters = M.TransformParameters,
        EvaluationMetrics = M.EvaluationMetrics,
        LabelCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Schema = {
            type = "list",
            member = M.SchemaColumn,
        },
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        MaxRetries = {
            type = "integer",
        },
        TransformEncryption = M.TransformEncryption,
    },
}

M.GetMLTransformsOutput = {
    type = "structure",
    id = "GetMLTransformsOutput",
    members = {
        Transforms = {
            type = "list",
            member = M.MLTransform,
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
    id = "GetPartitionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AuditContext = M.AuditContext,
    },
}

M.GetPartitionOutput = {
    type = "structure",
    id = "GetPartitionOutput",
    members = {
        Partition = M.Partition,
    },
}

M.GetPartitionIndexesInput = {
    type = "structure",
    id = "GetPartitionIndexesInput",
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
    id = "BackfillError",
    members = {
        Code = {
            type = "string",
        },
        Partitions = {
            type = "list",
            member = M.PartitionValueList,
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
    id = "KeySchemaElement",
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
    id = "PartitionIndexDescriptor",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keys = {
            type = "list",
            member = M.KeySchemaElement,
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
            member = M.BackfillError,
        },
    },
}

M.GetPartitionIndexesOutput = {
    type = "structure",
    id = "GetPartitionIndexesOutput",
    members = {
        PartitionIndexDescriptorList = {
            type = "list",
            member = M.PartitionIndexDescriptor,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Segment = {
    type = "structure",
    id = "Segment",
    members = {
        SegmentNumber = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        TotalSegments = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPartitionsInput = {
    type = "structure",
    id = "GetPartitionsInput",
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
        Segment = M.Segment,
        MaxResults = {
            type = "integer",
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
        AuditContext = M.AuditContext,
    },
}

M.GetPartitionsOutput = {
    type = "structure",
    id = "GetPartitionsOutput",
    members = {
        Partitions = {
            type = "list",
            member = M.Partition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetPlanInput = {
    type = "structure",
    id = "GetPlanInput",
    members = {
        Mapping = {
            type = "list",
            member = M.MappingEntry,
            traits = {
                required = true,
            },
        },
        Source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CatalogEntry }),
        Sinks = {
            type = "list",
            member = M.CatalogEntry,
        },
        Location = M.Location,
        Language = {
            type = "string",
        },
        AdditionalPlanOptionsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetPlanOutput = {
    type = "structure",
    id = "GetPlanOutput",
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
    id = "GetRegistryInput",
    members = {
        RegistryId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryId }),
    },
}

M.GetRegistryOutput = {
    type = "structure",
    id = "GetRegistryOutput",
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
    id = "GetResourcePoliciesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GluePolicy = {
    type = "structure",
    id = "GluePolicy",
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
    id = "GetResourcePoliciesOutput",
    members = {
        GetResourcePoliciesResponseList = {
            type = "list",
            member = M.GluePolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
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
    id = "GetSchemaInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
    },
}

M.GetSchemaOutput = {
    type = "structure",
    id = "GetSchemaOutput",
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
            type = "long",
        },
        LatestSchemaVersion = {
            type = "long",
        },
        NextSchemaVersion = {
            type = "long",
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
    id = "GetSchemaByDefinitionInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
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
    id = "GetSchemaByDefinitionOutput",
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
    id = "SchemaVersionNumber",
    members = {
        LatestVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        VersionNumber = {
            type = "long",
        },
    },
}

M.GetSchemaVersionInput = {
    type = "structure",
    id = "GetSchemaVersionInput",
    members = {
        SchemaId = M.SchemaId,
        SchemaVersionId = {
            type = "string",
        },
        SchemaVersionNumber = M.SchemaVersionNumber,
    },
}

M.GetSchemaVersionOutput = {
    type = "structure",
    id = "GetSchemaVersionOutput",
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
            type = "long",
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
    id = "GetSchemaVersionsDiffInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
        FirstSchemaVersionNumber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaVersionNumber }),
        SecondSchemaVersionNumber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaVersionNumber }),
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
    id = "GetSchemaVersionsDiffOutput",
    members = {
        Diff = {
            type = "string",
        },
    },
}

M.GetSecurityConfigurationInput = {
    type = "structure",
    id = "GetSecurityConfigurationInput",
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
    id = "SecurityConfiguration",
    members = {
        Name = {
            type = "string",
        },
        CreatedTimeStamp = {
            type = "timestamp",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.GetSecurityConfigurationOutput = {
    type = "structure",
    id = "GetSecurityConfigurationOutput",
    members = {
        SecurityConfiguration = M.SecurityConfiguration,
    },
}

M.GetSecurityConfigurationsInput = {
    type = "structure",
    id = "GetSecurityConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSecurityConfigurationsOutput = {
    type = "structure",
    id = "GetSecurityConfigurationsOutput",
    members = {
        SecurityConfigurations = {
            type = "list",
            member = M.SecurityConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
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
    id = "GetSessionOutput",
    members = {
        Session = M.Session,
    },
}

M.GetStatementInput = {
    type = "structure",
    id = "GetStatementInput",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "StatementOutputData",
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
    id = "StatementOutput",
    members = {
        Data = M.StatementOutputData,
        ExecutionCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = { type = "string" },
        },
    },
}

M.Statement = {
    type = "structure",
    id = "Statement",
    members = {
        Id = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Code = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Output = M.StatementOutput,
        Progress = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        StartedOn = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CompletedOn = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetStatementOutput = {
    type = "structure",
    id = "GetStatementOutput",
    members = {
        Statement = M.Statement,
    },
}

M.GetTableInput = {
    type = "structure",
    id = "GetTableInput",
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
        AuditContext = M.AuditContext,
        IncludeStatusDetails = {
            type = "boolean",
        },
    },
}

M.FederatedTable = {
    type = "structure",
    id = "FederatedTable",
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
    id = "ViewValidation",
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
        Error = M.ErrorDetail,
    },
}

M.ViewRepresentation = {
    type = "structure",
    id = "ViewRepresentation",
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
    id = "ViewDefinition",
    members = {
        IsProtected = {
            type = "boolean",
        },
        Definer = {
            type = "string",
        },
        ViewVersionId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ViewVersionToken = {
            type = "string",
        },
        RefreshSeconds = {
            type = "long",
        },
        LastRefreshType = {
            type = "string",
        },
        SubObjects = {
            type = "list",
            member = { type = "string" },
        },
        SubObjectVersionIds = {
            type = "list",
            member = { type = "long" },
        },
        Representations = {
            type = "list",
            member = M.ViewRepresentation,
        },
    },
}

M.GetTableOptimizerInput = {
    type = "structure",
    id = "GetTableOptimizerInput",
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
    id = "GetTableOptimizerOutput",
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
        TableOptimizer = M.TableOptimizer,
    },
}

M.TableAttributes = {
    NAME = "NAME",
    TABLE_TYPE = "TABLE_TYPE",
}

M.GetTablesInput = {
    type = "structure",
    id = "GetTablesInput",
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
            type = "integer",
        },
        TransactionId = {
            type = "string",
        },
        QueryAsOfTime = {
            type = "timestamp",
        },
        AuditContext = M.AuditContext,
        IncludeStatusDetails = {
            type = "boolean",
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetTableVersionInput = {
    type = "structure",
    id = "GetTableVersionInput",
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
        AuditContext = M.AuditContext,
    },
}

M.GetTableVersionsInput = {
    type = "structure",
    id = "GetTableVersionsInput",
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
            type = "integer",
        },
        AuditContext = M.AuditContext,
    },
}

M.GetTagsInput = {
    type = "structure",
    id = "GetTagsInput",
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
    id = "GetTagsOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTriggerInput = {
    type = "structure",
    id = "GetTriggerInput",
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
    id = "GetTriggerOutput",
    members = {
        Trigger = M.Trigger,
    },
}

M.GetTriggersInput = {
    type = "structure",
    id = "GetTriggersInput",
    members = {
        NextToken = {
            type = "string",
        },
        DependentJobName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.GetTriggersOutput = {
    type = "structure",
    id = "GetTriggersOutput",
    members = {
        Triggers = {
            type = "list",
            member = M.Trigger,
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
    id = "GetUnfilteredPartitionMetadataInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AuditContext = M.AuditContext,
        SupportedPermissionTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        QuerySessionContext = M.QuerySessionContext,
    },
}

M.GetUnfilteredPartitionMetadataOutput = {
    type = "structure",
    id = "GetUnfilteredPartitionMetadataOutput",
    members = {
        Partition = M.Partition,
        AuthorizedColumns = {
            type = "list",
            member = { type = "string" },
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PermissionTypeMismatchException = {
    type = "structure",
    id = "PermissionTypeMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetUnfilteredPartitionsMetadataInput = {
    type = "structure",
    id = "GetUnfilteredPartitionsMetadataInput",
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
        AuditContext = M.AuditContext,
        SupportedPermissionTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Segment = M.Segment,
        MaxResults = {
            type = "integer",
        },
        QuerySessionContext = M.QuerySessionContext,
    },
}

M.UnfilteredPartition = {
    type = "structure",
    id = "UnfilteredPartition",
    members = {
        Partition = M.Partition,
        AuthorizedColumns = {
            type = "list",
            member = { type = "string" },
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetUnfilteredPartitionsMetadataOutput = {
    type = "structure",
    id = "GetUnfilteredPartitionsMetadataOutput",
    members = {
        UnfilteredPartitions = {
            type = "list",
            member = M.UnfilteredPartition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SupportedDialect = {
    type = "structure",
    id = "SupportedDialect",
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
    id = "GetUnfilteredTableMetadataInput",
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
        AuditContext = M.AuditContext,
        SupportedPermissionTypes = {
            type = "list",
            member = { type = "string" },
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
        SupportedDialect = M.SupportedDialect,
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        QuerySessionContext = M.QuerySessionContext,
    },
}

M.ColumnRowFilter = {
    type = "structure",
    id = "ColumnRowFilter",
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
    id = "GetUsageProfileInput",
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
    id = "GetUsageProfileOutput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Configuration = M.ProfileConfiguration,
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
    id = "GetUserDefinedFunctionInput",
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
    id = "UserDefinedFunction",
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
            member = M.ResourceUri,
        },
        CatalogId = {
            type = "string",
        },
    },
}

M.GetUserDefinedFunctionOutput = {
    type = "structure",
    id = "GetUserDefinedFunctionOutput",
    members = {
        UserDefinedFunction = M.UserDefinedFunction,
    },
}

M.GetUserDefinedFunctionsInput = {
    type = "structure",
    id = "GetUserDefinedFunctionsInput",
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
            type = "integer",
        },
    },
}

M.GetUserDefinedFunctionsOutput = {
    type = "structure",
    id = "GetUserDefinedFunctionsOutput",
    members = {
        UserDefinedFunctions = {
            type = "list",
            member = M.UserDefinedFunction,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetWorkflowInput = {
    type = "structure",
    id = "GetWorkflowInput",
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
    id = "GetWorkflowOutput",
    members = {
        Workflow = M.Workflow,
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
    id = "GetWorkflowRunInput",
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
    id = "GetWorkflowRunOutput",
    members = {
        Run = M.WorkflowRun,
    },
}

M.GetWorkflowRunPropertiesInput = {
    type = "structure",
    id = "GetWorkflowRunPropertiesInput",
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
    id = "GetWorkflowRunPropertiesOutput",
    members = {
        RunProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetWorkflowRunsInput = {
    type = "structure",
    id = "GetWorkflowRunsInput",
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
            type = "integer",
        },
    },
}

M.GetWorkflowRunsOutput = {
    type = "structure",
    id = "GetWorkflowRunsOutput",
    members = {
        Runs = {
            type = "list",
            member = M.WorkflowRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImportCatalogToGlueInput = {
    type = "structure",
    id = "ImportCatalogToGlueInput",
    members = {
        CatalogId = {
            type = "string",
        },
    },
}

M.ImportCatalogToGlueOutput = {
    type = "structure",
    id = "ImportCatalogToGlueOutput",
}

M.ListBlueprintsInput = {
    type = "structure",
    id = "ListBlueprintsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListBlueprintsOutput = {
    type = "structure",
    id = "ListBlueprintsOutput",
    members = {
        Blueprints = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListColumnStatisticsTaskRunsInput = {
    type = "structure",
    id = "ListColumnStatisticsTaskRunsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListColumnStatisticsTaskRunsOutput = {
    type = "structure",
    id = "ListColumnStatisticsTaskRunsOutput",
    members = {
        ColumnStatisticsTaskRunIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionTypesInput = {
    type = "structure",
    id = "ListConnectionTypesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConnectionTypeVariant = {
    type = "structure",
    id = "ConnectionTypeVariant",
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
    id = "ConnectionTypeBrief",
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
            member = { type = "string" },
        },
        Capabilities = M.Capabilities,
        LogoUrl = {
            type = "string",
        },
        ConnectionTypeVariants = {
            type = "list",
            member = M.ConnectionTypeVariant,
        },
    },
}

M.ListConnectionTypesOutput = {
    type = "structure",
    id = "ListConnectionTypesOutput",
    members = {
        ConnectionTypes = {
            type = "list",
            member = M.ConnectionTypeBrief,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCrawlersInput = {
    type = "structure",
    id = "ListCrawlersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListCrawlersOutput = {
    type = "structure",
    id = "ListCrawlersOutput",
    members = {
        CrawlerNames = {
            type = "list",
            member = { type = "string" },
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
    id = "CrawlsFilter",
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
    id = "ListCrawlsInput",
    members = {
        CrawlerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.CrawlsFilter,
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
    id = "CrawlerHistory",
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
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListCrawlsOutput = {
    type = "structure",
    id = "ListCrawlsOutput",
    members = {
        Crawls = {
            type = "list",
            member = M.CrawlerHistory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomEntityTypesInput = {
    type = "structure",
    id = "ListCustomEntityTypesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListCustomEntityTypesOutput = {
    type = "structure",
    id = "ListCustomEntityTypesOutput",
    members = {
        CustomEntityTypes = {
            type = "list",
            member = M.CustomEntityType,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityResultFilterCriteria = {
    type = "structure",
    id = "DataQualityResultFilterCriteria",
    members = {
        DataSource = M.DataSource,
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
    id = "ListDataQualityResultsInput",
    members = {
        Filter = M.DataQualityResultFilterCriteria,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DataQualityResultDescription = {
    type = "structure",
    id = "DataQualityResultDescription",
    members = {
        ResultId = {
            type = "string",
        },
        DataSource = M.DataSource,
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
    id = "ListDataQualityResultsOutput",
    members = {
        Results = {
            type = "list",
            member = M.DataQualityResultDescription,
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
    id = "DataQualityRuleRecommendationRunFilter",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
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
    id = "ListDataQualityRuleRecommendationRunsInput",
    members = {
        Filter = M.DataQualityRuleRecommendationRunFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DataQualityRuleRecommendationRunDescription = {
    type = "structure",
    id = "DataQualityRuleRecommendationRunDescription",
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
        DataSource = M.DataSource,
    },
}

M.ListDataQualityRuleRecommendationRunsOutput = {
    type = "structure",
    id = "ListDataQualityRuleRecommendationRunsOutput",
    members = {
        Runs = {
            type = "list",
            member = M.DataQualityRuleRecommendationRunDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityRulesetEvaluationRunFilter = {
    type = "structure",
    id = "DataQualityRulesetEvaluationRunFilter",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
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
    id = "ListDataQualityRulesetEvaluationRunsInput",
    members = {
        Filter = M.DataQualityRulesetEvaluationRunFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DataQualityRulesetEvaluationRunDescription = {
    type = "structure",
    id = "DataQualityRulesetEvaluationRunDescription",
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
        DataSource = M.DataSource,
    },
}

M.ListDataQualityRulesetEvaluationRunsOutput = {
    type = "structure",
    id = "ListDataQualityRulesetEvaluationRunsOutput",
    members = {
        Runs = {
            type = "list",
            member = M.DataQualityRulesetEvaluationRunDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataQualityRulesetFilterCriteria = {
    type = "structure",
    id = "DataQualityRulesetFilterCriteria",
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
        TargetTable = M.DataQualityTargetTable,
    },
}

M.ListDataQualityRulesetsInput = {
    type = "structure",
    id = "ListDataQualityRulesetsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filter = M.DataQualityRulesetFilterCriteria,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DataQualityRulesetListDetails = {
    type = "structure",
    id = "DataQualityRulesetListDetails",
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
        TargetTable = M.DataQualityTargetTable,
        RecommendationRunId = {
            type = "string",
        },
        RuleCount = {
            type = "integer",
        },
    },
}

M.ListDataQualityRulesetsOutput = {
    type = "structure",
    id = "ListDataQualityRulesetsOutput",
    members = {
        Rulesets = {
            type = "list",
            member = M.DataQualityRulesetListDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TimestampFilter = {
    type = "structure",
    id = "TimestampFilter",
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
    id = "ListDataQualityStatisticAnnotationsInput",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        TimestampFilter = M.TimestampFilter,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataQualityStatisticAnnotationsOutput = {
    type = "structure",
    id = "ListDataQualityStatisticAnnotationsOutput",
    members = {
        Annotations = {
            type = "list",
            member = M.StatisticAnnotation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataQualityStatisticsInput = {
    type = "structure",
    id = "ListDataQualityStatisticsInput",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        TimestampFilter = M.TimestampFilter,
        MaxResults = {
            type = "integer",
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
    id = "RunIdentifier",
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
    id = "StatisticSummary",
    members = {
        StatisticId = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        RunIdentifier = M.RunIdentifier,
        StatisticName = {
            type = "string",
        },
        DoubleValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EvaluationLevel = {
            type = "string",
        },
        ColumnsReferenced = {
            type = "list",
            member = { type = "string" },
        },
        ReferencedDatasets = {
            type = "list",
            member = { type = "string" },
        },
        StatisticProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RecordedOn = {
            type = "timestamp",
        },
        InclusionAnnotation = M.TimestampedInclusionAnnotation,
    },
}

M.ListDataQualityStatisticsOutput = {
    type = "structure",
    id = "ListDataQualityStatisticsOutput",
    members = {
        Statistics = {
            type = "list",
            member = M.StatisticSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevEndpointsInput = {
    type = "structure",
    id = "ListDevEndpointsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDevEndpointsOutput = {
    type = "structure",
    id = "ListDevEndpointsOutput",
    members = {
        DevEndpointNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntitiesInput = {
    type = "structure",
    id = "ListEntitiesInput",
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
    id = "Entity",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEntitiesOutput = {
    type = "structure",
    id = "ListEntitiesOutput",
    members = {
        Entities = {
            type = "list",
            member = M.Entity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IntegrationResourcePropertyFilter = {
    type = "structure",
    id = "IntegrationResourcePropertyFilter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListIntegrationResourcePropertiesInput = {
    type = "structure",
    id = "ListIntegrationResourcePropertiesInput",
    members = {
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.IntegrationResourcePropertyFilter,
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.IntegrationResourceProperty = {
    type = "structure",
    id = "IntegrationResourceProperty",
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
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
    },
}

M.ListIntegrationResourcePropertiesOutput = {
    type = "structure",
    id = "ListIntegrationResourcePropertiesOutput",
    members = {
        IntegrationResourcePropertyList = {
            type = "list",
            member = M.IntegrationResourceProperty,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        JobNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMaterializedViewRefreshTaskRunsInput = {
    type = "structure",
    id = "ListMaterializedViewRefreshTaskRunsInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMaterializedViewRefreshTaskRunsOutput = {
    type = "structure",
    id = "ListMaterializedViewRefreshTaskRunsOutput",
    members = {
        MaterializedViewRefreshTaskRuns = {
            type = "list",
            member = M.MaterializedViewRefreshTaskRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMLTransformsInput = {
    type = "structure",
    id = "ListMLTransformsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filter = M.TransformFilterCriteria,
        Sort = M.TransformSortCriteria,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListMLTransformsOutput = {
    type = "structure",
    id = "ListMLTransformsOutput",
    members = {
        TransformIds = {
            type = "list",
            member = { type = "string" },
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
    id = "ListRegistriesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegistryListItem = {
    type = "structure",
    id = "RegistryListItem",
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
    id = "ListRegistriesOutput",
    members = {
        Registries = {
            type = "list",
            member = M.RegistryListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemasInput = {
    type = "structure",
    id = "ListSchemasInput",
    members = {
        RegistryId = M.RegistryId,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SchemaListItem = {
    type = "structure",
    id = "SchemaListItem",
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
    id = "ListSchemasOutput",
    members = {
        Schemas = {
            type = "list",
            member = M.SchemaListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemaVersionsInput = {
    type = "structure",
    id = "ListSchemaVersionsInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SchemaVersionListItem = {
    type = "structure",
    id = "SchemaVersionListItem",
    members = {
        SchemaArn = {
            type = "string",
        },
        SchemaVersionId = {
            type = "string",
        },
        VersionNumber = {
            type = "long",
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
    id = "ListSchemaVersionsOutput",
    members = {
        Schemas = {
            type = "list",
            member = M.SchemaVersionListItem,
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RequestOrigin = {
            type = "string",
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    id = "ListSessionsOutput",
    members = {
        Ids = {
            type = "list",
            member = { type = "string" },
        },
        Sessions = {
            type = "list",
            member = M.Session,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStatementsInput = {
    type = "structure",
    id = "ListStatementsInput",
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
    id = "ListStatementsOutput",
    members = {
        Statements = {
            type = "list",
            member = M.Statement,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTableOptimizerRunsInput = {
    type = "structure",
    id = "ListTableOptimizerRunsInput",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTableOptimizerRunsOutput = {
    type = "structure",
    id = "ListTableOptimizerRunsOutput",
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
            member = M.TableOptimizerRun,
        },
    },
}

M.ListTriggersInput = {
    type = "structure",
    id = "ListTriggersInput",
    members = {
        NextToken = {
            type = "string",
        },
        DependentJobName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTriggersOutput = {
    type = "structure",
    id = "ListTriggersOutput",
    members = {
        TriggerNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUsageProfilesInput = {
    type = "structure",
    id = "ListUsageProfilesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.UsageProfileDefinition = {
    type = "structure",
    id = "UsageProfileDefinition",
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
    id = "ListUsageProfilesOutput",
    members = {
        Profiles = {
            type = "list",
            member = M.UsageProfileDefinition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    id = "ListWorkflowsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    id = "ListWorkflowsOutput",
    members = {
        Workflows = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
    id = "ModifyIntegrationInput",
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
        IntegrationConfig = M.IntegrationConfig,
        IntegrationName = {
            type = "string",
        },
    },
}

M.ModifyIntegrationOutput = {
    type = "structure",
    id = "ModifyIntegrationOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
            member = M.IntegrationError,
        },
        DataFilter = {
            type = "string",
        },
        IntegrationConfig = M.IntegrationConfig,
    },
}

M.PutDataCatalogEncryptionSettingsInput = {
    type = "structure",
    id = "PutDataCatalogEncryptionSettingsInput",
    members = {
        CatalogId = {
            type = "string",
        },
        DataCatalogEncryptionSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataCatalogEncryptionSettings }),
    },
}

M.PutDataCatalogEncryptionSettingsOutput = {
    type = "structure",
    id = "PutDataCatalogEncryptionSettingsOutput",
}

M.PutDataQualityProfileAnnotationInput = {
    type = "structure",
    id = "PutDataQualityProfileAnnotationInput",
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
    id = "PutDataQualityProfileAnnotationOutput",
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
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
    members = {
        PolicyHash = {
            type = "string",
        },
    },
}

M.MetadataKeyValuePair = {
    type = "structure",
    id = "MetadataKeyValuePair",
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
    id = "PutSchemaVersionMetadataInput",
    members = {
        SchemaId = M.SchemaId,
        SchemaVersionNumber = M.SchemaVersionNumber,
        SchemaVersionId = {
            type = "string",
        },
        MetadataKeyValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataKeyValuePair }),
    },
}

M.PutSchemaVersionMetadataOutput = {
    type = "structure",
    id = "PutSchemaVersionMetadataOutput",
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
            traits = {
                default = false,
            },
        },
        VersionNumber = {
            type = "long",
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
    id = "PutWorkflowRunPropertiesInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutWorkflowRunPropertiesOutput = {
    type = "structure",
    id = "PutWorkflowRunPropertiesOutput",
}

M.QuerySchemaVersionMetadataInput = {
    type = "structure",
    id = "QuerySchemaVersionMetadataInput",
    members = {
        SchemaId = M.SchemaId,
        SchemaVersionNumber = M.SchemaVersionNumber,
        SchemaVersionId = {
            type = "string",
        },
        MetadataList = {
            type = "list",
            member = M.MetadataKeyValuePair,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OtherMetadataValueListItem = {
    type = "structure",
    id = "OtherMetadataValueListItem",
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
    id = "MetadataInfo",
    members = {
        MetadataValue = {
            type = "string",
        },
        CreatedTime = {
            type = "string",
        },
        OtherMetadataValueList = {
            type = "list",
            member = M.OtherMetadataValueListItem,
        },
    },
}

M.QuerySchemaVersionMetadataOutput = {
    type = "structure",
    id = "QuerySchemaVersionMetadataOutput",
    members = {
        MetadataInfoMap = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataInfo,
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
    id = "ConnectionPropertiesConfiguration",
    members = {
        Url = M.ConnectorProperty,
        AdditionalRequestParameters = {
            type = "list",
            member = M.ConnectorProperty,
        },
    },
}

M.BasicAuthenticationProperties = {
    type = "structure",
    id = "BasicAuthenticationProperties",
    members = {
        Username = M.ConnectorProperty,
        Password = M.ConnectorProperty,
    },
}

M.CustomAuthenticationProperties = {
    type = "structure",
    id = "CustomAuthenticationProperties",
    members = {
        AuthenticationParameters = {
            type = "list",
            member = M.ConnectorProperty,
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
    id = "ConnectorAuthorizationCodeProperties",
    members = {
        AuthorizationCodeUrl = M.ConnectorProperty,
        AuthorizationCode = M.ConnectorProperty,
        RedirectUri = M.ConnectorProperty,
        TokenUrl = M.ConnectorProperty,
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ClientId = M.ConnectorProperty,
        ClientSecret = M.ConnectorProperty,
        Scope = M.ConnectorProperty,
        Prompt = M.ConnectorProperty,
        TokenUrlParameters = {
            type = "list",
            member = M.ConnectorProperty,
        },
    },
}

M.ClientCredentialsProperties = {
    type = "structure",
    id = "ClientCredentialsProperties",
    members = {
        TokenUrl = M.ConnectorProperty,
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        ClientId = M.ConnectorProperty,
        ClientSecret = M.ConnectorProperty,
        Scope = M.ConnectorProperty,
        TokenUrlParameters = {
            type = "list",
            member = M.ConnectorProperty,
        },
    },
}

M.JWTBearerProperties = {
    type = "structure",
    id = "JWTBearerProperties",
    members = {
        TokenUrl = M.ConnectorProperty,
        RequestMethod = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        JwtToken = M.ConnectorProperty,
        TokenUrlParameters = {
            type = "list",
            member = M.ConnectorProperty,
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
    id = "ConnectorOAuth2Properties",
    members = {
        OAuth2GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientCredentialsProperties = M.ClientCredentialsProperties,
        JWTBearerProperties = M.JWTBearerProperties,
        AuthorizationCodeProperties = M.ConnectorAuthorizationCodeProperties,
    },
}

M.ConnectorAuthenticationConfiguration = {
    type = "structure",
    id = "ConnectorAuthenticationConfiguration",
    members = {
        AuthenticationTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        OAuth2Properties = M.ConnectorOAuth2Properties,
        BasicAuthenticationProperties = M.BasicAuthenticationProperties,
        CustomAuthenticationProperties = M.CustomAuthenticationProperties,
    },
}

M.IntegrationType = {
    REST = "REST",
}

M.RegisterConnectionTypeInput = {
    type = "structure",
    id = "RegisterConnectionTypeInput",
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
        ConnectionProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionPropertiesConfiguration }),
        ConnectorAuthenticationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectorAuthenticationConfiguration }),
        RestConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RestConfiguration }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterConnectionTypeOutput = {
    type = "structure",
    id = "RegisterConnectionTypeOutput",
    members = {
        ConnectionTypeArn = {
            type = "string",
        },
    },
}

M.RegisterSchemaVersionInput = {
    type = "structure",
    id = "RegisterSchemaVersionInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
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
    id = "RegisterSchemaVersionOutput",
    members = {
        SchemaVersionId = {
            type = "string",
        },
        VersionNumber = {
            type = "long",
        },
        Status = {
            type = "string",
        },
    },
}

M.RemoveSchemaVersionMetadataInput = {
    type = "structure",
    id = "RemoveSchemaVersionMetadataInput",
    members = {
        SchemaId = M.SchemaId,
        SchemaVersionNumber = M.SchemaVersionNumber,
        SchemaVersionId = {
            type = "string",
        },
        MetadataKeyValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataKeyValuePair }),
    },
}

M.RemoveSchemaVersionMetadataOutput = {
    type = "structure",
    id = "RemoveSchemaVersionMetadataOutput",
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
            traits = {
                default = false,
            },
        },
        VersionNumber = {
            type = "long",
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
    id = "ResetJobBookmarkInput",
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
    id = "ResetJobBookmarkOutput",
    members = {
        JobBookmarkEntry = M.JobBookmarkEntry,
    },
}

M.ConcurrentRunsExceededException = {
    type = "structure",
    id = "ConcurrentRunsExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IllegalWorkflowStateException = {
    type = "structure",
    id = "IllegalWorkflowStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResumeWorkflowRunInput = {
    type = "structure",
    id = "ResumeWorkflowRunInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeWorkflowRunOutput = {
    type = "structure",
    id = "ResumeWorkflowRunOutput",
    members = {
        RunId = {
            type = "string",
        },
        NodeIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RunStatementInput = {
    type = "structure",
    id = "RunStatementInput",
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
    id = "RunStatementOutput",
    members = {
        Id = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "PropertyPredicate",
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
    id = "SortCriterion",
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
    id = "SearchTablesInput",
    members = {
        CatalogId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.PropertyPredicate,
        },
        SearchText = {
            type = "string",
        },
        SortCriteria = {
            type = "list",
            member = M.SortCriterion,
        },
        MaxResults = {
            type = "integer",
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
    id = "IllegalBlueprintStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartBlueprintRunInput = {
    type = "structure",
    id = "StartBlueprintRunInput",
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
    id = "StartBlueprintRunOutput",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartColumnStatisticsTaskRunInput = {
    type = "structure",
    id = "StartColumnStatisticsTaskRunInput",
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
            member = { type = "string" },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleSize = {
            type = "double",
            traits = {
                default = 0,
            },
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
    id = "StartColumnStatisticsTaskRunOutput",
    members = {
        ColumnStatisticsTaskRunId = {
            type = "string",
        },
    },
}

M.StartColumnStatisticsTaskRunScheduleInput = {
    type = "structure",
    id = "StartColumnStatisticsTaskRunScheduleInput",
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
    id = "StartColumnStatisticsTaskRunScheduleOutput",
}

M.StartCrawlerInput = {
    type = "structure",
    id = "StartCrawlerInput",
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
    id = "StartCrawlerOutput",
}

M.NoScheduleException = {
    type = "structure",
    id = "NoScheduleException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SchedulerRunningException = {
    type = "structure",
    id = "SchedulerRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCrawlerScheduleInput = {
    type = "structure",
    id = "StartCrawlerScheduleInput",
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
    id = "StartCrawlerScheduleOutput",
}

M.StartDataQualityRuleRecommendationRunInput = {
    type = "structure",
    id = "StartDataQualityRuleRecommendationRunInput",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
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
    id = "StartDataQualityRuleRecommendationRunOutput",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartDataQualityRulesetEvaluationRunInput = {
    type = "structure",
    id = "StartDataQualityRulesetEvaluationRunInput",
    members = {
        DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        ClientToken = {
            type = "string",
        },
        AdditionalRunOptions = M.DataQualityEvaluationRunAdditionalRunOptions,
        RulesetNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AdditionalDataSources = {
            type = "map",
            key = { type = "string" },
            value = M.DataSource,
        },
    },
}

M.StartDataQualityRulesetEvaluationRunOutput = {
    type = "structure",
    id = "StartDataQualityRulesetEvaluationRunOutput",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.StartExportLabelsTaskRunInput = {
    type = "structure",
    id = "StartExportLabelsTaskRunInput",
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
    id = "StartExportLabelsTaskRunOutput",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartImportLabelsTaskRunInput = {
    type = "structure",
    id = "StartImportLabelsTaskRunInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.StartImportLabelsTaskRunOutput = {
    type = "structure",
    id = "StartImportLabelsTaskRunOutput",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartJobRunInput = {
    type = "structure",
    id = "StartJobRunInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        AllocatedCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Timeout = {
            type = "integer",
        },
        MaxCapacity = {
            type = "double",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = M.NotificationProperty,
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
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
    id = "StartJobRunOutput",
    members = {
        JobRunId = {
            type = "string",
        },
    },
}

M.MaterializedViewRefreshTaskRunningException = {
    type = "structure",
    id = "MaterializedViewRefreshTaskRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    id = "StartMaterializedViewRefreshTaskRunInput",
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
    id = "StartMaterializedViewRefreshTaskRunOutput",
    members = {
        MaterializedViewRefreshTaskRunId = {
            type = "string",
        },
    },
}

M.MLTransformNotReadyException = {
    type = "structure",
    id = "MLTransformNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartMLEvaluationTaskRunInput = {
    type = "structure",
    id = "StartMLEvaluationTaskRunInput",
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
    id = "StartMLEvaluationTaskRunOutput",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartMLLabelingSetGenerationTaskRunInput = {
    type = "structure",
    id = "StartMLLabelingSetGenerationTaskRunInput",
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
    id = "StartMLLabelingSetGenerationTaskRunOutput",
    members = {
        TaskRunId = {
            type = "string",
        },
    },
}

M.StartTriggerInput = {
    type = "structure",
    id = "StartTriggerInput",
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
    id = "StartTriggerOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.StartWorkflowRunInput = {
    type = "structure",
    id = "StartWorkflowRunInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartWorkflowRunOutput = {
    type = "structure",
    id = "StartWorkflowRunOutput",
    members = {
        RunId = {
            type = "string",
        },
    },
}

M.ColumnStatisticsTaskNotRunningException = {
    type = "structure",
    id = "ColumnStatisticsTaskNotRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ColumnStatisticsTaskStoppingException = {
    type = "structure",
    id = "ColumnStatisticsTaskStoppingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopColumnStatisticsTaskRunInput = {
    type = "structure",
    id = "StopColumnStatisticsTaskRunInput",
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
    id = "StopColumnStatisticsTaskRunOutput",
}

M.StopColumnStatisticsTaskRunScheduleInput = {
    type = "structure",
    id = "StopColumnStatisticsTaskRunScheduleInput",
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
    id = "StopColumnStatisticsTaskRunScheduleOutput",
}

M.CrawlerNotRunningException = {
    type = "structure",
    id = "CrawlerNotRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CrawlerStoppingException = {
    type = "structure",
    id = "CrawlerStoppingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopCrawlerInput = {
    type = "structure",
    id = "StopCrawlerInput",
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
    id = "StopCrawlerOutput",
}

M.SchedulerNotRunningException = {
    type = "structure",
    id = "SchedulerNotRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopCrawlerScheduleInput = {
    type = "structure",
    id = "StopCrawlerScheduleInput",
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
    id = "StopCrawlerScheduleOutput",
}

M.MaterializedViewRefreshTaskNotRunningException = {
    type = "structure",
    id = "MaterializedViewRefreshTaskNotRunningException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MaterializedViewRefreshTaskStoppingException = {
    type = "structure",
    id = "MaterializedViewRefreshTaskStoppingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StopMaterializedViewRefreshTaskRunInput = {
    type = "structure",
    id = "StopMaterializedViewRefreshTaskRunInput",
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
    id = "StopMaterializedViewRefreshTaskRunOutput",
}

M.StopSessionInput = {
    type = "structure",
    id = "StopSessionInput",
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
    id = "StopSessionOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.StopTriggerInput = {
    type = "structure",
    id = "StopTriggerInput",
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
    id = "StopTriggerOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.StopWorkflowRunInput = {
    type = "structure",
    id = "StopWorkflowRunInput",
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
    id = "StopWorkflowRunOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToAdd = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.TestConnectionInput = {
    type = "structure",
    id = "TestConnectionInput",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionProperties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AuthenticationConfiguration = M.AuthenticationConfigurationInput,
    },
}

M.TestConnectionOperationInput = {
    type = "structure",
    id = "TestConnectionOperationInput",
    members = {
        ConnectionName = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        TestConnectionInput = M.TestConnectionInput,
    },
}

M.TestConnectionOutput = {
    type = "structure",
    id = "TestConnectionOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToRemove = {
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

M.UpdateBlueprintInput = {
    type = "structure",
    id = "UpdateBlueprintInput",
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
    id = "UpdateBlueprintOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.UpdateCatalogInput = {
    type = "structure",
    id = "UpdateCatalogInput",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CatalogInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CatalogInput }),
    },
}

M.UpdateCatalogOutput = {
    type = "structure",
    id = "UpdateCatalogOutput",
}

M.UpdateCsvClassifierRequest = {
    type = "structure",
    id = "UpdateCsvClassifierRequest",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        Serde = {
            type = "string",
        },
    },
}

M.UpdateGrokClassifierRequest = {
    type = "structure",
    id = "UpdateGrokClassifierRequest",
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
    id = "UpdateJsonClassifierRequest",
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
    id = "UpdateXMLClassifierRequest",
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
    id = "UpdateClassifierInput",
    members = {
        GrokClassifier = M.UpdateGrokClassifierRequest,
        XMLClassifier = M.UpdateXMLClassifierRequest,
        JsonClassifier = M.UpdateJsonClassifierRequest,
        CsvClassifier = M.UpdateCsvClassifierRequest,
    },
}

M.UpdateClassifierOutput = {
    type = "structure",
    id = "UpdateClassifierOutput",
}

M.VersionMismatchException = {
    type = "structure",
    id = "VersionMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateColumnStatisticsForPartitionInput = {
    type = "structure",
    id = "UpdateColumnStatisticsForPartitionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ColumnStatisticsList = {
            type = "list",
            member = M.ColumnStatistics,
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnStatisticsError = {
    type = "structure",
    id = "ColumnStatisticsError",
    members = {
        ColumnStatistics = M.ColumnStatistics,
        Error = M.ErrorDetail,
    },
}

M.UpdateColumnStatisticsForPartitionOutput = {
    type = "structure",
    id = "UpdateColumnStatisticsForPartitionOutput",
    members = {
        Errors = {
            type = "list",
            member = M.ColumnStatisticsError,
        },
    },
}

M.UpdateColumnStatisticsForTableInput = {
    type = "structure",
    id = "UpdateColumnStatisticsForTableInput",
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
            member = M.ColumnStatistics,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateColumnStatisticsForTableOutput = {
    type = "structure",
    id = "UpdateColumnStatisticsForTableOutput",
    members = {
        Errors = {
            type = "list",
            member = M.ColumnStatisticsError,
        },
    },
}

M.UpdateColumnStatisticsTaskSettingsInput = {
    type = "structure",
    id = "UpdateColumnStatisticsTaskSettingsInput",
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
            member = { type = "string" },
        },
        SampleSize = {
            type = "double",
            traits = {
                default = 0,
            },
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
    id = "UpdateColumnStatisticsTaskSettingsOutput",
}

M.UpdateConnectionInput = {
    type = "structure",
    id = "UpdateConnectionInput",
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
        ConnectionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectionInput }),
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    id = "UpdateConnectionOutput",
}

M.UpdateCrawlerInput = {
    type = "structure",
    id = "UpdateCrawlerInput",
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
        Targets = M.CrawlerTargets,
        Schedule = {
            type = "string",
        },
        Classifiers = {
            type = "list",
            member = { type = "string" },
        },
        TablePrefix = {
            type = "string",
        },
        SchemaChangePolicy = M.SchemaChangePolicy,
        RecrawlPolicy = M.RecrawlPolicy,
        LineageConfiguration = M.LineageConfiguration,
        LakeFormationConfiguration = M.LakeFormationConfiguration,
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
    id = "UpdateCrawlerOutput",
}

M.UpdateCrawlerScheduleInput = {
    type = "structure",
    id = "UpdateCrawlerScheduleInput",
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
    id = "UpdateCrawlerScheduleOutput",
}

M.UpdateDatabaseInput = {
    type = "structure",
    id = "UpdateDatabaseInput",
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
        DatabaseInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseInput }),
    },
}

M.UpdateDatabaseOutput = {
    type = "structure",
    id = "UpdateDatabaseOutput",
}

M.UpdateDataQualityRulesetInput = {
    type = "structure",
    id = "UpdateDataQualityRulesetInput",
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
    id = "UpdateDataQualityRulesetOutput",
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
    id = "DevEndpointCustomLibraries",
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
    id = "UpdateDevEndpointInput",
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
            member = { type = "string" },
        },
        DeletePublicKeys = {
            type = "list",
            member = { type = "string" },
        },
        CustomLibraries = M.DevEndpointCustomLibraries,
        UpdateEtlLibraries = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeleteArguments = {
            type = "list",
            member = { type = "string" },
        },
        AddArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDevEndpointOutput = {
    type = "structure",
    id = "UpdateDevEndpointOutput",
}

M.UpdateGlueIdentityCenterConfigurationInput = {
    type = "structure",
    id = "UpdateGlueIdentityCenterConfigurationInput",
    members = {
        Scopes = {
            type = "list",
            member = { type = "string" },
        },
        UserBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateGlueIdentityCenterConfigurationOutput = {
    type = "structure",
    id = "UpdateGlueIdentityCenterConfigurationOutput",
}

M.UpdateIntegrationResourcePropertyInput = {
    type = "structure",
    id = "UpdateIntegrationResourcePropertyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
    },
}

M.UpdateIntegrationResourcePropertyOutput = {
    type = "structure",
    id = "UpdateIntegrationResourcePropertyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        ResourcePropertyArn = {
            type = "string",
        },
        SourceProcessingProperties = M.SourceProcessingProperties,
        TargetProcessingProperties = M.TargetProcessingProperties,
    },
}

M.UpdateIntegrationTablePropertiesInput = {
    type = "structure",
    id = "UpdateIntegrationTablePropertiesInput",
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
        SourceTableConfig = M.SourceTableConfig,
        TargetTableConfig = M.TargetTableConfig,
    },
}

M.UpdateIntegrationTablePropertiesOutput = {
    type = "structure",
    id = "UpdateIntegrationTablePropertiesOutput",
}

M.UpdateJobOutput = {
    type = "structure",
    id = "UpdateJobOutput",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.UpdateJobFromSourceControlInput = {
    type = "structure",
    id = "UpdateJobFromSourceControlInput",
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
    id = "UpdateJobFromSourceControlOutput",
    members = {
        JobName = {
            type = "string",
        },
    },
}

M.UpdateMLTransformInput = {
    type = "structure",
    id = "UpdateMLTransformInput",
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
        Parameters = M.TransformParameters,
        Role = {
            type = "string",
        },
        GlueVersion = {
            type = "string",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        MaxRetries = {
            type = "integer",
        },
    },
}

M.UpdateMLTransformOutput = {
    type = "structure",
    id = "UpdateMLTransformOutput",
    members = {
        TransformId = {
            type = "string",
        },
    },
}

M.UpdatePartitionInput = {
    type = "structure",
    id = "UpdatePartitionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PartitionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartitionInput }),
    },
}

M.UpdatePartitionOutput = {
    type = "structure",
    id = "UpdatePartitionOutput",
}

M.UpdateRegistryInput = {
    type = "structure",
    id = "UpdateRegistryInput",
    members = {
        RegistryId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryId }),
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
    id = "UpdateRegistryOutput",
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
    id = "UpdateSchemaInput",
    members = {
        SchemaId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaId }),
        SchemaVersionNumber = M.SchemaVersionNumber,
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
    id = "UpdateSchemaOutput",
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
    id = "UpdateSourceControlFromJobInput",
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
    id = "UpdateSourceControlFromJobOutput",
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
    id = "IcebergEncryptedKey",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IcebergTableUpdate = {
    type = "structure",
    id = "IcebergTableUpdate",
    members = {
        Schema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IcebergSchema }),
        PartitionSpec = M.IcebergPartitionSpec,
        SortOrder = M.IcebergSortOrder,
        Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Action = {
            type = "string",
        },
        EncryptionKey = M.IcebergEncryptedKey,
        KeyId = {
            type = "string",
        },
    },
}

M.UpdateIcebergTableInput = {
    type = "structure",
    id = "UpdateIcebergTableInput",
    members = {
        Updates = {
            type = "list",
            member = M.IcebergTableUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIcebergInput = {
    type = "structure",
    id = "UpdateIcebergInput",
    members = {
        UpdateIcebergTableInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateIcebergTableInput }),
    },
}

M.UpdateOpenTableFormatInput = {
    type = "structure",
    id = "UpdateOpenTableFormatInput",
    members = {
        UpdateIcebergInput = M.UpdateIcebergInput,
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
    id = "UpdateTableInput",
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
        TableInput = M.TableInput,
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
            traits = {
                default = false,
            },
        },
        UpdateOpenTableFormatInput = M.UpdateOpenTableFormatInput,
    },
}

M.UpdateTableOutput = {
    type = "structure",
    id = "UpdateTableOutput",
}

M.UpdateTableOptimizerInput = {
    type = "structure",
    id = "UpdateTableOptimizerInput",
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
        TableOptimizerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableOptimizerConfiguration }),
    },
}

M.UpdateTableOptimizerOutput = {
    type = "structure",
    id = "UpdateTableOptimizerOutput",
}

M.TriggerUpdate = {
    type = "structure",
    id = "TriggerUpdate",
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
            member = M.Action,
        },
        Predicate = M.Predicate,
        EventBatchingCondition = M.EventBatchingCondition,
    },
}

M.UpdateTriggerInput = {
    type = "structure",
    id = "UpdateTriggerInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TriggerUpdate }),
    },
}

M.UpdateTriggerOutput = {
    type = "structure",
    id = "UpdateTriggerOutput",
    members = {
        Trigger = M.Trigger,
    },
}

M.UpdateUsageProfileInput = {
    type = "structure",
    id = "UpdateUsageProfileInput",
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
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProfileConfiguration }),
    },
}

M.UpdateUsageProfileOutput = {
    type = "structure",
    id = "UpdateUsageProfileOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.UpdateUserDefinedFunctionInput = {
    type = "structure",
    id = "UpdateUserDefinedFunctionInput",
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
        FunctionInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDefinedFunctionInput }),
    },
}

M.UpdateUserDefinedFunctionOutput = {
    type = "structure",
    id = "UpdateUserDefinedFunctionOutput",
}

M.UpdateWorkflowInput = {
    type = "structure",
    id = "UpdateWorkflowInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxConcurrentRuns = {
            type = "integer",
        },
    },
}

M.UpdateWorkflowOutput = {
    type = "structure",
    id = "UpdateWorkflowOutput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Mapping = {
    type = "structure",
    id = "Mapping",
    members = {
        ToKey = {
            type = "string",
        },
        FromPath = {
            type = "list",
            member = { type = "string" },
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
            member = M.Mapping,
        },
    },
}

M.ApplyMapping = {
    type = "structure",
    id = "ApplyMapping",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Inputs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Mapping = {
            type = "list",
            member = M.Mapping,
            traits = {
                required = true,
            },
        },
    },
}

M.StatusDetails = {
    type = "structure",
    id = "StatusDetails",
    members = {
        RequestedChange = M.Table,
        ViewValidations = {
            type = "list",
            member = M.ViewValidation,
        },
    },
}

M.Table = {
    type = "structure",
    id = "Table",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StorageDescriptor = M.StorageDescriptor,
        PartitionKeys = {
            type = "list",
            member = M.Column,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedBy = {
            type = "string",
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TargetTable = M.TableIdentifier,
        CatalogId = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        FederatedTable = M.FederatedTable,
        ViewDefinition = M.ViewDefinition,
        IsMultiDialectView = {
            type = "boolean",
        },
        IsMaterializedView = {
            type = "boolean",
        },
        Status = M.TableStatus,
    },
}

M.TableStatus = {
    type = "structure",
    id = "TableStatus",
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
        Error = M.ErrorDetail,
        Details = M.StatusDetails,
    },
}

M.CodeGenConfigurationNode = {
    type = "structure",
    id = "CodeGenConfigurationNode",
    members = {
        AthenaConnectorSource = M.AthenaConnectorSource,
        JDBCConnectorSource = M.JDBCConnectorSource,
        SparkConnectorSource = M.SparkConnectorSource,
        CatalogSource = M.CatalogSource,
        RedshiftSource = M.RedshiftSource,
        S3CatalogSource = M.S3CatalogSource,
        S3CsvSource = M.S3CsvSource,
        S3JsonSource = M.S3JsonSource,
        S3ParquetSource = M.S3ParquetSource,
        RelationalCatalogSource = M.RelationalCatalogSource,
        DynamoDBCatalogSource = M.DynamoDBCatalogSource,
        JDBCConnectorTarget = M.JDBCConnectorTarget,
        SparkConnectorTarget = M.SparkConnectorTarget,
        CatalogTarget = M.BasicCatalogTarget,
        RedshiftTarget = M.RedshiftTarget,
        S3CatalogTarget = M.S3CatalogTarget,
        S3GlueParquetTarget = M.S3GlueParquetTarget,
        S3DirectTarget = M.S3DirectTarget,
        ApplyMapping = M.ApplyMapping,
        SelectFields = M.SelectFields,
        DropFields = M.DropFields,
        RenameField = M.RenameField,
        Spigot = M.Spigot,
        Join = M.Join,
        SplitFields = M.SplitFields,
        SelectFromCollection = M.SelectFromCollection,
        FillMissingValues = M.FillMissingValues,
        Filter = M.Filter,
        CustomCode = M.CustomCode,
        SparkSQL = M.SparkSQL,
        DirectKinesisSource = M.DirectKinesisSource,
        DirectKafkaSource = M.DirectKafkaSource,
        CatalogKinesisSource = M.CatalogKinesisSource,
        CatalogKafkaSource = M.CatalogKafkaSource,
        DropNullFields = M.DropNullFields,
        Merge = M.Merge,
        Union = M.Union,
        PIIDetection = M.PIIDetection,
        Aggregate = M.Aggregate,
        DropDuplicates = M.DropDuplicates,
        GovernedCatalogTarget = M.GovernedCatalogTarget,
        GovernedCatalogSource = M.GovernedCatalogSource,
        MicrosoftSQLServerCatalogSource = M.MicrosoftSQLServerCatalogSource,
        MySQLCatalogSource = M.MySQLCatalogSource,
        OracleSQLCatalogSource = M.OracleSQLCatalogSource,
        PostgreSQLCatalogSource = M.PostgreSQLCatalogSource,
        MicrosoftSQLServerCatalogTarget = M.MicrosoftSQLServerCatalogTarget,
        MySQLCatalogTarget = M.MySQLCatalogTarget,
        OracleSQLCatalogTarget = M.OracleSQLCatalogTarget,
        PostgreSQLCatalogTarget = M.PostgreSQLCatalogTarget,
        Route = M.Route,
        DynamicTransform = M.DynamicTransform,
        EvaluateDataQuality = M.EvaluateDataQuality,
        S3CatalogHudiSource = M.S3CatalogHudiSource,
        CatalogHudiSource = M.CatalogHudiSource,
        S3HudiSource = M.S3HudiSource,
        S3HudiCatalogTarget = M.S3HudiCatalogTarget,
        S3HudiDirectTarget = M.S3HudiDirectTarget,
        DirectJDBCSource = M.DirectJDBCSource,
        S3CatalogDeltaSource = M.S3CatalogDeltaSource,
        CatalogDeltaSource = M.CatalogDeltaSource,
        S3DeltaSource = M.S3DeltaSource,
        S3DeltaCatalogTarget = M.S3DeltaCatalogTarget,
        S3DeltaDirectTarget = M.S3DeltaDirectTarget,
        AmazonRedshiftSource = M.AmazonRedshiftSource,
        AmazonRedshiftTarget = M.AmazonRedshiftTarget,
        EvaluateDataQualityMultiFrame = M.EvaluateDataQualityMultiFrame,
        Recipe = M.Recipe,
        SnowflakeSource = M.SnowflakeSource,
        SnowflakeTarget = M.SnowflakeTarget,
        ConnectorDataSource = M.ConnectorDataSource,
        ConnectorDataTarget = M.ConnectorDataTarget,
        S3CatalogIcebergSource = M.S3CatalogIcebergSource,
        CatalogIcebergSource = M.CatalogIcebergSource,
        S3IcebergCatalogTarget = M.S3IcebergCatalogTarget,
        S3IcebergDirectTarget = M.S3IcebergDirectTarget,
        S3ExcelSource = M.S3ExcelSource,
        S3HyperDirectTarget = M.S3HyperDirectTarget,
        DynamoDBELTConnectorSource = M.DynamoDBELTConnectorSource,
    },
}

M.GetTableOutput = {
    type = "structure",
    id = "GetTableOutput",
    members = {
        Table = M.Table,
    },
}

M.GetUnfilteredTableMetadataOutput = {
    type = "structure",
    id = "GetUnfilteredTableMetadataOutput",
    members = {
        Table = M.Table,
        AuthorizedColumns = {
            type = "list",
            member = { type = "string" },
        },
        IsRegisteredWithLakeFormation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CellFilters = {
            type = "list",
            member = M.ColumnRowFilter,
        },
        QueryAuthorizationId = {
            type = "string",
        },
        IsMultiDialectView = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IsMaterializedView = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ResourceArn = {
            type = "string",
        },
        IsProtected = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        RowFilter = {
            type = "string",
        },
    },
}

M.TableVersion = {
    type = "structure",
    id = "TableVersion",
    members = {
        Table = M.Table,
        VersionId = {
            type = "string",
        },
    },
}

M.GetTablesOutput = {
    type = "structure",
    id = "GetTablesOutput",
    members = {
        TableList = {
            type = "list",
            member = M.Table,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTableVersionOutput = {
    type = "structure",
    id = "GetTableVersionOutput",
    members = {
        TableVersion = M.TableVersion,
    },
}

M.SearchTablesOutput = {
    type = "structure",
    id = "SearchTablesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TableList = {
            type = "list",
            member = M.Table,
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    id = "CreateJobInput",
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
        ExecutionProperty = M.ExecutionProperty,
        Command = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobCommand }),
        DefaultArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NonOverridableArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Connections = M.ConnectionsList,
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AllocatedCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Timeout = {
            type = "integer",
        },
        MaxCapacity = {
            type = "double",
        },
        SecurityConfiguration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NotificationProperty = M.NotificationProperty,
        GlueVersion = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        WorkerType = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key = { type = "string" },
            value = M.CodeGenConfigurationNode,
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = M.SourceControlDetails,
        MaintenanceWindow = {
            type = "string",
        },
    },
}

M.GetTableVersionsOutput = {
    type = "structure",
    id = "GetTableVersionsOutput",
    members = {
        TableVersions = {
            type = "list",
            member = M.TableVersion,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Job = {
    type = "structure",
    id = "Job",
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
        ExecutionProperty = M.ExecutionProperty,
        Command = M.JobCommand,
        DefaultArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NonOverridableArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Connections = M.ConnectionsList,
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AllocatedCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Timeout = {
            type = "integer",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = M.NotificationProperty,
        GlueVersion = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key = { type = "string" },
            value = M.CodeGenConfigurationNode,
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = M.SourceControlDetails,
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
    id = "JobUpdate",
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
        ExecutionProperty = M.ExecutionProperty,
        Command = M.JobCommand,
        DefaultArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NonOverridableArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Connections = M.ConnectionsList,
        MaxRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AllocatedCapacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Timeout = {
            type = "integer",
        },
        MaxCapacity = {
            type = "double",
        },
        WorkerType = {
            type = "string",
        },
        NumberOfWorkers = {
            type = "integer",
        },
        SecurityConfiguration = {
            type = "string",
        },
        NotificationProperty = M.NotificationProperty,
        GlueVersion = {
            type = "string",
        },
        CodeGenConfigurationNodes = {
            type = "map",
            key = { type = "string" },
            value = M.CodeGenConfigurationNode,
        },
        ExecutionClass = {
            type = "string",
        },
        SourceControlDetails = M.SourceControlDetails,
        MaintenanceWindow = {
            type = "string",
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    id = "GetJobOutput",
    members = {
        Job = M.Job,
    },
}

M.UpdateJobInput = {
    type = "structure",
    id = "UpdateJobInput",
    members = {
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobUpdate }),
    },
}

M.BatchGetJobsOutput = {
    type = "structure",
    id = "BatchGetJobsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
        },
        JobsNotFound = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetJobsOutput = {
    type = "structure",
    id = "GetJobsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
