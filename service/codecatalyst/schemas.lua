local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codecatalyst"

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
    },
})

M.CreateAccessTokenInput = schema.new({
    id = id.from(_N, "CreateAccessTokenInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresTime = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "expiresTime"),
            type = "timestamp",
            name = "expiresTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateAccessTokenOutput = schema.new({
    id = id.from(_N, "CreateAccessTokenOutput"),
    type = "structure",
    members = {
        secret = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "secret"),
            type = "string",
            name = "secret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresTime = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "expiresTime"),
            type = "timestamp",
            name = "expiresTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        accessTokenId = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "accessTokenId"),
            type = "string",
            name = "accessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
    },
})

M.DeleteAccessTokenInput = schema.new({
    id = id.from(_N, "DeleteAccessTokenInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteAccessTokenInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccessTokenOutput = schema.new({
    id = id.from(_N, "DeleteAccessTokenOutput"),
    type = "structure",
})

M.ListAccessTokensInput = schema.new({
    id = id.from(_N, "ListAccessTokensInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessTokenSummary = schema.new({
    id = id.from(_N, "AccessTokenSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessTokenSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AccessTokenSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresTime = schema.new({
            id = id.from(_N, "AccessTokenSummary", "expiresTime"),
            type = "timestamp",
            name = "expiresTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListAccessTokensOutput = schema.new({
    id = id.from(_N, "ListAccessTokensOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListAccessTokensOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.AccessTokenSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessTokensOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserDetailsInput = schema.new({
    id = id.from(_N, "GetUserDetailsInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetUserDetailsInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
        userName = schema.new({
            id = id.from(_N, "GetUserDetailsInput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userName" },
            },
        }),
    },
})

M.EmailAddress = schema.new({
    id = id.from(_N, "EmailAddress"),
    type = "structure",
    members = {
        email = schema.new({
            id = id.from(_N, "EmailAddress", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        verified = schema.new({
            id = id.from(_N, "EmailAddress", "verified"),
            type = "boolean",
            name = "verified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetUserDetailsOutput = schema.new({
    id = id.from(_N, "GetUserDetailsOutput"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "GetUserDetailsOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        userName = schema.new({
            id = id.from(_N, "GetUserDetailsOutput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetUserDetailsOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        primaryEmail = schema.new({
            id = id.from(_N, "GetUserDetailsOutput", "primaryEmail"),
            type = "structure",
            name = "primaryEmail",
            target_id = id.from(_N, "EmailAddress"),
            target = M.EmailAddress,
        }),
        version = schema.new({
            id = id.from(_N, "GetUserDetailsOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSpaceInput = schema.new({
    id = id.from(_N, "DeleteSpaceInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSpaceOutput = schema.new({
    id = id.from(_N, "DeleteSpaceOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "DeleteSpaceOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventLogsInput = schema.new({
    id = id.from(_N, "ListEventLogsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListEventLogsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "ListEventLogsInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "ListEventLogsInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        eventName = schema.new({
            id = id.from(_N, "ListEventLogsInput", "eventName"),
            type = "string",
            name = "eventName",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEventLogsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListEventLogsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ProjectInformation = schema.new({
    id = id.from(_N, "ProjectInformation"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ProjectInformation", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        projectId = schema.new({
            id = id.from(_N, "ProjectInformation", "projectId"),
            type = "string",
            name = "projectId",
            target_id = prelude.String.id,
        }),
    },
})

M.EventPayload = schema.new({
    id = id.from(_N, "EventPayload"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "EventPayload", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        data = schema.new({
            id = id.from(_N, "EventPayload", "data"),
            type = "string",
            name = "data",
            target_id = prelude.String.id,
        }),
    },
})

M.UserIdentity = schema.new({
    id = id.from(_N, "UserIdentity"),
    type = "structure",
    members = {
        userType = schema.new({
            id = id.from(_N, "UserIdentity", "userType"),
            type = "string",
            name = "userType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalId = schema.new({
            id = id.from(_N, "UserIdentity", "principalId"),
            type = "string",
            name = "principalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userName = schema.new({
            id = id.from(_N, "UserIdentity", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "UserIdentity", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.EventLogEntry = schema.new({
    id = id.from(_N, "EventLogEntry"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "EventLogEntry", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventName = schema.new({
            id = id.from(_N, "EventLogEntry", "eventName"),
            type = "string",
            name = "eventName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventType = schema.new({
            id = id.from(_N, "EventLogEntry", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventCategory = schema.new({
            id = id.from(_N, "EventLogEntry", "eventCategory"),
            type = "string",
            name = "eventCategory",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventSource = schema.new({
            id = id.from(_N, "EventLogEntry", "eventSource"),
            type = "string",
            name = "eventSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventTime = schema.new({
            id = id.from(_N, "EventLogEntry", "eventTime"),
            type = "timestamp",
            name = "eventTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        operationType = schema.new({
            id = id.from(_N, "EventLogEntry", "operationType"),
            type = "string",
            name = "operationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userIdentity = schema.new({
            id = id.from(_N, "EventLogEntry", "userIdentity"),
            type = "structure",
            name = "userIdentity",
            target_id = id.from(_N, "UserIdentity"),
            target = M.UserIdentity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectInformation = schema.new({
            id = id.from(_N, "EventLogEntry", "projectInformation"),
            type = "structure",
            name = "projectInformation",
            target_id = id.from(_N, "ProjectInformation"),
            target = M.ProjectInformation,
        }),
        requestId = schema.new({
            id = id.from(_N, "EventLogEntry", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
        }),
        requestPayload = schema.new({
            id = id.from(_N, "EventLogEntry", "requestPayload"),
            type = "structure",
            name = "requestPayload",
            target_id = id.from(_N, "EventPayload"),
            target = M.EventPayload,
        }),
        responsePayload = schema.new({
            id = id.from(_N, "EventLogEntry", "responsePayload"),
            type = "structure",
            name = "responsePayload",
            target_id = id.from(_N, "EventPayload"),
            target = M.EventPayload,
        }),
        errorCode = schema.new({
            id = id.from(_N, "EventLogEntry", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        sourceIpAddress = schema.new({
            id = id.from(_N, "EventLogEntry", "sourceIpAddress"),
            type = "string",
            name = "sourceIpAddress",
            target_id = prelude.String.id,
        }),
        userAgent = schema.new({
            id = id.from(_N, "EventLogEntry", "userAgent"),
            type = "string",
            name = "userAgent",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventLogsOutput = schema.new({
    id = id.from(_N, "ListEventLogsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListEventLogsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListEventLogsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.EventLogEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSpaceInput = schema.new({
    id = id.from(_N, "GetSpaceInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSpaceOutput = schema.new({
    id = id.from(_N, "GetSpaceOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        regionName = schema.new({
            id = id.from(_N, "GetSpaceOutput", "regionName"),
            type = "string",
            name = "regionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "GetSpaceOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetSpaceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Filter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "Filter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comparisonOperator = schema.new({
            id = id.from(_N, "Filter", "comparisonOperator"),
            type = "string",
            name = "comparisonOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevEnvironmentsInput = schema.new({
    id = id.from(_N, "ListDevEnvironmentsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListDevEnvironmentsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListDevEnvironmentsInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        filters = schema.new({
            id = id.from(_N, "ListDevEnvironmentsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevEnvironmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDevEnvironmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Ide = schema.new({
    id = id.from(_N, "Ide"),
    type = "structure",
    members = {
        runtime = schema.new({
            id = id.from(_N, "Ide", "runtime"),
            type = "string",
            name = "runtime",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Ide", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.PersistentStorage = schema.new({
    id = id.from(_N, "PersistentStorage"),
    type = "structure",
    members = {
        sizeInGiB = schema.new({
            id = id.from(_N, "PersistentStorage", "sizeInGiB"),
            type = "integer",
            name = "sizeInGiB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DevEnvironmentRepositorySummary = schema.new({
    id = id.from(_N, "DevEnvironmentRepositorySummary"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "DevEnvironmentRepositorySummary", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "DevEnvironmentRepositorySummary", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
    },
})

M.DevEnvironmentSummary = schema.new({
    id = id.from(_N, "DevEnvironmentSummary"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
        }),
        projectName = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        creatorId = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "creatorId"),
            type = "string",
            name = "creatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        repositories = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "repositories"),
            type = "list",
            name = "repositories",
            target_id = prelude.Document.id,
            list_member = M.DevEnvironmentRepositorySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        ides = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.Ide,
        }),
        instanceType = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        persistentStorage = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "persistentStorage"),
            type = "structure",
            name = "persistentStorage",
            target_id = id.from(_N, "PersistentStorage"),
            target = M.PersistentStorage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConnectionName = schema.new({
            id = id.from(_N, "DevEnvironmentSummary", "vpcConnectionName"),
            type = "string",
            name = "vpcConnectionName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListDevEnvironmentsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListDevEnvironmentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DevEnvironmentSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevEnvironmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSpacesInput = schema.new({
    id = id.from(_N, "ListSpacesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSpacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SpaceSummary = schema.new({
    id = id.from(_N, "SpaceSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SpaceSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        regionName = schema.new({
            id = id.from(_N, "SpaceSummary", "regionName"),
            type = "string",
            name = "regionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "SpaceSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SpaceSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSpacesOutput = schema.new({
    id = id.from(_N, "ListSpacesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSpacesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListSpacesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.SpaceSummary,
        }),
    },
})

M.CreateProjectInput = schema.new({
    id = id.from(_N, "CreateProjectInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateProjectInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateProjectInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProjectOutput = schema.new({
    id = id.from(_N, "CreateProjectOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateProjectOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateProjectOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateProjectOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateProjectOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteProjectInput = schema.new({
    id = id.from(_N, "DeleteProjectInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteProjectInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteProjectOutput = schema.new({
    id = id.from(_N, "DeleteProjectOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteProjectOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteProjectOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "DeleteProjectOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
    },
})

M.IdeConfiguration = schema.new({
    id = id.from(_N, "IdeConfiguration"),
    type = "structure",
    members = {
        runtime = schema.new({
            id = id.from(_N, "IdeConfiguration", "runtime"),
            type = "string",
            name = "runtime",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "IdeConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.PersistentStorageConfiguration = schema.new({
    id = id.from(_N, "PersistentStorageConfiguration"),
    type = "structure",
    members = {
        sizeInGiB = schema.new({
            id = id.from(_N, "PersistentStorageConfiguration", "sizeInGiB"),
            type = "integer",
            name = "sizeInGiB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositoryInput = schema.new({
    id = id.from(_N, "RepositoryInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "RepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "RepositoryInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDevEnvironmentInput = schema.new({
    id = id.from(_N, "CreateDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        repositories = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "repositories"),
            type = "list",
            name = "repositories",
            target_id = prelude.Document.id,
            list_member = M.RepositoryInput,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        alias = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        ides = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.IdeConfiguration,
        }),
        instanceType = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        persistentStorage = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "persistentStorage"),
            type = "structure",
            name = "persistentStorage",
            target_id = id.from(_N, "PersistentStorageConfiguration"),
            target = M.PersistentStorageConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConnectionName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentInput", "vpcConnectionName"),
            type = "string",
            name = "vpcConnectionName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDevEnvironmentOutput = schema.new({
    id = id.from(_N, "CreateDevEnvironmentOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "CreateDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConnectionName = schema.new({
            id = id.from(_N, "CreateDevEnvironmentOutput", "vpcConnectionName"),
            type = "string",
            name = "vpcConnectionName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDevEnvironmentInput = schema.new({
    id = id.from(_N, "DeleteDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDevEnvironmentOutput = schema.new({
    id = id.from(_N, "DeleteDevEnvironmentOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDevEnvironmentInput = schema.new({
    id = id.from(_N, "GetDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetDevEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDevEnvironmentOutput = schema.new({
    id = id.from(_N, "GetDevEnvironmentOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        creatorId = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "creatorId"),
            type = "string",
            name = "creatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        repositories = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "repositories"),
            type = "list",
            name = "repositories",
            target_id = prelude.Document.id,
            list_member = M.DevEnvironmentRepositorySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        ides = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.Ide,
        }),
        instanceType = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        persistentStorage = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "persistentStorage"),
            type = "structure",
            name = "persistentStorage",
            target_id = id.from(_N, "PersistentStorage"),
            target = M.PersistentStorage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConnectionName = schema.new({
            id = id.from(_N, "GetDevEnvironmentOutput", "vpcConnectionName"),
            type = "string",
            name = "vpcConnectionName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevEnvironmentSessionsInput = schema.new({
    id = id.from(_N, "ListDevEnvironmentSessionsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        devEnvironmentId = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsInput", "devEnvironmentId"),
            type = "string",
            name = "devEnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DevEnvironmentSessionSummary = schema.new({
    id = id.from(_N, "DevEnvironmentSessionSummary"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DevEnvironmentSessionSummary", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DevEnvironmentSessionSummary", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        devEnvironmentId = schema.new({
            id = id.from(_N, "DevEnvironmentSessionSummary", "devEnvironmentId"),
            type = "string",
            name = "devEnvironmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startedTime = schema.new({
            id = id.from(_N, "DevEnvironmentSessionSummary", "startedTime"),
            type = "timestamp",
            name = "startedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "DevEnvironmentSessionSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDevEnvironmentSessionsOutput = schema.new({
    id = id.from(_N, "ListDevEnvironmentSessionsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DevEnvironmentSessionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevEnvironmentSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDevEnvironmentInput = schema.new({
    id = id.from(_N, "StartDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ides = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.IdeConfiguration,
        }),
        instanceType = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "StartDevEnvironmentInput", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.StartDevEnvironmentOutput = schema.new({
    id = id.from(_N, "StartDevEnvironmentOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StartDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StartDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartDevEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecuteCommandSessionConfiguration = schema.new({
    id = id.from(_N, "ExecuteCommandSessionConfiguration"),
    type = "structure",
    members = {
        command = schema.new({
            id = id.from(_N, "ExecuteCommandSessionConfiguration", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arguments = schema.new({
            id = id.from(_N, "ExecuteCommandSessionConfiguration", "arguments"),
            type = "list",
            name = "arguments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DevEnvironmentSessionConfiguration = schema.new({
    id = id.from(_N, "DevEnvironmentSessionConfiguration"),
    type = "structure",
    members = {
        sessionType = schema.new({
            id = id.from(_N, "DevEnvironmentSessionConfiguration", "sessionType"),
            type = "string",
            name = "sessionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executeCommandSessionConfiguration = schema.new({
            id = id.from(_N, "DevEnvironmentSessionConfiguration", "executeCommandSessionConfiguration"),
            type = "structure",
            name = "executeCommandSessionConfiguration",
            target_id = id.from(_N, "ExecuteCommandSessionConfiguration"),
            target = M.ExecuteCommandSessionConfiguration,
        }),
    },
})

M.StartDevEnvironmentSessionInput = schema.new({
    id = id.from(_N, "StartDevEnvironmentSessionInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionConfiguration = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionInput", "sessionConfiguration"),
            type = "structure",
            name = "sessionConfiguration",
            target_id = id.from(_N, "DevEnvironmentSessionConfiguration"),
            target = M.DevEnvironmentSessionConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DevEnvironmentAccessDetails = schema.new({
    id = id.from(_N, "DevEnvironmentAccessDetails"),
    type = "structure",
    members = {
        streamUrl = schema.new({
            id = id.from(_N, "DevEnvironmentAccessDetails", "streamUrl"),
            type = "string",
            name = "streamUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tokenValue = schema.new({
            id = id.from(_N, "DevEnvironmentAccessDetails", "tokenValue"),
            type = "string",
            name = "tokenValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDevEnvironmentSessionOutput = schema.new({
    id = id.from(_N, "StartDevEnvironmentSessionOutput"),
    type = "structure",
    members = {
        accessDetails = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionOutput", "accessDetails"),
            type = "structure",
            name = "accessDetails",
            target_id = id.from(_N, "DevEnvironmentAccessDetails"),
            target = M.DevEnvironmentAccessDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        spaceName = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StartDevEnvironmentSessionOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopDevEnvironmentInput = schema.new({
    id = id.from(_N, "StopDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StopDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StopDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StopDevEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopDevEnvironmentOutput = schema.new({
    id = id.from(_N, "StopDevEnvironmentOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StopDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StopDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StopDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StopDevEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopDevEnvironmentSessionInput = schema.new({
    id = id.from(_N, "StopDevEnvironmentSessionInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopDevEnvironmentSessionOutput = schema.new({
    id = id.from(_N, "StopDevEnvironmentSessionOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopDevEnvironmentSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDevEnvironmentInput = schema.new({
    id = id.from(_N, "UpdateDevEnvironmentInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        ides = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.IdeConfiguration,
        }),
        instanceType = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDevEnvironmentOutput = schema.new({
    id = id.from(_N, "UpdateDevEnvironmentOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        spaceName = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alias = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "alias"),
            type = "string",
            name = "alias",
            target_id = prelude.String.id,
        }),
        ides = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "ides"),
            type = "list",
            name = "ides",
            target_id = prelude.Document.id,
            list_member = M.IdeConfiguration,
        }),
        instanceType = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        inactivityTimeoutMinutes = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "inactivityTimeoutMinutes"),
            type = "integer",
            name = "inactivityTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDevEnvironmentOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProjectInput = schema.new({
    id = id.from(_N, "GetProjectInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetProjectInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetProjectOutput = schema.new({
    id = id.from(_N, "GetProjectOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetProjectOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetProjectOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "GetProjectOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetProjectOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ProjectListFilter = schema.new({
    id = id.from(_N, "ProjectListFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "ProjectListFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "ProjectListFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comparisonOperator = schema.new({
            id = id.from(_N, "ProjectListFilter", "comparisonOperator"),
            type = "string",
            name = "comparisonOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsInput = schema.new({
    id = id.from(_N, "ListProjectsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListProjectsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListProjectsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        filters = schema.new({
            id = id.from(_N, "ListProjectsInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.ProjectListFilter,
        }),
    },
})

M.ProjectSummary = schema.new({
    id = id.from(_N, "ProjectSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ProjectSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "ProjectSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ProjectSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsOutput = schema.new({
    id = id.from(_N, "ListProjectsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListProjectsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ProjectSummary,
        }),
    },
})

M.CreateSourceRepositoryInput = schema.new({
    id = id.from(_N, "CreateSourceRepositoryInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSourceRepositoryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSourceRepositoryInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSourceRepositoryOutput = schema.new({
    id = id.from(_N, "CreateSourceRepositoryOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSourceRepositoryOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSourceRepositoryOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSourceRepositoryInput = schema.new({
    id = id.from(_N, "DeleteSourceRepositoryInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSourceRepositoryOutput = schema.new({
    id = id.from(_N, "DeleteSourceRepositoryOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteSourceRepositoryOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSourceRepositoryInput = schema.new({
    id = id.from(_N, "GetSourceRepositoryInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetSourceRepositoryInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetSourceRepositoryInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetSourceRepositoryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSourceRepositoryOutput = schema.new({
    id = id.from(_N, "GetSourceRepositoryOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "GetSourceRepositoryOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
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

M.GetSourceRepositoryCloneUrlsInput = schema.new({
    id = id.from(_N, "GetSourceRepositoryCloneUrlsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetSourceRepositoryCloneUrlsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetSourceRepositoryCloneUrlsInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sourceRepositoryName = schema.new({
            id = id.from(_N, "GetSourceRepositoryCloneUrlsInput", "sourceRepositoryName"),
            type = "string",
            name = "sourceRepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSourceRepositoryCloneUrlsOutput = schema.new({
    id = id.from(_N, "GetSourceRepositoryCloneUrlsOutput"),
    type = "structure",
    members = {
        https = schema.new({
            id = id.from(_N, "GetSourceRepositoryCloneUrlsOutput", "https"),
            type = "string",
            name = "https",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSourceRepositoriesInput = schema.new({
    id = id.from(_N, "ListSourceRepositoriesInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListSourceRepositoriesInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListSourceRepositoriesInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceRepositoriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSourceRepositoriesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSourceRepositoriesItem = schema.new({
    id = id.from(_N, "ListSourceRepositoriesItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ListSourceRepositoriesItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListSourceRepositoriesItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ListSourceRepositoriesItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "ListSourceRepositoriesItem", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "ListSourceRepositoriesItem", "createdTime"),
            type = "timestamp",
            name = "createdTime",
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

M.ListSourceRepositoriesOutput = schema.new({
    id = id.from(_N, "ListSourceRepositoriesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListSourceRepositoriesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ListSourceRepositoriesItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceRepositoriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSourceRepositoryBranchInput = schema.new({
    id = id.from(_N, "CreateSourceRepositoryBranchInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sourceRepositoryName = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchInput", "sourceRepositoryName"),
            type = "string",
            name = "sourceRepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        headCommitId = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchInput", "headCommitId"),
            type = "string",
            name = "headCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSourceRepositoryBranchOutput = schema.new({
    id = id.from(_N, "CreateSourceRepositoryBranchOutput"),
    type = "structure",
    members = {
        ref = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchOutput", "ref"),
            type = "string",
            name = "ref",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        headCommitId = schema.new({
            id = id.from(_N, "CreateSourceRepositoryBranchOutput", "headCommitId"),
            type = "string",
            name = "headCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceRepositoryBranchesInput = schema.new({
    id = id.from(_N, "ListSourceRepositoryBranchesInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sourceRepositoryName = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesInput", "sourceRepositoryName"),
            type = "string",
            name = "sourceRepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSourceRepositoryBranchesItem = schema.new({
    id = id.from(_N, "ListSourceRepositoryBranchesItem"),
    type = "structure",
    members = {
        ref = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesItem", "ref"),
            type = "string",
            name = "ref",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesItem", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        headCommitId = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesItem", "headCommitId"),
            type = "string",
            name = "headCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceRepositoryBranchesOutput = schema.new({
    id = id.from(_N, "ListSourceRepositoryBranchesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListSourceRepositoryBranchesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ListSourceRepositoryBranchesItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProjectInput = schema.new({
    id = id.from(_N, "UpdateProjectInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "UpdateProjectInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProjectOutput = schema.new({
    id = id.from(_N, "UpdateProjectOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkflowInput = schema.new({
    id = id.from(_N, "GetWorkflowInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetWorkflowInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetWorkflowInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkflowDefinition = schema.new({
    id = id.from(_N, "WorkflowDefinition"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "WorkflowDefinition", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkflowOutput = schema.new({
    id = id.from(_N, "GetWorkflowOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceRepositoryName = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "sourceRepositoryName"),
            type = "string",
            name = "sourceRepositoryName",
            target_id = prelude.String.id,
        }),
        sourceBranchName = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "sourceBranchName"),
            type = "string",
            name = "sourceBranchName",
            target_id = prelude.String.id,
        }),
        definition = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "definition"),
            type = "structure",
            name = "definition",
            target_id = id.from(_N, "WorkflowDefinition"),
            target = M.WorkflowDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        runMode = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "runMode"),
            type = "string",
            name = "runMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WorkflowSortCriteria = schema.new({
    id = id.from(_N, "WorkflowSortCriteria"),
    type = "structure",
})

M.ListWorkflowsInput = schema.new({
    id = id.from(_N, "ListWorkflowsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListWorkflowsInput", "sortBy"),
            type = "list",
            name = "sortBy",
            target_id = prelude.Document.id,
            list_member = M.WorkflowSortCriteria,
        }),
    },
})

M.WorkflowDefinitionSummary = schema.new({
    id = id.from(_N, "WorkflowDefinitionSummary"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "WorkflowDefinitionSummary", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WorkflowSummary = schema.new({
    id = id.from(_N, "WorkflowSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "WorkflowSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "WorkflowSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceRepositoryName = schema.new({
            id = id.from(_N, "WorkflowSummary", "sourceRepositoryName"),
            type = "string",
            name = "sourceRepositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceBranchName = schema.new({
            id = id.from(_N, "WorkflowSummary", "sourceBranchName"),
            type = "string",
            name = "sourceBranchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "WorkflowSummary", "definition"),
            type = "structure",
            name = "definition",
            target_id = id.from(_N, "WorkflowDefinitionSummary"),
            target = M.WorkflowDefinitionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "WorkflowSummary", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "WorkflowSummary", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        runMode = schema.new({
            id = id.from(_N, "WorkflowSummary", "runMode"),
            type = "string",
            name = "runMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListWorkflowsOutput = schema.new({
    id = id.from(_N, "ListWorkflowsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListWorkflowsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkflowSummary,
        }),
    },
})

M.GetWorkflowRunInput = schema.new({
    id = id.from(_N, "GetWorkflowRunInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetWorkflowRunInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowRunInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetWorkflowRunInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkflowRunStatusReason = schema.new({
    id = id.from(_N, "WorkflowRunStatusReason"),
    type = "structure",
})

M.GetWorkflowRunOutput = schema.new({
    id = id.from(_N, "GetWorkflowRunOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = M.WorkflowRunStatusReason,
        }),
        startTime = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetWorkflowRunOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.WorkflowRunSortCriteria = schema.new({
    id = id.from(_N, "WorkflowRunSortCriteria"),
    type = "structure",
})

M.ListWorkflowRunsInput = schema.new({
    id = id.from(_N, "ListWorkflowRunsInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListWorkflowRunsInput", "sortBy"),
            type = "list",
            name = "sortBy",
            target_id = prelude.Document.id,
            list_member = M.WorkflowRunSortCriteria,
        }),
    },
})

M.WorkflowRunSummary = schema.new({
    id = id.from(_N, "WorkflowRunSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowName = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "workflowName"),
            type = "string",
            name = "workflowName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = M.WorkflowRunStatusReason,
        }),
        startTime = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "WorkflowRunSummary", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListWorkflowRunsOutput = schema.new({
    id = id.from(_N, "ListWorkflowRunsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkflowRunsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListWorkflowRunsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.WorkflowRunSummary,
        }),
    },
})

M.StartWorkflowRunInput = schema.new({
    id = id.from(_N, "StartWorkflowRunInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "workflowId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartWorkflowRunInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartWorkflowRunOutput = schema.new({
    id = id.from(_N, "StartWorkflowRunOutput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        projectName = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "projectName"),
            type = "string",
            name = "projectName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workflowId = schema.new({
            id = id.from(_N, "StartWorkflowRunOutput", "workflowId"),
            type = "string",
            name = "workflowId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSubscriptionInput = schema.new({
    id = id.from(_N, "GetSubscriptionInput"),
    type = "structure",
    members = {
        spaceName = schema.new({
            id = id.from(_N, "GetSubscriptionInput", "spaceName"),
            type = "string",
            name = "spaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSubscriptionOutput = schema.new({
    id = id.from(_N, "GetSubscriptionOutput"),
    type = "structure",
    members = {
        subscriptionType = schema.new({
            id = id.from(_N, "GetSubscriptionOutput", "subscriptionType"),
            type = "string",
            name = "subscriptionType",
            target_id = prelude.String.id,
        }),
        awsAccountName = schema.new({
            id = id.from(_N, "GetSubscriptionOutput", "awsAccountName"),
            type = "string",
            name = "awsAccountName",
            target_id = prelude.String.id,
        }),
        pendingSubscriptionType = schema.new({
            id = id.from(_N, "GetSubscriptionOutput", "pendingSubscriptionType"),
            type = "string",
            name = "pendingSubscriptionType",
            target_id = prelude.String.id,
        }),
        pendingSubscriptionStartTime = schema.new({
            id = id.from(_N, "GetSubscriptionOutput", "pendingSubscriptionStartTime"),
            type = "timestamp",
            name = "pendingSubscriptionStartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UpdateSpaceInput = schema.new({
    id = id.from(_N, "UpdateSpaceInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSpaceOutput = schema.new({
    id = id.from(_N, "UpdateSpaceOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateSpaceOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSpaceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifySessionInput = schema.new({
    id = id.from(_N, "VerifySessionInput"),
    type = "structure",
})

M.VerifySessionOutput = schema.new({
    id = id.from(_N, "VerifySessionOutput"),
    type = "structure",
    members = {
        identity = schema.new({
            id = id.from(_N, "VerifySessionOutput", "identity"),
            type = "string",
            name = "identity",
            target_id = prelude.String.id,
        }),
    },
})

return M
