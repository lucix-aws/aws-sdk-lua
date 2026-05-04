local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        authorizerResultTtlInSeconds = {
            type = "number",
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
            type = "number",
        },
        authTTL = {
            type = "number",
        },
    },
}

M.CognitoUserPoolConfig = {
    type = "structure",
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
    members = {
        authenticationType = {
            type = "string",
        },
        openIDConnectConfig = {
            type = "structure",
        },
        userPoolConfig = {
            type = "structure",
        },
        lambdaAuthorizerConfig = {
            type = "structure",
        },
    },
}

M.CognitoConfig = {
    type = "structure",
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
    members = {
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cognitoConfig = {
            type = "structure",
        },
        openIDConnectConfig = {
            type = "structure",
        },
        lambdaAuthorizerConfig = {
            type = "structure",
        },
    },
}

M.AuthMode = {
    type = "structure",
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
    members = {
        authProviders = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        connectionAuthModes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        defaultPublishAuthModes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        defaultSubscribeAuthModes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        logConfig = {
            type = "structure",
        },
    },
}

M.Api = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        dns = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        apiArn = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        xrayEnabled = {
            type = "boolean",
        },
        wafWebAclArn = {
            type = "string",
        },
        eventConfig = {
            type = "structure",
        },
    },
}

M.AssociationStatus = {
    Processing = "PROCESSING",
    Failed = "FAILED",
    Success = "SUCCESS",
}

M.ApiAssociation = {
    type = "structure",
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
    members = {
        ttl = {
            type = "number",
        },
        apiCachingBehavior = {
            type = "string",
        },
        transitEncryptionEnabled = {
            type = "boolean",
        },
        atRestEncryptionEnabled = {
            type = "boolean",
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
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        expires = {
            type = "number",
        },
        deletes = {
            type = "number",
        },
    },
}

M.ApiKeyLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiKeyValidityOutOfBoundsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiLimitExceededException = {
    type = "structure",
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
    members = {
        apiAssociation = {
            type = "structure",
        },
    },
}

M.CodeErrorLocation = {
    type = "structure",
    members = {
        line = {
            type = "number",
        },
        column = {
            type = "number",
        },
        span = {
            type = "number",
        },
    },
}

M.CodeError = {
    type = "structure",
    members = {
        errorType = {
            type = "string",
        },
        value = {
            type = "string",
        },
        location = {
            type = "structure",
        },
    },
}

M.BadRequestDetail = {
    type = "structure",
    members = {
        codeErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BadRequestReason = {
    CODE_ERROR = "CODE_ERROR",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        detail = {
            type = "structure",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
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
    members = {
        mergeType = {
            type = "string",
        },
    },
}

M.AssociateMergedGraphqlApiInput = {
    type = "structure",
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
        sourceApiAssociationConfig = {
            type = "structure",
        },
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
        sourceApiAssociationConfig = {
            type = "structure",
        },
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
    members = {
        sourceApiAssociation = {
            type = "structure",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateSourceGraphqlApiInput = {
    type = "structure",
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
        sourceApiAssociationConfig = {
            type = "structure",
        },
    },
}

M.AssociateSourceGraphqlApiOutput = {
    type = "structure",
    members = {
        sourceApiAssociation = {
            type = "structure",
        },
    },
}

M.AuthorizationType = {
    AWS_IAM = "AWS_IAM",
}

M.AwsIamConfig = {
    type = "structure",
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
    members = {
        authorizationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsIamConfig = {
            type = "structure",
        },
    },
}

M.CreateApiInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        eventConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApiOutput = {
    type = "structure",
    members = {
        api = {
            type = "structure",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApiCacheInput = {
    type = "structure",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ttl = {
            type = "number",
            traits = {
                required = true,
            },
        },
        transitEncryptionEnabled = {
            type = "boolean",
        },
        atRestEncryptionEnabled = {
            type = "boolean",
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
    members = {
        apiCache = {
            type = "structure",
        },
    },
}

M.CreateApiKeyInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateApiKeyOutput = {
    type = "structure",
    members = {
        apiKey = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        invokeType = {
            type = "string",
        },
    },
}

M.Integration = {
    type = "structure",
    members = {
        dataSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambdaConfig = {
            type = "structure",
        },
    },
}

M.HandlerConfig = {
    type = "structure",
    members = {
        behavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HandlerConfigs = {
    type = "structure",
    members = {
        onPublish = {
            type = "structure",
        },
        onSubscribe = {
            type = "structure",
        },
    },
}

M.CreateChannelNamespaceInput = {
    type = "structure",
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
            member_type = "structure",
        },
        publishAuthModes = {
            type = "list",
            member_type = "structure",
        },
        codeHandlers = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        handlerConfigs = {
            type = "structure",
        },
    },
}

M.ChannelNamespace = {
    type = "structure",
    members = {
        apiId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        subscribeAuthModes = {
            type = "list",
            member_type = "structure",
        },
        publishAuthModes = {
            type = "list",
            member_type = "structure",
        },
        codeHandlers = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        handlerConfigs = {
            type = "structure",
        },
    },
}

M.CreateChannelNamespaceOutput = {
    type = "structure",
    members = {
        channelNamespace = {
            type = "structure",
        },
    },
}

M.DeltaSyncConfig = {
    type = "structure",
    members = {
        baseTableTTL = {
            type = "number",
        },
        deltaSyncTableName = {
            type = "string",
        },
        deltaSyncTableTTL = {
            type = "number",
        },
    },
}

M.DynamodbDataSourceConfig = {
    type = "structure",
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
        },
        deltaSyncConfig = {
            type = "structure",
        },
        versioned = {
            type = "boolean",
        },
    },
}

M.ElasticsearchDataSourceConfig = {
    type = "structure",
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
    members = {
        endpoint = {
            type = "string",
        },
        authorizationConfig = {
            type = "structure",
        },
    },
}

M.LambdaDataSourceConfig = {
    type = "structure",
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
    members = {
        relationalDatabaseSourceType = {
            type = "string",
        },
        rdsHttpEndpointConfig = {
            type = "structure",
        },
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
        dynamodbConfig = {
            type = "structure",
        },
        lambdaConfig = {
            type = "structure",
        },
        elasticsearchConfig = {
            type = "structure",
        },
        openSearchServiceConfig = {
            type = "structure",
        },
        httpConfig = {
            type = "structure",
        },
        relationalDatabaseConfig = {
            type = "structure",
        },
        eventBridgeConfig = {
            type = "structure",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.DataSource = {
    type = "structure",
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
        dynamodbConfig = {
            type = "structure",
        },
        lambdaConfig = {
            type = "structure",
        },
        elasticsearchConfig = {
            type = "structure",
        },
        openSearchServiceConfig = {
            type = "structure",
        },
        httpConfig = {
            type = "structure",
        },
        relationalDatabaseConfig = {
            type = "structure",
        },
        eventBridgeConfig = {
            type = "structure",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.CreateDataSourceOutput = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
        },
    },
}

M.CreateDomainNameInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DomainNameConfig = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        domainNameArn = {
            type = "string",
        },
    },
}

M.CreateDomainNameOutput = {
    type = "structure",
    members = {
        domainNameConfig = {
            type = "structure",
        },
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
    members = {
        lambdaConflictHandlerArn = {
            type = "string",
        },
    },
}

M.SyncConfig = {
    type = "structure",
    members = {
        conflictHandler = {
            type = "string",
        },
        conflictDetection = {
            type = "string",
        },
        lambdaConflictHandlerConfig = {
            type = "structure",
        },
    },
}

M.CreateFunctionInput = {
    type = "structure",
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
        syncConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
        code = {
            type = "string",
        },
    },
}

M.FunctionConfiguration = {
    type = "structure",
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
        syncConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
        code = {
            type = "string",
        },
    },
}

M.CreateFunctionOutput = {
    type = "structure",
    members = {
        functionConfiguration = {
            type = "structure",
        },
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
        },
    },
}

M.DefaultAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.UserPoolConfig = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logConfig = {
            type = "structure",
        },
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userPoolConfig = {
            type = "structure",
        },
        openIDConnectConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        additionalAuthenticationProviders = {
            type = "list",
            member_type = "structure",
        },
        xrayEnabled = {
            type = "boolean",
        },
        lambdaAuthorizerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        resolverCountLimit = {
            type = "number",
        },
        enhancedMetricsConfig = {
            type = "structure",
        },
    },
}

M.GraphqlApi = {
    type = "structure",
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
        logConfig = {
            type = "structure",
        },
        userPoolConfig = {
            type = "structure",
        },
        openIDConnectConfig = {
            type = "structure",
        },
        arn = {
            type = "string",
        },
        uris = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        additionalAuthenticationProviders = {
            type = "list",
            member_type = "structure",
        },
        xrayEnabled = {
            type = "boolean",
        },
        wafWebAclArn = {
            type = "string",
        },
        lambdaAuthorizerConfig = {
            type = "structure",
        },
        dns = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        resolverCountLimit = {
            type = "number",
        },
        enhancedMetricsConfig = {
            type = "structure",
        },
    },
}

M.CreateGraphqlApiOutput = {
    type = "structure",
    members = {
        graphqlApi = {
            type = "structure",
        },
    },
}

M.CachingConfig = {
    type = "structure",
    members = {
        ttl = {
            type = "number",
            traits = {
                required = true,
            },
        },
        cachingKeys = {
            type = "list",
            member_type = "string",
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
    members = {
        functions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateResolverInput = {
    type = "structure",
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
        pipelineConfig = {
            type = "structure",
        },
        syncConfig = {
            type = "structure",
        },
        cachingConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
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
        pipelineConfig = {
            type = "structure",
        },
        syncConfig = {
            type = "structure",
        },
        cachingConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
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
    members = {
        resolver = {
            type = "structure",
        },
    },
}

M.TypeDefinitionFormat = {
    SDL = "SDL",
    JSON = "JSON",
}

M.CreateTypeInput = {
    type = "structure",
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
    members = {
        type = {
            type = "structure",
        },
    },
}

M.DeleteApiInput = {
    type = "structure",
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
}

M.DeleteApiCacheInput = {
    type = "structure",
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
}

M.DeleteApiKeyInput = {
    type = "structure",
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
}

M.DeleteChannelNamespaceInput = {
    type = "structure",
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
}

M.DeleteDataSourceInput = {
    type = "structure",
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
}

M.DeleteDomainNameInput = {
    type = "structure",
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
}

M.DeleteFunctionInput = {
    type = "structure",
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
}

M.DeleteGraphqlApiInput = {
    type = "structure",
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
}

M.DeleteResolverInput = {
    type = "structure",
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
}

M.DeleteTypeInput = {
    type = "structure",
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
}

M.DisassociateApiInput = {
    type = "structure",
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
}

M.DisassociateMergedGraphqlApiInput = {
    type = "structure",
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
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.DisassociateSourceGraphqlApiInput = {
    type = "structure",
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
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.EvaluateCodeInput = {
    type = "structure",
    members = {
        runtime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        message = {
            type = "string",
        },
        codeErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EvaluateCodeOutput = {
    type = "structure",
    members = {
        evaluationResult = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        logs = {
            type = "list",
            member_type = "string",
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
    members = {
        message = {
            type = "string",
        },
    },
}

M.EvaluateMappingTemplateOutput = {
    type = "structure",
    members = {
        evaluationResult = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        logs = {
            type = "list",
            member_type = "string",
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
}

M.GetApiInput = {
    type = "structure",
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
    members = {
        api = {
            type = "structure",
        },
    },
}

M.GetApiAssociationInput = {
    type = "structure",
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
    members = {
        apiAssociation = {
            type = "structure",
        },
    },
}

M.GetApiCacheInput = {
    type = "structure",
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
    members = {
        apiCache = {
            type = "structure",
        },
    },
}

M.GetChannelNamespaceInput = {
    type = "structure",
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
    members = {
        channelNamespace = {
            type = "structure",
        },
    },
}

M.GetDataSourceInput = {
    type = "structure",
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
    members = {
        dataSource = {
            type = "structure",
        },
    },
}

M.GetDataSourceIntrospectionInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataSourceIntrospectionModelIndex = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        fields = {
            type = "list",
            member_type = "string",
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
    members = {
        domainNameConfig = {
            type = "structure",
        },
    },
}

M.GetFunctionInput = {
    type = "structure",
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
    members = {
        functionConfiguration = {
            type = "structure",
        },
    },
}

M.GetGraphqlApiInput = {
    type = "structure",
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
    members = {
        graphqlApi = {
            type = "structure",
        },
    },
}

M.GetGraphqlApiEnvironmentVariablesInput = {
    type = "structure",
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
    members = {
        environmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.OutputType = {
    SDL = "SDL",
    JSON = "JSON",
}

M.GetIntrospectionSchemaInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResolverInput = {
    type = "structure",
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
    members = {
        resolver = {
            type = "structure",
        },
    },
}

M.GetSchemaCreationStatusInput = {
    type = "structure",
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
    members = {
        sourceApiAssociation = {
            type = "structure",
        },
    },
}

M.GetTypeInput = {
    type = "structure",
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
    members = {
        type = {
            type = "structure",
        },
    },
}

M.ListApiKeysInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApiKeysOutput = {
    type = "structure",
    members = {
        apiKeys = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListApisInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApisOutput = {
    type = "structure",
    members = {
        apis = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListChannelNamespacesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListChannelNamespacesOutput = {
    type = "structure",
    members = {
        channelNamespaces = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataSourcesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDataSourcesOutput = {
    type = "structure",
    members = {
        dataSources = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDomainNamesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDomainNamesOutput = {
    type = "structure",
    members = {
        domainNameConfigs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFunctionsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListFunctionsOutput = {
    type = "structure",
    members = {
        functions = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
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
    members = {
        graphqlApis = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResolversInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListResolversOutput = {
    type = "structure",
    members = {
        resolvers = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResolversByFunctionInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListResolversByFunctionOutput = {
    type = "structure",
    members = {
        resolvers = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSourceApiAssociationsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SourceApiAssociationSummary = {
    type = "structure",
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
    members = {
        sourceApiAssociationSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTypesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTypesOutput = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTypesByAssociationInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListTypesByAssociationOutput = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutGraphqlApiEnvironmentVariablesInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutGraphqlApiEnvironmentVariablesOutput = {
    type = "structure",
    members = {
        environmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RdsDataApiConfig = {
    type = "structure",
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
    members = {
        rdsDataApiConfig = {
            type = "structure",
        },
    },
}

M.StartDataSourceIntrospectionOutput = {
    type = "structure",
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
    members = {
        status = {
            type = "string",
        },
    },
}

M.StartSchemaMergeInput = {
    type = "structure",
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
    members = {
        sourceApiAssociationStatus = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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

M.UntagResourceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateApiInput = {
    type = "structure",
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
        eventConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApiOutput = {
    type = "structure",
    members = {
        api = {
            type = "structure",
        },
    },
}

M.UpdateApiCacheInput = {
    type = "structure",
    members = {
        apiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ttl = {
            type = "number",
            traits = {
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
    members = {
        apiCache = {
            type = "structure",
        },
    },
}

M.UpdateApiKeyInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.UpdateApiKeyOutput = {
    type = "structure",
    members = {
        apiKey = {
            type = "structure",
        },
    },
}

M.UpdateChannelNamespaceInput = {
    type = "structure",
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
            member_type = "structure",
        },
        publishAuthModes = {
            type = "list",
            member_type = "structure",
        },
        codeHandlers = {
            type = "string",
        },
        handlerConfigs = {
            type = "structure",
        },
    },
}

M.UpdateChannelNamespaceOutput = {
    type = "structure",
    members = {
        channelNamespace = {
            type = "structure",
        },
    },
}

M.UpdateDataSourceInput = {
    type = "structure",
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
        dynamodbConfig = {
            type = "structure",
        },
        lambdaConfig = {
            type = "structure",
        },
        elasticsearchConfig = {
            type = "structure",
        },
        openSearchServiceConfig = {
            type = "structure",
        },
        httpConfig = {
            type = "structure",
        },
        relationalDatabaseConfig = {
            type = "structure",
        },
        eventBridgeConfig = {
            type = "structure",
        },
        metricsConfig = {
            type = "string",
        },
    },
}

M.UpdateDataSourceOutput = {
    type = "structure",
    members = {
        dataSource = {
            type = "structure",
        },
    },
}

M.UpdateDomainNameInput = {
    type = "structure",
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
    members = {
        domainNameConfig = {
            type = "structure",
        },
    },
}

M.UpdateFunctionInput = {
    type = "structure",
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
        syncConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
        code = {
            type = "string",
        },
    },
}

M.UpdateFunctionOutput = {
    type = "structure",
    members = {
        functionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateGraphqlApiInput = {
    type = "structure",
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
        logConfig = {
            type = "structure",
        },
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userPoolConfig = {
            type = "structure",
        },
        openIDConnectConfig = {
            type = "structure",
        },
        additionalAuthenticationProviders = {
            type = "list",
            member_type = "structure",
        },
        xrayEnabled = {
            type = "boolean",
        },
        lambdaAuthorizerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        resolverCountLimit = {
            type = "number",
        },
        enhancedMetricsConfig = {
            type = "structure",
        },
    },
}

M.UpdateGraphqlApiOutput = {
    type = "structure",
    members = {
        graphqlApi = {
            type = "structure",
        },
    },
}

M.UpdateResolverInput = {
    type = "structure",
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
        pipelineConfig = {
            type = "structure",
        },
        syncConfig = {
            type = "structure",
        },
        cachingConfig = {
            type = "structure",
        },
        maxBatchSize = {
            type = "number",
        },
        runtime = {
            type = "structure",
        },
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
    members = {
        resolver = {
            type = "structure",
        },
    },
}

M.UpdateSourceApiAssociationInput = {
    type = "structure",
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
        sourceApiAssociationConfig = {
            type = "structure",
        },
    },
}

M.UpdateSourceApiAssociationOutput = {
    type = "structure",
    members = {
        sourceApiAssociation = {
            type = "structure",
        },
    },
}

M.UpdateTypeInput = {
    type = "structure",
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
    members = {
        type = {
            type = "structure",
        },
    },
}

M.DataSourceIntrospectionModelFieldType = {
    type = "structure",
    members = {
        kind = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "structure",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DataSourceIntrospectionModelField = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "structure",
        },
        length = {
            type = "number",
        },
    },
}

M.DataSourceIntrospectionModel = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        fields = {
            type = "list",
            member_type = "structure",
        },
        primaryKey = {
            type = "structure",
        },
        indexes = {
            type = "list",
            member_type = "structure",
        },
        sdl = {
            type = "string",
        },
    },
}

M.DataSourceIntrospectionResult = {
    type = "structure",
    members = {
        models = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetDataSourceIntrospectionOutput = {
    type = "structure",
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
        introspectionResult = {
            type = "structure",
        },
    },
}

return M
