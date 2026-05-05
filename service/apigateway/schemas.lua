local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.apigateway"

local M = {}

M.AccessLogSettings = schema.new({
    id = id.from(_N, "AccessLogSettings"),
    type = "structure",
    members = {
        format = schema.new({
            id = id.from(_N, "AccessLogSettings", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
        }),
        destinationArn = schema.new({
            id = id.from(_N, "AccessLogSettings", "destinationArn"),
            type = "string",
            name = "destinationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottleSettings = schema.new({
    id = id.from(_N, "ThrottleSettings"),
    type = "structure",
    members = {
        burstLimit = schema.new({
            id = id.from(_N, "ThrottleSettings", "burstLimit"),
            type = "integer",
            name = "burstLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rateLimit = schema.new({
            id = id.from(_N, "ThrottleSettings", "rateLimit"),
            type = "double",
            name = "rateLimit",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
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
        value = schema.new({
            id = id.from(_N, "ApiKey", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ApiKey", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        customerId = schema.new({
            id = id.from(_N, "ApiKey", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ApiKey", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "ApiKey", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "ApiKey", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "ApiKey", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        stageKeys = schema.new({
            id = id.from(_N, "ApiKey", "stageKeys"),
            type = "list",
            name = "stageKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "ApiKey", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ApiStage = schema.new({
    id = id.from(_N, "ApiStage"),
    type = "structure",
    members = {
        apiId = schema.new({
            id = id.from(_N, "ApiStage", "apiId"),
            type = "string",
            name = "apiId",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "ApiStage", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
        throttle = schema.new({
            id = id.from(_N, "ApiStage", "throttle"),
            type = "map",
            name = "throttle",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ThrottleSettings,
        }),
    },
})

M.Authorizer = schema.new({
    id = id.from(_N, "Authorizer"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Authorizer", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Authorizer", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Authorizer", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        providerARNs = schema.new({
            id = id.from(_N, "Authorizer", "providerARNs"),
            type = "list",
            name = "providerARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authType = schema.new({
            id = id.from(_N, "Authorizer", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "Authorizer", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
        }),
        authorizerCredentials = schema.new({
            id = id.from(_N, "Authorizer", "authorizerCredentials"),
            type = "string",
            name = "authorizerCredentials",
            target_id = prelude.String.id,
        }),
        identitySource = schema.new({
            id = id.from(_N, "Authorizer", "identitySource"),
            type = "string",
            name = "identitySource",
            target_id = prelude.String.id,
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "Authorizer", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "Authorizer", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
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

M.StageKey = schema.new({
    id = id.from(_N, "StageKey"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "StageKey", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
        }),
        stageName = schema.new({
            id = id.from(_N, "StageKey", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApiKeyInput = schema.new({
    id = id.from(_N, "CreateApiKeyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        generateDistinctId = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "generateDistinctId"),
            type = "boolean",
            name = "generateDistinctId",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        value = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        stageKeys = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "stageKeys"),
            type = "list",
            name = "stageKeys",
            target_id = prelude.Document.id,
            list_member = M.StageKey,
        }),
        customerId = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApiKeyInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateApiKeyOutput = schema.new({
    id = id.from(_N, "CreateApiKeyOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        customerId = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        stageKeys = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "stageKeys"),
            type = "list",
            name = "stageKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApiKeyOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
        retryAfterSeconds = schema.new({
            id = id.from(_N, "LimitExceededException", "retryAfterSeconds"),
            type = "string",
            name = "retryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
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

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        retryAfterSeconds = schema.new({
            id = id.from(_N, "TooManyRequestsException", "retryAfterSeconds"),
            type = "string",
            name = "retryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "message"),
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

M.CreateAuthorizerInput = schema.new({
    id = id.from(_N, "CreateAuthorizerInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerARNs = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "providerARNs"),
            type = "list",
            name = "providerARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authType = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
        }),
        authorizerCredentials = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "authorizerCredentials"),
            type = "string",
            name = "authorizerCredentials",
            target_id = prelude.String.id,
        }),
        identitySource = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "identitySource"),
            type = "string",
            name = "identitySource",
            target_id = prelude.String.id,
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "CreateAuthorizerInput", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateAuthorizerOutput = schema.new({
    id = id.from(_N, "CreateAuthorizerOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        providerARNs = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "providerARNs"),
            type = "list",
            name = "providerARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authType = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
        }),
        authorizerCredentials = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "authorizerCredentials"),
            type = "string",
            name = "authorizerCredentials",
            target_id = prelude.String.id,
        }),
        identitySource = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "identitySource"),
            type = "string",
            name = "identitySource",
            target_id = prelude.String.id,
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "CreateAuthorizerOutput", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateBasePathMappingInput = schema.new({
    id = id.from(_N, "CreateBasePathMappingInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CreateBasePathMappingInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        domainNameId = schema.new({
            id = id.from(_N, "CreateBasePathMappingInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        basePath = schema.new({
            id = id.from(_N, "CreateBasePathMappingInput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
        }),
        restApiId = schema.new({
            id = id.from(_N, "CreateBasePathMappingInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stage = schema.new({
            id = id.from(_N, "CreateBasePathMappingInput", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBasePathMappingOutput = schema.new({
    id = id.from(_N, "CreateBasePathMappingOutput"),
    type = "structure",
    members = {
        basePath = schema.new({
            id = id.from(_N, "CreateBasePathMappingOutput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
        }),
        restApiId = schema.new({
            id = id.from(_N, "CreateBasePathMappingOutput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "CreateBasePathMappingOutput", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.DeploymentCanarySettings = schema.new({
    id = id.from(_N, "DeploymentCanarySettings"),
    type = "structure",
    members = {
        percentTraffic = schema.new({
            id = id.from(_N, "DeploymentCanarySettings", "percentTraffic"),
            type = "double",
            name = "percentTraffic",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        stageVariableOverrides = schema.new({
            id = id.from(_N, "DeploymentCanarySettings", "stageVariableOverrides"),
            type = "map",
            name = "stageVariableOverrides",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useStageCache = schema.new({
            id = id.from(_N, "DeploymentCanarySettings", "useStageCache"),
            type = "boolean",
            name = "useStageCache",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateDeploymentInput = schema.new({
    id = id.from(_N, "CreateDeploymentInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        stageDescription = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "stageDescription"),
            type = "string",
            name = "stageDescription",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        variables = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "DeploymentCanarySettings"),
            target = M.DeploymentCanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "CreateDeploymentInput", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.MethodSnapshot = schema.new({
    id = id.from(_N, "MethodSnapshot"),
    type = "structure",
    members = {
        authorizationType = schema.new({
            id = id.from(_N, "MethodSnapshot", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "MethodSnapshot", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateDeploymentOutput = schema.new({
    id = id.from(_N, "CreateDeploymentOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        apiSummary = schema.new({
            id = id.from(_N, "CreateDeploymentOutput", "apiSummary"),
            type = "map",
            name = "apiSummary",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "retryAfterSeconds"),
            type = "string",
            name = "retryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentationPartLocation = schema.new({
    id = id.from(_N, "DocumentationPartLocation"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DocumentationPartLocation", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        path = schema.new({
            id = id.from(_N, "DocumentationPartLocation", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        method = schema.new({
            id = id.from(_N, "DocumentationPartLocation", "method"),
            type = "string",
            name = "method",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "DocumentationPartLocation", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DocumentationPartLocation", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDocumentationPartInput = schema.new({
    id = id.from(_N, "CreateDocumentationPartInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateDocumentationPartInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "CreateDocumentationPartInput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "DocumentationPartLocation"),
            target = M.DocumentationPartLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "CreateDocumentationPartInput", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDocumentationPartOutput = schema.new({
    id = id.from(_N, "CreateDocumentationPartOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateDocumentationPartOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreateDocumentationPartOutput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "DocumentationPartLocation"),
            target = M.DocumentationPartLocation,
        }),
        properties = schema.new({
            id = id.from(_N, "CreateDocumentationPartOutput", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDocumentationVersionInput = schema.new({
    id = id.from(_N, "CreateDocumentationVersionInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateDocumentationVersionInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "CreateDocumentationVersionInput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "CreateDocumentationVersionInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDocumentationVersionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDocumentationVersionOutput = schema.new({
    id = id.from(_N, "CreateDocumentationVersionOutput"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "CreateDocumentationVersionOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateDocumentationVersionOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDocumentationVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.EndpointConfiguration = schema.new({
    id = id.from(_N, "EndpointConfiguration"),
    type = "structure",
    members = {
        types = schema.new({
            id = id.from(_N, "EndpointConfiguration", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "EndpointConfiguration", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        vpcEndpointIds = schema.new({
            id = id.from(_N, "EndpointConfiguration", "vpcEndpointIds"),
            type = "list",
            name = "vpcEndpointIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MutualTlsAuthenticationInput = schema.new({
    id = id.from(_N, "MutualTlsAuthenticationInput"),
    type = "structure",
    members = {
        truststoreUri = schema.new({
            id = id.from(_N, "MutualTlsAuthenticationInput", "truststoreUri"),
            type = "string",
            name = "truststoreUri",
            target_id = prelude.String.id,
        }),
        truststoreVersion = schema.new({
            id = id.from(_N, "MutualTlsAuthenticationInput", "truststoreVersion"),
            type = "string",
            name = "truststoreVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDomainNameInput = schema.new({
    id = id.from(_N, "CreateDomainNameInput"),
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
        certificateName = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateBody = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificateBody"),
            type = "string",
            name = "certificateBody",
            target_id = prelude.String.id,
        }),
        certificatePrivateKey = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificatePrivateKey"),
            type = "string",
            name = "certificatePrivateKey",
            target_id = prelude.String.id,
        }),
        certificateChain = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificateChain"),
            type = "string",
            name = "certificateChain",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        regionalCertificateName = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "regionalCertificateName"),
            type = "string",
            name = "regionalCertificateName",
            target_id = prelude.String.id,
        }),
        regionalCertificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "regionalCertificateArn"),
            type = "string",
            name = "regionalCertificateArn",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        mutualTlsAuthentication = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "mutualTlsAuthentication"),
            type = "structure",
            name = "mutualTlsAuthentication",
            target_id = id.from(_N, "MutualTlsAuthenticationInput"),
            target = M.MutualTlsAuthenticationInput,
        }),
        ownershipVerificationCertificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "ownershipVerificationCertificateArn"),
            type = "string",
            name = "ownershipVerificationCertificateArn",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        routingMode = schema.new({
            id = id.from(_N, "CreateDomainNameInput", "routingMode"),
            type = "string",
            name = "routingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.MutualTlsAuthentication = schema.new({
    id = id.from(_N, "MutualTlsAuthentication"),
    type = "structure",
    members = {
        truststoreUri = schema.new({
            id = id.from(_N, "MutualTlsAuthentication", "truststoreUri"),
            type = "string",
            name = "truststoreUri",
            target_id = prelude.String.id,
        }),
        truststoreVersion = schema.new({
            id = id.from(_N, "MutualTlsAuthentication", "truststoreVersion"),
            type = "string",
            name = "truststoreVersion",
            target_id = prelude.String.id,
        }),
        truststoreWarnings = schema.new({
            id = id.from(_N, "MutualTlsAuthentication", "truststoreWarnings"),
            type = "list",
            name = "truststoreWarnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateDomainNameOutput = schema.new({
    id = id.from(_N, "CreateDomainNameOutput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        domainNameId = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        certificateUploadDate = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "certificateUploadDate"),
            type = "timestamp",
            name = "certificateUploadDate",
            target_id = prelude.Timestamp.id,
        }),
        regionalDomainName = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "regionalDomainName"),
            type = "string",
            name = "regionalDomainName",
            target_id = prelude.String.id,
        }),
        regionalHostedZoneId = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "regionalHostedZoneId"),
            type = "string",
            name = "regionalHostedZoneId",
            target_id = prelude.String.id,
        }),
        regionalCertificateName = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "regionalCertificateName"),
            type = "string",
            name = "regionalCertificateName",
            target_id = prelude.String.id,
        }),
        regionalCertificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "regionalCertificateArn"),
            type = "string",
            name = "regionalCertificateArn",
            target_id = prelude.String.id,
        }),
        distributionDomainName = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "distributionDomainName"),
            type = "string",
            name = "distributionDomainName",
            target_id = prelude.String.id,
        }),
        distributionHostedZoneId = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "distributionHostedZoneId"),
            type = "string",
            name = "distributionHostedZoneId",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        domainNameStatus = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainNameStatus"),
            type = "string",
            name = "domainNameStatus",
            target_id = prelude.String.id,
        }),
        domainNameStatusMessage = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "domainNameStatusMessage"),
            type = "string",
            name = "domainNameStatusMessage",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        mutualTlsAuthentication = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "mutualTlsAuthentication"),
            type = "structure",
            name = "mutualTlsAuthentication",
            target_id = id.from(_N, "MutualTlsAuthentication"),
            target = M.MutualTlsAuthentication,
        }),
        ownershipVerificationCertificateArn = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "ownershipVerificationCertificateArn"),
            type = "string",
            name = "ownershipVerificationCertificateArn",
            target_id = prelude.String.id,
        }),
        managementPolicy = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "managementPolicy"),
            type = "string",
            name = "managementPolicy",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        routingMode = schema.new({
            id = id.from(_N, "CreateDomainNameOutput", "routingMode"),
            type = "string",
            name = "routingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDomainNameAccessAssociationInput = schema.new({
    id = id.from(_N, "CreateDomainNameAccessAssociationInput"),
    type = "structure",
    members = {
        domainNameArn = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationInput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessAssociationSourceType = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationInput", "accessAssociationSourceType"),
            type = "string",
            name = "accessAssociationSourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessAssociationSource = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationInput", "accessAssociationSource"),
            type = "string",
            name = "accessAssociationSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDomainNameAccessAssociationOutput = schema.new({
    id = id.from(_N, "CreateDomainNameAccessAssociationOutput"),
    type = "structure",
    members = {
        domainNameAccessAssociationArn = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationOutput", "domainNameAccessAssociationArn"),
            type = "string",
            name = "domainNameAccessAssociationArn",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationOutput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        accessAssociationSourceType = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationOutput", "accessAssociationSourceType"),
            type = "string",
            name = "accessAssociationSourceType",
            target_id = prelude.String.id,
        }),
        accessAssociationSource = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationOutput", "accessAssociationSource"),
            type = "string",
            name = "accessAssociationSource",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainNameAccessAssociationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateModelInput = schema.new({
    id = id.from(_N, "CreateModelInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateModelInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateModelInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateModelInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "CreateModelInput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "CreateModelInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateModelOutput = schema.new({
    id = id.from(_N, "CreateModelOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateModelOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateModelOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateModelOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "CreateModelOutput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "CreateModelOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRequestValidatorInput = schema.new({
    id = id.from(_N, "CreateRequestValidatorInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateRequestValidatorInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateRequestValidatorInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        validateRequestBody = schema.new({
            id = id.from(_N, "CreateRequestValidatorInput", "validateRequestBody"),
            type = "boolean",
            name = "validateRequestBody",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        validateRequestParameters = schema.new({
            id = id.from(_N, "CreateRequestValidatorInput", "validateRequestParameters"),
            type = "boolean",
            name = "validateRequestParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateRequestValidatorOutput = schema.new({
    id = id.from(_N, "CreateRequestValidatorOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateRequestValidatorOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateRequestValidatorOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        validateRequestBody = schema.new({
            id = id.from(_N, "CreateRequestValidatorOutput", "validateRequestBody"),
            type = "boolean",
            name = "validateRequestBody",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        validateRequestParameters = schema.new({
            id = id.from(_N, "CreateRequestValidatorOutput", "validateRequestParameters"),
            type = "boolean",
            name = "validateRequestParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateResourceInput = schema.new({
    id = id.from(_N, "CreateResourceInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateResourceInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        parentId = schema.new({
            id = id.from(_N, "CreateResourceInput", "parentId"),
            type = "string",
            name = "parentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pathPart = schema.new({
            id = id.from(_N, "CreateResourceInput", "pathPart"),
            type = "string",
            name = "pathPart",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IntegrationResponse = schema.new({
    id = id.from(_N, "IntegrationResponse"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "IntegrationResponse", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        selectionPattern = schema.new({
            id = id.from(_N, "IntegrationResponse", "selectionPattern"),
            type = "string",
            name = "selectionPattern",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "IntegrationResponse", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "IntegrationResponse", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "IntegrationResponse", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
    },
})

M.TlsConfig = schema.new({
    id = id.from(_N, "TlsConfig"),
    type = "structure",
    members = {
        insecureSkipVerification = schema.new({
            id = id.from(_N, "TlsConfig", "insecureSkipVerification"),
            type = "boolean",
            name = "insecureSkipVerification",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Integration = schema.new({
    id = id.from(_N, "Integration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "Integration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        httpMethod = schema.new({
            id = id.from(_N, "Integration", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "Integration", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        connectionType = schema.new({
            id = id.from(_N, "Integration", "connectionType"),
            type = "string",
            name = "connectionType",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "Integration", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        credentials = schema.new({
            id = id.from(_N, "Integration", "credentials"),
            type = "string",
            name = "credentials",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "Integration", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestTemplates = schema.new({
            id = id.from(_N, "Integration", "requestTemplates"),
            type = "map",
            name = "requestTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        passthroughBehavior = schema.new({
            id = id.from(_N, "Integration", "passthroughBehavior"),
            type = "string",
            name = "passthroughBehavior",
            target_id = prelude.String.id,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "Integration", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "Integration", "timeoutInMillis"),
            type = "integer",
            name = "timeoutInMillis",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "Integration", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
        cacheKeyParameters = schema.new({
            id = id.from(_N, "Integration", "cacheKeyParameters"),
            type = "list",
            name = "cacheKeyParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        integrationResponses = schema.new({
            id = id.from(_N, "Integration", "integrationResponses"),
            type = "map",
            name = "integrationResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.IntegrationResponse,
        }),
        tlsConfig = schema.new({
            id = id.from(_N, "Integration", "tlsConfig"),
            type = "structure",
            name = "tlsConfig",
            target_id = id.from(_N, "TlsConfig"),
            target = M.TlsConfig,
        }),
        responseTransferMode = schema.new({
            id = id.from(_N, "Integration", "responseTransferMode"),
            type = "string",
            name = "responseTransferMode",
            target_id = prelude.String.id,
        }),
        integrationTarget = schema.new({
            id = id.from(_N, "Integration", "integrationTarget"),
            type = "string",
            name = "integrationTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.MethodResponse = schema.new({
    id = id.from(_N, "MethodResponse"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "MethodResponse", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "MethodResponse", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        responseModels = schema.new({
            id = id.from(_N, "MethodResponse", "responseModels"),
            type = "map",
            name = "responseModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Method = schema.new({
    id = id.from(_N, "Method"),
    type = "structure",
    members = {
        httpMethod = schema.new({
            id = id.from(_N, "Method", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        authorizationType = schema.new({
            id = id.from(_N, "Method", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
        }),
        authorizerId = schema.new({
            id = id.from(_N, "Method", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "Method", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "Method", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
        }),
        operationName = schema.new({
            id = id.from(_N, "Method", "operationName"),
            type = "string",
            name = "operationName",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "Method", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        requestModels = schema.new({
            id = id.from(_N, "Method", "requestModels"),
            type = "map",
            name = "requestModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        methodResponses = schema.new({
            id = id.from(_N, "Method", "methodResponses"),
            type = "map",
            name = "methodResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodResponse,
        }),
        methodIntegration = schema.new({
            id = id.from(_N, "Method", "methodIntegration"),
            type = "structure",
            name = "methodIntegration",
            target_id = id.from(_N, "Integration"),
            target = M.Integration,
        }),
        authorizationScopes = schema.new({
            id = id.from(_N, "Method", "authorizationScopes"),
            type = "list",
            name = "authorizationScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateResourceOutput = schema.new({
    id = id.from(_N, "CreateResourceOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateResourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        parentId = schema.new({
            id = id.from(_N, "CreateResourceOutput", "parentId"),
            type = "string",
            name = "parentId",
            target_id = prelude.String.id,
        }),
        pathPart = schema.new({
            id = id.from(_N, "CreateResourceOutput", "pathPart"),
            type = "string",
            name = "pathPart",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "CreateResourceOutput", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        resourceMethods = schema.new({
            id = id.from(_N, "CreateResourceOutput", "resourceMethods"),
            type = "map",
            name = "resourceMethods",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Method,
        }),
    },
})

M.CreateRestApiInput = schema.new({
    id = id.from(_N, "CreateRestApiInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateRestApiInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateRestApiInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "CreateRestApiInput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        cloneFrom = schema.new({
            id = id.from(_N, "CreateRestApiInput", "cloneFrom"),
            type = "string",
            name = "cloneFrom",
            target_id = prelude.String.id,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "CreateRestApiInput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "CreateRestApiInput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "CreateRestApiInput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "CreateRestApiInput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateRestApiInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRestApiInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "CreateRestApiInput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "CreateRestApiInput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "CreateRestApiInput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRestApiOutput = schema.new({
    id = id.from(_N, "CreateRestApiOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "CreateRestApiOutput", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.CanarySettings = schema.new({
    id = id.from(_N, "CanarySettings"),
    type = "structure",
    members = {
        percentTraffic = schema.new({
            id = id.from(_N, "CanarySettings", "percentTraffic"),
            type = "double",
            name = "percentTraffic",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "CanarySettings", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
        }),
        stageVariableOverrides = schema.new({
            id = id.from(_N, "CanarySettings", "stageVariableOverrides"),
            type = "map",
            name = "stageVariableOverrides",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useStageCache = schema.new({
            id = id.from(_N, "CanarySettings", "useStageCache"),
            type = "boolean",
            name = "useStageCache",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateStageInput = schema.new({
    id = id.from(_N, "CreateStageInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "CreateStageInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "CreateStageInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "CreateStageInput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateStageInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "CreateStageInput", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "CreateStageInput", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        variables = schema.new({
            id = id.from(_N, "CreateStageInput", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "CreateStageInput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "CreateStageInput", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "CanarySettings"),
            target = M.CanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "CreateStageInput", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateStageInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.MethodSetting = schema.new({
    id = id.from(_N, "MethodSetting"),
    type = "structure",
    members = {
        metricsEnabled = schema.new({
            id = id.from(_N, "MethodSetting", "metricsEnabled"),
            type = "boolean",
            name = "metricsEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        loggingLevel = schema.new({
            id = id.from(_N, "MethodSetting", "loggingLevel"),
            type = "string",
            name = "loggingLevel",
            target_id = prelude.String.id,
        }),
        dataTraceEnabled = schema.new({
            id = id.from(_N, "MethodSetting", "dataTraceEnabled"),
            type = "boolean",
            name = "dataTraceEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        throttlingBurstLimit = schema.new({
            id = id.from(_N, "MethodSetting", "throttlingBurstLimit"),
            type = "integer",
            name = "throttlingBurstLimit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        throttlingRateLimit = schema.new({
            id = id.from(_N, "MethodSetting", "throttlingRateLimit"),
            type = "double",
            name = "throttlingRateLimit",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cachingEnabled = schema.new({
            id = id.from(_N, "MethodSetting", "cachingEnabled"),
            type = "boolean",
            name = "cachingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheTtlInSeconds = schema.new({
            id = id.from(_N, "MethodSetting", "cacheTtlInSeconds"),
            type = "integer",
            name = "cacheTtlInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cacheDataEncrypted = schema.new({
            id = id.from(_N, "MethodSetting", "cacheDataEncrypted"),
            type = "boolean",
            name = "cacheDataEncrypted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        requireAuthorizationForCacheControl = schema.new({
            id = id.from(_N, "MethodSetting", "requireAuthorizationForCacheControl"),
            type = "boolean",
            name = "requireAuthorizationForCacheControl",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        unauthorizedCacheControlHeaderStrategy = schema.new({
            id = id.from(_N, "MethodSetting", "unauthorizedCacheControlHeaderStrategy"),
            type = "string",
            name = "unauthorizedCacheControlHeaderStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateStageOutput = schema.new({
    id = id.from(_N, "CreateStageOutput"),
    type = "structure",
    members = {
        deploymentId = schema.new({
            id = id.from(_N, "CreateStageOutput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
        }),
        clientCertificateId = schema.new({
            id = id.from(_N, "CreateStageOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        stageName = schema.new({
            id = id.from(_N, "CreateStageOutput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateStageOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "CreateStageOutput", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "CreateStageOutput", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        cacheClusterStatus = schema.new({
            id = id.from(_N, "CreateStageOutput", "cacheClusterStatus"),
            type = "string",
            name = "cacheClusterStatus",
            target_id = prelude.String.id,
        }),
        methodSettings = schema.new({
            id = id.from(_N, "CreateStageOutput", "methodSettings"),
            type = "map",
            name = "methodSettings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodSetting,
        }),
        variables = schema.new({
            id = id.from(_N, "CreateStageOutput", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "CreateStageOutput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
        }),
        accessLogSettings = schema.new({
            id = id.from(_N, "CreateStageOutput", "accessLogSettings"),
            type = "structure",
            name = "accessLogSettings",
            target_id = id.from(_N, "AccessLogSettings"),
            target = M.AccessLogSettings,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "CreateStageOutput", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "CanarySettings"),
            target = M.CanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "CreateStageOutput", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        webAclArn = schema.new({
            id = id.from(_N, "CreateStageOutput", "webAclArn"),
            type = "string",
            name = "webAclArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateStageOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdDate = schema.new({
            id = id.from(_N, "CreateStageOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "CreateStageOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.QuotaSettings = schema.new({
    id = id.from(_N, "QuotaSettings"),
    type = "structure",
    members = {
        limit = schema.new({
            id = id.from(_N, "QuotaSettings", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        offset = schema.new({
            id = id.from(_N, "QuotaSettings", "offset"),
            type = "integer",
            name = "offset",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        period = schema.new({
            id = id.from(_N, "QuotaSettings", "period"),
            type = "string",
            name = "period",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUsagePlanInput = schema.new({
    id = id.from(_N, "CreateUsagePlanInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        apiStages = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "apiStages"),
            type = "list",
            name = "apiStages",
            target_id = prelude.Document.id,
            list_member = M.ApiStage,
        }),
        throttle = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "throttle"),
            type = "structure",
            name = "throttle",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        quota = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "quota"),
            type = "structure",
            name = "quota",
            target_id = id.from(_N, "QuotaSettings"),
            target = M.QuotaSettings,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateUsagePlanInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateUsagePlanOutput = schema.new({
    id = id.from(_N, "CreateUsagePlanOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        apiStages = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "apiStages"),
            type = "list",
            name = "apiStages",
            target_id = prelude.Document.id,
            list_member = M.ApiStage,
        }),
        throttle = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "throttle"),
            type = "structure",
            name = "throttle",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        quota = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "quota"),
            type = "structure",
            name = "quota",
            target_id = id.from(_N, "QuotaSettings"),
            target = M.QuotaSettings,
        }),
        productCode = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "productCode"),
            type = "string",
            name = "productCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateUsagePlanOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateUsagePlanKeyInput = schema.new({
    id = id.from(_N, "CreateUsagePlanKeyInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyType = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyInput", "keyType"),
            type = "string",
            name = "keyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateUsagePlanKeyOutput = schema.new({
    id = id.from(_N, "CreateUsagePlanKeyOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateUsagePlanKeyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVpcLinkInput = schema.new({
    id = id.from(_N, "CreateVpcLinkInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateVpcLinkInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateVpcLinkInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetArns = schema.new({
            id = id.from(_N, "CreateVpcLinkInput", "targetArns"),
            type = "list",
            name = "targetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateVpcLinkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateVpcLinkOutput = schema.new({
    id = id.from(_N, "CreateVpcLinkOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetArns = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "targetArns"),
            type = "list",
            name = "targetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateVpcLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteApiKeyInput = schema.new({
    id = id.from(_N, "DeleteApiKeyInput"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "DeleteApiKeyInput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteApiKeyOutput = schema.new({
    id = id.from(_N, "DeleteApiKeyOutput"),
    type = "structure",
})

M.DeleteAuthorizerInput = schema.new({
    id = id.from(_N, "DeleteAuthorizerInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteAuthorizerInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authorizerId = schema.new({
            id = id.from(_N, "DeleteAuthorizerInput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAuthorizerOutput = schema.new({
    id = id.from(_N, "DeleteAuthorizerOutput"),
    type = "structure",
})

M.DeleteBasePathMappingInput = schema.new({
    id = id.from(_N, "DeleteBasePathMappingInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DeleteBasePathMappingInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        domainNameId = schema.new({
            id = id.from(_N, "DeleteBasePathMappingInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        basePath = schema.new({
            id = id.from(_N, "DeleteBasePathMappingInput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteBasePathMappingOutput = schema.new({
    id = id.from(_N, "DeleteBasePathMappingOutput"),
    type = "structure",
})

M.DeleteClientCertificateInput = schema.new({
    id = id.from(_N, "DeleteClientCertificateInput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "DeleteClientCertificateInput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteClientCertificateOutput = schema.new({
    id = id.from(_N, "DeleteClientCertificateOutput"),
    type = "structure",
})

M.DeleteDeploymentInput = schema.new({
    id = id.from(_N, "DeleteDeploymentInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteDeploymentInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "DeleteDeploymentInput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDeploymentOutput = schema.new({
    id = id.from(_N, "DeleteDeploymentOutput"),
    type = "structure",
})

M.DeleteDocumentationPartInput = schema.new({
    id = id.from(_N, "DeleteDocumentationPartInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteDocumentationPartInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationPartId = schema.new({
            id = id.from(_N, "DeleteDocumentationPartInput", "documentationPartId"),
            type = "string",
            name = "documentationPartId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDocumentationPartOutput = schema.new({
    id = id.from(_N, "DeleteDocumentationPartOutput"),
    type = "structure",
})

M.DeleteDocumentationVersionInput = schema.new({
    id = id.from(_N, "DeleteDocumentationVersionInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteDocumentationVersionInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "DeleteDocumentationVersionInput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDocumentationVersionOutput = schema.new({
    id = id.from(_N, "DeleteDocumentationVersionOutput"),
    type = "structure",
})

M.DeleteDomainNameInput = schema.new({
    id = id.from(_N, "DeleteDomainNameInput"),
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
        domainNameId = schema.new({
            id = id.from(_N, "DeleteDomainNameInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
    },
})

M.DeleteDomainNameOutput = schema.new({
    id = id.from(_N, "DeleteDomainNameOutput"),
    type = "structure",
})

M.DeleteDomainNameAccessAssociationInput = schema.new({
    id = id.from(_N, "DeleteDomainNameAccessAssociationInput"),
    type = "structure",
    members = {
        domainNameAccessAssociationArn = schema.new({
            id = id.from(_N, "DeleteDomainNameAccessAssociationInput", "domainNameAccessAssociationArn"),
            type = "string",
            name = "domainNameAccessAssociationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDomainNameAccessAssociationOutput = schema.new({
    id = id.from(_N, "DeleteDomainNameAccessAssociationOutput"),
    type = "structure",
})

M.DeleteGatewayResponseInput = schema.new({
    id = id.from(_N, "DeleteGatewayResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteGatewayResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        responseType = schema.new({
            id = id.from(_N, "DeleteGatewayResponseInput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGatewayResponseOutput = schema.new({
    id = id.from(_N, "DeleteGatewayResponseOutput"),
    type = "structure",
})

M.DeleteIntegrationInput = schema.new({
    id = id.from(_N, "DeleteIntegrationInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteIntegrationInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "DeleteIntegrationInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "DeleteIntegrationInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIntegrationOutput = schema.new({
    id = id.from(_N, "DeleteIntegrationOutput"),
    type = "structure",
})

M.DeleteIntegrationResponseInput = schema.new({
    id = id.from(_N, "DeleteIntegrationResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteIntegrationResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "DeleteIntegrationResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "DeleteIntegrationResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "DeleteIntegrationResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIntegrationResponseOutput = schema.new({
    id = id.from(_N, "DeleteIntegrationResponseOutput"),
    type = "structure",
})

M.DeleteMethodInput = schema.new({
    id = id.from(_N, "DeleteMethodInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteMethodInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "DeleteMethodInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "DeleteMethodInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMethodOutput = schema.new({
    id = id.from(_N, "DeleteMethodOutput"),
    type = "structure",
})

M.DeleteMethodResponseInput = schema.new({
    id = id.from(_N, "DeleteMethodResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteMethodResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "DeleteMethodResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "DeleteMethodResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "DeleteMethodResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMethodResponseOutput = schema.new({
    id = id.from(_N, "DeleteMethodResponseOutput"),
    type = "structure",
})

M.DeleteModelInput = schema.new({
    id = id.from(_N, "DeleteModelInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteModelInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        modelName = schema.new({
            id = id.from(_N, "DeleteModelInput", "modelName"),
            type = "string",
            name = "modelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteModelOutput = schema.new({
    id = id.from(_N, "DeleteModelOutput"),
    type = "structure",
})

M.DeleteRequestValidatorInput = schema.new({
    id = id.from(_N, "DeleteRequestValidatorInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteRequestValidatorInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "DeleteRequestValidatorInput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRequestValidatorOutput = schema.new({
    id = id.from(_N, "DeleteRequestValidatorOutput"),
    type = "structure",
})

M.DeleteResourceInput = schema.new({
    id = id.from(_N, "DeleteResourceInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteResourceInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "DeleteResourceInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResourceOutput = schema.new({
    id = id.from(_N, "DeleteResourceOutput"),
    type = "structure",
})

M.DeleteRestApiInput = schema.new({
    id = id.from(_N, "DeleteRestApiInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteRestApiInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRestApiOutput = schema.new({
    id = id.from(_N, "DeleteRestApiOutput"),
    type = "structure",
})

M.DeleteStageInput = schema.new({
    id = id.from(_N, "DeleteStageInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "DeleteStageInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "DeleteStageInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteStageOutput = schema.new({
    id = id.from(_N, "DeleteStageOutput"),
    type = "structure",
})

M.DeleteUsagePlanInput = schema.new({
    id = id.from(_N, "DeleteUsagePlanInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "DeleteUsagePlanInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUsagePlanOutput = schema.new({
    id = id.from(_N, "DeleteUsagePlanOutput"),
    type = "structure",
})

M.DeleteUsagePlanKeyInput = schema.new({
    id = id.from(_N, "DeleteUsagePlanKeyInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "DeleteUsagePlanKeyInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "DeleteUsagePlanKeyInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUsagePlanKeyOutput = schema.new({
    id = id.from(_N, "DeleteUsagePlanKeyOutput"),
    type = "structure",
})

M.DeleteVpcLinkInput = schema.new({
    id = id.from(_N, "DeleteVpcLinkInput"),
    type = "structure",
    members = {
        vpcLinkId = schema.new({
            id = id.from(_N, "DeleteVpcLinkInput", "vpcLinkId"),
            type = "string",
            name = "vpcLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteVpcLinkOutput = schema.new({
    id = id.from(_N, "DeleteVpcLinkOutput"),
    type = "structure",
})

M.FlushStageAuthorizersCacheInput = schema.new({
    id = id.from(_N, "FlushStageAuthorizersCacheInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "FlushStageAuthorizersCacheInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "FlushStageAuthorizersCacheInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.FlushStageAuthorizersCacheOutput = schema.new({
    id = id.from(_N, "FlushStageAuthorizersCacheOutput"),
    type = "structure",
})

M.FlushStageCacheInput = schema.new({
    id = id.from(_N, "FlushStageCacheInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "FlushStageCacheInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "FlushStageCacheInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.FlushStageCacheOutput = schema.new({
    id = id.from(_N, "FlushStageCacheOutput"),
    type = "structure",
})

M.GenerateClientCertificateInput = schema.new({
    id = id.from(_N, "GenerateClientCertificateInput"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "GenerateClientCertificateInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GenerateClientCertificateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GenerateClientCertificateOutput = schema.new({
    id = id.from(_N, "GenerateClientCertificateOutput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        pemEncodedCertificate = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "pemEncodedCertificate"),
            type = "string",
            name = "pemEncodedCertificate",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        expirationDate = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "expirationDate"),
            type = "timestamp",
            name = "expirationDate",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GenerateClientCertificateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetAccountInput = schema.new({
    id = id.from(_N, "GetAccountInput"),
    type = "structure",
})

M.GetAccountOutput = schema.new({
    id = id.from(_N, "GetAccountOutput"),
    type = "structure",
    members = {
        cloudwatchRoleArn = schema.new({
            id = id.from(_N, "GetAccountOutput", "cloudwatchRoleArn"),
            type = "string",
            name = "cloudwatchRoleArn",
            target_id = prelude.String.id,
        }),
        throttleSettings = schema.new({
            id = id.from(_N, "GetAccountOutput", "throttleSettings"),
            type = "structure",
            name = "throttleSettings",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        features = schema.new({
            id = id.from(_N, "GetAccountOutput", "features"),
            type = "list",
            name = "features",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        apiKeyVersion = schema.new({
            id = id.from(_N, "GetAccountOutput", "apiKeyVersion"),
            type = "string",
            name = "apiKeyVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApiKeyInput = schema.new({
    id = id.from(_N, "GetApiKeyInput"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "GetApiKeyInput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        includeValue = schema.new({
            id = id.from(_N, "GetApiKeyInput", "includeValue"),
            type = "boolean",
            name = "includeValue",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeValue" },
            },
        }),
    },
})

M.GetApiKeyOutput = schema.new({
    id = id.from(_N, "GetApiKeyOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        customerId = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        stageKeys = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "stageKeys"),
            type = "list",
            name = "stageKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "GetApiKeyOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetApiKeysInput = schema.new({
    id = id.from(_N, "GetApiKeysInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetApiKeysInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetApiKeysInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        nameQuery = schema.new({
            id = id.from(_N, "GetApiKeysInput", "nameQuery"),
            type = "string",
            name = "nameQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        customerId = schema.new({
            id = id.from(_N, "GetApiKeysInput", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "customerId" },
            },
        }),
        includeValues = schema.new({
            id = id.from(_N, "GetApiKeysInput", "includeValues"),
            type = "boolean",
            name = "includeValues",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeValues" },
            },
        }),
    },
})

M.GetApiKeysOutput = schema.new({
    id = id.from(_N, "GetApiKeysOutput"),
    type = "structure",
    members = {
        warnings = schema.new({
            id = id.from(_N, "GetApiKeysOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        items = schema.new({
            id = id.from(_N, "GetApiKeysOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ApiKey,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetApiKeysOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetAuthorizerInput = schema.new({
    id = id.from(_N, "GetAuthorizerInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetAuthorizerInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authorizerId = schema.new({
            id = id.from(_N, "GetAuthorizerInput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAuthorizerOutput = schema.new({
    id = id.from(_N, "GetAuthorizerOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        providerARNs = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "providerARNs"),
            type = "list",
            name = "providerARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authType = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
        }),
        authorizerCredentials = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "authorizerCredentials"),
            type = "string",
            name = "authorizerCredentials",
            target_id = prelude.String.id,
        }),
        identitySource = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "identitySource"),
            type = "string",
            name = "identitySource",
            target_id = prelude.String.id,
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "GetAuthorizerOutput", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetAuthorizersInput = schema.new({
    id = id.from(_N, "GetAuthorizersInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetAuthorizersInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetAuthorizersInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetAuthorizersInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.GetAuthorizersOutput = schema.new({
    id = id.from(_N, "GetAuthorizersOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetAuthorizersOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Authorizer,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetAuthorizersOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetBasePathMappingInput = schema.new({
    id = id.from(_N, "GetBasePathMappingInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetBasePathMappingInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        domainNameId = schema.new({
            id = id.from(_N, "GetBasePathMappingInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        basePath = schema.new({
            id = id.from(_N, "GetBasePathMappingInput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetBasePathMappingOutput = schema.new({
    id = id.from(_N, "GetBasePathMappingOutput"),
    type = "structure",
    members = {
        basePath = schema.new({
            id = id.from(_N, "GetBasePathMappingOutput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
        }),
        restApiId = schema.new({
            id = id.from(_N, "GetBasePathMappingOutput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "GetBasePathMappingOutput", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBasePathMappingsInput = schema.new({
    id = id.from(_N, "GetBasePathMappingsInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetBasePathMappingsInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        domainNameId = schema.new({
            id = id.from(_N, "GetBasePathMappingsInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetBasePathMappingsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetBasePathMappingsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.BasePathMapping = schema.new({
    id = id.from(_N, "BasePathMapping"),
    type = "structure",
    members = {
        basePath = schema.new({
            id = id.from(_N, "BasePathMapping", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
        }),
        restApiId = schema.new({
            id = id.from(_N, "BasePathMapping", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "BasePathMapping", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBasePathMappingsOutput = schema.new({
    id = id.from(_N, "GetBasePathMappingsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetBasePathMappingsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BasePathMapping,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetBasePathMappingsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetClientCertificateInput = schema.new({
    id = id.from(_N, "GetClientCertificateInput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "GetClientCertificateInput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetClientCertificateOutput = schema.new({
    id = id.from(_N, "GetClientCertificateOutput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        pemEncodedCertificate = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "pemEncodedCertificate"),
            type = "string",
            name = "pemEncodedCertificate",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        expirationDate = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "expirationDate"),
            type = "timestamp",
            name = "expirationDate",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetClientCertificateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetClientCertificatesInput = schema.new({
    id = id.from(_N, "GetClientCertificatesInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetClientCertificatesInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetClientCertificatesInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.ClientCertificate = schema.new({
    id = id.from(_N, "ClientCertificate"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "ClientCertificate", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ClientCertificate", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        pemEncodedCertificate = schema.new({
            id = id.from(_N, "ClientCertificate", "pemEncodedCertificate"),
            type = "string",
            name = "pemEncodedCertificate",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "ClientCertificate", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        expirationDate = schema.new({
            id = id.from(_N, "ClientCertificate", "expirationDate"),
            type = "timestamp",
            name = "expirationDate",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ClientCertificate", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetClientCertificatesOutput = schema.new({
    id = id.from(_N, "GetClientCertificatesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetClientCertificatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ClientCertificate,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetClientCertificatesOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetDeploymentInput = schema.new({
    id = id.from(_N, "GetDeploymentInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDeploymentInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "GetDeploymentInput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        embed = schema.new({
            id = id.from(_N, "GetDeploymentInput", "embed"),
            type = "list",
            name = "embed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "embed" },
            },
        }),
    },
})

M.GetDeploymentOutput = schema.new({
    id = id.from(_N, "GetDeploymentOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        apiSummary = schema.new({
            id = id.from(_N, "GetDeploymentOutput", "apiSummary"),
            type = "map",
            name = "apiSummary",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.GetDeploymentsInput = schema.new({
    id = id.from(_N, "GetDeploymentsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDeploymentsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDeploymentsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetDeploymentsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.Deployment = schema.new({
    id = id.from(_N, "Deployment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Deployment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Deployment", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "Deployment", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        apiSummary = schema.new({
            id = id.from(_N, "Deployment", "apiSummary"),
            type = "map",
            name = "apiSummary",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.GetDeploymentsOutput = schema.new({
    id = id.from(_N, "GetDeploymentsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetDeploymentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Deployment,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDeploymentsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetDocumentationPartInput = schema.new({
    id = id.from(_N, "GetDocumentationPartInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDocumentationPartInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationPartId = schema.new({
            id = id.from(_N, "GetDocumentationPartInput", "documentationPartId"),
            type = "string",
            name = "documentationPartId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDocumentationPartOutput = schema.new({
    id = id.from(_N, "GetDocumentationPartOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetDocumentationPartOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "GetDocumentationPartOutput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "DocumentationPartLocation"),
            target = M.DocumentationPartLocation,
        }),
        properties = schema.new({
            id = id.from(_N, "GetDocumentationPartOutput", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentationPartsInput = schema.new({
    id = id.from(_N, "GetDocumentationPartsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        nameQuery = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "nameQuery"),
            type = "string",
            name = "nameQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        path = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "path" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        locationStatus = schema.new({
            id = id.from(_N, "GetDocumentationPartsInput", "locationStatus"),
            type = "string",
            name = "locationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "locationStatus" },
            },
        }),
    },
})

M.DocumentationPart = schema.new({
    id = id.from(_N, "DocumentationPart"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DocumentationPart", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "DocumentationPart", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "DocumentationPartLocation"),
            target = M.DocumentationPartLocation,
        }),
        properties = schema.new({
            id = id.from(_N, "DocumentationPart", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentationPartsOutput = schema.new({
    id = id.from(_N, "GetDocumentationPartsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetDocumentationPartsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DocumentationPart,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDocumentationPartsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetDocumentationVersionInput = schema.new({
    id = id.from(_N, "GetDocumentationVersionInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDocumentationVersionInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "GetDocumentationVersionInput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDocumentationVersionOutput = schema.new({
    id = id.from(_N, "GetDocumentationVersionOutput"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "GetDocumentationVersionOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetDocumentationVersionOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetDocumentationVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentationVersionsInput = schema.new({
    id = id.from(_N, "GetDocumentationVersionsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetDocumentationVersionsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDocumentationVersionsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetDocumentationVersionsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.DocumentationVersion = schema.new({
    id = id.from(_N, "DocumentationVersion"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "DocumentationVersion", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "DocumentationVersion", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "DocumentationVersion", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDocumentationVersionsOutput = schema.new({
    id = id.from(_N, "GetDocumentationVersionsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetDocumentationVersionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DocumentationVersion,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDocumentationVersionsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetDomainNameInput = schema.new({
    id = id.from(_N, "GetDomainNameInput"),
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
        domainNameId = schema.new({
            id = id.from(_N, "GetDomainNameInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
    },
})

M.GetDomainNameOutput = schema.new({
    id = id.from(_N, "GetDomainNameOutput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        domainNameId = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        certificateUploadDate = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "certificateUploadDate"),
            type = "timestamp",
            name = "certificateUploadDate",
            target_id = prelude.Timestamp.id,
        }),
        regionalDomainName = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "regionalDomainName"),
            type = "string",
            name = "regionalDomainName",
            target_id = prelude.String.id,
        }),
        regionalHostedZoneId = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "regionalHostedZoneId"),
            type = "string",
            name = "regionalHostedZoneId",
            target_id = prelude.String.id,
        }),
        regionalCertificateName = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "regionalCertificateName"),
            type = "string",
            name = "regionalCertificateName",
            target_id = prelude.String.id,
        }),
        regionalCertificateArn = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "regionalCertificateArn"),
            type = "string",
            name = "regionalCertificateArn",
            target_id = prelude.String.id,
        }),
        distributionDomainName = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "distributionDomainName"),
            type = "string",
            name = "distributionDomainName",
            target_id = prelude.String.id,
        }),
        distributionHostedZoneId = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "distributionHostedZoneId"),
            type = "string",
            name = "distributionHostedZoneId",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        domainNameStatus = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainNameStatus"),
            type = "string",
            name = "domainNameStatus",
            target_id = prelude.String.id,
        }),
        domainNameStatusMessage = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "domainNameStatusMessage"),
            type = "string",
            name = "domainNameStatusMessage",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        mutualTlsAuthentication = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "mutualTlsAuthentication"),
            type = "structure",
            name = "mutualTlsAuthentication",
            target_id = id.from(_N, "MutualTlsAuthentication"),
            target = M.MutualTlsAuthentication,
        }),
        ownershipVerificationCertificateArn = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "ownershipVerificationCertificateArn"),
            type = "string",
            name = "ownershipVerificationCertificateArn",
            target_id = prelude.String.id,
        }),
        managementPolicy = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "managementPolicy"),
            type = "string",
            name = "managementPolicy",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        routingMode = schema.new({
            id = id.from(_N, "GetDomainNameOutput", "routingMode"),
            type = "string",
            name = "routingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDomainNameAccessAssociationsInput = schema.new({
    id = id.from(_N, "GetDomainNameAccessAssociationsInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetDomainNameAccessAssociationsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetDomainNameAccessAssociationsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        resourceOwner = schema.new({
            id = id.from(_N, "GetDomainNameAccessAssociationsInput", "resourceOwner"),
            type = "string",
            name = "resourceOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceOwner" },
            },
        }),
    },
})

M.DomainNameAccessAssociation = schema.new({
    id = id.from(_N, "DomainNameAccessAssociation"),
    type = "structure",
    members = {
        domainNameAccessAssociationArn = schema.new({
            id = id.from(_N, "DomainNameAccessAssociation", "domainNameAccessAssociationArn"),
            type = "string",
            name = "domainNameAccessAssociationArn",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "DomainNameAccessAssociation", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        accessAssociationSourceType = schema.new({
            id = id.from(_N, "DomainNameAccessAssociation", "accessAssociationSourceType"),
            type = "string",
            name = "accessAssociationSourceType",
            target_id = prelude.String.id,
        }),
        accessAssociationSource = schema.new({
            id = id.from(_N, "DomainNameAccessAssociation", "accessAssociationSource"),
            type = "string",
            name = "accessAssociationSource",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DomainNameAccessAssociation", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDomainNameAccessAssociationsOutput = schema.new({
    id = id.from(_N, "GetDomainNameAccessAssociationsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetDomainNameAccessAssociationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DomainNameAccessAssociation,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDomainNameAccessAssociationsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetDomainNamesInput = schema.new({
    id = id.from(_N, "GetDomainNamesInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetDomainNamesInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetDomainNamesInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        resourceOwner = schema.new({
            id = id.from(_N, "GetDomainNamesInput", "resourceOwner"),
            type = "string",
            name = "resourceOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceOwner" },
            },
        }),
    },
})

M.DomainName = schema.new({
    id = id.from(_N, "DomainName"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DomainName", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        domainNameId = schema.new({
            id = id.from(_N, "DomainName", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "DomainName", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "DomainName", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "DomainName", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        certificateUploadDate = schema.new({
            id = id.from(_N, "DomainName", "certificateUploadDate"),
            type = "timestamp",
            name = "certificateUploadDate",
            target_id = prelude.Timestamp.id,
        }),
        regionalDomainName = schema.new({
            id = id.from(_N, "DomainName", "regionalDomainName"),
            type = "string",
            name = "regionalDomainName",
            target_id = prelude.String.id,
        }),
        regionalHostedZoneId = schema.new({
            id = id.from(_N, "DomainName", "regionalHostedZoneId"),
            type = "string",
            name = "regionalHostedZoneId",
            target_id = prelude.String.id,
        }),
        regionalCertificateName = schema.new({
            id = id.from(_N, "DomainName", "regionalCertificateName"),
            type = "string",
            name = "regionalCertificateName",
            target_id = prelude.String.id,
        }),
        regionalCertificateArn = schema.new({
            id = id.from(_N, "DomainName", "regionalCertificateArn"),
            type = "string",
            name = "regionalCertificateArn",
            target_id = prelude.String.id,
        }),
        distributionDomainName = schema.new({
            id = id.from(_N, "DomainName", "distributionDomainName"),
            type = "string",
            name = "distributionDomainName",
            target_id = prelude.String.id,
        }),
        distributionHostedZoneId = schema.new({
            id = id.from(_N, "DomainName", "distributionHostedZoneId"),
            type = "string",
            name = "distributionHostedZoneId",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "DomainName", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        domainNameStatus = schema.new({
            id = id.from(_N, "DomainName", "domainNameStatus"),
            type = "string",
            name = "domainNameStatus",
            target_id = prelude.String.id,
        }),
        domainNameStatusMessage = schema.new({
            id = id.from(_N, "DomainName", "domainNameStatusMessage"),
            type = "string",
            name = "domainNameStatusMessage",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "DomainName", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "DomainName", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DomainName", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        mutualTlsAuthentication = schema.new({
            id = id.from(_N, "DomainName", "mutualTlsAuthentication"),
            type = "structure",
            name = "mutualTlsAuthentication",
            target_id = id.from(_N, "MutualTlsAuthentication"),
            target = M.MutualTlsAuthentication,
        }),
        ownershipVerificationCertificateArn = schema.new({
            id = id.from(_N, "DomainName", "ownershipVerificationCertificateArn"),
            type = "string",
            name = "ownershipVerificationCertificateArn",
            target_id = prelude.String.id,
        }),
        managementPolicy = schema.new({
            id = id.from(_N, "DomainName", "managementPolicy"),
            type = "string",
            name = "managementPolicy",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "DomainName", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        routingMode = schema.new({
            id = id.from(_N, "DomainName", "routingMode"),
            type = "string",
            name = "routingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDomainNamesOutput = schema.new({
    id = id.from(_N, "GetDomainNamesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetDomainNamesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.DomainName,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetDomainNamesOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetExportInput = schema.new({
    id = id.from(_N, "GetExportInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetExportInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "GetExportInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        exportType = schema.new({
            id = id.from(_N, "GetExportInput", "exportType"),
            type = "string",
            name = "exportType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "GetExportInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
        accepts = schema.new({
            id = id.from(_N, "GetExportInput", "accepts"),
            type = "string",
            name = "accepts",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Accept" },
            },
        }),
    },
})

M.GetExportOutput = schema.new({
    id = id.from(_N, "GetExportOutput"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "GetExportOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        contentDisposition = schema.new({
            id = id.from(_N, "GetExportOutput", "contentDisposition"),
            type = "string",
            name = "contentDisposition",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Disposition" },
            },
        }),
        body = schema.new({
            id = id.from(_N, "GetExportOutput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetGatewayResponseInput = schema.new({
    id = id.from(_N, "GetGatewayResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetGatewayResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        responseType = schema.new({
            id = id.from(_N, "GetGatewayResponseInput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGatewayResponseOutput = schema.new({
    id = id.from(_N, "GetGatewayResponseOutput"),
    type = "structure",
    members = {
        responseType = schema.new({
            id = id.from(_N, "GetGatewayResponseOutput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "GetGatewayResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "GetGatewayResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "GetGatewayResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultResponse = schema.new({
            id = id.from(_N, "GetGatewayResponseOutput", "defaultResponse"),
            type = "boolean",
            name = "defaultResponse",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetGatewayResponsesInput = schema.new({
    id = id.from(_N, "GetGatewayResponsesInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetGatewayResponsesInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetGatewayResponsesInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetGatewayResponsesInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.GatewayResponse = schema.new({
    id = id.from(_N, "GatewayResponse"),
    type = "structure",
    members = {
        responseType = schema.new({
            id = id.from(_N, "GatewayResponse", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "GatewayResponse", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "GatewayResponse", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "GatewayResponse", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultResponse = schema.new({
            id = id.from(_N, "GatewayResponse", "defaultResponse"),
            type = "boolean",
            name = "defaultResponse",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetGatewayResponsesOutput = schema.new({
    id = id.from(_N, "GetGatewayResponsesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetGatewayResponsesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.GatewayResponse,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetGatewayResponsesOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetIntegrationInput = schema.new({
    id = id.from(_N, "GetIntegrationInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetIntegrationInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "GetIntegrationInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "GetIntegrationInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetIntegrationOutput = schema.new({
    id = id.from(_N, "GetIntegrationOutput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        httpMethod = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        connectionType = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "connectionType"),
            type = "string",
            name = "connectionType",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        credentials = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "credentials"),
            type = "string",
            name = "credentials",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestTemplates = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "requestTemplates"),
            type = "map",
            name = "requestTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        passthroughBehavior = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "passthroughBehavior"),
            type = "string",
            name = "passthroughBehavior",
            target_id = prelude.String.id,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "timeoutInMillis"),
            type = "integer",
            name = "timeoutInMillis",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
        cacheKeyParameters = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "cacheKeyParameters"),
            type = "list",
            name = "cacheKeyParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        integrationResponses = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "integrationResponses"),
            type = "map",
            name = "integrationResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.IntegrationResponse,
        }),
        tlsConfig = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "tlsConfig"),
            type = "structure",
            name = "tlsConfig",
            target_id = id.from(_N, "TlsConfig"),
            target = M.TlsConfig,
        }),
        responseTransferMode = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "responseTransferMode"),
            type = "string",
            name = "responseTransferMode",
            target_id = prelude.String.id,
        }),
        integrationTarget = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "integrationTarget"),
            type = "string",
            name = "integrationTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.GetIntegrationResponseInput = schema.new({
    id = id.from(_N, "GetIntegrationResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetIntegrationResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "GetIntegrationResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "GetIntegrationResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "GetIntegrationResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetIntegrationResponseOutput = schema.new({
    id = id.from(_N, "GetIntegrationResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "GetIntegrationResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        selectionPattern = schema.new({
            id = id.from(_N, "GetIntegrationResponseOutput", "selectionPattern"),
            type = "string",
            name = "selectionPattern",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "GetIntegrationResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "GetIntegrationResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "GetIntegrationResponseOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMethodInput = schema.new({
    id = id.from(_N, "GetMethodInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetMethodInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "GetMethodInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "GetMethodInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMethodOutput = schema.new({
    id = id.from(_N, "GetMethodOutput"),
    type = "structure",
    members = {
        httpMethod = schema.new({
            id = id.from(_N, "GetMethodOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        authorizationType = schema.new({
            id = id.from(_N, "GetMethodOutput", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
        }),
        authorizerId = schema.new({
            id = id.from(_N, "GetMethodOutput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "GetMethodOutput", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "GetMethodOutput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
        }),
        operationName = schema.new({
            id = id.from(_N, "GetMethodOutput", "operationName"),
            type = "string",
            name = "operationName",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "GetMethodOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        requestModels = schema.new({
            id = id.from(_N, "GetMethodOutput", "requestModels"),
            type = "map",
            name = "requestModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        methodResponses = schema.new({
            id = id.from(_N, "GetMethodOutput", "methodResponses"),
            type = "map",
            name = "methodResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodResponse,
        }),
        methodIntegration = schema.new({
            id = id.from(_N, "GetMethodOutput", "methodIntegration"),
            type = "structure",
            name = "methodIntegration",
            target_id = id.from(_N, "Integration"),
            target = M.Integration,
        }),
        authorizationScopes = schema.new({
            id = id.from(_N, "GetMethodOutput", "authorizationScopes"),
            type = "list",
            name = "authorizationScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetMethodResponseInput = schema.new({
    id = id.from(_N, "GetMethodResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetMethodResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "GetMethodResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "GetMethodResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "GetMethodResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMethodResponseOutput = schema.new({
    id = id.from(_N, "GetMethodResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "GetMethodResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "GetMethodResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        responseModels = schema.new({
            id = id.from(_N, "GetMethodResponseOutput", "responseModels"),
            type = "map",
            name = "responseModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetModelInput = schema.new({
    id = id.from(_N, "GetModelInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetModelInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        modelName = schema.new({
            id = id.from(_N, "GetModelInput", "modelName"),
            type = "string",
            name = "modelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        flatten = schema.new({
            id = id.from(_N, "GetModelInput", "flatten"),
            type = "boolean",
            name = "flatten",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "flatten" },
            },
        }),
    },
})

M.GetModelOutput = schema.new({
    id = id.from(_N, "GetModelOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetModelOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetModelOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetModelOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "GetModelOutput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "GetModelOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetModelsInput = schema.new({
    id = id.from(_N, "GetModelsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetModelsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetModelsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetModelsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.Model = schema.new({
    id = id.from(_N, "Model"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Model", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Model", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Model", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "Model", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "Model", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetModelsOutput = schema.new({
    id = id.from(_N, "GetModelsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetModelsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Model,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetModelsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetModelTemplateInput = schema.new({
    id = id.from(_N, "GetModelTemplateInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetModelTemplateInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        modelName = schema.new({
            id = id.from(_N, "GetModelTemplateInput", "modelName"),
            type = "string",
            name = "modelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetModelTemplateOutput = schema.new({
    id = id.from(_N, "GetModelTemplateOutput"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "GetModelTemplateOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRequestValidatorInput = schema.new({
    id = id.from(_N, "GetRequestValidatorInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetRequestValidatorInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "GetRequestValidatorInput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRequestValidatorOutput = schema.new({
    id = id.from(_N, "GetRequestValidatorOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRequestValidatorOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRequestValidatorOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        validateRequestBody = schema.new({
            id = id.from(_N, "GetRequestValidatorOutput", "validateRequestBody"),
            type = "boolean",
            name = "validateRequestBody",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        validateRequestParameters = schema.new({
            id = id.from(_N, "GetRequestValidatorOutput", "validateRequestParameters"),
            type = "boolean",
            name = "validateRequestParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetRequestValidatorsInput = schema.new({
    id = id.from(_N, "GetRequestValidatorsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetRequestValidatorsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetRequestValidatorsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetRequestValidatorsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.RequestValidator = schema.new({
    id = id.from(_N, "RequestValidator"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "RequestValidator", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RequestValidator", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        validateRequestBody = schema.new({
            id = id.from(_N, "RequestValidator", "validateRequestBody"),
            type = "boolean",
            name = "validateRequestBody",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        validateRequestParameters = schema.new({
            id = id.from(_N, "RequestValidator", "validateRequestParameters"),
            type = "boolean",
            name = "validateRequestParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetRequestValidatorsOutput = schema.new({
    id = id.from(_N, "GetRequestValidatorsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetRequestValidatorsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RequestValidator,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetRequestValidatorsOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetResourceInput = schema.new({
    id = id.from(_N, "GetResourceInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetResourceInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "GetResourceInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        embed = schema.new({
            id = id.from(_N, "GetResourceInput", "embed"),
            type = "list",
            name = "embed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "embed" },
            },
        }),
    },
})

M.GetResourceOutput = schema.new({
    id = id.from(_N, "GetResourceOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetResourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        parentId = schema.new({
            id = id.from(_N, "GetResourceOutput", "parentId"),
            type = "string",
            name = "parentId",
            target_id = prelude.String.id,
        }),
        pathPart = schema.new({
            id = id.from(_N, "GetResourceOutput", "pathPart"),
            type = "string",
            name = "pathPart",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "GetResourceOutput", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        resourceMethods = schema.new({
            id = id.from(_N, "GetResourceOutput", "resourceMethods"),
            type = "map",
            name = "resourceMethods",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Method,
        }),
    },
})

M.GetResourcesInput = schema.new({
    id = id.from(_N, "GetResourcesInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetResourcesInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetResourcesInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetResourcesInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        embed = schema.new({
            id = id.from(_N, "GetResourcesInput", "embed"),
            type = "list",
            name = "embed",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "embed" },
            },
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Resource", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        parentId = schema.new({
            id = id.from(_N, "Resource", "parentId"),
            type = "string",
            name = "parentId",
            target_id = prelude.String.id,
        }),
        pathPart = schema.new({
            id = id.from(_N, "Resource", "pathPart"),
            type = "string",
            name = "pathPart",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "Resource", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        resourceMethods = schema.new({
            id = id.from(_N, "Resource", "resourceMethods"),
            type = "map",
            name = "resourceMethods",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Method,
        }),
    },
})

M.GetResourcesOutput = schema.new({
    id = id.from(_N, "GetResourcesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetResourcesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Resource,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetResourcesOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetRestApiInput = schema.new({
    id = id.from(_N, "GetRestApiInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetRestApiInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRestApiOutput = schema.new({
    id = id.from(_N, "GetRestApiOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetRestApiOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetRestApiOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetRestApiOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetRestApiOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "GetRestApiOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "GetRestApiOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "GetRestApiOutput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "GetRestApiOutput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "GetRestApiOutput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "GetRestApiOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "GetRestApiOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetRestApiOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "GetRestApiOutput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "GetRestApiOutput", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "GetRestApiOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "GetRestApiOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "GetRestApiOutput", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "GetRestApiOutput", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRestApisInput = schema.new({
    id = id.from(_N, "GetRestApisInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetRestApisInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetRestApisInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.RestApi = schema.new({
    id = id.from(_N, "RestApi"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "RestApi", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RestApi", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "RestApi", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "RestApi", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "RestApi", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "RestApi", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "RestApi", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "RestApi", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "RestApi", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "RestApi", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "RestApi", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RestApi", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "RestApi", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "RestApi", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "RestApi", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "RestApi", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "RestApi", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "RestApi", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRestApisOutput = schema.new({
    id = id.from(_N, "GetRestApisOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetRestApisOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RestApi,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetRestApisOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetSdkInput = schema.new({
    id = id.from(_N, "GetSdkInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetSdkInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "GetSdkInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sdkType = schema.new({
            id = id.from(_N, "GetSdkInput", "sdkType"),
            type = "string",
            name = "sdkType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "GetSdkInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
    },
})

M.GetSdkOutput = schema.new({
    id = id.from(_N, "GetSdkOutput"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "GetSdkOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        contentDisposition = schema.new({
            id = id.from(_N, "GetSdkOutput", "contentDisposition"),
            type = "string",
            name = "contentDisposition",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Disposition" },
            },
        }),
        body = schema.new({
            id = id.from(_N, "GetSdkOutput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.GetSdkTypeInput = schema.new({
    id = id.from(_N, "GetSdkTypeInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSdkTypeInput", "id"),
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

M.SdkConfigurationProperty = schema.new({
    id = id.from(_N, "SdkConfigurationProperty"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SdkConfigurationProperty", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        friendlyName = schema.new({
            id = id.from(_N, "SdkConfigurationProperty", "friendlyName"),
            type = "string",
            name = "friendlyName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SdkConfigurationProperty", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        required = schema.new({
            id = id.from(_N, "SdkConfigurationProperty", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        defaultValue = schema.new({
            id = id.from(_N, "SdkConfigurationProperty", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSdkTypeOutput = schema.new({
    id = id.from(_N, "GetSdkTypeOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSdkTypeOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        friendlyName = schema.new({
            id = id.from(_N, "GetSdkTypeOutput", "friendlyName"),
            type = "string",
            name = "friendlyName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetSdkTypeOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        configurationProperties = schema.new({
            id = id.from(_N, "GetSdkTypeOutput", "configurationProperties"),
            type = "list",
            name = "configurationProperties",
            target_id = prelude.Document.id,
            list_member = M.SdkConfigurationProperty,
        }),
    },
})

M.GetSdkTypesInput = schema.new({
    id = id.from(_N, "GetSdkTypesInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetSdkTypesInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetSdkTypesInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.SdkType = schema.new({
    id = id.from(_N, "SdkType"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SdkType", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        friendlyName = schema.new({
            id = id.from(_N, "SdkType", "friendlyName"),
            type = "string",
            name = "friendlyName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "SdkType", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        configurationProperties = schema.new({
            id = id.from(_N, "SdkType", "configurationProperties"),
            type = "list",
            name = "configurationProperties",
            target_id = prelude.Document.id,
            list_member = M.SdkConfigurationProperty,
        }),
    },
})

M.GetSdkTypesOutput = schema.new({
    id = id.from(_N, "GetSdkTypesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetSdkTypesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.SdkType,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
    },
})

M.GetStageInput = schema.new({
    id = id.from(_N, "GetStageInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetStageInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "GetStageInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetStageOutput = schema.new({
    id = id.from(_N, "GetStageOutput"),
    type = "structure",
    members = {
        deploymentId = schema.new({
            id = id.from(_N, "GetStageOutput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
        }),
        clientCertificateId = schema.new({
            id = id.from(_N, "GetStageOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        stageName = schema.new({
            id = id.from(_N, "GetStageOutput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetStageOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "GetStageOutput", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "GetStageOutput", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        cacheClusterStatus = schema.new({
            id = id.from(_N, "GetStageOutput", "cacheClusterStatus"),
            type = "string",
            name = "cacheClusterStatus",
            target_id = prelude.String.id,
        }),
        methodSettings = schema.new({
            id = id.from(_N, "GetStageOutput", "methodSettings"),
            type = "map",
            name = "methodSettings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodSetting,
        }),
        variables = schema.new({
            id = id.from(_N, "GetStageOutput", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "GetStageOutput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
        }),
        accessLogSettings = schema.new({
            id = id.from(_N, "GetStageOutput", "accessLogSettings"),
            type = "structure",
            name = "accessLogSettings",
            target_id = id.from(_N, "AccessLogSettings"),
            target = M.AccessLogSettings,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "GetStageOutput", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "CanarySettings"),
            target = M.CanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "GetStageOutput", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        webAclArn = schema.new({
            id = id.from(_N, "GetStageOutput", "webAclArn"),
            type = "string",
            name = "webAclArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetStageOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetStageOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetStageOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetStagesInput = schema.new({
    id = id.from(_N, "GetStagesInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "GetStagesInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "GetStagesInput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "deploymentId" },
            },
        }),
    },
})

M.Stage = schema.new({
    id = id.from(_N, "Stage"),
    type = "structure",
    members = {
        deploymentId = schema.new({
            id = id.from(_N, "Stage", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
        }),
        clientCertificateId = schema.new({
            id = id.from(_N, "Stage", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        stageName = schema.new({
            id = id.from(_N, "Stage", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Stage", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "Stage", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "Stage", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        cacheClusterStatus = schema.new({
            id = id.from(_N, "Stage", "cacheClusterStatus"),
            type = "string",
            name = "cacheClusterStatus",
            target_id = prelude.String.id,
        }),
        methodSettings = schema.new({
            id = id.from(_N, "Stage", "methodSettings"),
            type = "map",
            name = "methodSettings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodSetting,
        }),
        variables = schema.new({
            id = id.from(_N, "Stage", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "Stage", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
        }),
        accessLogSettings = schema.new({
            id = id.from(_N, "Stage", "accessLogSettings"),
            type = "structure",
            name = "accessLogSettings",
            target_id = id.from(_N, "AccessLogSettings"),
            target = M.AccessLogSettings,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "Stage", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "CanarySettings"),
            target = M.CanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "Stage", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        webAclArn = schema.new({
            id = id.from(_N, "Stage", "webAclArn"),
            type = "string",
            name = "webAclArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Stage", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdDate = schema.new({
            id = id.from(_N, "Stage", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "Stage", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetStagesOutput = schema.new({
    id = id.from(_N, "GetStagesOutput"),
    type = "structure",
    members = {
        item = schema.new({
            id = id.from(_N, "GetStagesOutput", "item"),
            type = "list",
            name = "item",
            target_id = prelude.Document.id,
            list_member = M.Stage,
        }),
    },
})

M.GetTagsInput = schema.new({
    id = id.from(_N, "GetTagsInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "GetTagsInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetTagsInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetTagsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.GetTagsOutput = schema.new({
    id = id.from(_N, "GetTagsOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "GetTagsOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetUsageInput = schema.new({
    id = id.from(_N, "GetUsageInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "GetUsageInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "GetUsageInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "keyId" },
            },
        }),
        startDate = schema.new({
            id = id.from(_N, "GetUsageInput", "startDate"),
            type = "string",
            name = "startDate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "startDate" },
            },
        }),
        endDate = schema.new({
            id = id.from(_N, "GetUsageInput", "endDate"),
            type = "string",
            name = "endDate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "endDate" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetUsageInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetUsageInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.GetUsageOutput = schema.new({
    id = id.from(_N, "GetUsageOutput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "GetUsageOutput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
        }),
        startDate = schema.new({
            id = id.from(_N, "GetUsageOutput", "startDate"),
            type = "string",
            name = "startDate",
            target_id = prelude.String.id,
        }),
        endDate = schema.new({
            id = id.from(_N, "GetUsageOutput", "endDate"),
            type = "string",
            name = "endDate",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "GetUsageOutput", "items"),
            type = "map",
            name = "items",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.JSON_NAME] = { name = "values" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetUsageOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetUsagePlanInput = schema.new({
    id = id.from(_N, "GetUsagePlanInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "GetUsagePlanInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetUsagePlanOutput = schema.new({
    id = id.from(_N, "GetUsagePlanOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        apiStages = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "apiStages"),
            type = "list",
            name = "apiStages",
            target_id = prelude.Document.id,
            list_member = M.ApiStage,
        }),
        throttle = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "throttle"),
            type = "structure",
            name = "throttle",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        quota = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "quota"),
            type = "structure",
            name = "quota",
            target_id = id.from(_N, "QuotaSettings"),
            target = M.QuotaSettings,
        }),
        productCode = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "productCode"),
            type = "string",
            name = "productCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetUsagePlanOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetUsagePlanKeyInput = schema.new({
    id = id.from(_N, "GetUsagePlanKeyInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "GetUsagePlanKeyInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "GetUsagePlanKeyInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetUsagePlanKeyOutput = schema.new({
    id = id.from(_N, "GetUsagePlanKeyOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetUsagePlanKeyOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetUsagePlanKeyOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "GetUsagePlanKeyOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetUsagePlanKeyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUsagePlanKeysInput = schema.new({
    id = id.from(_N, "GetUsagePlanKeysInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "GetUsagePlanKeysInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetUsagePlanKeysInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetUsagePlanKeysInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        nameQuery = schema.new({
            id = id.from(_N, "GetUsagePlanKeysInput", "nameQuery"),
            type = "string",
            name = "nameQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.UsagePlanKey = schema.new({
    id = id.from(_N, "UsagePlanKey"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UsagePlanKey", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UsagePlanKey", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "UsagePlanKey", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UsagePlanKey", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUsagePlanKeysOutput = schema.new({
    id = id.from(_N, "GetUsagePlanKeysOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetUsagePlanKeysOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.UsagePlanKey,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetUsagePlanKeysOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetUsagePlansInput = schema.new({
    id = id.from(_N, "GetUsagePlansInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetUsagePlansInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "GetUsagePlansInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "keyId" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetUsagePlansInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.UsagePlan = schema.new({
    id = id.from(_N, "UsagePlan"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UsagePlan", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UsagePlan", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UsagePlan", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        apiStages = schema.new({
            id = id.from(_N, "UsagePlan", "apiStages"),
            type = "list",
            name = "apiStages",
            target_id = prelude.Document.id,
            list_member = M.ApiStage,
        }),
        throttle = schema.new({
            id = id.from(_N, "UsagePlan", "throttle"),
            type = "structure",
            name = "throttle",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        quota = schema.new({
            id = id.from(_N, "UsagePlan", "quota"),
            type = "structure",
            name = "quota",
            target_id = id.from(_N, "QuotaSettings"),
            target = M.QuotaSettings,
        }),
        productCode = schema.new({
            id = id.from(_N, "UsagePlan", "productCode"),
            type = "string",
            name = "productCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UsagePlan", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetUsagePlansOutput = schema.new({
    id = id.from(_N, "GetUsagePlansOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetUsagePlansOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.UsagePlan,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetUsagePlansOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.GetVpcLinkInput = schema.new({
    id = id.from(_N, "GetVpcLinkInput"),
    type = "structure",
    members = {
        vpcLinkId = schema.new({
            id = id.from(_N, "GetVpcLinkInput", "vpcLinkId"),
            type = "string",
            name = "vpcLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetVpcLinkOutput = schema.new({
    id = id.from(_N, "GetVpcLinkOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetArns = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "targetArns"),
            type = "list",
            name = "targetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetVpcLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetVpcLinksInput = schema.new({
    id = id.from(_N, "GetVpcLinksInput"),
    type = "structure",
    members = {
        position = schema.new({
            id = id.from(_N, "GetVpcLinksInput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "GetVpcLinksInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.VpcLink = schema.new({
    id = id.from(_N, "VpcLink"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "VpcLink", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "VpcLink", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "VpcLink", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetArns = schema.new({
            id = id.from(_N, "VpcLink", "targetArns"),
            type = "list",
            name = "targetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "VpcLink", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "VpcLink", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "VpcLink", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetVpcLinksOutput = schema.new({
    id = id.from(_N, "GetVpcLinksOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "GetVpcLinksOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.VpcLink,
            traits = {
                [traits.JSON_NAME] = { name = "item" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "GetVpcLinksOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.ImportApiKeysInput = schema.new({
    id = id.from(_N, "ImportApiKeysInput"),
    type = "structure",
    members = {
        body = schema.new({
            id = id.from(_N, "ImportApiKeysInput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        format = schema.new({
            id = id.from(_N, "ImportApiKeysInput", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "format" },
            },
        }),
        failOnWarnings = schema.new({
            id = id.from(_N, "ImportApiKeysInput", "failOnWarnings"),
            type = "boolean",
            name = "failOnWarnings",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "failonwarnings" },
            },
        }),
    },
})

M.ImportApiKeysOutput = schema.new({
    id = id.from(_N, "ImportApiKeysOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ImportApiKeysOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        warnings = schema.new({
            id = id.from(_N, "ImportApiKeysOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ImportDocumentationPartsInput = schema.new({
    id = id.from(_N, "ImportDocumentationPartsInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "ImportDocumentationPartsInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mode = schema.new({
            id = id.from(_N, "ImportDocumentationPartsInput", "mode"),
            type = "string",
            name = "mode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "mode" },
            },
        }),
        failOnWarnings = schema.new({
            id = id.from(_N, "ImportDocumentationPartsInput", "failOnWarnings"),
            type = "boolean",
            name = "failOnWarnings",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "failonwarnings" },
            },
        }),
        body = schema.new({
            id = id.from(_N, "ImportDocumentationPartsInput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ImportDocumentationPartsOutput = schema.new({
    id = id.from(_N, "ImportDocumentationPartsOutput"),
    type = "structure",
    members = {
        ids = schema.new({
            id = id.from(_N, "ImportDocumentationPartsOutput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        warnings = schema.new({
            id = id.from(_N, "ImportDocumentationPartsOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ImportRestApiInput = schema.new({
    id = id.from(_N, "ImportRestApiInput"),
    type = "structure",
    members = {
        failOnWarnings = schema.new({
            id = id.from(_N, "ImportRestApiInput", "failOnWarnings"),
            type = "boolean",
            name = "failOnWarnings",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "failonwarnings" },
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "ImportRestApiInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "ImportRestApiInput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ImportRestApiOutput = schema.new({
    id = id.from(_N, "ImportRestApiOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "ImportRestApiOutput", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.PutGatewayResponseInput = schema.new({
    id = id.from(_N, "PutGatewayResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutGatewayResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        responseType = schema.new({
            id = id.from(_N, "PutGatewayResponseInput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "PutGatewayResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutGatewayResponseInput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "PutGatewayResponseInput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutGatewayResponseOutput = schema.new({
    id = id.from(_N, "PutGatewayResponseOutput"),
    type = "structure",
    members = {
        responseType = schema.new({
            id = id.from(_N, "PutGatewayResponseOutput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "PutGatewayResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutGatewayResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "PutGatewayResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultResponse = schema.new({
            id = id.from(_N, "PutGatewayResponseOutput", "defaultResponse"),
            type = "boolean",
            name = "defaultResponse",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutIntegrationInput = schema.new({
    id = id.from(_N, "PutIntegrationInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutIntegrationInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "PutIntegrationInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "PutIntegrationInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
                [traits.JSON_NAME] = { name = "requestHttpMethod" },
            },
        }),
        type = schema.new({
            id = id.from(_N, "PutIntegrationInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        integrationHttpMethod = schema.new({
            id = id.from(_N, "PutIntegrationInput", "integrationHttpMethod"),
            type = "string",
            name = "integrationHttpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "httpMethod" },
            },
        }),
        uri = schema.new({
            id = id.from(_N, "PutIntegrationInput", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        connectionType = schema.new({
            id = id.from(_N, "PutIntegrationInput", "connectionType"),
            type = "string",
            name = "connectionType",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "PutIntegrationInput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        credentials = schema.new({
            id = id.from(_N, "PutIntegrationInput", "credentials"),
            type = "string",
            name = "credentials",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "PutIntegrationInput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestTemplates = schema.new({
            id = id.from(_N, "PutIntegrationInput", "requestTemplates"),
            type = "map",
            name = "requestTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        passthroughBehavior = schema.new({
            id = id.from(_N, "PutIntegrationInput", "passthroughBehavior"),
            type = "string",
            name = "passthroughBehavior",
            target_id = prelude.String.id,
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "PutIntegrationInput", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
        cacheKeyParameters = schema.new({
            id = id.from(_N, "PutIntegrationInput", "cacheKeyParameters"),
            type = "list",
            name = "cacheKeyParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "PutIntegrationInput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "PutIntegrationInput", "timeoutInMillis"),
            type = "integer",
            name = "timeoutInMillis",
            target_id = prelude.Integer.id,
        }),
        tlsConfig = schema.new({
            id = id.from(_N, "PutIntegrationInput", "tlsConfig"),
            type = "structure",
            name = "tlsConfig",
            target_id = id.from(_N, "TlsConfig"),
            target = M.TlsConfig,
        }),
        responseTransferMode = schema.new({
            id = id.from(_N, "PutIntegrationInput", "responseTransferMode"),
            type = "string",
            name = "responseTransferMode",
            target_id = prelude.String.id,
        }),
        integrationTarget = schema.new({
            id = id.from(_N, "PutIntegrationInput", "integrationTarget"),
            type = "string",
            name = "integrationTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.PutIntegrationOutput = schema.new({
    id = id.from(_N, "PutIntegrationOutput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        httpMethod = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        connectionType = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "connectionType"),
            type = "string",
            name = "connectionType",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        credentials = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "credentials"),
            type = "string",
            name = "credentials",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestTemplates = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "requestTemplates"),
            type = "map",
            name = "requestTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        passthroughBehavior = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "passthroughBehavior"),
            type = "string",
            name = "passthroughBehavior",
            target_id = prelude.String.id,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "timeoutInMillis"),
            type = "integer",
            name = "timeoutInMillis",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
        cacheKeyParameters = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "cacheKeyParameters"),
            type = "list",
            name = "cacheKeyParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        integrationResponses = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "integrationResponses"),
            type = "map",
            name = "integrationResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.IntegrationResponse,
        }),
        tlsConfig = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "tlsConfig"),
            type = "structure",
            name = "tlsConfig",
            target_id = id.from(_N, "TlsConfig"),
            target = M.TlsConfig,
        }),
        responseTransferMode = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "responseTransferMode"),
            type = "string",
            name = "responseTransferMode",
            target_id = prelude.String.id,
        }),
        integrationTarget = schema.new({
            id = id.from(_N, "PutIntegrationOutput", "integrationTarget"),
            type = "string",
            name = "integrationTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.PutIntegrationResponseInput = schema.new({
    id = id.from(_N, "PutIntegrationResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        selectionPattern = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "selectionPattern"),
            type = "string",
            name = "selectionPattern",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "PutIntegrationResponseInput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
    },
})

M.PutIntegrationResponseOutput = schema.new({
    id = id.from(_N, "PutIntegrationResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "PutIntegrationResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        selectionPattern = schema.new({
            id = id.from(_N, "PutIntegrationResponseOutput", "selectionPattern"),
            type = "string",
            name = "selectionPattern",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutIntegrationResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "PutIntegrationResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "PutIntegrationResponseOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
    },
})

M.PutMethodInput = schema.new({
    id = id.from(_N, "PutMethodInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutMethodInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "PutMethodInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "PutMethodInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authorizationType = schema.new({
            id = id.from(_N, "PutMethodInput", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerId = schema.new({
            id = id.from(_N, "PutMethodInput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "PutMethodInput", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        operationName = schema.new({
            id = id.from(_N, "PutMethodInput", "operationName"),
            type = "string",
            name = "operationName",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "PutMethodInput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        requestModels = schema.new({
            id = id.from(_N, "PutMethodInput", "requestModels"),
            type = "map",
            name = "requestModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "PutMethodInput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
        }),
        authorizationScopes = schema.new({
            id = id.from(_N, "PutMethodInput", "authorizationScopes"),
            type = "list",
            name = "authorizationScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PutMethodOutput = schema.new({
    id = id.from(_N, "PutMethodOutput"),
    type = "structure",
    members = {
        httpMethod = schema.new({
            id = id.from(_N, "PutMethodOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        authorizationType = schema.new({
            id = id.from(_N, "PutMethodOutput", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
        }),
        authorizerId = schema.new({
            id = id.from(_N, "PutMethodOutput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "PutMethodOutput", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "PutMethodOutput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
        }),
        operationName = schema.new({
            id = id.from(_N, "PutMethodOutput", "operationName"),
            type = "string",
            name = "operationName",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "PutMethodOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        requestModels = schema.new({
            id = id.from(_N, "PutMethodOutput", "requestModels"),
            type = "map",
            name = "requestModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        methodResponses = schema.new({
            id = id.from(_N, "PutMethodOutput", "methodResponses"),
            type = "map",
            name = "methodResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodResponse,
        }),
        methodIntegration = schema.new({
            id = id.from(_N, "PutMethodOutput", "methodIntegration"),
            type = "structure",
            name = "methodIntegration",
            target_id = id.from(_N, "Integration"),
            target = M.Integration,
        }),
        authorizationScopes = schema.new({
            id = id.from(_N, "PutMethodOutput", "authorizationScopes"),
            type = "list",
            name = "authorizationScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PutMethodResponseInput = schema.new({
    id = id.from(_N, "PutMethodResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        responseModels = schema.new({
            id = id.from(_N, "PutMethodResponseInput", "responseModels"),
            type = "map",
            name = "responseModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutMethodResponseOutput = schema.new({
    id = id.from(_N, "PutMethodResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "PutMethodResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "PutMethodResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        responseModels = schema.new({
            id = id.from(_N, "PutMethodResponseOutput", "responseModels"),
            type = "map",
            name = "responseModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutRestApiInput = schema.new({
    id = id.from(_N, "PutRestApiInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "PutRestApiInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mode = schema.new({
            id = id.from(_N, "PutRestApiInput", "mode"),
            type = "string",
            name = "mode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "mode" },
            },
        }),
        failOnWarnings = schema.new({
            id = id.from(_N, "PutRestApiInput", "failOnWarnings"),
            type = "boolean",
            name = "failOnWarnings",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "failonwarnings" },
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "PutRestApiInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "PutRestApiInput", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.PutRestApiOutput = schema.new({
    id = id.from(_N, "PutRestApiOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PutRestApiOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PutRestApiOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PutRestApiOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "PutRestApiOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "PutRestApiOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "PutRestApiOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "PutRestApiOutput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "PutRestApiOutput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "PutRestApiOutput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "PutRestApiOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "PutRestApiOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "PutRestApiOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "PutRestApiOutput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "PutRestApiOutput", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "PutRestApiOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "PutRestApiOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "PutRestApiOutput", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "PutRestApiOutput", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.RejectDomainNameAccessAssociationInput = schema.new({
    id = id.from(_N, "RejectDomainNameAccessAssociationInput"),
    type = "structure",
    members = {
        domainNameAccessAssociationArn = schema.new({
            id = id.from(_N, "RejectDomainNameAccessAssociationInput", "domainNameAccessAssociationArn"),
            type = "string",
            name = "domainNameAccessAssociationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "domainNameAccessAssociationArn" },
            },
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "RejectDomainNameAccessAssociationInput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "domainNameArn" },
            },
        }),
    },
})

M.RejectDomainNameAccessAssociationOutput = schema.new({
    id = id.from(_N, "RejectDomainNameAccessAssociationOutput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.TestInvokeAuthorizerInput = schema.new({
    id = id.from(_N, "TestInvokeAuthorizerInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authorizerId = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        headers = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "headers"),
            type = "map",
            name = "headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        multiValueHeaders = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "multiValueHeaders"),
            type = "map",
            name = "multiValueHeaders",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        pathWithQueryString = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "pathWithQueryString"),
            type = "string",
            name = "pathWithQueryString",
            target_id = prelude.String.id,
        }),
        body = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
        stageVariables = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "stageVariables"),
            type = "map",
            name = "stageVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        additionalContext = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerInput", "additionalContext"),
            type = "map",
            name = "additionalContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TestInvokeAuthorizerOutput = schema.new({
    id = id.from(_N, "TestInvokeAuthorizerOutput"),
    type = "structure",
    members = {
        clientStatus = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "clientStatus"),
            type = "integer",
            name = "clientStatus",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        log = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "log"),
            type = "string",
            name = "log",
            target_id = prelude.String.id,
        }),
        latency = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "latency"),
            type = "long",
            name = "latency",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        principalId = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "principalId"),
            type = "string",
            name = "principalId",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        authorization = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "authorization"),
            type = "map",
            name = "authorization",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        claims = schema.new({
            id = id.from(_N, "TestInvokeAuthorizerOutput", "claims"),
            type = "map",
            name = "claims",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TestInvokeMethodInput = schema.new({
    id = id.from(_N, "TestInvokeMethodInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pathWithQueryString = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "pathWithQueryString"),
            type = "string",
            name = "pathWithQueryString",
            target_id = prelude.String.id,
        }),
        body = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
        headers = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "headers"),
            type = "map",
            name = "headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        multiValueHeaders = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "multiValueHeaders"),
            type = "map",
            name = "multiValueHeaders",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        clientCertificateId = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        stageVariables = schema.new({
            id = id.from(_N, "TestInvokeMethodInput", "stageVariables"),
            type = "map",
            name = "stageVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TestInvokeMethodOutput = schema.new({
    id = id.from(_N, "TestInvokeMethodOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "status"),
            type = "integer",
            name = "status",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        body = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
        headers = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "headers"),
            type = "map",
            name = "headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        multiValueHeaders = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "multiValueHeaders"),
            type = "map",
            name = "multiValueHeaders",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        log = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "log"),
            type = "string",
            name = "log",
            target_id = prelude.String.id,
        }),
        latency = schema.new({
            id = id.from(_N, "TestInvokeMethodOutput", "latency"),
            type = "long",
            name = "latency",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
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

M.PatchOperation = schema.new({
    id = id.from(_N, "PatchOperation"),
    type = "structure",
    members = {
        op = schema.new({
            id = id.from(_N, "PatchOperation", "op"),
            type = "string",
            name = "op",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "PatchOperation", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "PatchOperation", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        from = schema.new({
            id = id.from(_N, "PatchOperation", "from"),
            type = "string",
            name = "from",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccountInput = schema.new({
    id = id.from(_N, "UpdateAccountInput"),
    type = "structure",
    members = {
        patchOperations = schema.new({
            id = id.from(_N, "UpdateAccountInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateAccountOutput = schema.new({
    id = id.from(_N, "UpdateAccountOutput"),
    type = "structure",
    members = {
        cloudwatchRoleArn = schema.new({
            id = id.from(_N, "UpdateAccountOutput", "cloudwatchRoleArn"),
            type = "string",
            name = "cloudwatchRoleArn",
            target_id = prelude.String.id,
        }),
        throttleSettings = schema.new({
            id = id.from(_N, "UpdateAccountOutput", "throttleSettings"),
            type = "structure",
            name = "throttleSettings",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        features = schema.new({
            id = id.from(_N, "UpdateAccountOutput", "features"),
            type = "list",
            name = "features",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        apiKeyVersion = schema.new({
            id = id.from(_N, "UpdateAccountOutput", "apiKeyVersion"),
            type = "string",
            name = "apiKeyVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApiKeyInput = schema.new({
    id = id.from(_N, "UpdateApiKeyInput"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateApiKeyInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateApiKeyOutput = schema.new({
    id = id.from(_N, "UpdateApiKeyOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        customerId = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "customerId"),
            type = "string",
            name = "customerId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        stageKeys = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "stageKeys"),
            type = "list",
            name = "stageKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateApiKeyOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateAuthorizerInput = schema.new({
    id = id.from(_N, "UpdateAuthorizerInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateAuthorizerInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authorizerId = schema.new({
            id = id.from(_N, "UpdateAuthorizerInput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateAuthorizerInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateAuthorizerOutput = schema.new({
    id = id.from(_N, "UpdateAuthorizerOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        providerARNs = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "providerARNs"),
            type = "list",
            name = "providerARNs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authType = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        authorizerUri = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "authorizerUri"),
            type = "string",
            name = "authorizerUri",
            target_id = prelude.String.id,
        }),
        authorizerCredentials = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "authorizerCredentials"),
            type = "string",
            name = "authorizerCredentials",
            target_id = prelude.String.id,
        }),
        identitySource = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "identitySource"),
            type = "string",
            name = "identitySource",
            target_id = prelude.String.id,
        }),
        identityValidationExpression = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "identityValidationExpression"),
            type = "string",
            name = "identityValidationExpression",
            target_id = prelude.String.id,
        }),
        authorizerResultTtlInSeconds = schema.new({
            id = id.from(_N, "UpdateAuthorizerOutput", "authorizerResultTtlInSeconds"),
            type = "integer",
            name = "authorizerResultTtlInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateBasePathMappingInput = schema.new({
    id = id.from(_N, "UpdateBasePathMappingInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "UpdateBasePathMappingInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        domainNameId = schema.new({
            id = id.from(_N, "UpdateBasePathMappingInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        basePath = schema.new({
            id = id.from(_N, "UpdateBasePathMappingInput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateBasePathMappingInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateBasePathMappingOutput = schema.new({
    id = id.from(_N, "UpdateBasePathMappingOutput"),
    type = "structure",
    members = {
        basePath = schema.new({
            id = id.from(_N, "UpdateBasePathMappingOutput", "basePath"),
            type = "string",
            name = "basePath",
            target_id = prelude.String.id,
        }),
        restApiId = schema.new({
            id = id.from(_N, "UpdateBasePathMappingOutput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "UpdateBasePathMappingOutput", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClientCertificateInput = schema.new({
    id = id.from(_N, "UpdateClientCertificateInput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "UpdateClientCertificateInput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateClientCertificateInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateClientCertificateOutput = schema.new({
    id = id.from(_N, "UpdateClientCertificateOutput"),
    type = "structure",
    members = {
        clientCertificateId = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        pemEncodedCertificate = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "pemEncodedCertificate"),
            type = "string",
            name = "pemEncodedCertificate",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        expirationDate = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "expirationDate"),
            type = "timestamp",
            name = "expirationDate",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateClientCertificateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateDeploymentInput = schema.new({
    id = id.from(_N, "UpdateDeploymentInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateDeploymentInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        deploymentId = schema.new({
            id = id.from(_N, "UpdateDeploymentInput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateDeploymentInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateDeploymentOutput = schema.new({
    id = id.from(_N, "UpdateDeploymentOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateDeploymentOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDeploymentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateDeploymentOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        apiSummary = schema.new({
            id = id.from(_N, "UpdateDeploymentOutput", "apiSummary"),
            type = "map",
            name = "apiSummary",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.UpdateDocumentationPartInput = schema.new({
    id = id.from(_N, "UpdateDocumentationPartInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateDocumentationPartInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationPartId = schema.new({
            id = id.from(_N, "UpdateDocumentationPartInput", "documentationPartId"),
            type = "string",
            name = "documentationPartId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateDocumentationPartInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateDocumentationPartOutput = schema.new({
    id = id.from(_N, "UpdateDocumentationPartOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateDocumentationPartOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "UpdateDocumentationPartOutput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "DocumentationPartLocation"),
            target = M.DocumentationPartLocation,
        }),
        properties = schema.new({
            id = id.from(_N, "UpdateDocumentationPartOutput", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentationVersionInput = schema.new({
    id = id.from(_N, "UpdateDocumentationVersionInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionInput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateDocumentationVersionOutput = schema.new({
    id = id.from(_N, "UpdateDocumentationVersionOutput"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDocumentationVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDomainNameInput = schema.new({
    id = id.from(_N, "UpdateDomainNameInput"),
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
        domainNameId = schema.new({
            id = id.from(_N, "UpdateDomainNameInput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "domainNameId" },
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateDomainNameInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateDomainNameOutput = schema.new({
    id = id.from(_N, "UpdateDomainNameOutput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        domainNameId = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainNameId"),
            type = "string",
            name = "domainNameId",
            target_id = prelude.String.id,
        }),
        domainNameArn = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainNameArn"),
            type = "string",
            name = "domainNameArn",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateArn = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        certificateUploadDate = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "certificateUploadDate"),
            type = "timestamp",
            name = "certificateUploadDate",
            target_id = prelude.Timestamp.id,
        }),
        regionalDomainName = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "regionalDomainName"),
            type = "string",
            name = "regionalDomainName",
            target_id = prelude.String.id,
        }),
        regionalHostedZoneId = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "regionalHostedZoneId"),
            type = "string",
            name = "regionalHostedZoneId",
            target_id = prelude.String.id,
        }),
        regionalCertificateName = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "regionalCertificateName"),
            type = "string",
            name = "regionalCertificateName",
            target_id = prelude.String.id,
        }),
        regionalCertificateArn = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "regionalCertificateArn"),
            type = "string",
            name = "regionalCertificateArn",
            target_id = prelude.String.id,
        }),
        distributionDomainName = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "distributionDomainName"),
            type = "string",
            name = "distributionDomainName",
            target_id = prelude.String.id,
        }),
        distributionHostedZoneId = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "distributionHostedZoneId"),
            type = "string",
            name = "distributionHostedZoneId",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        domainNameStatus = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainNameStatus"),
            type = "string",
            name = "domainNameStatus",
            target_id = prelude.String.id,
        }),
        domainNameStatusMessage = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "domainNameStatusMessage"),
            type = "string",
            name = "domainNameStatusMessage",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        mutualTlsAuthentication = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "mutualTlsAuthentication"),
            type = "structure",
            name = "mutualTlsAuthentication",
            target_id = id.from(_N, "MutualTlsAuthentication"),
            target = M.MutualTlsAuthentication,
        }),
        ownershipVerificationCertificateArn = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "ownershipVerificationCertificateArn"),
            type = "string",
            name = "ownershipVerificationCertificateArn",
            target_id = prelude.String.id,
        }),
        managementPolicy = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "managementPolicy"),
            type = "string",
            name = "managementPolicy",
            target_id = prelude.String.id,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        routingMode = schema.new({
            id = id.from(_N, "UpdateDomainNameOutput", "routingMode"),
            type = "string",
            name = "routingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayResponseInput = schema.new({
    id = id.from(_N, "UpdateGatewayResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateGatewayResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        responseType = schema.new({
            id = id.from(_N, "UpdateGatewayResponseInput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateGatewayResponseInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateGatewayResponseOutput = schema.new({
    id = id.from(_N, "UpdateGatewayResponseOutput"),
    type = "structure",
    members = {
        responseType = schema.new({
            id = id.from(_N, "UpdateGatewayResponseOutput", "responseType"),
            type = "string",
            name = "responseType",
            target_id = prelude.String.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "UpdateGatewayResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "UpdateGatewayResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "UpdateGatewayResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultResponse = schema.new({
            id = id.from(_N, "UpdateGatewayResponseOutput", "defaultResponse"),
            type = "boolean",
            name = "defaultResponse",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateIntegrationInput = schema.new({
    id = id.from(_N, "UpdateIntegrationInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateIntegrationInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "UpdateIntegrationInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "UpdateIntegrationInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateIntegrationInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateIntegrationOutput = schema.new({
    id = id.from(_N, "UpdateIntegrationOutput"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        httpMethod = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        connectionType = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "connectionType"),
            type = "string",
            name = "connectionType",
            target_id = prelude.String.id,
        }),
        connectionId = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "connectionId"),
            type = "string",
            name = "connectionId",
            target_id = prelude.String.id,
        }),
        credentials = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "credentials"),
            type = "string",
            name = "credentials",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestTemplates = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "requestTemplates"),
            type = "map",
            name = "requestTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        passthroughBehavior = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "passthroughBehavior"),
            type = "string",
            name = "passthroughBehavior",
            target_id = prelude.String.id,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "timeoutInMillis"),
            type = "integer",
            name = "timeoutInMillis",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        cacheNamespace = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "cacheNamespace"),
            type = "string",
            name = "cacheNamespace",
            target_id = prelude.String.id,
        }),
        cacheKeyParameters = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "cacheKeyParameters"),
            type = "list",
            name = "cacheKeyParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        integrationResponses = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "integrationResponses"),
            type = "map",
            name = "integrationResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.IntegrationResponse,
        }),
        tlsConfig = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "tlsConfig"),
            type = "structure",
            name = "tlsConfig",
            target_id = id.from(_N, "TlsConfig"),
            target = M.TlsConfig,
        }),
        responseTransferMode = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "responseTransferMode"),
            type = "string",
            name = "responseTransferMode",
            target_id = prelude.String.id,
        }),
        integrationTarget = schema.new({
            id = id.from(_N, "UpdateIntegrationOutput", "integrationTarget"),
            type = "string",
            name = "integrationTarget",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateIntegrationResponseInput = schema.new({
    id = id.from(_N, "UpdateIntegrationResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateIntegrationResponseOutput = schema.new({
    id = id.from(_N, "UpdateIntegrationResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        selectionPattern = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseOutput", "selectionPattern"),
            type = "string",
            name = "selectionPattern",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        responseTemplates = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseOutput", "responseTemplates"),
            type = "map",
            name = "responseTemplates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        contentHandling = schema.new({
            id = id.from(_N, "UpdateIntegrationResponseOutput", "contentHandling"),
            type = "string",
            name = "contentHandling",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMethodInput = schema.new({
    id = id.from(_N, "UpdateMethodInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateMethodInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "UpdateMethodInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "UpdateMethodInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateMethodInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateMethodOutput = schema.new({
    id = id.from(_N, "UpdateMethodOutput"),
    type = "structure",
    members = {
        httpMethod = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
        }),
        authorizationType = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "authorizationType"),
            type = "string",
            name = "authorizationType",
            target_id = prelude.String.id,
        }),
        authorizerId = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "authorizerId"),
            type = "string",
            name = "authorizerId",
            target_id = prelude.String.id,
        }),
        apiKeyRequired = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "apiKeyRequired"),
            type = "boolean",
            name = "apiKeyRequired",
            target_id = prelude.Boolean.id,
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
        }),
        operationName = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "operationName"),
            type = "string",
            name = "operationName",
            target_id = prelude.String.id,
        }),
        requestParameters = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "requestParameters"),
            type = "map",
            name = "requestParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        requestModels = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "requestModels"),
            type = "map",
            name = "requestModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        methodResponses = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "methodResponses"),
            type = "map",
            name = "methodResponses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodResponse,
        }),
        methodIntegration = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "methodIntegration"),
            type = "structure",
            name = "methodIntegration",
            target_id = id.from(_N, "Integration"),
            target = M.Integration,
        }),
        authorizationScopes = schema.new({
            id = id.from(_N, "UpdateMethodOutput", "authorizationScopes"),
            type = "list",
            name = "authorizationScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateMethodResponseInput = schema.new({
    id = id.from(_N, "UpdateMethodResponseInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateMethodResponseInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "UpdateMethodResponseInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        httpMethod = schema.new({
            id = id.from(_N, "UpdateMethodResponseInput", "httpMethod"),
            type = "string",
            name = "httpMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "UpdateMethodResponseInput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateMethodResponseInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateMethodResponseOutput = schema.new({
    id = id.from(_N, "UpdateMethodResponseOutput"),
    type = "structure",
    members = {
        statusCode = schema.new({
            id = id.from(_N, "UpdateMethodResponseOutput", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        responseParameters = schema.new({
            id = id.from(_N, "UpdateMethodResponseOutput", "responseParameters"),
            type = "map",
            name = "responseParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Boolean,
        }),
        responseModels = schema.new({
            id = id.from(_N, "UpdateMethodResponseOutput", "responseModels"),
            type = "map",
            name = "responseModels",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateModelInput = schema.new({
    id = id.from(_N, "UpdateModelInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateModelInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        modelName = schema.new({
            id = id.from(_N, "UpdateModelInput", "modelName"),
            type = "string",
            name = "modelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateModelInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateModelOutput = schema.new({
    id = id.from(_N, "UpdateModelOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateModelOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateModelOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateModelOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "UpdateModelOutput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "UpdateModelOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRequestValidatorInput = schema.new({
    id = id.from(_N, "UpdateRequestValidatorInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateRequestValidatorInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        requestValidatorId = schema.new({
            id = id.from(_N, "UpdateRequestValidatorInput", "requestValidatorId"),
            type = "string",
            name = "requestValidatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateRequestValidatorInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateRequestValidatorOutput = schema.new({
    id = id.from(_N, "UpdateRequestValidatorOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateRequestValidatorOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRequestValidatorOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        validateRequestBody = schema.new({
            id = id.from(_N, "UpdateRequestValidatorOutput", "validateRequestBody"),
            type = "boolean",
            name = "validateRequestBody",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        validateRequestParameters = schema.new({
            id = id.from(_N, "UpdateRequestValidatorOutput", "validateRequestParameters"),
            type = "boolean",
            name = "validateRequestParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.UpdateResourceInput = schema.new({
    id = id.from(_N, "UpdateResourceInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateResourceInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "UpdateResourceInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateResourceInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateResourceOutput = schema.new({
    id = id.from(_N, "UpdateResourceOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateResourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        parentId = schema.new({
            id = id.from(_N, "UpdateResourceOutput", "parentId"),
            type = "string",
            name = "parentId",
            target_id = prelude.String.id,
        }),
        pathPart = schema.new({
            id = id.from(_N, "UpdateResourceOutput", "pathPart"),
            type = "string",
            name = "pathPart",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "UpdateResourceOutput", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        resourceMethods = schema.new({
            id = id.from(_N, "UpdateResourceOutput", "resourceMethods"),
            type = "map",
            name = "resourceMethods",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Method,
        }),
    },
})

M.UpdateRestApiInput = schema.new({
    id = id.from(_N, "UpdateRestApiInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateRestApiInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateRestApiInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateRestApiOutput = schema.new({
    id = id.from(_N, "UpdateRestApiOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        version = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        warnings = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "warnings"),
            type = "list",
            name = "warnings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        binaryMediaTypes = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "binaryMediaTypes"),
            type = "list",
            name = "binaryMediaTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        minimumCompressionSize = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "minimumCompressionSize"),
            type = "integer",
            name = "minimumCompressionSize",
            target_id = prelude.Integer.id,
        }),
        apiKeySource = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "apiKeySource"),
            type = "string",
            name = "apiKeySource",
            target_id = prelude.String.id,
        }),
        endpointConfiguration = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "endpointConfiguration"),
            type = "structure",
            name = "endpointConfiguration",
            target_id = id.from(_N, "EndpointConfiguration"),
            target = M.EndpointConfiguration,
        }),
        policy = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        disableExecuteApiEndpoint = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "disableExecuteApiEndpoint"),
            type = "boolean",
            name = "disableExecuteApiEndpoint",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        rootResourceId = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "rootResourceId"),
            type = "string",
            name = "rootResourceId",
            target_id = prelude.String.id,
        }),
        securityPolicy = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "securityPolicy"),
            type = "string",
            name = "securityPolicy",
            target_id = prelude.String.id,
        }),
        endpointAccessMode = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "endpointAccessMode"),
            type = "string",
            name = "endpointAccessMode",
            target_id = prelude.String.id,
        }),
        apiStatus = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "apiStatus"),
            type = "string",
            name = "apiStatus",
            target_id = prelude.String.id,
        }),
        apiStatusMessage = schema.new({
            id = id.from(_N, "UpdateRestApiOutput", "apiStatusMessage"),
            type = "string",
            name = "apiStatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateStageInput = schema.new({
    id = id.from(_N, "UpdateStageInput"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "UpdateStageInput", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        stageName = schema.new({
            id = id.from(_N, "UpdateStageInput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateStageInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateStageOutput = schema.new({
    id = id.from(_N, "UpdateStageOutput"),
    type = "structure",
    members = {
        deploymentId = schema.new({
            id = id.from(_N, "UpdateStageOutput", "deploymentId"),
            type = "string",
            name = "deploymentId",
            target_id = prelude.String.id,
        }),
        clientCertificateId = schema.new({
            id = id.from(_N, "UpdateStageOutput", "clientCertificateId"),
            type = "string",
            name = "clientCertificateId",
            target_id = prelude.String.id,
        }),
        stageName = schema.new({
            id = id.from(_N, "UpdateStageOutput", "stageName"),
            type = "string",
            name = "stageName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateStageOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        cacheClusterEnabled = schema.new({
            id = id.from(_N, "UpdateStageOutput", "cacheClusterEnabled"),
            type = "boolean",
            name = "cacheClusterEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        cacheClusterSize = schema.new({
            id = id.from(_N, "UpdateStageOutput", "cacheClusterSize"),
            type = "string",
            name = "cacheClusterSize",
            target_id = prelude.String.id,
        }),
        cacheClusterStatus = schema.new({
            id = id.from(_N, "UpdateStageOutput", "cacheClusterStatus"),
            type = "string",
            name = "cacheClusterStatus",
            target_id = prelude.String.id,
        }),
        methodSettings = schema.new({
            id = id.from(_N, "UpdateStageOutput", "methodSettings"),
            type = "map",
            name = "methodSettings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MethodSetting,
        }),
        variables = schema.new({
            id = id.from(_N, "UpdateStageOutput", "variables"),
            type = "map",
            name = "variables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        documentationVersion = schema.new({
            id = id.from(_N, "UpdateStageOutput", "documentationVersion"),
            type = "string",
            name = "documentationVersion",
            target_id = prelude.String.id,
        }),
        accessLogSettings = schema.new({
            id = id.from(_N, "UpdateStageOutput", "accessLogSettings"),
            type = "structure",
            name = "accessLogSettings",
            target_id = id.from(_N, "AccessLogSettings"),
            target = M.AccessLogSettings,
        }),
        canarySettings = schema.new({
            id = id.from(_N, "UpdateStageOutput", "canarySettings"),
            type = "structure",
            name = "canarySettings",
            target_id = id.from(_N, "CanarySettings"),
            target = M.CanarySettings,
        }),
        tracingEnabled = schema.new({
            id = id.from(_N, "UpdateStageOutput", "tracingEnabled"),
            type = "boolean",
            name = "tracingEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        webAclArn = schema.new({
            id = id.from(_N, "UpdateStageOutput", "webAclArn"),
            type = "string",
            name = "webAclArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateStageOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdDate = schema.new({
            id = id.from(_N, "UpdateStageOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "UpdateStageOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateUsageInput = schema.new({
    id = id.from(_N, "UpdateUsageInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "UpdateUsageInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        keyId = schema.new({
            id = id.from(_N, "UpdateUsageInput", "keyId"),
            type = "string",
            name = "keyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateUsageInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateUsageOutput = schema.new({
    id = id.from(_N, "UpdateUsageOutput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "UpdateUsageOutput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
        }),
        startDate = schema.new({
            id = id.from(_N, "UpdateUsageOutput", "startDate"),
            type = "string",
            name = "startDate",
            target_id = prelude.String.id,
        }),
        endDate = schema.new({
            id = id.from(_N, "UpdateUsageOutput", "endDate"),
            type = "string",
            name = "endDate",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "UpdateUsageOutput", "items"),
            type = "map",
            name = "items",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.JSON_NAME] = { name = "values" },
            },
        }),
        position = schema.new({
            id = id.from(_N, "UpdateUsageOutput", "position"),
            type = "string",
            name = "position",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "position" },
            },
        }),
    },
})

M.UpdateUsagePlanInput = schema.new({
    id = id.from(_N, "UpdateUsagePlanInput"),
    type = "structure",
    members = {
        usagePlanId = schema.new({
            id = id.from(_N, "UpdateUsagePlanInput", "usagePlanId"),
            type = "string",
            name = "usagePlanId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateUsagePlanInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateUsagePlanOutput = schema.new({
    id = id.from(_N, "UpdateUsagePlanOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        apiStages = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "apiStages"),
            type = "list",
            name = "apiStages",
            target_id = prelude.Document.id,
            list_member = M.ApiStage,
        }),
        throttle = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "throttle"),
            type = "structure",
            name = "throttle",
            target_id = id.from(_N, "ThrottleSettings"),
            target = M.ThrottleSettings,
        }),
        quota = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "quota"),
            type = "structure",
            name = "quota",
            target_id = id.from(_N, "QuotaSettings"),
            target = M.QuotaSettings,
        }),
        productCode = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "productCode"),
            type = "string",
            name = "productCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateUsagePlanOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateVpcLinkInput = schema.new({
    id = id.from(_N, "UpdateVpcLinkInput"),
    type = "structure",
    members = {
        vpcLinkId = schema.new({
            id = id.from(_N, "UpdateVpcLinkInput", "vpcLinkId"),
            type = "string",
            name = "vpcLinkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        patchOperations = schema.new({
            id = id.from(_N, "UpdateVpcLinkInput", "patchOperations"),
            type = "list",
            name = "patchOperations",
            target_id = prelude.Document.id,
            list_member = M.PatchOperation,
        }),
    },
})

M.UpdateVpcLinkOutput = schema.new({
    id = id.from(_N, "UpdateVpcLinkOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetArns = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "targetArns"),
            type = "list",
            name = "targetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateVpcLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

return M
