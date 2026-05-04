local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthenticationType = {
    API_KEY = "API_KEY",
    AWS_IAM = "AWS_IAM",
    AMAZON_COGNITO_USER_POOLS = "AMAZON_COGNITO_USER_POOLS",
    OPENID_CONNECT = "OPENID_CONNECT",
    AWS_LAMBDA = "AWS_LAMBDA",
}

M.LambdaAuthorizerConfig = {
    type = "structure",
    id = "LambdaAuthorizerConfig",
    members = {
        authorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        authorizerUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityValidationExpression = {
            type = "string",
        },
    },
}

M.OpenIDConnectConfig = {
    type = "structure",
    id = "OpenIDConnectConfig",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
        },
        iatTTL = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        authTTL = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CognitoUserPoolConfig = {
    type = "structure",
    id = "CognitoUserPoolConfig",
    members = {
        userPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appIdClientRegex = {
            type = "string",
        },
    },
}

M.AdditionalAuthenticationProvider = {
    type = "structure",
    id = "AdditionalAuthenticationProvider",
    members = {
        authenticationType = {
            type = "string",
        },
        openIDConnectConfig = M.OpenIDConnectConfig,
        userPoolConfig = M.CognitoUserPoolConfig,
        lambdaAuthorizerConfig = M.LambdaAuthorizerConfig,
    },
}

M.CognitoConfig = {
    type = "structure",
    id = "CognitoConfig",
    members = {
        userPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appIdClientRegex = {
            type = "string",
        },
    },
}

M.AuthProvider = {
    type = "structure",
    id = "AuthProvider",
    members = {
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cognitoConfig = M.CognitoConfig,
        openIDConnectConfig = M.OpenIDConnectConfig,
        lambdaAuthorizerConfig = M.LambdaAuthorizerConfig,
    },
}

M.AuthMode = {
    type = "structure",
    id = "AuthMode",
    members = {
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventLogLevel = {
    NONE = "NONE",
    ERROR = "ERROR",
    ALL = "ALL",
    INFO = "INFO",
    DEBUG = "DEBUG",
}

M.EventLogConfig = {
    type = "structure",
    id = "EventLogConfig",
    members = {
        logLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudWatchLogsRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventConfig = {
    type = "structure",
    id = "EventConfig",
    members = {
        authProviders = {
            type = "list",
            member = M.AuthProvider,
            traits = {
                required = true,
            },
        },
        connectionAuthModes = {
            type = "list",
            member = M.AuthMode,
            traits = {
                required = true,
            },
        },
        defaultPublishAuthModes = {
            type = "list",
            member = M.AuthMode,
            traits = {
                required = true,
            },
        },
        defaultSubscribeAuthModes = {
            type = "list",
            member = M.AuthMode,
            traits = {
                required = true,
            },
        },
        logConfig = M.EventLogConfig,
    },
}

M.Api = {
    type = "structure",
    id = "Api",
    members = {
        apiId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        ownerContact = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        apiArn = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        xrayEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        wafWebAclArn = {
            type = "string",
        },
        eventConfig = M.EventConfig,
    },
}

M.AssociationStatus = {
    Processing = "PROCESSING",
    Failed = "FAILED",
    Success = "SUCCESS",
}

M.ApiAssociation = {
    type = "structure",
    id = "ApiAssociation",
    members = {
        domainName = {
            type = "string",
        },
        apiId = {
            type = "string",
        },
        associationStatus = {
            type = "string",
        },
        deploymentDetail = {
            type = "string",
        },
    },
}

M.ApiCachingBehavior = {
    FULL_REQUEST_CACHING = "FULL_REQUEST_CACHING",
    PER_RESOLVER_CACHING = "PER_RESOLVER_CACHING",
    OPERATION_LEVEL_CACHING = "OPERATION_LEVEL_CACHING",
}

M.CacheHealthMetricsConfig = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ApiCacheStatus = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    MODIFYING = "MODIFYING",
    FAILED = "FAILED",
}

M.ApiCacheType = {
    T2_SMALL = "T2_SMALL",
    T2_MEDIUM = "T2_MEDIUM",
    R4_LARGE = "R4_LARGE",
    R4_XLARGE = "R4_XLARGE",
    R4_2XLARGE = "R4_2XLARGE",
    R4_4XLARGE = "R4_4XLARGE",
    R4_8XLARGE = "R4_8XLARGE",
    SMALL = "SMALL",
    MEDIUM = "MEDIUM",
    LARGE = "LARGE",
    XLARGE = "XLARGE",
    LARGE_2X = "LARGE_2X",
    LARGE_4X = "LARGE_4X",
    LARGE_8X = "LARGE_8X",
    LARGE_12X = "LARGE_12X",
}

M.ApiCache = {
    type = "structure",
    id = "ApiCache",
    members = {
        ttl = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        apiCachingBehavior = {
            type = "string",
        },
        transitEncryptionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        atRestEncryptionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        healthMetricsConfig = {
            type = "string",
        },
    },
}

M.ApiKey = {
    type = "structure",
    id = "ApiKey",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        expires = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        deletes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ApiKeyLimitExceededException = {
    type = "structure",
    id = "ApiKeyLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiKeyValidityOutOfBoundsException = {
    type = "structure",
    id = "ApiKeyValidityOutOfBoundsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiLimitExceededException = {
    type = "structure",
    id = "ApiLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RuntimeName = {
    APPSYNC_JS = "APPSYNC_JS",
}

M.AppSyncRuntime = {
    type = "structure",
    id = "AppSyncRuntime",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runtimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApiInput = {
    type = "structure",
    id = "AssociateApiInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        apiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApiOutput = {
    type = "structure",
    id = "AssociateApiOutput",
    members = {
        apiAssociation = M.ApiAssociation,
    },
}

M.CodeErrorLocation = {
    type = "structure",
    id = "CodeErrorLocation",
    members = {
        line = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        column = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        span = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CodeError = {
    type = "structure",
    id = "CodeError",
    members = {
        errorType = {
            type = "string",
        },
        value = {
            type = "string",
        },
        location = M.CodeErrorLocation,
    },
}

M.BadRequestDetail = {
    type = "structure",
    id = "BadRequestDetail",
    members = {
        codeErrors = {
            type = "list",
            member = M.CodeError,
        },
    },
}

M.BadRequestReason = {
    CODE_ERROR = "CODE_ERROR",
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        detail = M.BadRequestDetail,
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergeType = {
    MANUAL_MERGE = "MANUAL_MERGE",
    AUTO_MERGE = "AUTO_MERGE",
}

M.SourceApiAssociationConfig = {
    type = "structure",
    id = "SourceApiAssociationConfig",
    members = {
        mergeType = {
            type = "string",
        },
    },
}

M.AssociateMergedGraphqlApiInput = {
    type = "structure",
    id = "AssociateMergedGraphqlApiInput",
    members = {
        sourceApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mergedApiIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        sourceApiAssociationConfig = M.SourceApiAssociationConfig,
    },
}

M.SourceApiAssociationStatus = {
    MERGE_SCHEDULED = "MERGE_SCHEDULED",
    MERGE_FAILED = "MERGE_FAILED",
    MERGE_SUCCESS = "MERGE_SUCCESS",
    MERGE_IN_PROGRESS = "MERGE_IN_PROGRESS",
    AUTO_MERGE_SCHEDULE_FAILED = "AUTO_MERGE_SCHEDULE_FAILED",
    DELETION_SCHEDULED = "DELETION_SCHEDULED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    DELETION_FAILED = "DELETION_FAILED",
}

M.SourceApiAssociation = {
    type = "structure",
    id = "SourceApiAssociation",
    members = {
        associationId = {
            type = "string",
        },
        associationArn = {
            type = "string",
        },
        sourceApiId = {
            type = "string",
        },
        sourceApiArn = {
            type = "string",
        },
        mergedApiArn = {
            type = "string",
        },
        mergedApiId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        sourceApiAssociationConfig = M.SourceApiAssociationConfig,
        sourceApiAssociationStatus = {
            type = "string",
        },
        sourceApiAssociationStatusDetail = {
            type = "string",
        },
        lastSuccessfulMergeDate = {
            type = "timestamp",
        },
    },
}

M.AssociateMergedGraphqlApiOutput = {
    type = "structure",
    id = "AssociateMergedGraphqlApiOutput",
    members = {
        sourceApiAssociation = M.SourceApiAssociation,
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateSourceGraphqlApiInput = {
    type = "structure",
    id = "AssociateSourceGraphqlApiInput",
    members = {
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceApiIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        sourceApiAssociationConfig = M.SourceApiAssociationConfig,
    },
}

M.AssociateSourceGraphqlApiOutput = {
    type = "structure",
    id = "AssociateSourceGraphqlApiOutput",
    members = {
        sourceApiAssociation = M.SourceApiAssociation,
    },
}

M.AuthorizationType = {
    AWS_IAM = "AWS_IAM",
}

M.AwsIamConfig = {
    type = "structure",
    id = "AwsIamConfig",
    members = {
        signingRegion = {
            type = "string",
        },
        signingServiceName = {
            type = "string",
        },
    },
}

M.AuthorizationConfig = {
    type = "structure",
    id = "AuthorizationConfig",
    members = {
        authorizationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsIamConfig = M.AwsIamConfig,
    },
}

M.CreateApiInput = {
    type = "structure",
    id = "CreateApiInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerContact = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        eventConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventConfig }),
    },
}

M.CreateApiOutput = {
    type = "structure",
    id = "CreateApiOutput",
    members = {
        api = M.Api,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApiCacheInput = {
    type = "structure",
    id = "CreateApiCacheInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ttl = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        transitEncryptionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        atRestEncryptionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        apiCachingBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthMetricsConfig = {
            type = "string",
        },
    },
}

M.CreateApiCacheOutput = {
    type = "structure",
    id = "CreateApiCacheOutput",
    members = {
        apiCache = M.ApiCache,
    },
}

M.CreateApiKeyInput = {
    type = "structure",
    id = "CreateApiKeyInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        expires = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateApiKeyOutput = {
    type = "structure",
    id = "CreateApiKeyOutput",
    members = {
        apiKey = M.ApiKey,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HandlerBehavior = {
    CODE = "CODE",
    DIRECT = "DIRECT",
}

M.InvokeType = {
    REQUEST_RESPONSE = "REQUEST_RESPONSE",
    EVENT = "EVENT",
}

M.LambdaConfig = {
    type = "structure",
    id = "LambdaConfig",
    members = {
        invokeType = {
            type = "string",
        },
    },
}

M.Integration = {
    type = "structure",
    id = "Integration",
    members = {
        dataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambdaConfig = M.LambdaConfig,
    },
}

M.HandlerConfig = {
    type = "structure",
    id = "HandlerConfig",
    members = {
        behavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Integration }),
    },
}

M.HandlerConfigs = {
    type = "structure",
    id = "HandlerConfigs",
    members = {
        onPublish = M.HandlerConfig,
        onSubscribe = M.HandlerConfig,
    },
}

M.CreateChannelNamespaceInput = {
    type = "structure",
    id = "CreateChannelNamespaceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscribeAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        publishAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        codeHandlers = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        handlerConfigs = M.HandlerConfigs,
    },
}

M.ChannelNamespace = {
    type = "structure",
    id = "ChannelNamespace",
    members = {
        apiId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        subscribeAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        publishAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        codeHandlers = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        channelNamespaceArn = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        lastModified = {
            type = "timestamp",
        },
        handlerConfigs = M.HandlerConfigs,
    },
}

M.CreateChannelNamespaceOutput = {
    type = "structure",
    id = "CreateChannelNamespaceOutput",
    members = {
        channelNamespace = M.ChannelNamespace,
    },
}

M.DeltaSyncConfig = {
    type = "structure",
    id = "DeltaSyncConfig",
    members = {
        baseTableTTL = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        deltaSyncTableName = {
            type = "string",
        },
        deltaSyncTableTTL = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DynamodbDataSourceConfig = {
    type = "structure",
    id = "DynamodbDataSourceConfig",
    members = {
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        useCallerCredentials = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        deltaSyncConfig = M.DeltaSyncConfig,
        versioned = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ElasticsearchDataSourceConfig = {
    type = "structure",
    id = "ElasticsearchDataSourceConfig",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventBridgeDataSourceConfig = {
    type = "structure",
    id = "EventBridgeDataSourceConfig",
    members = {
        eventBusArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HttpDataSourceConfig = {
    type = "structure",
    id = "HttpDataSourceConfig",
    members = {
        endpoint = {
            type = "string",
        },
        authorizationConfig = M.AuthorizationConfig,
    },
}

M.LambdaDataSourceConfig = {
    type = "structure",
    id = "LambdaDataSourceConfig",
    members = {
        lambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceLevelMetricsConfig = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.OpenSearchServiceDataSourceConfig = {
    type = "structure",
    id = "OpenSearchServiceDataSourceConfig",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RdsHttpEndpointConfig = {
    type = "structure",
    id = "RdsHttpEndpointConfig",
    members = {
        awsRegion = {
            type = "string",
        },
        dbClusterIdentifier = {
            type = "string",
        },
        databaseName = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        awsSecretStoreArn = {
            type = "string",
        },
    },
}

M.RelationalDatabaseSourceType = {
    RDS_HTTP_ENDPOINT = "RDS_HTTP_ENDPOINT",
}

M.RelationalDatabaseDataSourceConfig = {
    type = "structure",
    id = "RelationalDatabaseDataSourceConfig",
    members = {
        relationalDatabaseSourceType = {
            type = "string",
        },
        rdsHttpEndpointConfig = M.RdsHttpEndpointConfig,
    },
}

M.DataSourceType = {
    AWS_LAMBDA = "AWS_LAMBDA",
    AMAZON_DYNAMODB = "AMAZON_DYNAMODB",
    AMAZON_ELASTICSEARCH = "AMAZON_ELASTICSEARCH",
    NONE = "NONE",
    HTTP = "HTTP",
    RELATIONAL_DATABASE = "RELATIONAL_DATABASE",
    AMAZON_OPENSEARCH_SERVICE = "AMAZON_OPENSEARCH_SERVICE",
    AMAZON_EVENTBRIDGE = "AMAZON_EVENTBRIDGE",
    AMAZON_BEDROCK_RUNTIME = "AMAZON_BEDROCK_RUNTIME",
}

M.CreateDataSourceInput = {
    type = "structure",
    id = "CreateDataSourceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceRoleArn = {
            type = "string",
        },
        dynamodbConfig = M.DynamodbDataSourceConfig,
        lambdaConfig = M.LambdaDataSourceConfig,
        elasticsearchConfig = M.ElasticsearchDataSourceConfig,
        openSearchServiceConfig = M.OpenSearchServiceDataSourceConfig,
        httpConfig = M.HttpDataSourceConfig,
        relationalDatabaseConfig = M.RelationalDatabaseDataSourceConfig,
        eventBridgeConfig = M.EventBridgeDataSourceConfig,
        metricsConfig = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
    id = "DataSource",
    members = {
        dataSourceArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        serviceRoleArn = {
            type = "string",
        },
        dynamodbConfig = M.DynamodbDataSourceConfig,
        lambdaConfig = M.LambdaDataSourceConfig,
        elasticsearchConfig = M.ElasticsearchDataSourceConfig,
        openSearchServiceConfig = M.OpenSearchServiceDataSourceConfig,
        httpConfig = M.HttpDataSourceConfig,
        relationalDatabaseConfig = M.RelationalDatabaseDataSourceConfig,
        eventBridgeConfig = M.EventBridgeDataSourceConfig,
        metricsConfig = {
            type = "string",
        },
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    id = "CreateDataSourceOutput",
    members = {
        dataSource = M.DataSource,
    },
}

M.CreateDomainNameInput = {
    type = "structure",
    id = "CreateDomainNameInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DomainNameConfig = {
    type = "structure",
    id = "DomainNameConfig",
    members = {
        domainName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        appsyncDomainName = {
            type = "string",
        },
        hostedZoneId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        domainNameArn = {
            type = "string",
        },
    },
}

M.CreateDomainNameOutput = {
    type = "structure",
    id = "CreateDomainNameOutput",
    members = {
        domainNameConfig = M.DomainNameConfig,
    },
}

M.ConflictDetectionType = {
    VERSION = "VERSION",
    NONE = "NONE",
}

M.ConflictHandlerType = {
    OPTIMISTIC_CONCURRENCY = "OPTIMISTIC_CONCURRENCY",
    LAMBDA = "LAMBDA",
    AUTOMERGE = "AUTOMERGE",
    NONE = "NONE",
}

M.LambdaConflictHandlerConfig = {
    type = "structure",
    id = "LambdaConflictHandlerConfig",
    members = {
        lambdaConflictHandlerArn = {
            type = "string",
        },
    },
}

M.SyncConfig = {
    type = "structure",
    id = "SyncConfig",
    members = {
        conflictHandler = {
            type = "string",
        },
        conflictDetection = {
            type = "string",
        },
        lambdaConflictHandlerConfig = M.LambdaConflictHandlerConfig,
    },
}

M.CreateFunctionInput = {
    type = "structure",
    id = "CreateFunctionInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        dataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        functionVersion = {
            type = "string",
        },
        syncConfig = M.SyncConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
    },
}

M.FunctionConfiguration = {
    type = "structure",
    id = "FunctionConfiguration",
    members = {
        functionId = {
            type = "string",
        },
        functionArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dataSourceName = {
            type = "string",
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        functionVersion = {
            type = "string",
        },
        syncConfig = M.SyncConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
    },
}

M.CreateFunctionOutput = {
    type = "structure",
    id = "CreateFunctionOutput",
    members = {
        functionConfiguration = M.FunctionConfiguration,
    },
}

M.GraphQLApiType = {
    GRAPHQL = "GRAPHQL",
    MERGED = "MERGED",
}

M.DataSourceLevelMetricsBehavior = {
    FULL_REQUEST_DATA_SOURCE_METRICS = "FULL_REQUEST_DATA_SOURCE_METRICS",
    PER_DATA_SOURCE_METRICS = "PER_DATA_SOURCE_METRICS",
}

M.OperationLevelMetricsConfig = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ResolverLevelMetricsBehavior = {
    FULL_REQUEST_RESOLVER_METRICS = "FULL_REQUEST_RESOLVER_METRICS",
    PER_RESOLVER_METRICS = "PER_RESOLVER_METRICS",
}

M.EnhancedMetricsConfig = {
    type = "structure",
    id = "EnhancedMetricsConfig",
    members = {
        resolverLevelMetricsBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceLevelMetricsBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operationLevelMetricsConfig = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GraphQLApiIntrospectionConfig = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FieldLogLevel = {
    NONE = "NONE",
    ERROR = "ERROR",
    ALL = "ALL",
    INFO = "INFO",
    DEBUG = "DEBUG",
}

M.LogConfig = {
    type = "structure",
    id = "LogConfig",
    members = {
        fieldLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudWatchLogsRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        excludeVerboseContent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DefaultAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.UserPoolConfig = {
    type = "structure",
    id = "UserPoolConfig",
    members = {
        userPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appIdClientRegex = {
            type = "string",
        },
    },
}

M.GraphQLApiVisibility = {
    GLOBAL = "GLOBAL",
    PRIVATE = "PRIVATE",
}

M.CreateGraphqlApiInput = {
    type = "structure",
    id = "CreateGraphqlApiInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logConfig = M.LogConfig,
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userPoolConfig = M.UserPoolConfig,
        openIDConnectConfig = M.OpenIDConnectConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        additionalAuthenticationProviders = {
            type = "list",
            member = M.AdditionalAuthenticationProvider,
        },
        xrayEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lambdaAuthorizerConfig = M.LambdaAuthorizerConfig,
        apiType = {
            type = "string",
        },
        mergedApiExecutionRoleArn = {
            type = "string",
        },
        visibility = {
            type = "string",
        },
        ownerContact = {
            type = "string",
        },
        introspectionConfig = {
            type = "string",
        },
        queryDepthLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        resolverCountLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        enhancedMetricsConfig = M.EnhancedMetricsConfig,
    },
}

M.GraphqlApi = {
    type = "structure",
    id = "GraphqlApi",
    members = {
        name = {
            type = "string",
        },
        apiId = {
            type = "string",
        },
        authenticationType = {
            type = "string",
        },
        logConfig = M.LogConfig,
        userPoolConfig = M.UserPoolConfig,
        openIDConnectConfig = M.OpenIDConnectConfig,
        arn = {
            type = "string",
        },
        uris = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        additionalAuthenticationProviders = {
            type = "list",
            member = M.AdditionalAuthenticationProvider,
        },
        xrayEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        wafWebAclArn = {
            type = "string",
        },
        lambdaAuthorizerConfig = M.LambdaAuthorizerConfig,
        dns = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        visibility = {
            type = "string",
        },
        apiType = {
            type = "string",
        },
        mergedApiExecutionRoleArn = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        ownerContact = {
            type = "string",
        },
        introspectionConfig = {
            type = "string",
        },
        queryDepthLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        resolverCountLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        enhancedMetricsConfig = M.EnhancedMetricsConfig,
    },
}

M.CreateGraphqlApiOutput = {
    type = "structure",
    id = "CreateGraphqlApiOutput",
    members = {
        graphqlApi = M.GraphqlApi,
    },
}

M.CachingConfig = {
    type = "structure",
    id = "CachingConfig",
    members = {
        ttl = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        cachingKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResolverKind = {
    UNIT = "UNIT",
    PIPELINE = "PIPELINE",
}

M.ResolverLevelMetricsConfig = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PipelineConfig = {
    type = "structure",
    id = "PipelineConfig",
    members = {
        functions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateResolverInput = {
    type = "structure",
    id = "CreateResolverInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataSourceName = {
            type = "string",
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        kind = {
            type = "string",
        },
        pipelineConfig = M.PipelineConfig,
        syncConfig = M.SyncConfig,
        cachingConfig = M.CachingConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.Resolver = {
    type = "structure",
    id = "Resolver",
    members = {
        typeName = {
            type = "string",
        },
        fieldName = {
            type = "string",
        },
        dataSourceName = {
            type = "string",
        },
        resolverArn = {
            type = "string",
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        kind = {
            type = "string",
        },
        pipelineConfig = M.PipelineConfig,
        syncConfig = M.SyncConfig,
        cachingConfig = M.CachingConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.CreateResolverOutput = {
    type = "structure",
    id = "CreateResolverOutput",
    members = {
        resolver = M.Resolver,
    },
}

M.TypeDefinitionFormat = {
    SDL = "SDL",
    JSON = "JSON",
}

M.CreateTypeInput = {
    type = "structure",
    id = "CreateTypeInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Type = {
    type = "structure",
    id = "Type",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        definition = {
            type = "string",
        },
        format = {
            type = "string",
        },
    },
}

M.CreateTypeOutput = {
    type = "structure",
    id = "CreateTypeOutput",
    members = {
        type = M.Type,
    },
}

M.DeleteApiInput = {
    type = "structure",
    id = "DeleteApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiOutput = {
    type = "structure",
    id = "DeleteApiOutput",
}

M.DeleteApiCacheInput = {
    type = "structure",
    id = "DeleteApiCacheInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiCacheOutput = {
    type = "structure",
    id = "DeleteApiCacheOutput",
}

M.DeleteApiKeyInput = {
    type = "structure",
    id = "DeleteApiKeyInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiKeyOutput = {
    type = "structure",
    id = "DeleteApiKeyOutput",
}

M.DeleteChannelNamespaceInput = {
    type = "structure",
    id = "DeleteChannelNamespaceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChannelNamespaceOutput = {
    type = "structure",
    id = "DeleteChannelNamespaceOutput",
}

M.DeleteDataSourceInput = {
    type = "structure",
    id = "DeleteDataSourceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSourceOutput = {
    type = "structure",
    id = "DeleteDataSourceOutput",
}

M.DeleteDomainNameInput = {
    type = "structure",
    id = "DeleteDomainNameInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainNameOutput = {
    type = "structure",
    id = "DeleteDomainNameOutput",
}

M.DeleteFunctionInput = {
    type = "structure",
    id = "DeleteFunctionInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        functionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFunctionOutput = {
    type = "structure",
    id = "DeleteFunctionOutput",
}

M.DeleteGraphqlApiInput = {
    type = "structure",
    id = "DeleteGraphqlApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGraphqlApiOutput = {
    type = "structure",
    id = "DeleteGraphqlApiOutput",
}

M.DeleteResolverInput = {
    type = "structure",
    id = "DeleteResolverInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResolverOutput = {
    type = "structure",
    id = "DeleteResolverOutput",
}

M.DeleteTypeInput = {
    type = "structure",
    id = "DeleteTypeInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTypeOutput = {
    type = "structure",
    id = "DeleteTypeOutput",
}

M.DisassociateApiInput = {
    type = "structure",
    id = "DisassociateApiInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateApiOutput = {
    type = "structure",
    id = "DisassociateApiOutput",
}

M.DisassociateMergedGraphqlApiInput = {
    type = "structure",
    id = "DisassociateMergedGraphqlApiInput",
    members = {
        sourceApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMergedGraphqlApiOutput = {
    type = "structure",
    id = "DisassociateMergedGraphqlApiOutput",
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.DisassociateSourceGraphqlApiInput = {
    type = "structure",
    id = "DisassociateSourceGraphqlApiInput",
    members = {
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateSourceGraphqlApiOutput = {
    type = "structure",
    id = "DisassociateSourceGraphqlApiOutput",
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.EvaluateCodeInput = {
    type = "structure",
    id = "EvaluateCodeInput",
    members = {
        runtime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppSyncRuntime }),
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "string",
            traits = {
                required = true,
            },
        },
        function = {
            type = "string",
        },
    },
}

M.EvaluateCodeErrorDetail = {
    type = "structure",
    id = "EvaluateCodeErrorDetail",
    members = {
        message = {
            type = "string",
        },
        codeErrors = {
            type = "list",
            member = M.CodeError,
        },
    },
}

M.EvaluateCodeOutput = {
    type = "structure",
    id = "EvaluateCodeOutput",
    members = {
        evaluationResult = {
            type = "string",
        },
        error = M.EvaluateCodeErrorDetail,
        logs = {
            type = "list",
            member = { type = "string" },
        },
        stash = {
            type = "string",
        },
        outErrors = {
            type = "string",
        },
    },
}

M.EvaluateMappingTemplateInput = {
    type = "structure",
    id = "EvaluateMappingTemplateInput",
    members = {
        template = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "string",
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
        message = {
            type = "string",
        },
    },
}

M.EvaluateMappingTemplateOutput = {
    type = "structure",
    id = "EvaluateMappingTemplateOutput",
    members = {
        evaluationResult = {
            type = "string",
        },
        error = M.ErrorDetail,
        logs = {
            type = "list",
            member = { type = "string" },
        },
        stash = {
            type = "string",
        },
        outErrors = {
            type = "string",
        },
    },
}

M.FlushApiCacheInput = {
    type = "structure",
    id = "FlushApiCacheInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FlushApiCacheOutput = {
    type = "structure",
    id = "FlushApiCacheOutput",
}

M.GetApiInput = {
    type = "structure",
    id = "GetApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApiOutput = {
    type = "structure",
    id = "GetApiOutput",
    members = {
        api = M.Api,
    },
}

M.GetApiAssociationInput = {
    type = "structure",
    id = "GetApiAssociationInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApiAssociationOutput = {
    type = "structure",
    id = "GetApiAssociationOutput",
    members = {
        apiAssociation = M.ApiAssociation,
    },
}

M.GetApiCacheInput = {
    type = "structure",
    id = "GetApiCacheInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApiCacheOutput = {
    type = "structure",
    id = "GetApiCacheOutput",
    members = {
        apiCache = M.ApiCache,
    },
}

M.GetChannelNamespaceInput = {
    type = "structure",
    id = "GetChannelNamespaceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelNamespaceOutput = {
    type = "structure",
    id = "GetChannelNamespaceOutput",
    members = {
        channelNamespace = M.ChannelNamespace,
    },
}

M.GetDataSourceInput = {
    type = "structure",
    id = "GetDataSourceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataSourceOutput = {
    type = "structure",
    id = "GetDataSourceOutput",
    members = {
        dataSource = M.DataSource,
    },
}

M.GetDataSourceIntrospectionInput = {
    type = "structure",
    id = "GetDataSourceIntrospectionInput",
    members = {
        introspectionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includeModelsSDL = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeModelsSDL",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceIntrospectionModelIndex = {
    type = "structure",
    id = "DataSourceIntrospectionModelIndex",
    members = {
        name = {
            type = "string",
        },
        fields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSourceIntrospectionStatus = {
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
}

M.GetDomainNameInput = {
    type = "structure",
    id = "GetDomainNameInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainNameOutput = {
    type = "structure",
    id = "GetDomainNameOutput",
    members = {
        domainNameConfig = M.DomainNameConfig,
    },
}

M.GetFunctionInput = {
    type = "structure",
    id = "GetFunctionInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        functionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFunctionOutput = {
    type = "structure",
    id = "GetFunctionOutput",
    members = {
        functionConfiguration = M.FunctionConfiguration,
    },
}

M.GetGraphqlApiInput = {
    type = "structure",
    id = "GetGraphqlApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGraphqlApiOutput = {
    type = "structure",
    id = "GetGraphqlApiOutput",
    members = {
        graphqlApi = M.GraphqlApi,
    },
}

M.GetGraphqlApiEnvironmentVariablesInput = {
    type = "structure",
    id = "GetGraphqlApiEnvironmentVariablesInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGraphqlApiEnvironmentVariablesOutput = {
    type = "structure",
    id = "GetGraphqlApiEnvironmentVariablesOutput",
    members = {
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.OutputType = {
    SDL = "SDL",
    JSON = "JSON",
}

M.GetIntrospectionSchemaInput = {
    type = "structure",
    id = "GetIntrospectionSchemaInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        includeDirectives = {
            type = "boolean",
            traits = {
                http_query = "includeDirectives",
            },
        },
    },
}

M.GetIntrospectionSchemaOutput = {
    type = "structure",
    id = "GetIntrospectionSchemaOutput",
    members = {
        schema = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GraphQLSchemaException = {
    type = "structure",
    id = "GraphQLSchemaException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResolverInput = {
    type = "structure",
    id = "GetResolverInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResolverOutput = {
    type = "structure",
    id = "GetResolverOutput",
    members = {
        resolver = M.Resolver,
    },
}

M.GetSchemaCreationStatusInput = {
    type = "structure",
    id = "GetSchemaCreationStatusInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SchemaStatus = {
    Processing = "PROCESSING",
    Active = "ACTIVE",
    Deleting = "DELETING",
    Failed = "FAILED",
    Success = "SUCCESS",
    NotApplicable = "NOT_APPLICABLE",
}

M.GetSchemaCreationStatusOutput = {
    type = "structure",
    id = "GetSchemaCreationStatusOutput",
    members = {
        status = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.GetSourceApiAssociationInput = {
    type = "structure",
    id = "GetSourceApiAssociationInput",
    members = {
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSourceApiAssociationOutput = {
    type = "structure",
    id = "GetSourceApiAssociationOutput",
    members = {
        sourceApiAssociation = M.SourceApiAssociation,
    },
}

M.GetTypeInput = {
    type = "structure",
    id = "GetTypeInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
    },
}

M.GetTypeOutput = {
    type = "structure",
    id = "GetTypeOutput",
    members = {
        type = M.Type,
    },
}

M.ListApiKeysInput = {
    type = "structure",
    id = "ListApiKeysInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListApiKeysOutput = {
    type = "structure",
    id = "ListApiKeysOutput",
    members = {
        apiKeys = {
            type = "list",
            member = M.ApiKey,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListApisInput = {
    type = "structure",
    id = "ListApisInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListApisOutput = {
    type = "structure",
    id = "ListApisOutput",
    members = {
        apis = {
            type = "list",
            member = M.Api,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListChannelNamespacesInput = {
    type = "structure",
    id = "ListChannelNamespacesInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListChannelNamespacesOutput = {
    type = "structure",
    id = "ListChannelNamespacesOutput",
    members = {
        channelNamespaces = {
            type = "list",
            member = M.ChannelNamespace,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
    id = "ListDataSourcesInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    id = "ListDataSourcesOutput",
    members = {
        dataSources = {
            type = "list",
            member = M.DataSource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDomainNamesInput = {
    type = "structure",
    id = "ListDomainNamesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListDomainNamesOutput = {
    type = "structure",
    id = "ListDomainNamesOutput",
    members = {
        domainNameConfigs = {
            type = "list",
            member = M.DomainNameConfig,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFunctionsInput = {
    type = "structure",
    id = "ListFunctionsInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListFunctionsOutput = {
    type = "structure",
    id = "ListFunctionsOutput",
    members = {
        functions = {
            type = "list",
            member = M.FunctionConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Ownership = {
    CURRENT_ACCOUNT = "CURRENT_ACCOUNT",
    OTHER_ACCOUNTS = "OTHER_ACCOUNTS",
}

M.ListGraphqlApisInput = {
    type = "structure",
    id = "ListGraphqlApisInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        apiType = {
            type = "string",
            traits = {
                http_query = "apiType",
            },
        },
        owner = {
            type = "string",
            traits = {
                http_query = "owner",
            },
        },
    },
}

M.ListGraphqlApisOutput = {
    type = "structure",
    id = "ListGraphqlApisOutput",
    members = {
        graphqlApis = {
            type = "list",
            member = M.GraphqlApi,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResolversInput = {
    type = "structure",
    id = "ListResolversInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListResolversOutput = {
    type = "structure",
    id = "ListResolversOutput",
    members = {
        resolvers = {
            type = "list",
            member = M.Resolver,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResolversByFunctionInput = {
    type = "structure",
    id = "ListResolversByFunctionInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        functionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListResolversByFunctionOutput = {
    type = "structure",
    id = "ListResolversByFunctionOutput",
    members = {
        resolvers = {
            type = "list",
            member = M.Resolver,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSourceApiAssociationsInput = {
    type = "structure",
    id = "ListSourceApiAssociationsInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.SourceApiAssociationSummary = {
    type = "structure",
    id = "SourceApiAssociationSummary",
    members = {
        associationId = {
            type = "string",
        },
        associationArn = {
            type = "string",
        },
        sourceApiId = {
            type = "string",
        },
        sourceApiArn = {
            type = "string",
        },
        mergedApiId = {
            type = "string",
        },
        mergedApiArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListSourceApiAssociationsOutput = {
    type = "structure",
    id = "ListSourceApiAssociationsOutput",
    members = {
        sourceApiAssociationSummaries = {
            type = "list",
            member = M.SourceApiAssociationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTypesInput = {
    type = "structure",
    id = "ListTypesInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListTypesOutput = {
    type = "structure",
    id = "ListTypesOutput",
    members = {
        types = {
            type = "list",
            member = M.Type,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTypesByAssociationInput = {
    type = "structure",
    id = "ListTypesByAssociationInput",
    members = {
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListTypesByAssociationOutput = {
    type = "structure",
    id = "ListTypesByAssociationOutput",
    members = {
        types = {
            type = "list",
            member = M.Type,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutGraphqlApiEnvironmentVariablesInput = {
    type = "structure",
    id = "PutGraphqlApiEnvironmentVariablesInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutGraphqlApiEnvironmentVariablesOutput = {
    type = "structure",
    id = "PutGraphqlApiEnvironmentVariablesOutput",
    members = {
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RdsDataApiConfig = {
    type = "structure",
    id = "RdsDataApiConfig",
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
        databaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDataSourceIntrospectionInput = {
    type = "structure",
    id = "StartDataSourceIntrospectionInput",
    members = {
        rdsDataApiConfig = M.RdsDataApiConfig,
    },
}

M.StartDataSourceIntrospectionOutput = {
    type = "structure",
    id = "StartDataSourceIntrospectionOutput",
    members = {
        introspectionId = {
            type = "string",
        },
        introspectionStatus = {
            type = "string",
        },
        introspectionStatusDetail = {
            type = "string",
        },
    },
}

M.StartSchemaCreationInput = {
    type = "structure",
    id = "StartSchemaCreationInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        definition = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSchemaCreationOutput = {
    type = "structure",
    id = "StartSchemaCreationOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.StartSchemaMergeInput = {
    type = "structure",
    id = "StartSchemaMergeInput",
    members = {
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartSchemaMergeOutput = {
    type = "structure",
    id = "StartSchemaMergeOutput",
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateApiInput = {
    type = "structure",
    id = "UpdateApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerContact = {
            type = "string",
        },
        eventConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventConfig }),
    },
}

M.UpdateApiOutput = {
    type = "structure",
    id = "UpdateApiOutput",
    members = {
        api = M.Api,
    },
}

M.UpdateApiCacheInput = {
    type = "structure",
    id = "UpdateApiCacheInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ttl = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        apiCachingBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthMetricsConfig = {
            type = "string",
        },
    },
}

M.UpdateApiCacheOutput = {
    type = "structure",
    id = "UpdateApiCacheOutput",
    members = {
        apiCache = M.ApiCache,
    },
}

M.UpdateApiKeyInput = {
    type = "structure",
    id = "UpdateApiKeyInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        expires = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateApiKeyOutput = {
    type = "structure",
    id = "UpdateApiKeyOutput",
    members = {
        apiKey = M.ApiKey,
    },
}

M.UpdateChannelNamespaceInput = {
    type = "structure",
    id = "UpdateChannelNamespaceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscribeAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        publishAuthModes = {
            type = "list",
            member = M.AuthMode,
        },
        codeHandlers = {
            type = "string",
        },
        handlerConfigs = M.HandlerConfigs,
    },
}

M.UpdateChannelNamespaceOutput = {
    type = "structure",
    id = "UpdateChannelNamespaceOutput",
    members = {
        channelNamespace = M.ChannelNamespace,
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
    id = "UpdateDataSourceInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceRoleArn = {
            type = "string",
        },
        dynamodbConfig = M.DynamodbDataSourceConfig,
        lambdaConfig = M.LambdaDataSourceConfig,
        elasticsearchConfig = M.ElasticsearchDataSourceConfig,
        openSearchServiceConfig = M.OpenSearchServiceDataSourceConfig,
        httpConfig = M.HttpDataSourceConfig,
        relationalDatabaseConfig = M.RelationalDatabaseDataSourceConfig,
        eventBridgeConfig = M.EventBridgeDataSourceConfig,
        metricsConfig = {
            type = "string",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    id = "UpdateDataSourceOutput",
    members = {
        dataSource = M.DataSource,
    },
}

M.UpdateDomainNameInput = {
    type = "structure",
    id = "UpdateDomainNameInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateDomainNameOutput = {
    type = "structure",
    id = "UpdateDomainNameOutput",
    members = {
        domainNameConfig = M.DomainNameConfig,
    },
}

M.UpdateFunctionInput = {
    type = "structure",
    id = "UpdateFunctionInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        functionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        functionVersion = {
            type = "string",
        },
        syncConfig = M.SyncConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
    },
}

M.UpdateFunctionOutput = {
    type = "structure",
    id = "UpdateFunctionOutput",
    members = {
        functionConfiguration = M.FunctionConfiguration,
    },
}

M.UpdateGraphqlApiInput = {
    type = "structure",
    id = "UpdateGraphqlApiInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logConfig = M.LogConfig,
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userPoolConfig = M.UserPoolConfig,
        openIDConnectConfig = M.OpenIDConnectConfig,
        additionalAuthenticationProviders = {
            type = "list",
            member = M.AdditionalAuthenticationProvider,
        },
        xrayEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        lambdaAuthorizerConfig = M.LambdaAuthorizerConfig,
        mergedApiExecutionRoleArn = {
            type = "string",
        },
        ownerContact = {
            type = "string",
        },
        introspectionConfig = {
            type = "string",
        },
        queryDepthLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        resolverCountLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        enhancedMetricsConfig = M.EnhancedMetricsConfig,
    },
}

M.UpdateGraphqlApiOutput = {
    type = "structure",
    id = "UpdateGraphqlApiOutput",
    members = {
        graphqlApi = M.GraphqlApi,
    },
}

M.UpdateResolverInput = {
    type = "structure",
    id = "UpdateResolverInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        dataSourceName = {
            type = "string",
        },
        requestMappingTemplate = {
            type = "string",
        },
        responseMappingTemplate = {
            type = "string",
        },
        kind = {
            type = "string",
        },
        pipelineConfig = M.PipelineConfig,
        syncConfig = M.SyncConfig,
        cachingConfig = M.CachingConfig,
        maxBatchSize = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        runtime = M.AppSyncRuntime,
        code = {
            type = "string",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.UpdateResolverOutput = {
    type = "structure",
    id = "UpdateResolverOutput",
    members = {
        resolver = M.Resolver,
    },
}

M.UpdateSourceApiAssociationInput = {
    type = "structure",
    id = "UpdateSourceApiAssociationInput",
    members = {
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mergedApiIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        sourceApiAssociationConfig = M.SourceApiAssociationConfig,
    },
}

M.UpdateSourceApiAssociationOutput = {
    type = "structure",
    id = "UpdateSourceApiAssociationOutput",
    members = {
        sourceApiAssociation = M.SourceApiAssociation,
    },
}

M.UpdateTypeInput = {
    type = "structure",
    id = "UpdateTypeInput",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        definition = {
            type = "string",
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTypeOutput = {
    type = "structure",
    id = "UpdateTypeOutput",
    members = {
        type = M.Type,
    },
}

M.DataSourceIntrospectionModelFieldType = {
    type = "structure",
    id = "DataSourceIntrospectionModelFieldType",
    members = {
        kind = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = M.DataSourceIntrospectionModelFieldType,
        values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSourceIntrospectionModelField = {
    type = "structure",
    id = "DataSourceIntrospectionModelField",
    members = {
        name = {
            type = "string",
        },
        type = M.DataSourceIntrospectionModelFieldType,
        length = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DataSourceIntrospectionModel = {
    type = "structure",
    id = "DataSourceIntrospectionModel",
    members = {
        name = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.DataSourceIntrospectionModelField,
        },
        primaryKey = M.DataSourceIntrospectionModelIndex,
        indexes = {
            type = "list",
            member = M.DataSourceIntrospectionModelIndex,
        },
        sdl = {
            type = "string",
        },
    },
}

M.DataSourceIntrospectionResult = {
    type = "structure",
    id = "DataSourceIntrospectionResult",
    members = {
        models = {
            type = "list",
            member = M.DataSourceIntrospectionModel,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDataSourceIntrospectionOutput = {
    type = "structure",
    id = "GetDataSourceIntrospectionOutput",
    members = {
        introspectionId = {
            type = "string",
        },
        introspectionStatus = {
            type = "string",
        },
        introspectionStatusDetail = {
            type = "string",
        },
        introspectionResult = M.DataSourceIntrospectionResult,
    },
}

return M
