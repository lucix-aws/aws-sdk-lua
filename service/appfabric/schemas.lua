local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appfabric"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApiKeyCredential = schema.new({
    id = id.from(_N, "ApiKeyCredential"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "ApiKeyCredential", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tenant = schema.new({
    id = id.from(_N, "Tenant"),
    type = "structure",
    members = {
        tenantIdentifier = schema.new({
            id = id.from(_N, "Tenant", "tenantIdentifier"),
            type = "string",
            name = "tenantIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantDisplayName = schema.new({
            id = id.from(_N, "Tenant", "tenantDisplayName"),
            type = "string",
            name = "tenantDisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AppAuthorization = schema.new({
    id = id.from(_N, "AppAuthorization"),
    type = "structure",
    members = {
        appAuthorizationArn = schema.new({
            id = id.from(_N, "AppAuthorization", "appAuthorizationArn"),
            type = "string",
            name = "appAuthorizationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appBundleArn = schema.new({
            id = id.from(_N, "AppAuthorization", "appBundleArn"),
            type = "string",
            name = "appBundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "AppAuthorization", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenant = schema.new({
            id = id.from(_N, "AppAuthorization", "tenant"),
            type = "structure",
            name = "tenant",
            target_id = id.from(_N, "Tenant"),
            target = M.Tenant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "AppAuthorization", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AppAuthorization", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AppAuthorization", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AppAuthorization", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        persona = schema.new({
            id = id.from(_N, "AppAuthorization", "persona"),
            type = "string",
            name = "persona",
            target_id = prelude.String.id,
        }),
        authUrl = schema.new({
            id = id.from(_N, "AppAuthorization", "authUrl"),
            type = "string",
            name = "authUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.AppAuthorizationSummary = schema.new({
    id = id.from(_N, "AppAuthorizationSummary"),
    type = "structure",
    members = {
        appAuthorizationArn = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "appAuthorizationArn"),
            type = "string",
            name = "appAuthorizationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appBundleArn = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "appBundleArn"),
            type = "string",
            name = "appBundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenant = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "tenant"),
            type = "structure",
            name = "tenant",
            target_id = id.from(_N, "Tenant"),
            target = M.Tenant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AppAuthorizationSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AppBundle = schema.new({
    id = id.from(_N, "AppBundle"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AppBundle", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customerManagedKeyArn = schema.new({
            id = id.from(_N, "AppBundle", "customerManagedKeyArn"),
            type = "string",
            name = "customerManagedKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AppBundleSummary = schema.new({
    id = id.from(_N, "AppBundleSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AppBundleSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FirehoseStream = schema.new({
    id = id.from(_N, "FirehoseStream"),
    type = "structure",
    members = {
        streamName = schema.new({
            id = id.from(_N, "FirehoseStream", "streamName"),
            type = "string",
            name = "streamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Bucket = schema.new({
    id = id.from(_N, "S3Bucket"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3Bucket", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "S3Bucket", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.Destination = schema.new({
    id = id.from(_N, "Destination"),
    type = "union",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "Destination", "s3Bucket"),
            type = "structure",
            name = "s3Bucket",
            target_id = id.from(_N, "S3Bucket"),
            target = M.S3Bucket,
        }),
        firehoseStream = schema.new({
            id = id.from(_N, "Destination", "firehoseStream"),
            type = "structure",
            name = "firehoseStream",
            target_id = id.from(_N, "FirehoseStream"),
            target = M.FirehoseStream,
        }),
    },
})

M.AuditLogDestinationConfiguration = schema.new({
    id = id.from(_N, "AuditLogDestinationConfiguration"),
    type = "structure",
    members = {
        destination = schema.new({
            id = id.from(_N, "AuditLogDestinationConfiguration", "destination"),
            type = "union",
            name = "destination",
            target_id = id.from(_N, "Destination"),
            target = M.Destination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuditLogProcessingConfiguration = schema.new({
    id = id.from(_N, "AuditLogProcessingConfiguration"),
    type = "structure",
    members = {
        schema = schema.new({
            id = id.from(_N, "AuditLogProcessingConfiguration", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "AuditLogProcessingConfiguration", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthRequest = schema.new({
    id = id.from(_N, "AuthRequest"),
    type = "structure",
    members = {
        redirectUri = schema.new({
            id = id.from(_N, "AuthRequest", "redirectUri"),
            type = "string",
            name = "redirectUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "AuthRequest", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetUserAccessTasksInput = schema.new({
    id = id.from(_N, "BatchGetUserAccessTasksInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "BatchGetUserAccessTasksInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskIdList = schema.new({
            id = id.from(_N, "BatchGetUserAccessTasksInput", "taskIdList"),
            type = "list",
            name = "taskIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TaskError = schema.new({
    id = id.from(_N, "TaskError"),
    type = "structure",
    members = {
        errorCode = schema.new({
            id = id.from(_N, "TaskError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "TaskError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.UserAccessResultItem = schema.new({
    id = id.from(_N, "UserAccessResultItem"),
    type = "structure",
    members = {
        app = schema.new({
            id = id.from(_N, "UserAccessResultItem", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
        }),
        tenantId = schema.new({
            id = id.from(_N, "UserAccessResultItem", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
        }),
        tenantDisplayName = schema.new({
            id = id.from(_N, "UserAccessResultItem", "tenantDisplayName"),
            type = "string",
            name = "tenantDisplayName",
            target_id = prelude.String.id,
        }),
        taskId = schema.new({
            id = id.from(_N, "UserAccessResultItem", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        resultStatus = schema.new({
            id = id.from(_N, "UserAccessResultItem", "resultStatus"),
            type = "string",
            name = "resultStatus",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "UserAccessResultItem", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "UserAccessResultItem", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        userFullName = schema.new({
            id = id.from(_N, "UserAccessResultItem", "userFullName"),
            type = "string",
            name = "userFullName",
            target_id = prelude.String.id,
        }),
        userFirstName = schema.new({
            id = id.from(_N, "UserAccessResultItem", "userFirstName"),
            type = "string",
            name = "userFirstName",
            target_id = prelude.String.id,
        }),
        userLastName = schema.new({
            id = id.from(_N, "UserAccessResultItem", "userLastName"),
            type = "string",
            name = "userLastName",
            target_id = prelude.String.id,
        }),
        userStatus = schema.new({
            id = id.from(_N, "UserAccessResultItem", "userStatus"),
            type = "string",
            name = "userStatus",
            target_id = prelude.String.id,
        }),
        taskError = schema.new({
            id = id.from(_N, "UserAccessResultItem", "taskError"),
            type = "structure",
            name = "taskError",
            target_id = id.from(_N, "TaskError"),
            target = M.TaskError,
        }),
    },
})

M.BatchGetUserAccessTasksOutput = schema.new({
    id = id.from(_N, "BatchGetUserAccessTasksOutput"),
    type = "structure",
    members = {
        userAccessResultsList = schema.new({
            id = id.from(_N, "BatchGetUserAccessTasksOutput", "userAccessResultsList"),
            type = "list",
            name = "userAccessResultsList",
            target_id = prelude.Document.id,
            list_member = M.UserAccessResultItem,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectAppAuthorizationInput = schema.new({
    id = id.from(_N, "ConnectAppAuthorizationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "ConnectAppAuthorizationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appAuthorizationIdentifier = schema.new({
            id = id.from(_N, "ConnectAppAuthorizationInput", "appAuthorizationIdentifier"),
            type = "string",
            name = "appAuthorizationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authRequest = schema.new({
            id = id.from(_N, "ConnectAppAuthorizationInput", "authRequest"),
            type = "structure",
            name = "authRequest",
            target_id = id.from(_N, "AuthRequest"),
            target = M.AuthRequest,
        }),
    },
})

M.ConnectAppAuthorizationOutput = schema.new({
    id = id.from(_N, "ConnectAppAuthorizationOutput"),
    type = "structure",
    members = {
        appAuthorizationSummary = schema.new({
            id = id.from(_N, "ConnectAppAuthorizationOutput", "appAuthorizationSummary"),
            type = "structure",
            name = "appAuthorizationSummary",
            target_id = id.from(_N, "AppAuthorizationSummary"),
            target = M.AppAuthorizationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Oauth2Credential = schema.new({
    id = id.from(_N, "Oauth2Credential"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "Oauth2Credential", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "Oauth2Credential", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Credential = schema.new({
    id = id.from(_N, "Credential"),
    type = "union",
    members = {
        oauth2Credential = schema.new({
            id = id.from(_N, "Credential", "oauth2Credential"),
            type = "structure",
            name = "oauth2Credential",
            target_id = id.from(_N, "Oauth2Credential"),
            target = M.Oauth2Credential,
        }),
        apiKeyCredential = schema.new({
            id = id.from(_N, "Credential", "apiKeyCredential"),
            type = "structure",
            name = "apiKeyCredential",
            target_id = id.from(_N, "ApiKeyCredential"),
            target = M.ApiKeyCredential,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAppAuthorizationInput = schema.new({
    id = id.from(_N, "CreateAppAuthorizationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credential = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "credential"),
            type = "union",
            name = "credential",
            target_id = id.from(_N, "Credential"),
            target = M.Credential,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenant = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "tenant"),
            type = "structure",
            name = "tenant",
            target_id = id.from(_N, "Tenant"),
            target = M.Tenant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAppAuthorizationInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateAppAuthorizationOutput = schema.new({
    id = id.from(_N, "CreateAppAuthorizationOutput"),
    type = "structure",
    members = {
        appAuthorization = schema.new({
            id = id.from(_N, "CreateAppAuthorizationOutput", "appAuthorization"),
            type = "structure",
            name = "appAuthorization",
            target_id = id.from(_N, "AppAuthorization"),
            target = M.AppAuthorization,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAppBundleInput = schema.new({
    id = id.from(_N, "CreateAppBundleInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateAppBundleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        customerManagedKeyIdentifier = schema.new({
            id = id.from(_N, "CreateAppBundleInput", "customerManagedKeyIdentifier"),
            type = "string",
            name = "customerManagedKeyIdentifier",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAppBundleInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateAppBundleOutput = schema.new({
    id = id.from(_N, "CreateAppBundleOutput"),
    type = "structure",
    members = {
        appBundle = schema.new({
            id = id.from(_N, "CreateAppBundleOutput", "appBundle"),
            type = "structure",
            name = "appBundle",
            target_id = id.from(_N, "AppBundle"),
            target = M.AppBundle,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateIngestionInput = schema.new({
    id = id.from(_N, "CreateIngestionInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "CreateIngestionInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "CreateIngestionInput", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantId = schema.new({
            id = id.from(_N, "CreateIngestionInput", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ingestionType = schema.new({
            id = id.from(_N, "CreateIngestionInput", "ingestionType"),
            type = "string",
            name = "ingestionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateIngestionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIngestionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Ingestion = schema.new({
    id = id.from(_N, "Ingestion"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Ingestion", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appBundleArn = schema.new({
            id = id.from(_N, "Ingestion", "appBundleArn"),
            type = "string",
            name = "appBundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "Ingestion", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantId = schema.new({
            id = id.from(_N, "Ingestion", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "Ingestion", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Ingestion", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "Ingestion", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ingestionType = schema.new({
            id = id.from(_N, "Ingestion", "ingestionType"),
            type = "string",
            name = "ingestionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateIngestionOutput = schema.new({
    id = id.from(_N, "CreateIngestionOutput"),
    type = "structure",
    members = {
        ingestion = schema.new({
            id = id.from(_N, "CreateIngestionOutput", "ingestion"),
            type = "structure",
            name = "ingestion",
            target_id = id.from(_N, "Ingestion"),
            target = M.Ingestion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DestinationConfiguration = schema.new({
    id = id.from(_N, "DestinationConfiguration"),
    type = "union",
    members = {
        auditLog = schema.new({
            id = id.from(_N, "DestinationConfiguration", "auditLog"),
            type = "structure",
            name = "auditLog",
            target_id = id.from(_N, "AuditLogDestinationConfiguration"),
            target = M.AuditLogDestinationConfiguration,
        }),
    },
})

M.ProcessingConfiguration = schema.new({
    id = id.from(_N, "ProcessingConfiguration"),
    type = "union",
    members = {
        auditLog = schema.new({
            id = id.from(_N, "ProcessingConfiguration", "auditLog"),
            type = "structure",
            name = "auditLog",
            target_id = id.from(_N, "AuditLogProcessingConfiguration"),
            target = M.AuditLogProcessingConfiguration,
        }),
    },
})

M.CreateIngestionDestinationInput = schema.new({
    id = id.from(_N, "CreateIngestionDestinationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        processingConfiguration = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "processingConfiguration"),
            type = "union",
            name = "processingConfiguration",
            target_id = id.from(_N, "ProcessingConfiguration"),
            target = M.ProcessingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIngestionDestinationInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.IngestionDestination = schema.new({
    id = id.from(_N, "IngestionDestination"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IngestionDestination", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ingestionArn = schema.new({
            id = id.from(_N, "IngestionDestination", "ingestionArn"),
            type = "string",
            name = "ingestionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        processingConfiguration = schema.new({
            id = id.from(_N, "IngestionDestination", "processingConfiguration"),
            type = "union",
            name = "processingConfiguration",
            target_id = id.from(_N, "ProcessingConfiguration"),
            target = M.ProcessingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "IngestionDestination", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "IngestionDestination", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "IngestionDestination", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "IngestionDestination", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "IngestionDestination", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateIngestionDestinationOutput = schema.new({
    id = id.from(_N, "CreateIngestionDestinationOutput"),
    type = "structure",
    members = {
        ingestionDestination = schema.new({
            id = id.from(_N, "CreateIngestionDestinationOutput", "ingestionDestination"),
            type = "structure",
            name = "ingestionDestination",
            target_id = id.from(_N, "IngestionDestination"),
            target = M.IngestionDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAppAuthorizationInput = schema.new({
    id = id.from(_N, "DeleteAppAuthorizationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "DeleteAppAuthorizationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appAuthorizationIdentifier = schema.new({
            id = id.from(_N, "DeleteAppAuthorizationInput", "appAuthorizationIdentifier"),
            type = "string",
            name = "appAuthorizationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAppAuthorizationOutput = schema.new({
    id = id.from(_N, "DeleteAppAuthorizationOutput"),
    type = "structure",
})

M.DeleteAppBundleInput = schema.new({
    id = id.from(_N, "DeleteAppBundleInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "DeleteAppBundleInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAppBundleOutput = schema.new({
    id = id.from(_N, "DeleteAppBundleOutput"),
    type = "structure",
})

M.DeleteIngestionInput = schema.new({
    id = id.from(_N, "DeleteIngestionInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "DeleteIngestionInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "DeleteIngestionInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIngestionOutput = schema.new({
    id = id.from(_N, "DeleteIngestionOutput"),
    type = "structure",
})

M.DeleteIngestionDestinationInput = schema.new({
    id = id.from(_N, "DeleteIngestionDestinationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "DeleteIngestionDestinationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "DeleteIngestionDestinationInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionDestinationIdentifier = schema.new({
            id = id.from(_N, "DeleteIngestionDestinationInput", "ingestionDestinationIdentifier"),
            type = "string",
            name = "ingestionDestinationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIngestionDestinationOutput = schema.new({
    id = id.from(_N, "DeleteIngestionDestinationOutput"),
    type = "structure",
})

M.GetAppAuthorizationInput = schema.new({
    id = id.from(_N, "GetAppAuthorizationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "GetAppAuthorizationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appAuthorizationIdentifier = schema.new({
            id = id.from(_N, "GetAppAuthorizationInput", "appAuthorizationIdentifier"),
            type = "string",
            name = "appAuthorizationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAppAuthorizationOutput = schema.new({
    id = id.from(_N, "GetAppAuthorizationOutput"),
    type = "structure",
    members = {
        appAuthorization = schema.new({
            id = id.from(_N, "GetAppAuthorizationOutput", "appAuthorization"),
            type = "structure",
            name = "appAuthorization",
            target_id = id.from(_N, "AppAuthorization"),
            target = M.AppAuthorization,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAppBundleInput = schema.new({
    id = id.from(_N, "GetAppBundleInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "GetAppBundleInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAppBundleOutput = schema.new({
    id = id.from(_N, "GetAppBundleOutput"),
    type = "structure",
    members = {
        appBundle = schema.new({
            id = id.from(_N, "GetAppBundleOutput", "appBundle"),
            type = "structure",
            name = "appBundle",
            target_id = id.from(_N, "AppBundle"),
            target = M.AppBundle,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIngestionInput = schema.new({
    id = id.from(_N, "GetIngestionInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "GetIngestionInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "GetIngestionInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetIngestionOutput = schema.new({
    id = id.from(_N, "GetIngestionOutput"),
    type = "structure",
    members = {
        ingestion = schema.new({
            id = id.from(_N, "GetIngestionOutput", "ingestion"),
            type = "structure",
            name = "ingestion",
            target_id = id.from(_N, "Ingestion"),
            target = M.Ingestion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIngestionDestinationInput = schema.new({
    id = id.from(_N, "GetIngestionDestinationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "GetIngestionDestinationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "GetIngestionDestinationInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionDestinationIdentifier = schema.new({
            id = id.from(_N, "GetIngestionDestinationInput", "ingestionDestinationIdentifier"),
            type = "string",
            name = "ingestionDestinationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetIngestionDestinationOutput = schema.new({
    id = id.from(_N, "GetIngestionDestinationOutput"),
    type = "structure",
    members = {
        ingestionDestination = schema.new({
            id = id.from(_N, "GetIngestionDestinationOutput", "ingestionDestination"),
            type = "structure",
            name = "ingestionDestination",
            target_id = id.from(_N, "IngestionDestination"),
            target = M.IngestionDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAppAuthorizationsInput = schema.new({
    id = id.from(_N, "ListAppAuthorizationsInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "ListAppAuthorizationsInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAppAuthorizationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAppAuthorizationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAppAuthorizationsOutput = schema.new({
    id = id.from(_N, "ListAppAuthorizationsOutput"),
    type = "structure",
    members = {
        appAuthorizationSummaryList = schema.new({
            id = id.from(_N, "ListAppAuthorizationsOutput", "appAuthorizationSummaryList"),
            type = "list",
            name = "appAuthorizationSummaryList",
            target_id = prelude.Document.id,
            list_member = M.AppAuthorizationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAppAuthorizationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAppBundlesInput = schema.new({
    id = id.from(_N, "ListAppBundlesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAppBundlesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAppBundlesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAppBundlesOutput = schema.new({
    id = id.from(_N, "ListAppBundlesOutput"),
    type = "structure",
    members = {
        appBundleSummaryList = schema.new({
            id = id.from(_N, "ListAppBundlesOutput", "appBundleSummaryList"),
            type = "list",
            name = "appBundleSummaryList",
            target_id = prelude.Document.id,
            list_member = M.AppBundleSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAppBundlesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIngestionDestinationsInput = schema.new({
    id = id.from(_N, "ListIngestionDestinationsInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "ListIngestionDestinationsInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "ListIngestionDestinationsInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIngestionDestinationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIngestionDestinationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.IngestionDestinationSummary = schema.new({
    id = id.from(_N, "IngestionDestinationSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IngestionDestinationSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIngestionDestinationsOutput = schema.new({
    id = id.from(_N, "ListIngestionDestinationsOutput"),
    type = "structure",
    members = {
        ingestionDestinations = schema.new({
            id = id.from(_N, "ListIngestionDestinationsOutput", "ingestionDestinations"),
            type = "list",
            name = "ingestionDestinations",
            target_id = prelude.Document.id,
            list_member = M.IngestionDestinationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIngestionDestinationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIngestionsInput = schema.new({
    id = id.from(_N, "ListIngestionsInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "ListIngestionsInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIngestionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIngestionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.IngestionSummary = schema.new({
    id = id.from(_N, "IngestionSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IngestionSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        app = schema.new({
            id = id.from(_N, "IngestionSummary", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantId = schema.new({
            id = id.from(_N, "IngestionSummary", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "IngestionSummary", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIngestionsOutput = schema.new({
    id = id.from(_N, "ListIngestionsOutput"),
    type = "structure",
    members = {
        ingestions = schema.new({
            id = id.from(_N, "ListIngestionsOutput", "ingestions"),
            type = "list",
            name = "ingestions",
            target_id = prelude.Document.id,
            list_member = M.IngestionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIngestionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartIngestionInput = schema.new({
    id = id.from(_N, "StartIngestionInput"),
    type = "structure",
    members = {
        ingestionIdentifier = schema.new({
            id = id.from(_N, "StartIngestionInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appBundleIdentifier = schema.new({
            id = id.from(_N, "StartIngestionInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartIngestionOutput = schema.new({
    id = id.from(_N, "StartIngestionOutput"),
    type = "structure",
})

M.StartUserAccessTasksInput = schema.new({
    id = id.from(_N, "StartUserAccessTasksInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "StartUserAccessTasksInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "StartUserAccessTasksInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserAccessTaskItem = schema.new({
    id = id.from(_N, "UserAccessTaskItem"),
    type = "structure",
    members = {
        app = schema.new({
            id = id.from(_N, "UserAccessTaskItem", "app"),
            type = "string",
            name = "app",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantId = schema.new({
            id = id.from(_N, "UserAccessTaskItem", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskId = schema.new({
            id = id.from(_N, "UserAccessTaskItem", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "UserAccessTaskItem", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "TaskError"),
            target = M.TaskError,
        }),
    },
})

M.StartUserAccessTasksOutput = schema.new({
    id = id.from(_N, "StartUserAccessTasksOutput"),
    type = "structure",
    members = {
        userAccessTasksList = schema.new({
            id = id.from(_N, "StartUserAccessTasksOutput", "userAccessTasksList"),
            type = "list",
            name = "userAccessTasksList",
            target_id = prelude.Document.id,
            list_member = M.UserAccessTaskItem,
        }),
    },
})

M.StopIngestionInput = schema.new({
    id = id.from(_N, "StopIngestionInput"),
    type = "structure",
    members = {
        ingestionIdentifier = schema.new({
            id = id.from(_N, "StopIngestionInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appBundleIdentifier = schema.new({
            id = id.from(_N, "StopIngestionInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopIngestionOutput = schema.new({
    id = id.from(_N, "StopIngestionOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateAppAuthorizationInput = schema.new({
    id = id.from(_N, "UpdateAppAuthorizationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "UpdateAppAuthorizationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        appAuthorizationIdentifier = schema.new({
            id = id.from(_N, "UpdateAppAuthorizationInput", "appAuthorizationIdentifier"),
            type = "string",
            name = "appAuthorizationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        credential = schema.new({
            id = id.from(_N, "UpdateAppAuthorizationInput", "credential"),
            type = "union",
            name = "credential",
            target_id = id.from(_N, "Credential"),
            target = M.Credential,
        }),
        tenant = schema.new({
            id = id.from(_N, "UpdateAppAuthorizationInput", "tenant"),
            type = "structure",
            name = "tenant",
            target_id = id.from(_N, "Tenant"),
            target = M.Tenant,
        }),
    },
})

M.UpdateAppAuthorizationOutput = schema.new({
    id = id.from(_N, "UpdateAppAuthorizationOutput"),
    type = "structure",
    members = {
        appAuthorization = schema.new({
            id = id.from(_N, "UpdateAppAuthorizationOutput", "appAuthorization"),
            type = "structure",
            name = "appAuthorization",
            target_id = id.from(_N, "AppAuthorization"),
            target = M.AppAuthorization,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateIngestionDestinationInput = schema.new({
    id = id.from(_N, "UpdateIngestionDestinationInput"),
    type = "structure",
    members = {
        appBundleIdentifier = schema.new({
            id = id.from(_N, "UpdateIngestionDestinationInput", "appBundleIdentifier"),
            type = "string",
            name = "appBundleIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionIdentifier = schema.new({
            id = id.from(_N, "UpdateIngestionDestinationInput", "ingestionIdentifier"),
            type = "string",
            name = "ingestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ingestionDestinationIdentifier = schema.new({
            id = id.from(_N, "UpdateIngestionDestinationInput", "ingestionDestinationIdentifier"),
            type = "string",
            name = "ingestionDestinationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        destinationConfiguration = schema.new({
            id = id.from(_N, "UpdateIngestionDestinationInput", "destinationConfiguration"),
            type = "union",
            name = "destinationConfiguration",
            target_id = id.from(_N, "DestinationConfiguration"),
            target = M.DestinationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateIngestionDestinationOutput = schema.new({
    id = id.from(_N, "UpdateIngestionDestinationOutput"),
    type = "structure",
    members = {
        ingestionDestination = schema.new({
            id = id.from(_N, "UpdateIngestionDestinationOutput", "ingestionDestination"),
            type = "structure",
            name = "ingestionDestination",
            target_id = id.from(_N, "IngestionDestination"),
            target = M.IngestionDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

return M
