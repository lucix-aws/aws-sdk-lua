local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appsync"

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
        }),
    },
})

M.LambdaAuthorizerConfig = schema.new({
    id = id.from(_N, "LambdaAuthorizerConfig"),
    type = "structure",
    members = {
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "LambdaAuthorizerConfig", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "LambdaAuthorizerConfig", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "LambdaAuthorizerConfig", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
    },
})

M.OpenIDConnectConfig = schema.new({
    id = id.from(_N, "OpenIDConnectConfig"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "OpenIDConnectConfig", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "OpenIDConnectConfig", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
        iatTTL = schema.new({
            id = id.from(_N, "OpenIDConnectConfig", "iatTTL"),
            type = "long",
            name = "iatTTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        authTTL = schema.new({
            id = id.from(_N, "OpenIDConnectConfig", "authTTL"),
            type = "long",
            name = "authTTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CognitoUserPoolConfig = schema.new({
    id = id.from(_N, "CognitoUserPoolConfig"),
    type = "structure",
    members = {
        userPoolId = schema.new({
            id = id.from(_N, "CognitoUserPoolConfig", "userPoolId"),
            type = "string",
            name = "userPoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "CognitoUserPoolConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appIdClientRegex = schema.new({
            id = id.from(_N, "CognitoUserPoolConfig", "appIdClientRegex"),
            type = "string",
            name = "appIdClientRegex",
            target_id = prelude.String.id,
        }),
    },
})

M.AdditionalAuthenticationProvider = schema.new({
    id = id.from(_N, "AdditionalAuthenticationProvider"),
    type = "structure",
    members = {
        authenticationType = schema.new({
            id = id.from(_N, "AdditionalAuthenticationProvider", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        openIDConnectConfig = schema.new({
            id = id.from(_N, "AdditionalAuthenticationProvider", "openIDConnectConfig"),
            type = "structure",
            name = "openIDConnectConfig",
            target_id = id.from(_N, "OpenIDConnectConfig"),
            target = M.OpenIDConnectConfig,
        }),
        userPoolConfig = schema.new({
            id = id.from(_N, "AdditionalAuthenticationProvider", "userPoolConfig"),
            type = "structure",
            name = "userPoolConfig",
            target_id = id.from(_N, "CognitoUserPoolConfig"),
            target = M.CognitoUserPoolConfig,
        }),
        lambdaAuthorizerConfig = schema.new({
            id = id.from(_N, "AdditionalAuthenticationProvider", "lambdaAuthorizerConfig"),
            type = "structure",
            name = "lambdaAuthorizerConfig",
            target_id = id.from(_N, "LambdaAuthorizerConfig"),
            target = M.LambdaAuthorizerConfig,
        }),
    },
})

M.CognitoConfig = schema.new({
    id = id.from(_N, "CognitoConfig"),
    type = "structure",
    members = {
        userPoolId = schema.new({
            id = id.from(_N, "CognitoConfig", "userPoolId"),
            type = "string",
            name = "userPoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "CognitoConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appIdClientRegex = schema.new({
            id = id.from(_N, "CognitoConfig", "appIdClientRegex"),
            type = "string",
            name = "appIdClientRegex",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthProvider = schema.new({
    id = id.from(_N, "AuthProvider"),
    type = "structure",
    members = {
        authType = schema.new({
            id = id.from(_N, "AuthProvider", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cognitoConfig = schema.new({
            id = id.from(_N, "AuthProvider", "cognitoConfig"),
            type = "structure",
            name = "cognitoConfig",
            target_id = id.from(_N, "CognitoConfig"),
            target = M.CognitoConfig,
        }),
        openIDConnectConfig = schema.new({
            id = id.from(_N, "AuthProvider", "openIDConnectConfig"),
            type = "structure",
            name = "openIDConnectConfig",
            target_id = id.from(_N, "OpenIDConnectConfig"),
            target = M.OpenIDConnectConfig,
        }),
        lambdaAuthorizerConfig = schema.new({
            id = id.from(_N, "AuthProvider", "lambdaAuthorizerConfig"),
            type = "structure",
            name = "lambdaAuthorizerConfig",
            target_id = id.from(_N, "LambdaAuthorizerConfig"),
            target = M.LambdaAuthorizerConfig,
        }),
    },
})

M.AuthMode = schema.new({
    id = id.from(_N, "AuthMode"),
    type = "structure",
    members = {
        authType = schema.new({
            id = id.from(_N, "AuthMode", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventLogConfig = schema.new({
    id = id.from(_N, "EventLogConfig"),
    type = "structure",
    members = {
        logLevel = schema.new({
            id = id.from(_N, "EventLogConfig", "logLevel"),
            type = "string",
            name = "logLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cloudWatchLogsRoleArn = schema.new({
            id = id.from(_N, "EventLogConfig", "cloudWatchLogsRoleArn"),
            type = "string",
            name = "cloudWatchLogsRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventConfig = schema.new({
    id = id.from(_N, "EventConfig"),
    type = "structure",
    members = {
        authProviders = schema.new({
            id = id.from(_N, "EventConfig", "authProviders"),
            type = "list",
            name = "authProviders",
            target_id = prelude.Document.id,
            list_member = M.AuthProvider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectionAuthModes = schema.new({
            id = id.from(_N, "EventConfig", "connectionAuthModes"),
            type = "list",
            name = "connectionAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultPublishAuthModes = schema.new({
            id = id.from(_N, "EventConfig", "defaultPublishAuthModes"),
            type = "list",
            name = "defaultPublishAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultSubscribeAuthModes = schema.new({
            id = id.from(_N, "EventConfig", "defaultSubscribeAuthModes"),
            type = "list",
            name = "defaultSubscribeAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logConfig = schema.new({
            id = id.from(_N, "EventConfig", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "EventLogConfig"),
            target = M.EventLogConfig,
        }),
    },
})

M.Api = schema.new({
    id = id.from(_N, "Api"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "Api", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Api", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ownerContact = schema.new({
            id = id.from(_N, "Api", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Api", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        dns = schema.new({
            id = id.from(_N, "Api", "dns"),
            type = "map",
            name = "dns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        apiArn = schema.new({
            id = id.from(_N, "Api", "apiArn"),
            type = "string",
            name = "apiArn",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Api", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        xrayEnabled = schema.new({
            id = id.from(_N, "Api", "xrayEnabled"),
            type = "boolean",
            name = "xrayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        wafWebAclArn = schema.new({
            id = id.from(_N, "Api", "wafWebAclArn"),
            type = "string",
            name = "wafWebAclArn",
            target_id = prelude.String.id,
        }),
        eventConfig = schema.new({
            id = id.from(_N, "Api", "eventConfig"),
            type = "structure",
            name = "eventConfig",
            target_id = id.from(_N, "EventConfig"),
            target = M.EventConfig,
        }),
    },
})

M.ApiAssociation = schema.new({
    id = id.from(_N, "ApiAssociation"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "ApiAssociation", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        apiId = schema.new({
            id = id.from(_N, "ApiAssociation", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
        }),
        associationStatus = schema.new({
            id = id.from(_N, "ApiAssociation", "associationStatus"),
            type = "string",
            name = "associationStatus",
            target_id = prelude.String.id,
        }),
        deploymentDetail = schema.new({
            id = id.from(_N, "ApiAssociation", "deploymentDetail"),
            type = "string",
            name = "deploymentDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.ApiCache = schema.new({
    id = id.from(_N, "ApiCache"),
    type = "structure",
    members = {
        ttl = schema.new({
            id = id.from(_N, "ApiCache", "ttl"),
            type = "long",
            name = "ttl",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        apiCachingBehavior = schema.new({
            id = id.from(_N, "ApiCache", "apiCachingBehavior"),
            type = "string",
            name = "apiCachingBehavior",
            target_id = prelude.String.id,
        }),
        transitEncryptionEnabled = schema.new({
            id = id.from(_N, "ApiCache", "transitEncryptionEnabled"),
            type = "boolean",
            name = "transitEncryptionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        atRestEncryptionEnabled = schema.new({
            id = id.from(_N, "ApiCache", "atRestEncryptionEnabled"),
            type = "boolean",
            name = "atRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        type = schema.new({
            id = id.from(_N, "ApiCache", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ApiCache", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        healthMetricsConfig = schema.new({
            id = id.from(_N, "ApiCache", "healthMetricsConfig"),
            type = "string",
            name = "healthMetricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.ApiKey = schema.new({
    id = id.from(_N, "ApiKey"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ApiKey", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ApiKey", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        expires = schema.new({
            id = id.from(_N, "ApiKey", "expires"),
            type = "long",
            name = "expires",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        deletes = schema.new({
            id = id.from(_N, "ApiKey", "deletes"),
            type = "long",
            name = "deletes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ApiKeyLimitExceededException = schema.new({
    id = id.from(_N, "ApiKeyLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApiKeyLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApiKeyValidityOutOfBoundsException = schema.new({
    id = id.from(_N, "ApiKeyValidityOutOfBoundsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApiKeyValidityOutOfBoundsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApiLimitExceededException = schema.new({
    id = id.from(_N, "ApiLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApiLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AppSyncRuntime = schema.new({
    id = id.from(_N, "AppSyncRuntime"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AppSyncRuntime", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        runtimeVersion = schema.new({
            id = id.from(_N, "AppSyncRuntime", "runtimeVersion"),
            type = "string",
            name = "runtimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateApiInput = schema.new({
    id = id.from(_N, "AssociateApiRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "AssociateApiInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        apiId = schema.new({
            id = id.from(_N, "AssociateApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateApiOutput = schema.new({
    id = id.from(_N, "AssociateApiResponse"),
    type = "structure",
    members = {
        apiAssociation = schema.new({
            id = id.from(_N, "AssociateApiOutput", "apiAssociation"),
            type = "structure",
            name = "apiAssociation",
            target_id = id.from(_N, "ApiAssociation"),
            target = M.ApiAssociation,
        }),
    },
})

M.CodeErrorLocation = schema.new({
    id = id.from(_N, "CodeErrorLocation"),
    type = "structure",
    members = {
        line = schema.new({
            id = id.from(_N, "CodeErrorLocation", "line"),
            type = "integer",
            name = "line",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        column = schema.new({
            id = id.from(_N, "CodeErrorLocation", "column"),
            type = "integer",
            name = "column",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        span = schema.new({
            id = id.from(_N, "CodeErrorLocation", "span"),
            type = "integer",
            name = "span",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CodeError = schema.new({
    id = id.from(_N, "CodeError"),
    type = "structure",
    members = {
        errorType = schema.new({
            id = id.from(_N, "CodeError", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "CodeError", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CodeError", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "CodeErrorLocation"),
            target = M.CodeErrorLocation,
        }),
    },
})

M.BadRequestDetail = schema.new({
    id = id.from(_N, "BadRequestDetail"),
    type = "structure",
    members = {
        codeErrors = schema.new({
            id = id.from(_N, "BadRequestDetail", "codeErrors"),
            type = "list",
            name = "codeErrors",
            target_id = prelude.Document.id,
            list_member = M.CodeError,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BadRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "BadRequestException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        detail = schema.new({
            id = id.from(_N, "BadRequestException", "detail"),
            type = "structure",
            name = "detail",
            target_id = id.from(_N, "BadRequestDetail"),
            target = M.BadRequestDetail,
        }),
    },
})

M.InternalFailureException = schema.new({
    id = id.from(_N, "InternalFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalFailureException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceApiAssociationConfig = schema.new({
    id = id.from(_N, "SourceApiAssociationConfig"),
    type = "structure",
    members = {
        mergeType = schema.new({
            id = id.from(_N, "SourceApiAssociationConfig", "mergeType"),
            type = "string",
            name = "mergeType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateMergedGraphqlApiInput = schema.new({
    id = id.from(_N, "AssociateMergedGraphqlApiRequest"),
    type = "structure",
    members = {
        sourceApiIdentifier = schema.new({
            id = id.from(_N, "AssociateMergedGraphqlApiInput", "sourceApiIdentifier"),
            type = "string",
            name = "sourceApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "AssociateMergedGraphqlApiInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssociateMergedGraphqlApiInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceApiAssociationConfig = schema.new({
            id = id.from(_N, "AssociateMergedGraphqlApiInput", "sourceApiAssociationConfig"),
            type = "structure",
            name = "sourceApiAssociationConfig",
            target_id = id.from(_N, "SourceApiAssociationConfig"),
            target = M.SourceApiAssociationConfig,
        }),
    },
})

M.SourceApiAssociation = schema.new({
    id = id.from(_N, "SourceApiAssociation"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "SourceApiAssociation", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        associationArn = schema.new({
            id = id.from(_N, "SourceApiAssociation", "associationArn"),
            type = "string",
            name = "associationArn",
            target_id = prelude.String.id,
        }),
        sourceApiId = schema.new({
            id = id.from(_N, "SourceApiAssociation", "sourceApiId"),
            type = "string",
            name = "sourceApiId",
            target_id = prelude.String.id,
        }),
        sourceApiArn = schema.new({
            id = id.from(_N, "SourceApiAssociation", "sourceApiArn"),
            type = "string",
            name = "sourceApiArn",
            target_id = prelude.String.id,
        }),
        mergedApiArn = schema.new({
            id = id.from(_N, "SourceApiAssociation", "mergedApiArn"),
            type = "string",
            name = "mergedApiArn",
            target_id = prelude.String.id,
        }),
        mergedApiId = schema.new({
            id = id.from(_N, "SourceApiAssociation", "mergedApiId"),
            type = "string",
            name = "mergedApiId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SourceApiAssociation", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceApiAssociationConfig = schema.new({
            id = id.from(_N, "SourceApiAssociation", "sourceApiAssociationConfig"),
            type = "structure",
            name = "sourceApiAssociationConfig",
            target_id = id.from(_N, "SourceApiAssociationConfig"),
            target = M.SourceApiAssociationConfig,
        }),
        sourceApiAssociationStatus = schema.new({
            id = id.from(_N, "SourceApiAssociation", "sourceApiAssociationStatus"),
            type = "string",
            name = "sourceApiAssociationStatus",
            target_id = prelude.String.id,
        }),
        sourceApiAssociationStatusDetail = schema.new({
            id = id.from(_N, "SourceApiAssociation", "sourceApiAssociationStatusDetail"),
            type = "string",
            name = "sourceApiAssociationStatusDetail",
            target_id = prelude.String.id,
        }),
        lastSuccessfulMergeDate = schema.new({
            id = id.from(_N, "SourceApiAssociation", "lastSuccessfulMergeDate"),
            type = "timestamp",
            name = "lastSuccessfulMergeDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssociateMergedGraphqlApiOutput = schema.new({
    id = id.from(_N, "AssociateMergedGraphqlApiResponse"),
    type = "structure",
    members = {
        sourceApiAssociation = schema.new({
            id = id.from(_N, "AssociateMergedGraphqlApiOutput", "sourceApiAssociation"),
            type = "structure",
            name = "sourceApiAssociation",
            target_id = id.from(_N, "SourceApiAssociation"),
            target = M.SourceApiAssociation,
        }),
    },
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateSourceGraphqlApiInput = schema.new({
    id = id.from(_N, "AssociateSourceGraphqlApiRequest"),
    type = "structure",
    members = {
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "AssociateSourceGraphqlApiInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sourceApiIdentifier = schema.new({
            id = id.from(_N, "AssociateSourceGraphqlApiInput", "sourceApiIdentifier"),
            type = "string",
            name = "sourceApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AssociateSourceGraphqlApiInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceApiAssociationConfig = schema.new({
            id = id.from(_N, "AssociateSourceGraphqlApiInput", "sourceApiAssociationConfig"),
            type = "structure",
            name = "sourceApiAssociationConfig",
            target_id = id.from(_N, "SourceApiAssociationConfig"),
            target = M.SourceApiAssociationConfig,
        }),
    },
})

M.AssociateSourceGraphqlApiOutput = schema.new({
    id = id.from(_N, "AssociateSourceGraphqlApiResponse"),
    type = "structure",
    members = {
        sourceApiAssociation = schema.new({
            id = id.from(_N, "AssociateSourceGraphqlApiOutput", "sourceApiAssociation"),
            type = "structure",
            name = "sourceApiAssociation",
            target_id = id.from(_N, "SourceApiAssociation"),
            target = M.SourceApiAssociation,
        }),
    },
})

M.AwsIamConfig = schema.new({
    id = id.from(_N, "AwsIamConfig"),
    type = "structure",
    members = {
        signingRegion = schema.new({
            id = id.from(_N, "AwsIamConfig", "signingRegion"),
            type = "string",
            name = "signingRegion",
            target_id = prelude.String.id,
        }),
        signingServiceName = schema.new({
            id = id.from(_N, "AwsIamConfig", "signingServiceName"),
            type = "string",
            name = "signingServiceName",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizationConfig = schema.new({
    id = id.from(_N, "AuthorizationConfig"),
    type = "structure",
    members = {
        authorizationType = schema.new({
            id = id.from(_N, "AuthorizationConfig", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsIamConfig = schema.new({
            id = id.from(_N, "AuthorizationConfig", "awsIamConfig"),
            type = "structure",
            name = "awsIamConfig",
            target_id = id.from(_N, "AwsIamConfig"),
            target = M.AwsIamConfig,
        }),
    },
})

M.CreateApiInput = schema.new({
    id = id.from(_N, "CreateApiRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateApiInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerContact = schema.new({
            id = id.from(_N, "CreateApiInput", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApiInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        eventConfig = schema.new({
            id = id.from(_N, "CreateApiInput", "eventConfig"),
            type = "structure",
            name = "eventConfig",
            target_id = id.from(_N, "EventConfig"),
            target = M.EventConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateApiOutput = schema.new({
    id = id.from(_N, "CreateApiResponse"),
    type = "structure",
    members = {
        api = schema.new({
            id = id.from(_N, "CreateApiOutput", "api"),
            type = "structure",
            name = "api",
            target_id = id.from(_N, "Api"),
            target = M.Api,
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
        }),
    },
})

M.CreateApiCacheInput = schema.new({
    id = id.from(_N, "CreateApiCacheRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ttl = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "ttl"),
            type = "long",
            name = "ttl",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        transitEncryptionEnabled = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "transitEncryptionEnabled"),
            type = "boolean",
            name = "transitEncryptionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        atRestEncryptionEnabled = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "atRestEncryptionEnabled"),
            type = "boolean",
            name = "atRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        apiCachingBehavior = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "apiCachingBehavior"),
            type = "string",
            name = "apiCachingBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        healthMetricsConfig = schema.new({
            id = id.from(_N, "CreateApiCacheInput", "healthMetricsConfig"),
            type = "string",
            name = "healthMetricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApiCacheOutput = schema.new({
    id = id.from(_N, "CreateApiCacheResponse"),
    type = "structure",
    members = {
        apiCache = schema.new({
            id = id.from(_N, "CreateApiCacheOutput", "apiCache"),
            type = "structure",
            name = "apiCache",
            target_id = id.from(_N, "ApiCache"),
            target = M.ApiCache,
        }),
    },
})

M.CreateApiKeyInput = schema.new({
    id = id.from(_N, "CreateApiKeyRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        expires = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "expires"),
            type = "long",
            name = "expires",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateApiKeyOutput = schema.new({
    id = id.from(_N, "CreateApiKeyResponse"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "apiKey"),
            type = "structure",
            name = "apiKey",
            target_id = id.from(_N, "ApiKey"),
            target = M.ApiKey,
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
        }),
    },
})

M.LambdaConfig = schema.new({
    id = id.from(_N, "LambdaConfig"),
    type = "structure",
    members = {
        invokeType = schema.new({
            id = id.from(_N, "LambdaConfig", "invokeType"),
            type = "string",
            name = "invokeType",
            target_id = prelude.String.id,
        }),
    },
})

M.Integration = schema.new({
    id = id.from(_N, "Integration"),
    type = "structure",
    members = {
        dataSourceName = schema.new({
            id = id.from(_N, "Integration", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lambdaConfig = schema.new({
            id = id.from(_N, "Integration", "lambdaConfig"),
            type = "structure",
            name = "lambdaConfig",
            target_id = id.from(_N, "LambdaConfig"),
            target = M.LambdaConfig,
        }),
    },
})

M.HandlerConfig = schema.new({
    id = id.from(_N, "HandlerConfig"),
    type = "structure",
    members = {
        behavior = schema.new({
            id = id.from(_N, "HandlerConfig", "behavior"),
            type = "string",
            name = "behavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        integration = schema.new({
            id = id.from(_N, "HandlerConfig", "integration"),
            type = "structure",
            name = "integration",
            target_id = id.from(_N, "Integration"),
            target = M.Integration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HandlerConfigs = schema.new({
    id = id.from(_N, "HandlerConfigs"),
    type = "structure",
    members = {
        onPublish = schema.new({
            id = id.from(_N, "HandlerConfigs", "onPublish"),
            type = "structure",
            name = "onPublish",
            target_id = id.from(_N, "HandlerConfig"),
            target = M.HandlerConfig,
        }),
        onSubscribe = schema.new({
            id = id.from(_N, "HandlerConfigs", "onSubscribe"),
            type = "structure",
            name = "onSubscribe",
            target_id = id.from(_N, "HandlerConfig"),
            target = M.HandlerConfig,
        }),
    },
})

M.CreateChannelNamespaceInput = schema.new({
    id = id.from(_N, "CreateChannelNamespaceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subscribeAuthModes = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "subscribeAuthModes"),
            type = "list",
            name = "subscribeAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        publishAuthModes = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "publishAuthModes"),
            type = "list",
            name = "publishAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        codeHandlers = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "codeHandlers"),
            type = "string",
            name = "codeHandlers",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        handlerConfigs = schema.new({
            id = id.from(_N, "CreateChannelNamespaceInput", "handlerConfigs"),
            type = "structure",
            name = "handlerConfigs",
            target_id = id.from(_N, "HandlerConfigs"),
            target = M.HandlerConfigs,
        }),
    },
})

M.ChannelNamespace = schema.new({
    id = id.from(_N, "ChannelNamespace"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ChannelNamespace", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ChannelNamespace", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        subscribeAuthModes = schema.new({
            id = id.from(_N, "ChannelNamespace", "subscribeAuthModes"),
            type = "list",
            name = "subscribeAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        publishAuthModes = schema.new({
            id = id.from(_N, "ChannelNamespace", "publishAuthModes"),
            type = "list",
            name = "publishAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        codeHandlers = schema.new({
            id = id.from(_N, "ChannelNamespace", "codeHandlers"),
            type = "string",
            name = "codeHandlers",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ChannelNamespace", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        channelNamespaceArn = schema.new({
            id = id.from(_N, "ChannelNamespace", "channelNamespaceArn"),
            type = "string",
            name = "channelNamespaceArn",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "ChannelNamespace", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        lastModified = schema.new({
            id = id.from(_N, "ChannelNamespace", "lastModified"),
            type = "timestamp",
            name = "lastModified",
            target_id = prelude.Timestamp.id,
        }),
        handlerConfigs = schema.new({
            id = id.from(_N, "ChannelNamespace", "handlerConfigs"),
            type = "structure",
            name = "handlerConfigs",
            target_id = id.from(_N, "HandlerConfigs"),
            target = M.HandlerConfigs,
        }),
    },
})

M.CreateChannelNamespaceOutput = schema.new({
    id = id.from(_N, "CreateChannelNamespaceResponse"),
    type = "structure",
    members = {
        channelNamespace = schema.new({
            id = id.from(_N, "CreateChannelNamespaceOutput", "channelNamespace"),
            type = "structure",
            name = "channelNamespace",
            target_id = id.from(_N, "ChannelNamespace"),
            target = M.ChannelNamespace,
        }),
    },
})

M.DeltaSyncConfig = schema.new({
    id = id.from(_N, "DeltaSyncConfig"),
    type = "structure",
    members = {
        baseTableTTL = schema.new({
            id = id.from(_N, "DeltaSyncConfig", "baseTableTTL"),
            type = "long",
            name = "baseTableTTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        deltaSyncTableName = schema.new({
            id = id.from(_N, "DeltaSyncConfig", "deltaSyncTableName"),
            type = "string",
            name = "deltaSyncTableName",
            target_id = prelude.String.id,
        }),
        deltaSyncTableTTL = schema.new({
            id = id.from(_N, "DeltaSyncConfig", "deltaSyncTableTTL"),
            type = "long",
            name = "deltaSyncTableTTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DynamodbDataSourceConfig = schema.new({
    id = id.from(_N, "DynamodbDataSourceConfig"),
    type = "structure",
    members = {
        tableName = schema.new({
            id = id.from(_N, "DynamodbDataSourceConfig", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "DynamodbDataSourceConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        useCallerCredentials = schema.new({
            id = id.from(_N, "DynamodbDataSourceConfig", "useCallerCredentials"),
            type = "boolean",
            name = "useCallerCredentials",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        deltaSyncConfig = schema.new({
            id = id.from(_N, "DynamodbDataSourceConfig", "deltaSyncConfig"),
            type = "structure",
            name = "deltaSyncConfig",
            target_id = id.from(_N, "DeltaSyncConfig"),
            target = M.DeltaSyncConfig,
        }),
        versioned = schema.new({
            id = id.from(_N, "DynamodbDataSourceConfig", "versioned"),
            type = "boolean",
            name = "versioned",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ElasticsearchDataSourceConfig = schema.new({
    id = id.from(_N, "ElasticsearchDataSourceConfig"),
    type = "structure",
    members = {
        endpoint = schema.new({
            id = id.from(_N, "ElasticsearchDataSourceConfig", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "ElasticsearchDataSourceConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventBridgeDataSourceConfig = schema.new({
    id = id.from(_N, "EventBridgeDataSourceConfig"),
    type = "structure",
    members = {
        eventBusArn = schema.new({
            id = id.from(_N, "EventBridgeDataSourceConfig", "eventBusArn"),
            type = "string",
            name = "eventBusArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HttpDataSourceConfig = schema.new({
    id = id.from(_N, "HttpDataSourceConfig"),
    type = "structure",
    members = {
        endpoint = schema.new({
            id = id.from(_N, "HttpDataSourceConfig", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
        }),
        authorizationConfig = schema.new({
            id = id.from(_N, "HttpDataSourceConfig", "authorizationConfig"),
            type = "structure",
            name = "authorizationConfig",
            target_id = id.from(_N, "AuthorizationConfig"),
            target = M.AuthorizationConfig,
        }),
    },
})

M.LambdaDataSourceConfig = schema.new({
    id = id.from(_N, "LambdaDataSourceConfig"),
    type = "structure",
    members = {
        lambdaFunctionArn = schema.new({
            id = id.from(_N, "LambdaDataSourceConfig", "lambdaFunctionArn"),
            type = "string",
            name = "lambdaFunctionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenSearchServiceDataSourceConfig = schema.new({
    id = id.from(_N, "OpenSearchServiceDataSourceConfig"),
    type = "structure",
    members = {
        endpoint = schema.new({
            id = id.from(_N, "OpenSearchServiceDataSourceConfig", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "OpenSearchServiceDataSourceConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RdsHttpEndpointConfig = schema.new({
    id = id.from(_N, "RdsHttpEndpointConfig"),
    type = "structure",
    members = {
        awsRegion = schema.new({
            id = id.from(_N, "RdsHttpEndpointConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
        }),
        dbClusterIdentifier = schema.new({
            id = id.from(_N, "RdsHttpEndpointConfig", "dbClusterIdentifier"),
            type = "string",
            name = "dbClusterIdentifier",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "RdsHttpEndpointConfig", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "RdsHttpEndpointConfig", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        awsSecretStoreArn = schema.new({
            id = id.from(_N, "RdsHttpEndpointConfig", "awsSecretStoreArn"),
            type = "string",
            name = "awsSecretStoreArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RelationalDatabaseDataSourceConfig = schema.new({
    id = id.from(_N, "RelationalDatabaseDataSourceConfig"),
    type = "structure",
    members = {
        relationalDatabaseSourceType = schema.new({
            id = id.from(_N, "RelationalDatabaseDataSourceConfig", "relationalDatabaseSourceType"),
            type = "string",
            name = "relationalDatabaseSourceType",
            target_id = prelude.String.id,
        }),
        rdsHttpEndpointConfig = schema.new({
            id = id.from(_N, "RelationalDatabaseDataSourceConfig", "rdsHttpEndpointConfig"),
            type = "structure",
            name = "rdsHttpEndpointConfig",
            target_id = id.from(_N, "RdsHttpEndpointConfig"),
            target = M.RdsHttpEndpointConfig,
        }),
    },
})

M.CreateDataSourceInput = schema.new({
    id = id.from(_N, "CreateDataSourceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceRoleArn = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "serviceRoleArn"),
            type = "string",
            name = "serviceRoleArn",
            target_id = prelude.String.id,
        }),
        dynamodbConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "dynamodbConfig"),
            type = "structure",
            name = "dynamodbConfig",
            target_id = id.from(_N, "DynamodbDataSourceConfig"),
            target = M.DynamodbDataSourceConfig,
        }),
        lambdaConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "lambdaConfig"),
            type = "structure",
            name = "lambdaConfig",
            target_id = id.from(_N, "LambdaDataSourceConfig"),
            target = M.LambdaDataSourceConfig,
        }),
        elasticsearchConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "elasticsearchConfig"),
            type = "structure",
            name = "elasticsearchConfig",
            target_id = id.from(_N, "ElasticsearchDataSourceConfig"),
            target = M.ElasticsearchDataSourceConfig,
        }),
        openSearchServiceConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "openSearchServiceConfig"),
            type = "structure",
            name = "openSearchServiceConfig",
            target_id = id.from(_N, "OpenSearchServiceDataSourceConfig"),
            target = M.OpenSearchServiceDataSourceConfig,
        }),
        httpConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "httpConfig"),
            type = "structure",
            name = "httpConfig",
            target_id = id.from(_N, "HttpDataSourceConfig"),
            target = M.HttpDataSourceConfig,
        }),
        relationalDatabaseConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "relationalDatabaseConfig"),
            type = "structure",
            name = "relationalDatabaseConfig",
            target_id = id.from(_N, "RelationalDatabaseDataSourceConfig"),
            target = M.RelationalDatabaseDataSourceConfig,
        }),
        eventBridgeConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "eventBridgeConfig"),
            type = "structure",
            name = "eventBridgeConfig",
            target_id = id.from(_N, "EventBridgeDataSourceConfig"),
            target = M.EventBridgeDataSourceConfig,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSource = schema.new({
    id = id.from(_N, "DataSource"),
    type = "structure",
    members = {
        dataSourceArn = schema.new({
            id = id.from(_N, "DataSource", "dataSourceArn"),
            type = "string",
            name = "dataSourceArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DataSource", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DataSource", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DataSource", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        serviceRoleArn = schema.new({
            id = id.from(_N, "DataSource", "serviceRoleArn"),
            type = "string",
            name = "serviceRoleArn",
            target_id = prelude.String.id,
        }),
        dynamodbConfig = schema.new({
            id = id.from(_N, "DataSource", "dynamodbConfig"),
            type = "structure",
            name = "dynamodbConfig",
            target_id = id.from(_N, "DynamodbDataSourceConfig"),
            target = M.DynamodbDataSourceConfig,
        }),
        lambdaConfig = schema.new({
            id = id.from(_N, "DataSource", "lambdaConfig"),
            type = "structure",
            name = "lambdaConfig",
            target_id = id.from(_N, "LambdaDataSourceConfig"),
            target = M.LambdaDataSourceConfig,
        }),
        elasticsearchConfig = schema.new({
            id = id.from(_N, "DataSource", "elasticsearchConfig"),
            type = "structure",
            name = "elasticsearchConfig",
            target_id = id.from(_N, "ElasticsearchDataSourceConfig"),
            target = M.ElasticsearchDataSourceConfig,
        }),
        openSearchServiceConfig = schema.new({
            id = id.from(_N, "DataSource", "openSearchServiceConfig"),
            type = "structure",
            name = "openSearchServiceConfig",
            target_id = id.from(_N, "OpenSearchServiceDataSourceConfig"),
            target = M.OpenSearchServiceDataSourceConfig,
        }),
        httpConfig = schema.new({
            id = id.from(_N, "DataSource", "httpConfig"),
            type = "structure",
            name = "httpConfig",
            target_id = id.from(_N, "HttpDataSourceConfig"),
            target = M.HttpDataSourceConfig,
        }),
        relationalDatabaseConfig = schema.new({
            id = id.from(_N, "DataSource", "relationalDatabaseConfig"),
            type = "structure",
            name = "relationalDatabaseConfig",
            target_id = id.from(_N, "RelationalDatabaseDataSourceConfig"),
            target = M.RelationalDatabaseDataSourceConfig,
        }),
        eventBridgeConfig = schema.new({
            id = id.from(_N, "DataSource", "eventBridgeConfig"),
            type = "structure",
            name = "eventBridgeConfig",
            target_id = id.from(_N, "EventBridgeDataSourceConfig"),
            target = M.EventBridgeDataSourceConfig,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "DataSource", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDataSourceOutput = schema.new({
    id = id.from(_N, "CreateDataSourceResponse"),
    type = "structure",
    members = {
        dataSource = schema.new({
            id = id.from(_N, "CreateDataSourceOutput", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
        }),
    },
})

M.CreateDomainNameInput = schema.new({
    id = id.from(_N, "CreateDomainNameRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DomainNameConfig = schema.new({
    id = id.from(_N, "DomainNameConfig"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DomainNameConfig", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DomainNameConfig", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "DomainNameConfig", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        appsyncDomainName = schema.new({
            id = id.from(_N, "DomainNameConfig", "appsyncDomainName"),
            type = "string",
            name = "appsyncDomainName",
            target_id = prelude.String.id,
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "DomainNameConfig", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DomainNameConfig", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "DomainNameConfig", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDomainNameOutput = schema.new({
    id = id.from(_N, "CreateDomainNameResponse"),
    type = "structure",
    members = {
        domainNameConfig = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainNameConfig"),
            type = "structure",
            name = "domainNameConfig",
            target_id = id.from(_N, "DomainNameConfig"),
            target = M.DomainNameConfig,
        }),
    },
})

M.LambdaConflictHandlerConfig = schema.new({
    id = id.from(_N, "LambdaConflictHandlerConfig"),
    type = "structure",
    members = {
        lambdaConflictHandlerArn = schema.new({
            id = id.from(_N, "LambdaConflictHandlerConfig", "lambdaConflictHandlerArn"),
            type = "string",
            name = "lambdaConflictHandlerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SyncConfig = schema.new({
    id = id.from(_N, "SyncConfig"),
    type = "structure",
    members = {
        conflictHandler = schema.new({
            id = id.from(_N, "SyncConfig", "conflictHandler"),
            type = "string",
            name = "conflictHandler",
            target_id = prelude.String.id,
        }),
        conflictDetection = schema.new({
            id = id.from(_N, "SyncConfig", "conflictDetection"),
            type = "string",
            name = "conflictDetection",
            target_id = prelude.String.id,
        }),
        lambdaConflictHandlerConfig = schema.new({
            id = id.from(_N, "SyncConfig", "lambdaConflictHandlerConfig"),
            type = "structure",
            name = "lambdaConflictHandlerConfig",
            target_id = id.from(_N, "LambdaConflictHandlerConfig"),
            target = M.LambdaConflictHandlerConfig,
        }),
    },
})

M.CreateFunctionInput = schema.new({
    id = id.from(_N, "CreateFunctionRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateFunctionInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateFunctionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateFunctionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "CreateFunctionInput", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "CreateFunctionInput", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "CreateFunctionInput", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        functionVersion = schema.new({
            id = id.from(_N, "CreateFunctionInput", "functionVersion"),
            type = "string",
            name = "functionVersion",
            target_id = prelude.String.id,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "CreateFunctionInput", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "CreateFunctionInput", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "CreateFunctionInput", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "CreateFunctionInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.FunctionConfiguration = schema.new({
    id = id.from(_N, "FunctionConfiguration"),
    type = "structure",
    members = {
        functionId = schema.new({
            id = id.from(_N, "FunctionConfiguration", "functionId"),
            type = "string",
            name = "functionId",
            target_id = prelude.String.id,
        }),
        functionArn = schema.new({
            id = id.from(_N, "FunctionConfiguration", "functionArn"),
            type = "string",
            name = "functionArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "FunctionConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "FunctionConfiguration", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "FunctionConfiguration", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "FunctionConfiguration", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "FunctionConfiguration", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        functionVersion = schema.new({
            id = id.from(_N, "FunctionConfiguration", "functionVersion"),
            type = "string",
            name = "functionVersion",
            target_id = prelude.String.id,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "FunctionConfiguration", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "FunctionConfiguration", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "FunctionConfiguration", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "FunctionConfiguration", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFunctionOutput = schema.new({
    id = id.from(_N, "CreateFunctionResponse"),
    type = "structure",
    members = {
        functionConfiguration = schema.new({
            id = id.from(_N, "CreateFunctionOutput", "functionConfiguration"),
            type = "structure",
            name = "functionConfiguration",
            target_id = id.from(_N, "FunctionConfiguration"),
            target = M.FunctionConfiguration,
        }),
    },
})

M.EnhancedMetricsConfig = schema.new({
    id = id.from(_N, "EnhancedMetricsConfig"),
    type = "structure",
    members = {
        resolverLevelMetricsBehavior = schema.new({
            id = id.from(_N, "EnhancedMetricsConfig", "resolverLevelMetricsBehavior"),
            type = "string",
            name = "resolverLevelMetricsBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceLevelMetricsBehavior = schema.new({
            id = id.from(_N, "EnhancedMetricsConfig", "dataSourceLevelMetricsBehavior"),
            type = "string",
            name = "dataSourceLevelMetricsBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operationLevelMetricsConfig = schema.new({
            id = id.from(_N, "EnhancedMetricsConfig", "operationLevelMetricsConfig"),
            type = "string",
            name = "operationLevelMetricsConfig",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LogConfig = schema.new({
    id = id.from(_N, "LogConfig"),
    type = "structure",
    members = {
        fieldLogLevel = schema.new({
            id = id.from(_N, "LogConfig", "fieldLogLevel"),
            type = "string",
            name = "fieldLogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cloudWatchLogsRoleArn = schema.new({
            id = id.from(_N, "LogConfig", "cloudWatchLogsRoleArn"),
            type = "string",
            name = "cloudWatchLogsRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        excludeVerboseContent = schema.new({
            id = id.from(_N, "LogConfig", "excludeVerboseContent"),
            type = "boolean",
            name = "excludeVerboseContent",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UserPoolConfig = schema.new({
    id = id.from(_N, "UserPoolConfig"),
    type = "structure",
    members = {
        userPoolId = schema.new({
            id = id.from(_N, "UserPoolConfig", "userPoolId"),
            type = "string",
            name = "userPoolId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awsRegion = schema.new({
            id = id.from(_N, "UserPoolConfig", "awsRegion"),
            type = "string",
            name = "awsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultAction = schema.new({
            id = id.from(_N, "UserPoolConfig", "defaultAction"),
            type = "string",
            name = "defaultAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appIdClientRegex = schema.new({
            id = id.from(_N, "UserPoolConfig", "appIdClientRegex"),
            type = "string",
            name = "appIdClientRegex",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGraphqlApiInput = schema.new({
    id = id.from(_N, "CreateGraphqlApiRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "LogConfig"),
            target = M.LogConfig,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userPoolConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "userPoolConfig"),
            type = "structure",
            name = "userPoolConfig",
            target_id = id.from(_N, "UserPoolConfig"),
            target = M.UserPoolConfig,
        }),
        openIDConnectConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "openIDConnectConfig"),
            type = "structure",
            name = "openIDConnectConfig",
            target_id = id.from(_N, "OpenIDConnectConfig"),
            target = M.OpenIDConnectConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        additionalAuthenticationProviders = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "additionalAuthenticationProviders"),
            type = "list",
            name = "additionalAuthenticationProviders",
            target_id = prelude.Document.id,
            list_member = M.AdditionalAuthenticationProvider,
        }),
        xrayEnabled = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "xrayEnabled"),
            type = "boolean",
            name = "xrayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        lambdaAuthorizerConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "lambdaAuthorizerConfig"),
            type = "structure",
            name = "lambdaAuthorizerConfig",
            target_id = id.from(_N, "LambdaAuthorizerConfig"),
            target = M.LambdaAuthorizerConfig,
        }),
        apiType = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "apiType"),
            type = "string",
            name = "apiType",
            target_id = prelude.String.id,
        }),
        mergedApiExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "mergedApiExecutionRoleArn"),
            type = "string",
            name = "mergedApiExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        visibility = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "visibility"),
            type = "string",
            name = "visibility",
            target_id = prelude.String.id,
        }),
        ownerContact = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        introspectionConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "introspectionConfig"),
            type = "string",
            name = "introspectionConfig",
            target_id = prelude.String.id,
        }),
        queryDepthLimit = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "queryDepthLimit"),
            type = "integer",
            name = "queryDepthLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resolverCountLimit = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "resolverCountLimit"),
            type = "integer",
            name = "resolverCountLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        enhancedMetricsConfig = schema.new({
            id = id.from(_N, "CreateGraphqlApiInput", "enhancedMetricsConfig"),
            type = "structure",
            name = "enhancedMetricsConfig",
            target_id = id.from(_N, "EnhancedMetricsConfig"),
            target = M.EnhancedMetricsConfig,
        }),
    },
})

M.GraphqlApi = schema.new({
    id = id.from(_N, "GraphqlApi"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GraphqlApi", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        apiId = schema.new({
            id = id.from(_N, "GraphqlApi", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "GraphqlApi", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "LogConfig"),
            target = M.LogConfig,
        }),
        userPoolConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "userPoolConfig"),
            type = "structure",
            name = "userPoolConfig",
            target_id = id.from(_N, "UserPoolConfig"),
            target = M.UserPoolConfig,
        }),
        openIDConnectConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "openIDConnectConfig"),
            type = "structure",
            name = "openIDConnectConfig",
            target_id = id.from(_N, "OpenIDConnectConfig"),
            target = M.OpenIDConnectConfig,
        }),
        arn = schema.new({
            id = id.from(_N, "GraphqlApi", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        uris = schema.new({
            id = id.from(_N, "GraphqlApi", "uris"),
            type = "map",
            name = "uris",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "GraphqlApi", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        additionalAuthenticationProviders = schema.new({
            id = id.from(_N, "GraphqlApi", "additionalAuthenticationProviders"),
            type = "list",
            name = "additionalAuthenticationProviders",
            target_id = prelude.Document.id,
            list_member = M.AdditionalAuthenticationProvider,
        }),
        xrayEnabled = schema.new({
            id = id.from(_N, "GraphqlApi", "xrayEnabled"),
            type = "boolean",
            name = "xrayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        wafWebAclArn = schema.new({
            id = id.from(_N, "GraphqlApi", "wafWebAclArn"),
            type = "string",
            name = "wafWebAclArn",
            target_id = prelude.String.id,
        }),
        lambdaAuthorizerConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "lambdaAuthorizerConfig"),
            type = "structure",
            name = "lambdaAuthorizerConfig",
            target_id = id.from(_N, "LambdaAuthorizerConfig"),
            target = M.LambdaAuthorizerConfig,
        }),
        dns = schema.new({
            id = id.from(_N, "GraphqlApi", "dns"),
            type = "map",
            name = "dns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        visibility = schema.new({
            id = id.from(_N, "GraphqlApi", "visibility"),
            type = "string",
            name = "visibility",
            target_id = prelude.String.id,
        }),
        apiType = schema.new({
            id = id.from(_N, "GraphqlApi", "apiType"),
            type = "string",
            name = "apiType",
            target_id = prelude.String.id,
        }),
        mergedApiExecutionRoleArn = schema.new({
            id = id.from(_N, "GraphqlApi", "mergedApiExecutionRoleArn"),
            type = "string",
            name = "mergedApiExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        owner = schema.new({
            id = id.from(_N, "GraphqlApi", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
        }),
        ownerContact = schema.new({
            id = id.from(_N, "GraphqlApi", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        introspectionConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "introspectionConfig"),
            type = "string",
            name = "introspectionConfig",
            target_id = prelude.String.id,
        }),
        queryDepthLimit = schema.new({
            id = id.from(_N, "GraphqlApi", "queryDepthLimit"),
            type = "integer",
            name = "queryDepthLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resolverCountLimit = schema.new({
            id = id.from(_N, "GraphqlApi", "resolverCountLimit"),
            type = "integer",
            name = "resolverCountLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        enhancedMetricsConfig = schema.new({
            id = id.from(_N, "GraphqlApi", "enhancedMetricsConfig"),
            type = "structure",
            name = "enhancedMetricsConfig",
            target_id = id.from(_N, "EnhancedMetricsConfig"),
            target = M.EnhancedMetricsConfig,
        }),
    },
})

M.CreateGraphqlApiOutput = schema.new({
    id = id.from(_N, "CreateGraphqlApiResponse"),
    type = "structure",
    members = {
        graphqlApi = schema.new({
            id = id.from(_N, "CreateGraphqlApiOutput", "graphqlApi"),
            type = "structure",
            name = "graphqlApi",
            target_id = id.from(_N, "GraphqlApi"),
            target = M.GraphqlApi,
        }),
    },
})

M.CachingConfig = schema.new({
    id = id.from(_N, "CachingConfig"),
    type = "structure",
    members = {
        ttl = schema.new({
            id = id.from(_N, "CachingConfig", "ttl"),
            type = "long",
            name = "ttl",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cachingKeys = schema.new({
            id = id.from(_N, "CachingConfig", "cachingKeys"),
            type = "list",
            name = "cachingKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PipelineConfig = schema.new({
    id = id.from(_N, "PipelineConfig"),
    type = "structure",
    members = {
        functions = schema.new({
            id = id.from(_N, "PipelineConfig", "functions"),
            type = "list",
            name = "functions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateResolverInput = schema.new({
    id = id.from(_N, "CreateResolverRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateResolverInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "CreateResolverInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fieldName = schema.new({
            id = id.from(_N, "CreateResolverInput", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "CreateResolverInput", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "CreateResolverInput", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "CreateResolverInput", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        kind = schema.new({
            id = id.from(_N, "CreateResolverInput", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        pipelineConfig = schema.new({
            id = id.from(_N, "CreateResolverInput", "pipelineConfig"),
            type = "structure",
            name = "pipelineConfig",
            target_id = id.from(_N, "PipelineConfig"),
            target = M.PipelineConfig,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "CreateResolverInput", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        cachingConfig = schema.new({
            id = id.from(_N, "CreateResolverInput", "cachingConfig"),
            type = "structure",
            name = "cachingConfig",
            target_id = id.from(_N, "CachingConfig"),
            target = M.CachingConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "CreateResolverInput", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "CreateResolverInput", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "CreateResolverInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "CreateResolverInput", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.Resolver = schema.new({
    id = id.from(_N, "Resolver"),
    type = "structure",
    members = {
        typeName = schema.new({
            id = id.from(_N, "Resolver", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
        }),
        fieldName = schema.new({
            id = id.from(_N, "Resolver", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "Resolver", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
        }),
        resolverArn = schema.new({
            id = id.from(_N, "Resolver", "resolverArn"),
            type = "string",
            name = "resolverArn",
            target_id = prelude.String.id,
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "Resolver", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "Resolver", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        kind = schema.new({
            id = id.from(_N, "Resolver", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        pipelineConfig = schema.new({
            id = id.from(_N, "Resolver", "pipelineConfig"),
            type = "structure",
            name = "pipelineConfig",
            target_id = id.from(_N, "PipelineConfig"),
            target = M.PipelineConfig,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "Resolver", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        cachingConfig = schema.new({
            id = id.from(_N, "Resolver", "cachingConfig"),
            type = "structure",
            name = "cachingConfig",
            target_id = id.from(_N, "CachingConfig"),
            target = M.CachingConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "Resolver", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "Resolver", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "Resolver", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "Resolver", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResolverOutput = schema.new({
    id = id.from(_N, "CreateResolverResponse"),
    type = "structure",
    members = {
        resolver = schema.new({
            id = id.from(_N, "CreateResolverOutput", "resolver"),
            type = "structure",
            name = "resolver",
            target_id = id.from(_N, "Resolver"),
            target = M.Resolver,
        }),
    },
})

M.CreateTypeInput = schema.new({
    id = id.from(_N, "CreateTypeRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "CreateTypeInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "CreateTypeInput", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "CreateTypeInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Type = schema.new({
    id = id.from(_N, "Type"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Type", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Type", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Type", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        definition = schema.new({
            id = id.from(_N, "Type", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
        }),
        format = schema.new({
            id = id.from(_N, "Type", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTypeOutput = schema.new({
    id = id.from(_N, "CreateTypeResponse"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CreateTypeOutput", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "Type"),
            target = M.Type,
        }),
    },
})

M.DeleteApiInput = schema.new({
    id = id.from(_N, "DeleteApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteApiOutput = schema.new({
    id = id.from(_N, "DeleteApiResponse"),
    type = "structure",
})

M.DeleteApiCacheInput = schema.new({
    id = id.from(_N, "DeleteApiCacheRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteApiCacheInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteApiCacheOutput = schema.new({
    id = id.from(_N, "DeleteApiCacheResponse"),
    type = "structure",
})

M.DeleteApiKeyInput = schema.new({
    id = id.from(_N, "DeleteApiKeyRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteApiKeyInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteApiKeyInput", "id"),
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

M.DeleteApiKeyOutput = schema.new({
    id = id.from(_N, "DeleteApiKeyResponse"),
    type = "structure",
})

M.DeleteChannelNamespaceInput = schema.new({
    id = id.from(_N, "DeleteChannelNamespaceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteChannelNamespaceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteChannelNamespaceInput", "name"),
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

M.DeleteChannelNamespaceOutput = schema.new({
    id = id.from(_N, "DeleteChannelNamespaceResponse"),
    type = "structure",
})

M.DeleteDataSourceInput = schema.new({
    id = id.from(_N, "DeleteDataSourceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteDataSourceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteDataSourceInput", "name"),
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

M.DeleteDataSourceOutput = schema.new({
    id = id.from(_N, "DeleteDataSourceResponse"),
    type = "structure",
})

M.DeleteDomainNameInput = schema.new({
    id = id.from(_N, "DeleteDomainNameRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DeleteDomainNameInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDomainNameOutput = schema.new({
    id = id.from(_N, "DeleteDomainNameResponse"),
    type = "structure",
})

M.DeleteFunctionInput = schema.new({
    id = id.from(_N, "DeleteFunctionRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteFunctionInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        functionId = schema.new({
            id = id.from(_N, "DeleteFunctionInput", "functionId"),
            type = "string",
            name = "functionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFunctionOutput = schema.new({
    id = id.from(_N, "DeleteFunctionResponse"),
    type = "structure",
})

M.DeleteGraphqlApiInput = schema.new({
    id = id.from(_N, "DeleteGraphqlApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteGraphqlApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGraphqlApiOutput = schema.new({
    id = id.from(_N, "DeleteGraphqlApiResponse"),
    type = "structure",
})

M.DeleteResolverInput = schema.new({
    id = id.from(_N, "DeleteResolverRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteResolverInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "DeleteResolverInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fieldName = schema.new({
            id = id.from(_N, "DeleteResolverInput", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResolverOutput = schema.new({
    id = id.from(_N, "DeleteResolverResponse"),
    type = "structure",
})

M.DeleteTypeInput = schema.new({
    id = id.from(_N, "DeleteTypeRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "DeleteTypeInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "DeleteTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTypeOutput = schema.new({
    id = id.from(_N, "DeleteTypeResponse"),
    type = "structure",
})

M.DisassociateApiInput = schema.new({
    id = id.from(_N, "DisassociateApiRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DisassociateApiInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateApiOutput = schema.new({
    id = id.from(_N, "DisassociateApiResponse"),
    type = "structure",
})

M.DisassociateMergedGraphqlApiInput = schema.new({
    id = id.from(_N, "DisassociateMergedGraphqlApiRequest"),
    type = "structure",
    members = {
        sourceApiIdentifier = schema.new({
            id = id.from(_N, "DisassociateMergedGraphqlApiInput", "sourceApiIdentifier"),
            type = "string",
            name = "sourceApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "DisassociateMergedGraphqlApiInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateMergedGraphqlApiOutput = schema.new({
    id = id.from(_N, "DisassociateMergedGraphqlApiResponse"),
    type = "structure",
    members = {
        sourceApiAssociationStatus = schema.new({
            id = id.from(_N, "DisassociateMergedGraphqlApiOutput", "sourceApiAssociationStatus"),
            type = "string",
            name = "sourceApiAssociationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateSourceGraphqlApiInput = schema.new({
    id = id.from(_N, "DisassociateSourceGraphqlApiRequest"),
    type = "structure",
    members = {
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "DisassociateSourceGraphqlApiInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "DisassociateSourceGraphqlApiInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateSourceGraphqlApiOutput = schema.new({
    id = id.from(_N, "DisassociateSourceGraphqlApiResponse"),
    type = "structure",
    members = {
        sourceApiAssociationStatus = schema.new({
            id = id.from(_N, "DisassociateSourceGraphqlApiOutput", "sourceApiAssociationStatus"),
            type = "string",
            name = "sourceApiAssociationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluateCodeInput = schema.new({
    id = id.from(_N, "EvaluateCodeRequest"),
    type = "structure",
    members = {
        runtime = schema.new({
            id = id.from(_N, "EvaluateCodeInput", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "EvaluateCodeInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        context = schema.new({
            id = id.from(_N, "EvaluateCodeInput", "context"),
            type = "string",
            name = "context",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        function = schema.new({
            id = id.from(_N, "EvaluateCodeInput", "function"),
            type = "string",
            name = "function",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluateCodeErrorDetail = schema.new({
    id = id.from(_N, "EvaluateCodeErrorDetail"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "EvaluateCodeErrorDetail", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        codeErrors = schema.new({
            id = id.from(_N, "EvaluateCodeErrorDetail", "codeErrors"),
            type = "list",
            name = "codeErrors",
            target_id = prelude.Document.id,
            list_member = M.CodeError,
        }),
    },
})

M.EvaluateCodeOutput = schema.new({
    id = id.from(_N, "EvaluateCodeResponse"),
    type = "structure",
    members = {
        evaluationResult = schema.new({
            id = id.from(_N, "EvaluateCodeOutput", "evaluationResult"),
            type = "string",
            name = "evaluationResult",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "EvaluateCodeOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "EvaluateCodeErrorDetail"),
            target = M.EvaluateCodeErrorDetail,
        }),
        logs = schema.new({
            id = id.from(_N, "EvaluateCodeOutput", "logs"),
            type = "list",
            name = "logs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        stash = schema.new({
            id = id.from(_N, "EvaluateCodeOutput", "stash"),
            type = "string",
            name = "stash",
            target_id = prelude.String.id,
        }),
        outErrors = schema.new({
            id = id.from(_N, "EvaluateCodeOutput", "outErrors"),
            type = "string",
            name = "outErrors",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluateMappingTemplateInput = schema.new({
    id = id.from(_N, "EvaluateMappingTemplateRequest"),
    type = "structure",
    members = {
        template = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateInput", "template"),
            type = "string",
            name = "template",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        context = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateInput", "context"),
            type = "string",
            name = "context",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "ErrorDetail", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluateMappingTemplateOutput = schema.new({
    id = id.from(_N, "EvaluateMappingTemplateResponse"),
    type = "structure",
    members = {
        evaluationResult = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateOutput", "evaluationResult"),
            type = "string",
            name = "evaluationResult",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        logs = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateOutput", "logs"),
            type = "list",
            name = "logs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        stash = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateOutput", "stash"),
            type = "string",
            name = "stash",
            target_id = prelude.String.id,
        }),
        outErrors = schema.new({
            id = id.from(_N, "EvaluateMappingTemplateOutput", "outErrors"),
            type = "string",
            name = "outErrors",
            target_id = prelude.String.id,
        }),
    },
})

M.FlushApiCacheInput = schema.new({
    id = id.from(_N, "FlushApiCacheRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "FlushApiCacheInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.FlushApiCacheOutput = schema.new({
    id = id.from(_N, "FlushApiCacheResponse"),
    type = "structure",
})

M.GetApiInput = schema.new({
    id = id.from(_N, "GetApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApiOutput = schema.new({
    id = id.from(_N, "GetApiResponse"),
    type = "structure",
    members = {
        api = schema.new({
            id = id.from(_N, "GetApiOutput", "api"),
            type = "structure",
            name = "api",
            target_id = id.from(_N, "Api"),
            target = M.Api,
        }),
    },
})

M.GetApiAssociationInput = schema.new({
    id = id.from(_N, "GetApiAssociationRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetApiAssociationInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApiAssociationOutput = schema.new({
    id = id.from(_N, "GetApiAssociationResponse"),
    type = "structure",
    members = {
        apiAssociation = schema.new({
            id = id.from(_N, "GetApiAssociationOutput", "apiAssociation"),
            type = "structure",
            name = "apiAssociation",
            target_id = id.from(_N, "ApiAssociation"),
            target = M.ApiAssociation,
        }),
    },
})

M.GetApiCacheInput = schema.new({
    id = id.from(_N, "GetApiCacheRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetApiCacheInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetApiCacheOutput = schema.new({
    id = id.from(_N, "GetApiCacheResponse"),
    type = "structure",
    members = {
        apiCache = schema.new({
            id = id.from(_N, "GetApiCacheOutput", "apiCache"),
            type = "structure",
            name = "apiCache",
            target_id = id.from(_N, "ApiCache"),
            target = M.ApiCache,
        }),
    },
})

M.GetChannelNamespaceInput = schema.new({
    id = id.from(_N, "GetChannelNamespaceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetChannelNamespaceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetChannelNamespaceInput", "name"),
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

M.GetChannelNamespaceOutput = schema.new({
    id = id.from(_N, "GetChannelNamespaceResponse"),
    type = "structure",
    members = {
        channelNamespace = schema.new({
            id = id.from(_N, "GetChannelNamespaceOutput", "channelNamespace"),
            type = "structure",
            name = "channelNamespace",
            target_id = id.from(_N, "ChannelNamespace"),
            target = M.ChannelNamespace,
        }),
    },
})

M.GetDataSourceInput = schema.new({
    id = id.from(_N, "GetDataSourceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetDataSourceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetDataSourceInput", "name"),
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

M.GetDataSourceOutput = schema.new({
    id = id.from(_N, "GetDataSourceResponse"),
    type = "structure",
    members = {
        dataSource = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
        }),
    },
})

M.GetDataSourceIntrospectionInput = schema.new({
    id = id.from(_N, "GetDataSourceIntrospectionRequest"),
    type = "structure",
    members = {
        introspectionId = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionInput", "introspectionId"),
            type = "string",
            name = "introspectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        includeModelsSDL = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionInput", "includeModelsSDL"),
            type = "boolean",
            name = "includeModelsSDL",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeModelsSDL" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DataSourceIntrospectionModelIndex = schema.new({
    id = id.from(_N, "DataSourceIntrospectionModelIndex"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelIndex", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelIndex", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetDomainNameInput = schema.new({
    id = id.from(_N, "GetDomainNameRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetDomainNameInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDomainNameOutput = schema.new({
    id = id.from(_N, "GetDomainNameResponse"),
    type = "structure",
    members = {
        domainNameConfig = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainNameConfig"),
            type = "structure",
            name = "domainNameConfig",
            target_id = id.from(_N, "DomainNameConfig"),
            target = M.DomainNameConfig,
        }),
    },
})

M.GetFunctionInput = schema.new({
    id = id.from(_N, "GetFunctionRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetFunctionInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        functionId = schema.new({
            id = id.from(_N, "GetFunctionInput", "functionId"),
            type = "string",
            name = "functionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFunctionOutput = schema.new({
    id = id.from(_N, "GetFunctionResponse"),
    type = "structure",
    members = {
        functionConfiguration = schema.new({
            id = id.from(_N, "GetFunctionOutput", "functionConfiguration"),
            type = "structure",
            name = "functionConfiguration",
            target_id = id.from(_N, "FunctionConfiguration"),
            target = M.FunctionConfiguration,
        }),
    },
})

M.GetGraphqlApiInput = schema.new({
    id = id.from(_N, "GetGraphqlApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetGraphqlApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGraphqlApiOutput = schema.new({
    id = id.from(_N, "GetGraphqlApiResponse"),
    type = "structure",
    members = {
        graphqlApi = schema.new({
            id = id.from(_N, "GetGraphqlApiOutput", "graphqlApi"),
            type = "structure",
            name = "graphqlApi",
            target_id = id.from(_N, "GraphqlApi"),
            target = M.GraphqlApi,
        }),
    },
})

M.GetGraphqlApiEnvironmentVariablesInput = schema.new({
    id = id.from(_N, "GetGraphqlApiEnvironmentVariablesRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetGraphqlApiEnvironmentVariablesInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGraphqlApiEnvironmentVariablesOutput = schema.new({
    id = id.from(_N, "GetGraphqlApiEnvironmentVariablesResponse"),
    type = "structure",
    members = {
        environmentVariables = schema.new({
            id = id.from(_N, "GetGraphqlApiEnvironmentVariablesOutput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetIntrospectionSchemaInput = schema.new({
    id = id.from(_N, "GetIntrospectionSchemaRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetIntrospectionSchemaInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "GetIntrospectionSchemaInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "format" },
            },
        }),
        includeDirectives = schema.new({
            id = id.from(_N, "GetIntrospectionSchemaInput", "includeDirectives"),
            type = "boolean",
            name = "includeDirectives",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeDirectives" },
            },
        }),
    },
})

M.GetIntrospectionSchemaOutput = schema.new({
    id = id.from(_N, "GetIntrospectionSchemaResponse"),
    type = "structure",
    members = {
        schema = schema.new({
            id = id.from(_N, "GetIntrospectionSchemaOutput", "schema"),
            type = "blob",
            name = "schema",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GraphQLSchemaException = schema.new({
    id = id.from(_N, "GraphQLSchemaException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GraphQLSchemaException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResolverInput = schema.new({
    id = id.from(_N, "GetResolverRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetResolverInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "GetResolverInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fieldName = schema.new({
            id = id.from(_N, "GetResolverInput", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResolverOutput = schema.new({
    id = id.from(_N, "GetResolverResponse"),
    type = "structure",
    members = {
        resolver = schema.new({
            id = id.from(_N, "GetResolverOutput", "resolver"),
            type = "structure",
            name = "resolver",
            target_id = id.from(_N, "Resolver"),
            target = M.Resolver,
        }),
    },
})

M.GetSchemaCreationStatusInput = schema.new({
    id = id.from(_N, "GetSchemaCreationStatusRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetSchemaCreationStatusInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSchemaCreationStatusOutput = schema.new({
    id = id.from(_N, "GetSchemaCreationStatusResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetSchemaCreationStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        details = schema.new({
            id = id.from(_N, "GetSchemaCreationStatusOutput", "details"),
            type = "string",
            name = "details",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSourceApiAssociationInput = schema.new({
    id = id.from(_N, "GetSourceApiAssociationRequest"),
    type = "structure",
    members = {
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "GetSourceApiAssociationInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "GetSourceApiAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetSourceApiAssociationOutput = schema.new({
    id = id.from(_N, "GetSourceApiAssociationResponse"),
    type = "structure",
    members = {
        sourceApiAssociation = schema.new({
            id = id.from(_N, "GetSourceApiAssociationOutput", "sourceApiAssociation"),
            type = "structure",
            name = "sourceApiAssociation",
            target_id = id.from(_N, "SourceApiAssociation"),
            target = M.SourceApiAssociation,
        }),
    },
})

M.GetTypeInput = schema.new({
    id = id.from(_N, "GetTypeRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "GetTypeInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "GetTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "GetTypeInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "format" },
            },
        }),
    },
})

M.GetTypeOutput = schema.new({
    id = id.from(_N, "GetTypeResponse"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "GetTypeOutput", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "Type"),
            target = M.Type,
        }),
    },
})

M.ListApiKeysInput = schema.new({
    id = id.from(_N, "ListApiKeysRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListApiKeysInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApiKeysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApiKeysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListApiKeysOutput = schema.new({
    id = id.from(_N, "ListApiKeysResponse"),
    type = "structure",
    members = {
        apiKeys = schema.new({
            id = id.from(_N, "ListApiKeysOutput", "apiKeys"),
            type = "list",
            name = "apiKeys",
            target_id = prelude.Document.id,
            list_member = M.ApiKey,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApiKeysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApisInput = schema.new({
    id = id.from(_N, "ListApisRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApisInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApisInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListApisOutput = schema.new({
    id = id.from(_N, "ListApisResponse"),
    type = "structure",
    members = {
        apis = schema.new({
            id = id.from(_N, "ListApisOutput", "apis"),
            type = "list",
            name = "apis",
            target_id = prelude.Document.id,
            list_member = M.Api,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApisOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChannelNamespacesInput = schema.new({
    id = id.from(_N, "ListChannelNamespacesRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListChannelNamespacesInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChannelNamespacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListChannelNamespacesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListChannelNamespacesOutput = schema.new({
    id = id.from(_N, "ListChannelNamespacesResponse"),
    type = "structure",
    members = {
        channelNamespaces = schema.new({
            id = id.from(_N, "ListChannelNamespacesOutput", "channelNamespaces"),
            type = "list",
            name = "channelNamespaces",
            target_id = prelude.Document.id,
            list_member = M.ChannelNamespace,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChannelNamespacesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDataSourcesInput = schema.new({
    id = id.from(_N, "ListDataSourcesRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListDataSourcesOutput = schema.new({
    id = id.from(_N, "ListDataSourcesResponse"),
    type = "structure",
    members = {
        dataSources = schema.new({
            id = id.from(_N, "ListDataSourcesOutput", "dataSources"),
            type = "list",
            name = "dataSources",
            target_id = prelude.Document.id,
            list_member = M.DataSource,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDomainNamesInput = schema.new({
    id = id.from(_N, "ListDomainNamesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDomainNamesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDomainNamesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListDomainNamesOutput = schema.new({
    id = id.from(_N, "ListDomainNamesResponse"),
    type = "structure",
    members = {
        domainNameConfigs = schema.new({
            id = id.from(_N, "ListDomainNamesOutput", "domainNameConfigs"),
            type = "list",
            name = "domainNameConfigs",
            target_id = prelude.Document.id,
            list_member = M.DomainNameConfig,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDomainNamesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFunctionsInput = schema.new({
    id = id.from(_N, "ListFunctionsRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListFunctionsInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFunctionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFunctionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListFunctionsOutput = schema.new({
    id = id.from(_N, "ListFunctionsResponse"),
    type = "structure",
    members = {
        functions = schema.new({
            id = id.from(_N, "ListFunctionsOutput", "functions"),
            type = "list",
            name = "functions",
            target_id = prelude.Document.id,
            list_member = M.FunctionConfiguration,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFunctionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGraphqlApisInput = schema.new({
    id = id.from(_N, "ListGraphqlApisRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListGraphqlApisInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListGraphqlApisInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        apiType = schema.new({
            id = id.from(_N, "ListGraphqlApisInput", "apiType"),
            type = "string",
            name = "apiType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "apiType" },
            },
        }),
        owner = schema.new({
            id = id.from(_N, "ListGraphqlApisInput", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "owner" },
            },
        }),
    },
})

M.ListGraphqlApisOutput = schema.new({
    id = id.from(_N, "ListGraphqlApisResponse"),
    type = "structure",
    members = {
        graphqlApis = schema.new({
            id = id.from(_N, "ListGraphqlApisOutput", "graphqlApis"),
            type = "list",
            name = "graphqlApis",
            target_id = prelude.Document.id,
            list_member = M.GraphqlApi,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGraphqlApisOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolversInput = schema.new({
    id = id.from(_N, "ListResolversRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListResolversInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "ListResolversInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResolversInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListResolversInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListResolversOutput = schema.new({
    id = id.from(_N, "ListResolversResponse"),
    type = "structure",
    members = {
        resolvers = schema.new({
            id = id.from(_N, "ListResolversOutput", "resolvers"),
            type = "list",
            name = "resolvers",
            target_id = prelude.Document.id,
            list_member = M.Resolver,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResolversOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResolversByFunctionInput = schema.new({
    id = id.from(_N, "ListResolversByFunctionRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListResolversByFunctionInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        functionId = schema.new({
            id = id.from(_N, "ListResolversByFunctionInput", "functionId"),
            type = "string",
            name = "functionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResolversByFunctionInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListResolversByFunctionInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListResolversByFunctionOutput = schema.new({
    id = id.from(_N, "ListResolversByFunctionResponse"),
    type = "structure",
    members = {
        resolvers = schema.new({
            id = id.from(_N, "ListResolversByFunctionOutput", "resolvers"),
            type = "list",
            name = "resolvers",
            target_id = prelude.Document.id,
            list_member = M.Resolver,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResolversByFunctionOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceApiAssociationsInput = schema.new({
    id = id.from(_N, "ListSourceApiAssociationsRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListSourceApiAssociationsInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceApiAssociationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSourceApiAssociationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.SourceApiAssociationSummary = schema.new({
    id = id.from(_N, "SourceApiAssociationSummary"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
        }),
        associationArn = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "associationArn"),
            type = "string",
            name = "associationArn",
            target_id = prelude.String.id,
        }),
        sourceApiId = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "sourceApiId"),
            type = "string",
            name = "sourceApiId",
            target_id = prelude.String.id,
        }),
        sourceApiArn = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "sourceApiArn"),
            type = "string",
            name = "sourceApiArn",
            target_id = prelude.String.id,
        }),
        mergedApiId = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "mergedApiId"),
            type = "string",
            name = "mergedApiId",
            target_id = prelude.String.id,
        }),
        mergedApiArn = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "mergedApiArn"),
            type = "string",
            name = "mergedApiArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SourceApiAssociationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceApiAssociationsOutput = schema.new({
    id = id.from(_N, "ListSourceApiAssociationsResponse"),
    type = "structure",
    members = {
        sourceApiAssociationSummaries = schema.new({
            id = id.from(_N, "ListSourceApiAssociationsOutput", "sourceApiAssociationSummaries"),
            type = "list",
            name = "sourceApiAssociationSummaries",
            target_id = prelude.Document.id,
            list_member = M.SourceApiAssociationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceApiAssociationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
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
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTypesInput = schema.new({
    id = id.from(_N, "ListTypesRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ListTypesInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "ListTypesInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "format" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTypesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTypesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListTypesOutput = schema.new({
    id = id.from(_N, "ListTypesResponse"),
    type = "structure",
    members = {
        types = schema.new({
            id = id.from(_N, "ListTypesOutput", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = M.Type,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTypesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTypesByAssociationInput = schema.new({
    id = id.from(_N, "ListTypesByAssociationRequest"),
    type = "structure",
    members = {
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "ListTypesByAssociationInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        associationId = schema.new({
            id = id.from(_N, "ListTypesByAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "ListTypesByAssociationInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "format" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTypesByAssociationInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTypesByAssociationInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListTypesByAssociationOutput = schema.new({
    id = id.from(_N, "ListTypesByAssociationResponse"),
    type = "structure",
    members = {
        types = schema.new({
            id = id.from(_N, "ListTypesByAssociationOutput", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = M.Type,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTypesByAssociationOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutGraphqlApiEnvironmentVariablesInput = schema.new({
    id = id.from(_N, "PutGraphqlApiEnvironmentVariablesRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "PutGraphqlApiEnvironmentVariablesInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "PutGraphqlApiEnvironmentVariablesInput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutGraphqlApiEnvironmentVariablesOutput = schema.new({
    id = id.from(_N, "PutGraphqlApiEnvironmentVariablesResponse"),
    type = "structure",
    members = {
        environmentVariables = schema.new({
            id = id.from(_N, "PutGraphqlApiEnvironmentVariablesOutput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RdsDataApiConfig = schema.new({
    id = id.from(_N, "RdsDataApiConfig"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "RdsDataApiConfig", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretArn = schema.new({
            id = id.from(_N, "RdsDataApiConfig", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "RdsDataApiConfig", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDataSourceIntrospectionInput = schema.new({
    id = id.from(_N, "StartDataSourceIntrospectionRequest"),
    type = "structure",
    members = {
        rdsDataApiConfig = schema.new({
            id = id.from(_N, "StartDataSourceIntrospectionInput", "rdsDataApiConfig"),
            type = "structure",
            name = "rdsDataApiConfig",
            target_id = id.from(_N, "RdsDataApiConfig"),
            target = M.RdsDataApiConfig,
        }),
    },
})

M.StartDataSourceIntrospectionOutput = schema.new({
    id = id.from(_N, "StartDataSourceIntrospectionResponse"),
    type = "structure",
    members = {
        introspectionId = schema.new({
            id = id.from(_N, "StartDataSourceIntrospectionOutput", "introspectionId"),
            type = "string",
            name = "introspectionId",
            target_id = prelude.String.id,
        }),
        introspectionStatus = schema.new({
            id = id.from(_N, "StartDataSourceIntrospectionOutput", "introspectionStatus"),
            type = "string",
            name = "introspectionStatus",
            target_id = prelude.String.id,
        }),
        introspectionStatusDetail = schema.new({
            id = id.from(_N, "StartDataSourceIntrospectionOutput", "introspectionStatusDetail"),
            type = "string",
            name = "introspectionStatusDetail",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSchemaCreationInput = schema.new({
    id = id.from(_N, "StartSchemaCreationRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "StartSchemaCreationInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "StartSchemaCreationInput", "definition"),
            type = "blob",
            name = "definition",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartSchemaCreationOutput = schema.new({
    id = id.from(_N, "StartSchemaCreationResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "StartSchemaCreationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSchemaMergeInput = schema.new({
    id = id.from(_N, "StartSchemaMergeRequest"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "StartSchemaMergeInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "StartSchemaMergeInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartSchemaMergeOutput = schema.new({
    id = id.from(_N, "StartSchemaMergeResponse"),
    type = "structure",
    members = {
        sourceApiAssociationStatus = schema.new({
            id = id.from(_N, "StartSchemaMergeOutput", "sourceApiAssociationStatus"),
            type = "string",
            name = "sourceApiAssociationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
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
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateApiInput = schema.new({
    id = id.from(_N, "UpdateApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateApiInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ownerContact = schema.new({
            id = id.from(_N, "UpdateApiInput", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        eventConfig = schema.new({
            id = id.from(_N, "UpdateApiInput", "eventConfig"),
            type = "structure",
            name = "eventConfig",
            target_id = id.from(_N, "EventConfig"),
            target = M.EventConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApiOutput = schema.new({
    id = id.from(_N, "UpdateApiResponse"),
    type = "structure",
    members = {
        api = schema.new({
            id = id.from(_N, "UpdateApiOutput", "api"),
            type = "structure",
            name = "api",
            target_id = id.from(_N, "Api"),
            target = M.Api,
        }),
    },
})

M.UpdateApiCacheInput = schema.new({
    id = id.from(_N, "UpdateApiCacheRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateApiCacheInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ttl = schema.new({
            id = id.from(_N, "UpdateApiCacheInput", "ttl"),
            type = "long",
            name = "ttl",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        apiCachingBehavior = schema.new({
            id = id.from(_N, "UpdateApiCacheInput", "apiCachingBehavior"),
            type = "string",
            name = "apiCachingBehavior",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "UpdateApiCacheInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        healthMetricsConfig = schema.new({
            id = id.from(_N, "UpdateApiCacheInput", "healthMetricsConfig"),
            type = "string",
            name = "healthMetricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApiCacheOutput = schema.new({
    id = id.from(_N, "UpdateApiCacheResponse"),
    type = "structure",
    members = {
        apiCache = schema.new({
            id = id.from(_N, "UpdateApiCacheOutput", "apiCache"),
            type = "structure",
            name = "apiCache",
            target_id = id.from(_N, "ApiCache"),
            target = M.ApiCache,
        }),
    },
})

M.UpdateApiKeyInput = schema.new({
    id = id.from(_N, "UpdateApiKeyRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        expires = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "expires"),
            type = "long",
            name = "expires",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.UpdateApiKeyOutput = schema.new({
    id = id.from(_N, "UpdateApiKeyResponse"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "apiKey"),
            type = "structure",
            name = "apiKey",
            target_id = id.from(_N, "ApiKey"),
            target = M.ApiKey,
        }),
    },
})

M.UpdateChannelNamespaceInput = schema.new({
    id = id.from(_N, "UpdateChannelNamespaceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        subscribeAuthModes = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "subscribeAuthModes"),
            type = "list",
            name = "subscribeAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        publishAuthModes = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "publishAuthModes"),
            type = "list",
            name = "publishAuthModes",
            target_id = prelude.Document.id,
            list_member = M.AuthMode,
        }),
        codeHandlers = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "codeHandlers"),
            type = "string",
            name = "codeHandlers",
            target_id = prelude.String.id,
        }),
        handlerConfigs = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceInput", "handlerConfigs"),
            type = "structure",
            name = "handlerConfigs",
            target_id = id.from(_N, "HandlerConfigs"),
            target = M.HandlerConfigs,
        }),
    },
})

M.UpdateChannelNamespaceOutput = schema.new({
    id = id.from(_N, "UpdateChannelNamespaceResponse"),
    type = "structure",
    members = {
        channelNamespace = schema.new({
            id = id.from(_N, "UpdateChannelNamespaceOutput", "channelNamespace"),
            type = "structure",
            name = "channelNamespace",
            target_id = id.from(_N, "ChannelNamespace"),
            target = M.ChannelNamespace,
        }),
    },
})

M.UpdateDataSourceInput = schema.new({
    id = id.from(_N, "UpdateDataSourceRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceRoleArn = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "serviceRoleArn"),
            type = "string",
            name = "serviceRoleArn",
            target_id = prelude.String.id,
        }),
        dynamodbConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "dynamodbConfig"),
            type = "structure",
            name = "dynamodbConfig",
            target_id = id.from(_N, "DynamodbDataSourceConfig"),
            target = M.DynamodbDataSourceConfig,
        }),
        lambdaConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "lambdaConfig"),
            type = "structure",
            name = "lambdaConfig",
            target_id = id.from(_N, "LambdaDataSourceConfig"),
            target = M.LambdaDataSourceConfig,
        }),
        elasticsearchConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "elasticsearchConfig"),
            type = "structure",
            name = "elasticsearchConfig",
            target_id = id.from(_N, "ElasticsearchDataSourceConfig"),
            target = M.ElasticsearchDataSourceConfig,
        }),
        openSearchServiceConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "openSearchServiceConfig"),
            type = "structure",
            name = "openSearchServiceConfig",
            target_id = id.from(_N, "OpenSearchServiceDataSourceConfig"),
            target = M.OpenSearchServiceDataSourceConfig,
        }),
        httpConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "httpConfig"),
            type = "structure",
            name = "httpConfig",
            target_id = id.from(_N, "HttpDataSourceConfig"),
            target = M.HttpDataSourceConfig,
        }),
        relationalDatabaseConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "relationalDatabaseConfig"),
            type = "structure",
            name = "relationalDatabaseConfig",
            target_id = id.from(_N, "RelationalDatabaseDataSourceConfig"),
            target = M.RelationalDatabaseDataSourceConfig,
        }),
        eventBridgeConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "eventBridgeConfig"),
            type = "structure",
            name = "eventBridgeConfig",
            target_id = id.from(_N, "EventBridgeDataSourceConfig"),
            target = M.EventBridgeDataSourceConfig,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDataSourceOutput = schema.new({
    id = id.from(_N, "UpdateDataSourceResponse"),
    type = "structure",
    members = {
        dataSource = schema.new({
            id = id.from(_N, "UpdateDataSourceOutput", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
        }),
    },
})

M.UpdateDomainNameInput = schema.new({
    id = id.from(_N, "UpdateDomainNameRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "UpdateDomainNameInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDomainNameInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDomainNameOutput = schema.new({
    id = id.from(_N, "UpdateDomainNameResponse"),
    type = "structure",
    members = {
        domainNameConfig = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainNameConfig"),
            type = "structure",
            name = "domainNameConfig",
            target_id = id.from(_N, "DomainNameConfig"),
            target = M.DomainNameConfig,
        }),
    },
})

M.UpdateFunctionInput = schema.new({
    id = id.from(_N, "UpdateFunctionRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        functionId = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "functionId"),
            type = "string",
            name = "functionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        functionVersion = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "functionVersion"),
            type = "string",
            name = "functionVersion",
            target_id = prelude.String.id,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "UpdateFunctionInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFunctionOutput = schema.new({
    id = id.from(_N, "UpdateFunctionResponse"),
    type = "structure",
    members = {
        functionConfiguration = schema.new({
            id = id.from(_N, "UpdateFunctionOutput", "functionConfiguration"),
            type = "structure",
            name = "functionConfiguration",
            target_id = id.from(_N, "FunctionConfiguration"),
            target = M.FunctionConfiguration,
        }),
    },
})

M.UpdateGraphqlApiInput = schema.new({
    id = id.from(_N, "UpdateGraphqlApiRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "LogConfig"),
            target = M.LogConfig,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userPoolConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "userPoolConfig"),
            type = "structure",
            name = "userPoolConfig",
            target_id = id.from(_N, "UserPoolConfig"),
            target = M.UserPoolConfig,
        }),
        openIDConnectConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "openIDConnectConfig"),
            type = "structure",
            name = "openIDConnectConfig",
            target_id = id.from(_N, "OpenIDConnectConfig"),
            target = M.OpenIDConnectConfig,
        }),
        additionalAuthenticationProviders = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "additionalAuthenticationProviders"),
            type = "list",
            name = "additionalAuthenticationProviders",
            target_id = prelude.Document.id,
            list_member = M.AdditionalAuthenticationProvider,
        }),
        xrayEnabled = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "xrayEnabled"),
            type = "boolean",
            name = "xrayEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        lambdaAuthorizerConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "lambdaAuthorizerConfig"),
            type = "structure",
            name = "lambdaAuthorizerConfig",
            target_id = id.from(_N, "LambdaAuthorizerConfig"),
            target = M.LambdaAuthorizerConfig,
        }),
        mergedApiExecutionRoleArn = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "mergedApiExecutionRoleArn"),
            type = "string",
            name = "mergedApiExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        ownerContact = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "ownerContact"),
            type = "string",
            name = "ownerContact",
            target_id = prelude.String.id,
        }),
        introspectionConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "introspectionConfig"),
            type = "string",
            name = "introspectionConfig",
            target_id = prelude.String.id,
        }),
        queryDepthLimit = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "queryDepthLimit"),
            type = "integer",
            name = "queryDepthLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resolverCountLimit = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "resolverCountLimit"),
            type = "integer",
            name = "resolverCountLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        enhancedMetricsConfig = schema.new({
            id = id.from(_N, "UpdateGraphqlApiInput", "enhancedMetricsConfig"),
            type = "structure",
            name = "enhancedMetricsConfig",
            target_id = id.from(_N, "EnhancedMetricsConfig"),
            target = M.EnhancedMetricsConfig,
        }),
    },
})

M.UpdateGraphqlApiOutput = schema.new({
    id = id.from(_N, "UpdateGraphqlApiResponse"),
    type = "structure",
    members = {
        graphqlApi = schema.new({
            id = id.from(_N, "UpdateGraphqlApiOutput", "graphqlApi"),
            type = "structure",
            name = "graphqlApi",
            target_id = id.from(_N, "GraphqlApi"),
            target = M.GraphqlApi,
        }),
    },
})

M.UpdateResolverInput = schema.new({
    id = id.from(_N, "UpdateResolverRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateResolverInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "UpdateResolverInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fieldName = schema.new({
            id = id.from(_N, "UpdateResolverInput", "fieldName"),
            type = "string",
            name = "fieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceName = schema.new({
            id = id.from(_N, "UpdateResolverInput", "dataSourceName"),
            type = "string",
            name = "dataSourceName",
            target_id = prelude.String.id,
        }),
        requestMappingTemplate = schema.new({
            id = id.from(_N, "UpdateResolverInput", "requestMappingTemplate"),
            type = "string",
            name = "requestMappingTemplate",
            target_id = prelude.String.id,
        }),
        responseMappingTemplate = schema.new({
            id = id.from(_N, "UpdateResolverInput", "responseMappingTemplate"),
            type = "string",
            name = "responseMappingTemplate",
            target_id = prelude.String.id,
        }),
        kind = schema.new({
            id = id.from(_N, "UpdateResolverInput", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        pipelineConfig = schema.new({
            id = id.from(_N, "UpdateResolverInput", "pipelineConfig"),
            type = "structure",
            name = "pipelineConfig",
            target_id = id.from(_N, "PipelineConfig"),
            target = M.PipelineConfig,
        }),
        syncConfig = schema.new({
            id = id.from(_N, "UpdateResolverInput", "syncConfig"),
            type = "structure",
            name = "syncConfig",
            target_id = id.from(_N, "SyncConfig"),
            target = M.SyncConfig,
        }),
        cachingConfig = schema.new({
            id = id.from(_N, "UpdateResolverInput", "cachingConfig"),
            type = "structure",
            name = "cachingConfig",
            target_id = id.from(_N, "CachingConfig"),
            target = M.CachingConfig,
        }),
        maxBatchSize = schema.new({
            id = id.from(_N, "UpdateResolverInput", "maxBatchSize"),
            type = "integer",
            name = "maxBatchSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "UpdateResolverInput", "runtime"),
            type = "structure",
            name = "runtime",
            target_id = id.from(_N, "AppSyncRuntime"),
            target = M.AppSyncRuntime,
        }),
        code = schema.new({
            id = id.from(_N, "UpdateResolverInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        metricsConfig = schema.new({
            id = id.from(_N, "UpdateResolverInput", "metricsConfig"),
            type = "string",
            name = "metricsConfig",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateResolverOutput = schema.new({
    id = id.from(_N, "UpdateResolverResponse"),
    type = "structure",
    members = {
        resolver = schema.new({
            id = id.from(_N, "UpdateResolverOutput", "resolver"),
            type = "structure",
            name = "resolver",
            target_id = id.from(_N, "Resolver"),
            target = M.Resolver,
        }),
    },
})

M.UpdateSourceApiAssociationInput = schema.new({
    id = id.from(_N, "UpdateSourceApiAssociationRequest"),
    type = "structure",
    members = {
        associationId = schema.new({
            id = id.from(_N, "UpdateSourceApiAssociationInput", "associationId"),
            type = "string",
            name = "associationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mergedApiIdentifier = schema.new({
            id = id.from(_N, "UpdateSourceApiAssociationInput", "mergedApiIdentifier"),
            type = "string",
            name = "mergedApiIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSourceApiAssociationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceApiAssociationConfig = schema.new({
            id = id.from(_N, "UpdateSourceApiAssociationInput", "sourceApiAssociationConfig"),
            type = "structure",
            name = "sourceApiAssociationConfig",
            target_id = id.from(_N, "SourceApiAssociationConfig"),
            target = M.SourceApiAssociationConfig,
        }),
    },
})

M.UpdateSourceApiAssociationOutput = schema.new({
    id = id.from(_N, "UpdateSourceApiAssociationResponse"),
    type = "structure",
    members = {
        sourceApiAssociation = schema.new({
            id = id.from(_N, "UpdateSourceApiAssociationOutput", "sourceApiAssociation"),
            type = "structure",
            name = "sourceApiAssociation",
            target_id = id.from(_N, "SourceApiAssociation"),
            target = M.SourceApiAssociation,
        }),
    },
})

M.UpdateTypeInput = schema.new({
    id = id.from(_N, "UpdateTypeRequest"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "UpdateTypeInput", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "UpdateTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "UpdateTypeInput", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
        }),
        format = schema.new({
            id = id.from(_N, "UpdateTypeInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTypeOutput = schema.new({
    id = id.from(_N, "UpdateTypeResponse"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateTypeOutput", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "Type"),
            target = M.Type,
        }),
    },
})

M.DataSourceIntrospectionModelFieldType = schema.new({
    id = id.from(_N, "DataSourceIntrospectionModelFieldType"),
    type = "structure",
    members = {
        kind = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelFieldType", "kind"),
            type = "string",
            name = "kind",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelFieldType", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelFieldType", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "DataSourceIntrospectionModelFieldType"),
            target = M.DataSourceIntrospectionModelFieldType,
        }),
        values = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelFieldType", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DataSourceIntrospectionModelField = schema.new({
    id = id.from(_N, "DataSourceIntrospectionModelField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelField", "type"),
            type = "structure",
            name = "type",
            target_id = id.from(_N, "DataSourceIntrospectionModelFieldType"),
            target = M.DataSourceIntrospectionModelFieldType,
        }),
        length = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModelField", "length"),
            type = "long",
            name = "length",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DataSourceIntrospectionModel = schema.new({
    id = id.from(_N, "DataSourceIntrospectionModel"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModel", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModel", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.DataSourceIntrospectionModelField,
        }),
        primaryKey = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModel", "primaryKey"),
            type = "structure",
            name = "primaryKey",
            target_id = id.from(_N, "DataSourceIntrospectionModelIndex"),
            target = M.DataSourceIntrospectionModelIndex,
        }),
        indexes = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModel", "indexes"),
            type = "list",
            name = "indexes",
            target_id = prelude.Document.id,
            list_member = M.DataSourceIntrospectionModelIndex,
        }),
        sdl = schema.new({
            id = id.from(_N, "DataSourceIntrospectionModel", "sdl"),
            type = "string",
            name = "sdl",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSourceIntrospectionResult = schema.new({
    id = id.from(_N, "DataSourceIntrospectionResult"),
    type = "structure",
    members = {
        models = schema.new({
            id = id.from(_N, "DataSourceIntrospectionResult", "models"),
            type = "list",
            name = "models",
            target_id = prelude.Document.id,
            list_member = M.DataSourceIntrospectionModel,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DataSourceIntrospectionResult", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDataSourceIntrospectionOutput = schema.new({
    id = id.from(_N, "GetDataSourceIntrospectionResponse"),
    type = "structure",
    members = {
        introspectionId = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionOutput", "introspectionId"),
            type = "string",
            name = "introspectionId",
            target_id = prelude.String.id,
        }),
        introspectionStatus = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionOutput", "introspectionStatus"),
            type = "string",
            name = "introspectionStatus",
            target_id = prelude.String.id,
        }),
        introspectionStatusDetail = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionOutput", "introspectionStatusDetail"),
            type = "string",
            name = "introspectionStatusDetail",
            target_id = prelude.String.id,
        }),
        introspectionResult = schema.new({
            id = id.from(_N, "GetDataSourceIntrospectionOutput", "introspectionResult"),
            type = "structure",
            name = "introspectionResult",
            target_id = id.from(_N, "DataSourceIntrospectionResult"),
            target = M.DataSourceIntrospectionResult,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
