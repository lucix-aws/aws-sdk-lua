local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiKeyCredential = {
    type = "structure",
    id = "ApiKeyCredential",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthType = {
    OAUTH2 = "oauth2",
    API_KEY = "apiKey",
}

M.Persona = {
    ADMIN = "admin",
    ENDUSER = "endUser",
}

M.AppAuthorizationStatus = {
    PENDING_CONNECT = "PendingConnect",
    CONNECTED = "Connected",
    CONNECTION_VALIDATION_FAILED = "ConnectionValidationFailed",
    TOKEN_AUTO_ROTATION_FAILED = "TokenAutoRotationFailed",
}

M.Tenant = {
    type = "structure",
    id = "Tenant",
    members = {
        tenantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AppAuthorization = {
    type = "structure",
    id = "AppAuthorization",
    members = {
        appAuthorizationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appBundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Tenant }),
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        persona = {
            type = "string",
        },
        authUrl = {
            type = "string",
        },
    },
}

M.AppAuthorizationSummary = {
    type = "structure",
    id = "AppAuthorizationSummary",
    members = {
        appAuthorizationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appBundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Tenant }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AppBundle = {
    type = "structure",
    id = "AppBundle",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerManagedKeyArn = {
            type = "string",
        },
    },
}

M.AppBundleSummary = {
    type = "structure",
    id = "AppBundleSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FirehoseStream = {
    type = "structure",
    id = "FirehoseStream",
    members = {
        streamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Bucket = {
    type = "structure",
    id = "S3Bucket",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.Destination = {
    type = "union",
    id = "Destination",
    members = {
        s3Bucket = M.S3Bucket,
        firehoseStream = M.FirehoseStream,
    },
}

M.AuditLogDestinationConfiguration = {
    type = "structure",
    id = "AuditLogDestinationConfiguration",
    members = {
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
    },
}

M.Format = {
    JSON = "json",
    PARQUET = "parquet",
}

M.Schema = {
    OCSF = "ocsf",
    RAW = "raw",
}

M.AuditLogProcessingConfiguration = {
    type = "structure",
    id = "AuditLogProcessingConfiguration",
    members = {
        schema = {
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

M.AuthRequest = {
    type = "structure",
    id = "AuthRequest",
    members = {
        redirectUri = {
            type = "string",
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
    },
}

M.BatchGetUserAccessTasksInput = {
    type = "structure",
    id = "BatchGetUserAccessTasksInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResultStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    EXPIRED = "EXPIRED",
}

M.TaskError = {
    type = "structure",
    id = "TaskError",
    members = {
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.UserAccessResultItem = {
    type = "structure",
    id = "UserAccessResultItem",
    members = {
        app = {
            type = "string",
        },
        tenantId = {
            type = "string",
        },
        tenantDisplayName = {
            type = "string",
        },
        taskId = {
            type = "string",
        },
        resultStatus = {
            type = "string",
        },
        email = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        userFullName = {
            type = "string",
        },
        userFirstName = {
            type = "string",
        },
        userLastName = {
            type = "string",
        },
        userStatus = {
            type = "string",
        },
        taskError = M.TaskError,
    },
}

M.BatchGetUserAccessTasksOutput = {
    type = "structure",
    id = "BatchGetUserAccessTasksOutput",
    members = {
        userAccessResultsList = {
            type = "list",
            member = M.UserAccessResultItem,
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
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
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

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectAppAuthorizationInput = {
    type = "structure",
    id = "ConnectAppAuthorizationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appAuthorizationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authRequest = M.AuthRequest,
    },
}

M.ConnectAppAuthorizationOutput = {
    type = "structure",
    id = "ConnectAppAuthorizationOutput",
    members = {
        appAuthorizationSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAuthorizationSummary }),
    },
}

M.Oauth2Credential = {
    type = "structure",
    id = "Oauth2Credential",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Credential = {
    type = "union",
    id = "Credential",
    members = {
        oauth2Credential = M.Oauth2Credential,
        apiKeyCredential = M.ApiKeyCredential,
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

M.CreateAppAuthorizationInput = {
    type = "structure",
    id = "CreateAppAuthorizationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credential = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Credential }),
        tenant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Tenant }),
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAppAuthorizationOutput = {
    type = "structure",
    id = "CreateAppAuthorizationOutput",
    members = {
        appAuthorization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAuthorization }),
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAppBundleInput = {
    type = "structure",
    id = "CreateAppBundleInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        customerManagedKeyIdentifier = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAppBundleOutput = {
    type = "structure",
    id = "CreateAppBundleOutput",
    members = {
        appBundle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppBundle }),
    },
}

M.IngestionType = {
    AUDIT_LOG = "auditLog",
}

M.CreateIngestionInput = {
    type = "structure",
    id = "CreateIngestionInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.IngestionState = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.Ingestion = {
    type = "structure",
    id = "Ingestion",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appBundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIngestionOutput = {
    type = "structure",
    id = "CreateIngestionOutput",
    members = {
        ingestion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Ingestion }),
    },
}

M.DestinationConfiguration = {
    type = "union",
    id = "DestinationConfiguration",
    members = {
        auditLog = M.AuditLogDestinationConfiguration,
    },
}

M.ProcessingConfiguration = {
    type = "union",
    id = "ProcessingConfiguration",
    members = {
        auditLog = M.AuditLogProcessingConfiguration,
    },
}

M.CreateIngestionDestinationInput = {
    type = "structure",
    id = "CreateIngestionDestinationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        processingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingConfiguration }),
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.IngestionDestinationStatus = {
    ACTIVE = "Active",
    FAILED = "Failed",
}

M.IngestionDestination = {
    type = "structure",
    id = "IngestionDestination",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ingestionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProcessingConfiguration }),
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
        status = {
            type = "string",
        },
        statusReason = {
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

M.CreateIngestionDestinationOutput = {
    type = "structure",
    id = "CreateIngestionDestinationOutput",
    members = {
        ingestionDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionDestination }),
    },
}

M.DeleteAppAuthorizationInput = {
    type = "structure",
    id = "DeleteAppAuthorizationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appAuthorizationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppAuthorizationOutput = {
    type = "structure",
    id = "DeleteAppAuthorizationOutput",
}

M.DeleteAppBundleInput = {
    type = "structure",
    id = "DeleteAppBundleInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppBundleOutput = {
    type = "structure",
    id = "DeleteAppBundleOutput",
}

M.DeleteIngestionInput = {
    type = "structure",
    id = "DeleteIngestionInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIngestionOutput = {
    type = "structure",
    id = "DeleteIngestionOutput",
}

M.DeleteIngestionDestinationInput = {
    type = "structure",
    id = "DeleteIngestionDestinationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionDestinationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIngestionDestinationOutput = {
    type = "structure",
    id = "DeleteIngestionDestinationOutput",
}

M.GetAppAuthorizationInput = {
    type = "structure",
    id = "GetAppAuthorizationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appAuthorizationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAppAuthorizationOutput = {
    type = "structure",
    id = "GetAppAuthorizationOutput",
    members = {
        appAuthorization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAuthorization }),
    },
}

M.GetAppBundleInput = {
    type = "structure",
    id = "GetAppBundleInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAppBundleOutput = {
    type = "structure",
    id = "GetAppBundleOutput",
    members = {
        appBundle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppBundle }),
    },
}

M.GetIngestionInput = {
    type = "structure",
    id = "GetIngestionInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIngestionOutput = {
    type = "structure",
    id = "GetIngestionOutput",
    members = {
        ingestion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Ingestion }),
    },
}

M.GetIngestionDestinationInput = {
    type = "structure",
    id = "GetIngestionDestinationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionDestinationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIngestionDestinationOutput = {
    type = "structure",
    id = "GetIngestionDestinationOutput",
    members = {
        ingestionDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionDestination }),
    },
}

M.ListAppAuthorizationsInput = {
    type = "structure",
    id = "ListAppAuthorizationsInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListAppAuthorizationsOutput = {
    type = "structure",
    id = "ListAppAuthorizationsOutput",
    members = {
        appAuthorizationSummaryList = {
            type = "list",
            member = M.AppAuthorizationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAppBundlesInput = {
    type = "structure",
    id = "ListAppBundlesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListAppBundlesOutput = {
    type = "structure",
    id = "ListAppBundlesOutput",
    members = {
        appBundleSummaryList = {
            type = "list",
            member = M.AppBundleSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIngestionDestinationsInput = {
    type = "structure",
    id = "ListIngestionDestinationsInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.IngestionDestinationSummary = {
    type = "structure",
    id = "IngestionDestinationSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIngestionDestinationsOutput = {
    type = "structure",
    id = "ListIngestionDestinationsOutput",
    members = {
        ingestionDestinations = {
            type = "list",
            member = M.IngestionDestinationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIngestionsInput = {
    type = "structure",
    id = "ListIngestionsInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.IngestionSummary = {
    type = "structure",
    id = "IngestionSummary",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIngestionsOutput = {
    type = "structure",
    id = "ListIngestionsOutput",
    members = {
        ingestions = {
            type = "list",
            member = M.IngestionSummary,
            traits = {
                required = true,
            },
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

M.StartIngestionInput = {
    type = "structure",
    id = "StartIngestionInput",
    members = {
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartIngestionOutput = {
    type = "structure",
    id = "StartIngestionOutput",
}

M.StartUserAccessTasksInput = {
    type = "structure",
    id = "StartUserAccessTasksInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserAccessTaskItem = {
    type = "structure",
    id = "UserAccessTaskItem",
    members = {
        app = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
        },
        error = M.TaskError,
    },
}

M.StartUserAccessTasksOutput = {
    type = "structure",
    id = "StartUserAccessTasksOutput",
    members = {
        userAccessTasksList = {
            type = "list",
            member = M.UserAccessTaskItem,
        },
    },
}

M.StopIngestionInput = {
    type = "structure",
    id = "StopIngestionInput",
    members = {
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopIngestionOutput = {
    type = "structure",
    id = "StopIngestionOutput",
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

M.UpdateAppAuthorizationInput = {
    type = "structure",
    id = "UpdateAppAuthorizationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        appAuthorizationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        credential = M.Credential,
        tenant = M.Tenant,
    },
}

M.UpdateAppAuthorizationOutput = {
    type = "structure",
    id = "UpdateAppAuthorizationOutput",
    members = {
        appAuthorization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppAuthorization }),
    },
}

M.UpdateIngestionDestinationInput = {
    type = "structure",
    id = "UpdateIngestionDestinationInput",
    members = {
        appBundleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ingestionDestinationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationConfiguration }),
    },
}

M.UpdateIngestionDestinationOutput = {
    type = "structure",
    id = "UpdateIngestionDestinationOutput",
    members = {
        ingestionDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngestionDestination }),
    },
}

return M
