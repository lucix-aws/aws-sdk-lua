local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        accounts = {
            type = "list",
            member_type = "string",
        },
        regions = {
            type = "list",
            member_type = "string",
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
        },
    },
}

M.AwsLogSourceResource = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
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
    members = {
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAwsLogSourceOutput = {
    type = "structure",
    members = {
        failed = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.CustomLogSourceCrawlerConfiguration = {
    type = "structure",
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
    members = {
        crawlerConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        providerIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomLogSourceInput = {
    type = "structure",
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
            member_type = "string",
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomLogSourceAttributes = {
    type = "structure",
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
    members = {
        sourceName = {
            type = "string",
        },
        sourceVersion = {
            type = "string",
        },
        provider = {
            type = "structure",
        },
        attributes = {
            type = "structure",
        },
    },
}

M.CreateCustomLogSourceOutput = {
    type = "structure",
    members = {
        source = {
            type = "structure",
        },
    },
}

M.DataLakeEncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
    },
}

M.DataLakeLifecycleExpiration = {
    type = "structure",
    members = {
        days = {
            type = "number",
        },
    },
}

M.DataLakeLifecycleTransition = {
    type = "structure",
    members = {
        storageClass = {
            type = "string",
        },
        days = {
            type = "number",
        },
    },
}

M.DataLakeLifecycleConfiguration = {
    type = "structure",
    members = {
        expiration = {
            type = "structure",
        },
        transitions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataLakeReplicationConfiguration = {
    type = "structure",
    members = {
        regions = {
            type = "list",
            member_type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.DataLakeConfiguration = {
    type = "structure",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = {
            type = "structure",
        },
        lifecycleConfiguration = {
            type = "structure",
        },
        replicationConfiguration = {
            type = "structure",
        },
    },
}

M.Tag = {
    type = "structure",
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
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
    members = {
        requestId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        exception = {
            type = "structure",
        },
    },
}

M.DataLakeResource = {
    type = "structure",
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
        encryptionConfiguration = {
            type = "structure",
        },
        lifecycleConfiguration = {
            type = "structure",
        },
        replicationConfiguration = {
            type = "structure",
        },
        createStatus = {
            type = "string",
        },
        updateStatus = {
            type = "structure",
        },
    },
}

M.CreateDataLakeOutput = {
    type = "structure",
    members = {
        dataLakes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDataLakeExceptionSubscriptionInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateDataLakeExceptionSubscriptionOutput = {
    type = "structure",
}

M.DataLakeAutoEnableNewAccountConfiguration = {
    type = "structure",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataLakeOrganizationConfigurationInput = {
    type = "structure",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDataLakeOrganizationConfigurationOutput = {
    type = "structure",
}

M.LogSourceResource = {
    type = "union",
    members = {
        awsLogSource = {
            type = "structure",
        },
        customLogSource = {
            type = "structure",
        },
    },
}

M.CreateSubscriberInput = {
    type = "structure",
    members = {
        subscriberIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        accessTypes = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
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
        subscriberIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        accessTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        subscriber = {
            type = "structure",
        },
    },
}

M.HttpMethod = {
    POST = "POST",
    PUT = "PUT",
}

M.HttpsNotificationConfiguration = {
    type = "structure",
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
}

M.NotificationConfiguration = {
    type = "union",
    members = {
        sqsNotificationConfiguration = {
            type = "structure",
        },
        httpsNotificationConfiguration = {
            type = "structure",
        },
    },
}

M.CreateSubscriberNotificationInput = {
    type = "structure",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSubscriberNotificationOutput = {
    type = "structure",
    members = {
        subscriberEndpoint = {
            type = "string",
        },
    },
}

M.DeleteAwsLogSourceInput = {
    type = "structure",
    members = {
        sources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAwsLogSourceOutput = {
    type = "structure",
    members = {
        failed = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeleteCustomLogSourceInput = {
    type = "structure",
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
}

M.DeleteDataLakeInput = {
    type = "structure",
    members = {
        regions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDataLakeOutput = {
    type = "structure",
}

M.DeleteDataLakeOrganizationConfigurationInput = {
    type = "structure",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteDataLakeOrganizationConfigurationOutput = {
    type = "structure",
}

M.GetDataLakeOrganizationConfigurationInput = {
    type = "structure",
}

M.GetDataLakeOrganizationConfigurationOutput = {
    type = "structure",
    members = {
        autoEnableNewAccount = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDataLakeSourcesInput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        account = {
            type = "string",
        },
        sourceName = {
            type = "string",
        },
        eventClasses = {
            type = "list",
            member_type = "string",
        },
        sourceStatuses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDataLakeSourcesOutput = {
    type = "structure",
    members = {
        dataLakeArn = {
            type = "string",
        },
        dataLakeSources = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataLakesInput = {
    type = "structure",
    members = {
        regions = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "regions",
            },
        },
    },
}

M.ListDataLakesOutput = {
    type = "structure",
    members = {
        dataLakes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListLogSourcesInput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "string",
        },
        regions = {
            type = "list",
            member_type = "string",
        },
        sources = {
            type = "list",
            member_type = "union",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LogSource = {
    type = "structure",
    members = {
        account = {
            type = "string",
        },
        region = {
            type = "string",
        },
        sources = {
            type = "list",
            member_type = "union",
        },
    },
}

M.ListLogSourcesOutput = {
    type = "structure",
    members = {
        sources = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDataLakeInput = {
    type = "structure",
    members = {
        configurations = {
            type = "list",
            member_type = "structure",
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
    members = {
        dataLakes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DataLakeException = {
    type = "structure",
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
}

M.DeleteDataLakeExceptionSubscriptionOutput = {
    type = "structure",
}

M.DeleteSubscriberInput = {
    type = "structure",
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
}

M.DeleteSubscriberNotificationInput = {
    type = "structure",
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
}

M.DeregisterDataLakeDelegatedAdministratorInput = {
    type = "structure",
}

M.DeregisterDataLakeDelegatedAdministratorOutput = {
    type = "structure",
}

M.GetDataLakeExceptionSubscriptionInput = {
    type = "structure",
}

M.GetDataLakeExceptionSubscriptionOutput = {
    type = "structure",
    members = {
        subscriptionProtocol = {
            type = "string",
        },
        notificationEndpoint = {
            type = "string",
        },
        exceptionTimeToLive = {
            type = "number",
        },
    },
}

M.GetSubscriberInput = {
    type = "structure",
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
    members = {
        subscriber = {
            type = "structure",
        },
    },
}

M.ListDataLakeExceptionsInput = {
    type = "structure",
    members = {
        regions = {
            type = "list",
            member_type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDataLakeExceptionsOutput = {
    type = "structure",
    members = {
        exceptions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscribersInput = {
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

M.ListSubscribersOutput = {
    type = "structure",
    members = {
        subscribers = {
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
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterDataLakeDelegatedAdministratorInput = {
    type = "structure",
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
}

M.UpdateSubscriberInput = {
    type = "structure",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriberIdentity = {
            type = "structure",
        },
        subscriberName = {
            type = "string",
        },
        subscriberDescription = {
            type = "string",
        },
        sources = {
            type = "list",
            member_type = "union",
        },
    },
}

M.UpdateSubscriberOutput = {
    type = "structure",
    members = {
        subscriber = {
            type = "structure",
        },
    },
}

M.UpdateSubscriberNotificationInput = {
    type = "structure",
    members = {
        subscriberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubscriberNotificationOutput = {
    type = "structure",
    members = {
        subscriberEndpoint = {
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

M.UpdateDataLakeExceptionSubscriptionInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.UpdateDataLakeExceptionSubscriptionOutput = {
    type = "structure",
}

return M
