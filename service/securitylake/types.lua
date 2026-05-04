local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.AccessType = {
    LAKEFORMATION = "LAKEFORMATION",
    S3 = "S3",
}

M.AwsIdentity = {
    type = "structure",
    id = "AwsIdentity",
    members = {
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsLogSourceName = {
    ROUTE53 = "ROUTE53",
    VPC_FLOW = "VPC_FLOW",
    SH_FINDINGS = "SH_FINDINGS",
    CLOUD_TRAIL_MGMT = "CLOUD_TRAIL_MGMT",
    LAMBDA_EXECUTION = "LAMBDA_EXECUTION",
    S3_DATA = "S3_DATA",
    EKS_AUDIT = "EKS_AUDIT",
    WAF = "WAF",
}

M.AwsLogSourceConfiguration = {
    type = "structure",
    id = "AwsLogSourceConfiguration",
    members = {
        accounts = {
            type = "list",
            member = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        sourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceVersion = {
            type = "string",
            traits = {
                default = "latest",
            },
        },
    },
}

M.AwsLogSourceResource = {
    type = "structure",
    id = "AwsLogSourceResource",
    members = {
        sourceName = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
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
        resourceName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.CreateAwsLogSourceInput = {
    type = "structure",
    id = "CreateAwsLogSourceInput",
    members = {
        sources = {
            type = "list",
            member = M.AwsLogSourceConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAwsLogSourceOutput = {
    type = "structure",
    id = "CreateAwsLogSourceOutput",
    members = {
        failed = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.CustomLogSourceCrawlerConfiguration = {
    type = "structure",
    id = "CustomLogSourceCrawlerConfiguration",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomLogSourceConfiguration = {
    type = "structure",
    id = "CustomLogSourceConfiguration",
    members = {
        crawlerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomLogSourceCrawlerConfiguration }),
        providerIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsIdentity }),
    },
}

M.CreateCustomLogSourceInput = {
    type = "structure",
    id = "CreateCustomLogSourceInput",
    members = {
        sourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceVersion = {
            type = "string",
        },
        eventClasses = {
            type = "list",
            member = { type = "string" },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomLogSourceConfiguration }),
    },
}

M.CustomLogSourceAttributes = {
    type = "structure",
    id = "CustomLogSourceAttributes",
    members = {
        crawlerArn = {
            type = "string",
        },
        databaseArn = {
            type = "string",
        },
        tableArn = {
            type = "string",
        },
    },
}

M.CustomLogSourceProvider = {
    type = "structure",
    id = "CustomLogSourceProvider",
    members = {
        roleArn = {
            type = "string",
        },
        location = {
            type = "string",
        },
    },
}

M.CustomLogSourceResource = {
    type = "structure",
    id = "CustomLogSourceResource",
    members = {
        sourceName = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
        provider = M.CustomLogSourceProvider,
        attributes = M.CustomLogSourceAttributes,
    },
}

M.CreateCustomLogSourceOutput = {
    type = "structure",
    id = "CreateCustomLogSourceOutput",
    members = {
        source = M.CustomLogSourceResource,
    },
}

M.DataLakeEncryptionConfiguration = {
    type = "structure",
    id = "DataLakeEncryptionConfiguration",
    members = {
        kmsKeyId = {
            type = "string",
        },
    },
}

M.DataLakeLifecycleExpiration = {
    type = "structure",
    id = "DataLakeLifecycleExpiration",
    members = {
        days = {
            type = "integer",
        },
    },
}

M.DataLakeLifecycleTransition = {
    type = "structure",
    id = "DataLakeLifecycleTransition",
    members = {
        storageClass = {
            type = "string",
        },
        days = {
            type = "integer",
        },
    },
}

M.DataLakeLifecycleConfiguration = {
    type = "structure",
    id = "DataLakeLifecycleConfiguration",
    members = {
        expiration = M.DataLakeLifecycleExpiration,
        transitions = {
            type = "list",
            member = M.DataLakeLifecycleTransition,
        },
    },
}

M.DataLakeReplicationConfiguration = {
    type = "structure",
    id = "DataLakeReplicationConfiguration",
    members = {
        regions = {
            type = "list",
            member = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
    },
}

M.DataLakeConfiguration = {
    type = "structure",
    id = "DataLakeConfiguration",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.DataLakeEncryptionConfiguration,
        lifecycleConfiguration = M.DataLakeLifecycleConfiguration,
        replicationConfiguration = M.DataLakeReplicationConfiguration,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataLakeInput = {
    type = "structure",
    id = "CreateDataLakeInput",
    members = {
        configurations = {
            type = "list",
            member = M.DataLakeConfiguration,
            traits = {
                required = true,
            },
        },
        metaStoreManagerRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DataLakeStatus = {
    INITIALIZED = "INITIALIZED",
    PENDING = "PENDING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.DataLakeUpdateException = {
    type = "structure",
    id = "DataLakeUpdateException",
    members = {
        reason = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.DataLakeUpdateStatus = {
    type = "structure",
    id = "DataLakeUpdateStatus",
    members = {
        requestId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        exception = M.DataLakeUpdateException,
    },
}

M.DataLakeResource = {
    type = "structure",
    id = "DataLakeResource",
    members = {
        dataLakeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3BucketArn = {
            type = "string",
        },
        encryptionConfiguration = M.DataLakeEncryptionConfiguration,
        lifecycleConfiguration = M.DataLakeLifecycleConfiguration,
        replicationConfiguration = M.DataLakeReplicationConfiguration,
        createStatus = {
            type = "string",
        },
        updateStatus = M.DataLakeUpdateStatus,
    },
}

M.CreateDataLakeOutput = {
    type = "structure",
    id = "CreateDataLakeOutput",
    members = {
        dataLakes = {
            type = "list",
            member = M.DataLakeResource,
        },
    },
}

M.CreateDataLakeExceptionSubscriptionInput = {
    type = "structure",
    id = "CreateDataLakeExceptionSubscriptionInput",
    members = {
        subscriptionProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exceptionTimeToLive = {
            type = "long",
        },
    },
}

M.CreateDataLakeExceptionSubscriptionOutput = {
    type = "structure",
    id = "CreateDataLakeExceptionSubscriptionOutput",
}

M.DataLakeAutoEnableNewAccountConfiguration = {
    type = "structure",
    id = "DataLakeAutoEnableNewAccountConfiguration",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member = M.AwsLogSourceResource,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataLakeOrganizationConfigurationInput = {
    type = "structure",
    id = "CreateDataLakeOrganizationConfigurationInput",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member = M.DataLakeAutoEnableNewAccountConfiguration,
        },
    },
}

M.CreateDataLakeOrganizationConfigurationOutput = {
    type = "structure",
    id = "CreateDataLakeOrganizationConfigurationOutput",
}

M.LogSourceResource = {
    type = "union",
    id = "LogSourceResource",
    members = {
        awsLogSource = M.AwsLogSourceResource,
        customLogSource = M.CustomLogSourceResource,
    },
}

M.CreateSubscriberInput = {
    type = "structure",
    id = "CreateSubscriberInput",
    members = {
        subscriberIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsIdentity }),
        subscriberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriberDescription = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.LogSourceResource,
            traits = {
                required = true,
            },
        },
        accessTypes = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SubscriberStatus = {
    ACTIVE = "ACTIVE",
    DEACTIVATED = "DEACTIVATED",
    PENDING = "PENDING",
    READY = "READY",
}

M.SubscriberResource = {
    type = "structure",
    id = "SubscriberResource",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriberIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsIdentity }),
        subscriberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriberDescription = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.LogSourceResource,
            traits = {
                required = true,
            },
        },
        accessTypes = {
            type = "list",
            member = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        s3BucketArn = {
            type = "string",
        },
        subscriberEndpoint = {
            type = "string",
        },
        subscriberStatus = {
            type = "string",
        },
        resourceShareArn = {
            type = "string",
        },
        resourceShareName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateSubscriberOutput = {
    type = "structure",
    id = "CreateSubscriberOutput",
    members = {
        subscriber = M.SubscriberResource,
    },
}

M.HttpMethod = {
    POST = "POST",
    PUT = "PUT",
}

M.HttpsNotificationConfiguration = {
    type = "structure",
    id = "HttpsNotificationConfiguration",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationApiKeyName = {
            type = "string",
        },
        authorizationApiKeyValue = {
            type = "string",
        },
        httpMethod = {
            type = "string",
        },
        targetRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SqsNotificationConfiguration = {
    type = "structure",
    id = "SqsNotificationConfiguration",
}

M.NotificationConfiguration = {
    type = "union",
    id = "NotificationConfiguration",
    members = {
        sqsNotificationConfiguration = M.SqsNotificationConfiguration,
        httpsNotificationConfiguration = M.HttpsNotificationConfiguration,
    },
}

M.CreateSubscriberNotificationInput = {
    type = "structure",
    id = "CreateSubscriberNotificationInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationConfiguration }),
    },
}

M.CreateSubscriberNotificationOutput = {
    type = "structure",
    id = "CreateSubscriberNotificationOutput",
    members = {
        subscriberEndpoint = {
            type = "string",
        },
    },
}

M.DeleteAwsLogSourceInput = {
    type = "structure",
    id = "DeleteAwsLogSourceInput",
    members = {
        sources = {
            type = "list",
            member = M.AwsLogSourceConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAwsLogSourceOutput = {
    type = "structure",
    id = "DeleteAwsLogSourceOutput",
    members = {
        failed = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteCustomLogSourceInput = {
    type = "structure",
    id = "DeleteCustomLogSourceInput",
    members = {
        sourceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sourceVersion = {
            type = "string",
            traits = {
                http_query = "sourceVersion",
            },
        },
    },
}

M.DeleteCustomLogSourceOutput = {
    type = "structure",
    id = "DeleteCustomLogSourceOutput",
}

M.DeleteDataLakeInput = {
    type = "structure",
    id = "DeleteDataLakeInput",
    members = {
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataLakeOutput = {
    type = "structure",
    id = "DeleteDataLakeOutput",
}

M.DeleteDataLakeOrganizationConfigurationInput = {
    type = "structure",
    id = "DeleteDataLakeOrganizationConfigurationInput",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member = M.DataLakeAutoEnableNewAccountConfiguration,
        },
    },
}

M.DeleteDataLakeOrganizationConfigurationOutput = {
    type = "structure",
    id = "DeleteDataLakeOrganizationConfigurationOutput",
}

M.GetDataLakeOrganizationConfigurationInput = {
    type = "structure",
    id = "GetDataLakeOrganizationConfigurationInput",
}

M.GetDataLakeOrganizationConfigurationOutput = {
    type = "structure",
    id = "GetDataLakeOrganizationConfigurationOutput",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member = M.DataLakeAutoEnableNewAccountConfiguration,
        },
    },
}

M.GetDataLakeSourcesInput = {
    type = "structure",
    id = "GetDataLakeSourcesInput",
    members = {
        accounts = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 50,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SourceCollectionStatus = {
    COLLECTING = "COLLECTING",
    MISCONFIGURED = "MISCONFIGURED",
    NOT_COLLECTING = "NOT_COLLECTING",
}

M.DataLakeSourceStatus = {
    type = "structure",
    id = "DataLakeSourceStatus",
    members = {
        resource = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DataLakeSource = {
    type = "structure",
    id = "DataLakeSource",
    members = {
        account = {
            type = "string",
        },
        sourceName = {
            type = "string",
        },
        eventClasses = {
            type = "list",
            member = { type = "string" },
        },
        sourceStatuses = {
            type = "list",
            member = M.DataLakeSourceStatus,
        },
    },
}

M.GetDataLakeSourcesOutput = {
    type = "structure",
    id = "GetDataLakeSourcesOutput",
    members = {
        dataLakeArn = {
            type = "string",
        },
        dataLakeSources = {
            type = "list",
            member = M.DataLakeSource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataLakesInput = {
    type = "structure",
    id = "ListDataLakesInput",
    members = {
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "regions",
            },
        },
    },
}

M.ListDataLakesOutput = {
    type = "structure",
    id = "ListDataLakesOutput",
    members = {
        dataLakes = {
            type = "list",
            member = M.DataLakeResource,
        },
    },
}

M.ListLogSourcesInput = {
    type = "structure",
    id = "ListLogSourcesInput",
    members = {
        accounts = {
            type = "list",
            member = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        sources = {
            type = "list",
            member = M.LogSourceResource,
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 50,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LogSource = {
    type = "structure",
    id = "LogSource",
    members = {
        account = {
            type = "string",
        },
        region = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.LogSourceResource,
        },
    },
}

M.ListLogSourcesOutput = {
    type = "structure",
    id = "ListLogSourcesOutput",
    members = {
        sources = {
            type = "list",
            member = M.LogSource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataLakeInput = {
    type = "structure",
    id = "UpdateDataLakeInput",
    members = {
        configurations = {
            type = "list",
            member = M.DataLakeConfiguration,
            traits = {
                required = true,
            },
        },
        metaStoreManagerRoleArn = {
            type = "string",
        },
    },
}

M.UpdateDataLakeOutput = {
    type = "structure",
    id = "UpdateDataLakeOutput",
    members = {
        dataLakes = {
            type = "list",
            member = M.DataLakeResource,
        },
    },
}

M.DataLakeException = {
    type = "structure",
    id = "DataLakeException",
    members = {
        region = {
            type = "string",
        },
        exception = {
            type = "string",
        },
        remediation = {
            type = "string",
        },
        timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteDataLakeExceptionSubscriptionInput = {
    type = "structure",
    id = "DeleteDataLakeExceptionSubscriptionInput",
}

M.DeleteDataLakeExceptionSubscriptionOutput = {
    type = "structure",
    id = "DeleteDataLakeExceptionSubscriptionOutput",
}

M.DeleteSubscriberInput = {
    type = "structure",
    id = "DeleteSubscriberInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriberOutput = {
    type = "structure",
    id = "DeleteSubscriberOutput",
}

M.DeleteSubscriberNotificationInput = {
    type = "structure",
    id = "DeleteSubscriberNotificationInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriberNotificationOutput = {
    type = "structure",
    id = "DeleteSubscriberNotificationOutput",
}

M.DeregisterDataLakeDelegatedAdministratorInput = {
    type = "structure",
    id = "DeregisterDataLakeDelegatedAdministratorInput",
}

M.DeregisterDataLakeDelegatedAdministratorOutput = {
    type = "structure",
    id = "DeregisterDataLakeDelegatedAdministratorOutput",
}

M.GetDataLakeExceptionSubscriptionInput = {
    type = "structure",
    id = "GetDataLakeExceptionSubscriptionInput",
}

M.GetDataLakeExceptionSubscriptionOutput = {
    type = "structure",
    id = "GetDataLakeExceptionSubscriptionOutput",
    members = {
        subscriptionProtocol = {
            type = "string",
        },
        notificationEndpoint = {
            type = "string",
        },
        exceptionTimeToLive = {
            type = "long",
        },
    },
}

M.GetSubscriberInput = {
    type = "structure",
    id = "GetSubscriberInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriberOutput = {
    type = "structure",
    id = "GetSubscriberOutput",
    members = {
        subscriber = M.SubscriberResource,
    },
}

M.ListDataLakeExceptionsInput = {
    type = "structure",
    id = "ListDataLakeExceptionsInput",
    members = {
        regions = {
            type = "list",
            member = { type = "string" },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 50,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataLakeExceptionsOutput = {
    type = "structure",
    id = "ListDataLakeExceptionsOutput",
    members = {
        exceptions = {
            type = "list",
            member = M.DataLakeException,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscribersInput = {
    type = "structure",
    id = "ListSubscribersInput",
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
                default = 50,
                http_query = "maxResults",
            },
        },
    },
}

M.ListSubscribersOutput = {
    type = "structure",
    id = "ListSubscribersOutput",
    members = {
        subscribers = {
            type = "list",
            member = M.SubscriberResource,
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.RegisterDataLakeDelegatedAdministratorInput = {
    type = "structure",
    id = "RegisterDataLakeDelegatedAdministratorInput",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterDataLakeDelegatedAdministratorOutput = {
    type = "structure",
    id = "RegisterDataLakeDelegatedAdministratorOutput",
}

M.UpdateSubscriberInput = {
    type = "structure",
    id = "UpdateSubscriberInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriberIdentity = M.AwsIdentity,
        subscriberName = {
            type = "string",
        },
        subscriberDescription = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.LogSourceResource,
        },
    },
}

M.UpdateSubscriberOutput = {
    type = "structure",
    id = "UpdateSubscriberOutput",
    members = {
        subscriber = M.SubscriberResource,
    },
}

M.UpdateSubscriberNotificationInput = {
    type = "structure",
    id = "UpdateSubscriberNotificationInput",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationConfiguration }),
    },
}

M.UpdateSubscriberNotificationOutput = {
    type = "structure",
    id = "UpdateSubscriberNotificationOutput",
    members = {
        subscriberEndpoint = {
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

M.UpdateDataLakeExceptionSubscriptionInput = {
    type = "structure",
    id = "UpdateDataLakeExceptionSubscriptionInput",
    members = {
        subscriptionProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exceptionTimeToLive = {
            type = "long",
        },
    },
}

M.UpdateDataLakeExceptionSubscriptionOutput = {
    type = "structure",
    id = "UpdateDataLakeExceptionSubscriptionOutput",
}

return M
