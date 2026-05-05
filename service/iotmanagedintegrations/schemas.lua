local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotmanagedintegrations"

local M = {}

M.AbortConfigCriteria = schema.new({
    id = id.from(_N, "AbortConfigCriteria"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "AbortConfigCriteria", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        FailureType = schema.new({
            id = id.from(_N, "AbortConfigCriteria", "FailureType"),
            type = "string",
            name = "FailureType",
            target_id = prelude.String.id,
        }),
        MinNumberOfExecutedThings = schema.new({
            id = id.from(_N, "AbortConfigCriteria", "MinNumberOfExecutedThings"),
            type = "integer",
            name = "MinNumberOfExecutedThings",
            target_id = prelude.Integer.id,
        }),
        ThresholdPercentage = schema.new({
            id = id.from(_N, "AbortConfigCriteria", "ThresholdPercentage"),
            type = "double",
            name = "ThresholdPercentage",
            target_id = prelude.Double.id,
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AccountAssociationItem = schema.new({
    id = id.from(_N, "AccountAssociationItem"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "AccountAssociationItem", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationState = schema.new({
            id = id.from(_N, "AccountAssociationItem", "AssociationState"),
            type = "string",
            name = "AssociationState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "AccountAssociationItem", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "AccountAssociationItem", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "AccountAssociationItem", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "AccountAssociationItem", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "AccountAssociationItem", "Arn"),
            type = "string",
            name = "Arn",
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GeneralAuthorizationName = schema.new({
    id = id.from(_N, "GeneralAuthorizationName"),
    type = "structure",
    members = {
        AuthMaterialName = schema.new({
            id = id.from(_N, "GeneralAuthorizationName", "AuthMaterialName"),
            type = "string",
            name = "AuthMaterialName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAccountAssociationInput = schema.new({
    id = id.from(_N, "CreateAccountAssociationInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        GeneralAuthorization = schema.new({
            id = id.from(_N, "CreateAccountAssociationInput", "GeneralAuthorization"),
            type = "structure",
            name = "GeneralAuthorization",
            target_id = id.from(_N, "GeneralAuthorizationName"),
            target = M.GeneralAuthorizationName,
        }),
    },
})

M.CreateAccountAssociationOutput = schema.new({
    id = id.from(_N, "CreateAccountAssociationOutput"),
    type = "structure",
    members = {
        OAuthAuthorizationUrl = schema.new({
            id = id.from(_N, "CreateAccountAssociationOutput", "OAuthAuthorizationUrl"),
            type = "string",
            name = "OAuthAuthorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "" },
            },
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "CreateAccountAssociationOutput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationState = schema.new({
            id = id.from(_N, "CreateAccountAssociationOutput", "AssociationState"),
            type = "string",
            name = "AssociationState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateAccountAssociationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "UnauthorizedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAccountAssociationInput = schema.new({
    id = id.from(_N, "DeleteAccountAssociationInput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "DeleteAccountAssociationInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccountAssociationOutput = schema.new({
    id = id.from(_N, "DeleteAccountAssociationOutput"),
    type = "structure",
})

M.GetAccountAssociationInput = schema.new({
    id = id.from(_N, "GetAccountAssociationInput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "GetAccountAssociationInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAccountAssociationOutput = schema.new({
    id = id.from(_N, "GetAccountAssociationOutput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssociationState = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "AssociationState"),
            type = "string",
            name = "AssociationState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        OAuthAuthorizationUrl = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "OAuthAuthorizationUrl"),
            type = "string",
            name = "OAuthAuthorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "" },
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        GeneralAuthorization = schema.new({
            id = id.from(_N, "GetAccountAssociationOutput", "GeneralAuthorization"),
            type = "structure",
            name = "GeneralAuthorization",
            target_id = id.from(_N, "GeneralAuthorizationName"),
            target = M.GeneralAuthorizationName,
        }),
    },
})

M.ListAccountAssociationsInput = schema.new({
    id = id.from(_N, "ListAccountAssociationsInput"),
    type = "structure",
    members = {
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "ListAccountAssociationsInput", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ConnectorDestinationId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAccountAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListAccountAssociationsOutput = schema.new({
    id = id.from(_N, "ListAccountAssociationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListAccountAssociationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.AccountAssociationItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAccountAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAccountAssociationRefreshInput = schema.new({
    id = id.from(_N, "StartAccountAssociationRefreshInput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "StartAccountAssociationRefreshInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartAccountAssociationRefreshOutput = schema.new({
    id = id.from(_N, "StartAccountAssociationRefreshOutput"),
    type = "structure",
    members = {
        OAuthAuthorizationUrl = schema.new({
            id = id.from(_N, "StartAccountAssociationRefreshOutput", "OAuthAuthorizationUrl"),
            type = "string",
            name = "OAuthAuthorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "" },
            },
        }),
    },
})

M.UpdateAccountAssociationInput = schema.new({
    id = id.from(_N, "UpdateAccountAssociationInput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "UpdateAccountAssociationInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateAccountAssociationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateAccountAssociationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccountAssociationOutput = schema.new({
    id = id.from(_N, "UpdateAccountAssociationOutput"),
    type = "structure",
})

M.SecretsManager = schema.new({
    id = id.from(_N, "SecretsManager"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "SecretsManager", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "SecretsManager", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthMaterial = schema.new({
    id = id.from(_N, "AuthMaterial"),
    type = "structure",
    members = {
        SecretsManager = schema.new({
            id = id.from(_N, "AuthMaterial", "SecretsManager"),
            type = "structure",
            name = "SecretsManager",
            target_id = id.from(_N, "SecretsManager"),
            target = M.SecretsManager,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthMaterialName = schema.new({
            id = id.from(_N, "AuthMaterial", "AuthMaterialName"),
            type = "string",
            name = "AuthMaterialName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProactiveRefreshTokenRenewal = schema.new({
    id = id.from(_N, "ProactiveRefreshTokenRenewal"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "ProactiveRefreshTokenRenewal", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        DaysBeforeRenewal = schema.new({
            id = id.from(_N, "ProactiveRefreshTokenRenewal", "DaysBeforeRenewal"),
            type = "integer",
            name = "DaysBeforeRenewal",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OAuthConfig = schema.new({
    id = id.from(_N, "OAuthConfig"),
    type = "structure",
    members = {
        authUrl = schema.new({
            id = id.from(_N, "OAuthConfig", "authUrl"),
            type = "string",
            name = "authUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tokenUrl = schema.new({
            id = id.from(_N, "OAuthConfig", "tokenUrl"),
            type = "string",
            name = "tokenUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scope = schema.new({
            id = id.from(_N, "OAuthConfig", "scope"),
            type = "string",
            name = "scope",
            target_id = prelude.String.id,
        }),
        tokenEndpointAuthenticationScheme = schema.new({
            id = id.from(_N, "OAuthConfig", "tokenEndpointAuthenticationScheme"),
            type = "string",
            name = "tokenEndpointAuthenticationScheme",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oAuthCompleteRedirectUrl = schema.new({
            id = id.from(_N, "OAuthConfig", "oAuthCompleteRedirectUrl"),
            type = "string",
            name = "oAuthCompleteRedirectUrl",
            target_id = prelude.String.id,
        }),
        proactiveRefreshTokenRenewal = schema.new({
            id = id.from(_N, "OAuthConfig", "proactiveRefreshTokenRenewal"),
            type = "structure",
            name = "proactiveRefreshTokenRenewal",
            target_id = id.from(_N, "ProactiveRefreshTokenRenewal"),
            target = M.ProactiveRefreshTokenRenewal,
        }),
    },
})

M.AuthConfig = schema.new({
    id = id.from(_N, "AuthConfig"),
    type = "structure",
    members = {
        oAuth = schema.new({
            id = id.from(_N, "AuthConfig", "oAuth"),
            type = "structure",
            name = "oAuth",
            target_id = id.from(_N, "OAuthConfig"),
            target = M.OAuthConfig,
        }),
        GeneralAuthorization = schema.new({
            id = id.from(_N, "AuthConfig", "GeneralAuthorization"),
            type = "list",
            name = "GeneralAuthorization",
            target_id = prelude.Document.id,
            list_member = M.AuthMaterial,
        }),
    },
})

M.GeneralAuthorizationUpdate = schema.new({
    id = id.from(_N, "GeneralAuthorizationUpdate"),
    type = "structure",
    members = {
        AuthMaterialsToAdd = schema.new({
            id = id.from(_N, "GeneralAuthorizationUpdate", "AuthMaterialsToAdd"),
            type = "list",
            name = "AuthMaterialsToAdd",
            target_id = prelude.Document.id,
            list_member = M.AuthMaterial,
        }),
        AuthMaterialsToUpdate = schema.new({
            id = id.from(_N, "GeneralAuthorizationUpdate", "AuthMaterialsToUpdate"),
            type = "list",
            name = "AuthMaterialsToUpdate",
            target_id = prelude.Document.id,
            list_member = M.AuthMaterial,
        }),
    },
})

M.OAuthUpdate = schema.new({
    id = id.from(_N, "OAuthUpdate"),
    type = "structure",
    members = {
        oAuthCompleteRedirectUrl = schema.new({
            id = id.from(_N, "OAuthUpdate", "oAuthCompleteRedirectUrl"),
            type = "string",
            name = "oAuthCompleteRedirectUrl",
            target_id = prelude.String.id,
        }),
        proactiveRefreshTokenRenewal = schema.new({
            id = id.from(_N, "OAuthUpdate", "proactiveRefreshTokenRenewal"),
            type = "structure",
            name = "proactiveRefreshTokenRenewal",
            target_id = id.from(_N, "ProactiveRefreshTokenRenewal"),
            target = M.ProactiveRefreshTokenRenewal,
        }),
    },
})

M.AuthConfigUpdate = schema.new({
    id = id.from(_N, "AuthConfigUpdate"),
    type = "structure",
    members = {
        oAuthUpdate = schema.new({
            id = id.from(_N, "AuthConfigUpdate", "oAuthUpdate"),
            type = "structure",
            name = "oAuthUpdate",
            target_id = id.from(_N, "OAuthUpdate"),
            target = M.OAuthUpdate,
        }),
        GeneralAuthorizationUpdate = schema.new({
            id = id.from(_N, "AuthConfigUpdate", "GeneralAuthorizationUpdate"),
            type = "structure",
            name = "GeneralAuthorizationUpdate",
            target_id = id.from(_N, "GeneralAuthorizationUpdate"),
            target = M.GeneralAuthorizationUpdate,
        }),
    },
})

M.CapabilityAction = schema.new({
    id = id.from(_N, "CapabilityAction"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CapabilityAction", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ref = schema.new({
            id = id.from(_N, "CapabilityAction", "ref"),
            type = "string",
            name = "ref",
            target_id = prelude.String.id,
        }),
        actionTraceId = schema.new({
            id = id.from(_N, "CapabilityAction", "actionTraceId"),
            type = "string",
            name = "actionTraceId",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "CapabilityAction", "parameters"),
            type = "document",
            name = "parameters",
            target_id = prelude.Document.id,
        }),
    },
})

M.CapabilityReportCapability = schema.new({
    id = id.from(_N, "CapabilityReportCapability"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "properties"),
            type = "list",
            name = "properties",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actions = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        events = schema.new({
            id = id.from(_N, "CapabilityReportCapability", "events"),
            type = "list",
            name = "events",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapabilityReportEndpoint = schema.new({
    id = id.from(_N, "CapabilityReportEndpoint"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CapabilityReportEndpoint", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deviceTypes = schema.new({
            id = id.from(_N, "CapabilityReportEndpoint", "deviceTypes"),
            type = "list",
            name = "deviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "CapabilityReportEndpoint", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = M.CapabilityReportCapability,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapabilityReport = schema.new({
    id = id.from(_N, "CapabilityReport"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "CapabilityReport", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nodeId = schema.new({
            id = id.from(_N, "CapabilityReport", "nodeId"),
            type = "string",
            name = "nodeId",
            target_id = prelude.String.id,
        }),
        endpoints = schema.new({
            id = id.from(_N, "CapabilityReport", "endpoints"),
            type = "list",
            name = "endpoints",
            target_id = prelude.Document.id,
            list_member = M.CapabilityReportEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapabilitySchemaItem = schema.new({
    id = id.from(_N, "CapabilitySchemaItem"),
    type = "structure",
    members = {
        Format = schema.new({
            id = id.from(_N, "CapabilitySchemaItem", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CapabilityId = schema.new({
            id = id.from(_N, "CapabilitySchemaItem", "CapabilityId"),
            type = "string",
            name = "CapabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExtrinsicId = schema.new({
            id = id.from(_N, "CapabilitySchemaItem", "ExtrinsicId"),
            type = "string",
            name = "ExtrinsicId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExtrinsicVersion = schema.new({
            id = id.from(_N, "CapabilitySchemaItem", "ExtrinsicVersion"),
            type = "integer",
            name = "ExtrinsicVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Schema = schema.new({
            id = id.from(_N, "CapabilitySchemaItem", "Schema"),
            type = "document",
            name = "Schema",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LambdaConfig = schema.new({
    id = id.from(_N, "LambdaConfig"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "LambdaConfig", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EndpointConfig = schema.new({
    id = id.from(_N, "EndpointConfig"),
    type = "structure",
    members = {
        lambda = schema.new({
            id = id.from(_N, "EndpointConfig", "lambda"),
            type = "structure",
            name = "lambda",
            target_id = id.from(_N, "LambdaConfig"),
            target = M.LambdaConfig,
        }),
    },
})

M.CreateCloudConnectorInput = schema.new({
    id = id.from(_N, "CreateCloudConnectorInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateCloudConnectorInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointConfig = schema.new({
            id = id.from(_N, "CreateCloudConnectorInput", "EndpointConfig"),
            type = "structure",
            name = "EndpointConfig",
            target_id = id.from(_N, "EndpointConfig"),
            target = M.EndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateCloudConnectorInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "CreateCloudConnectorInput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCloudConnectorInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateCloudConnectorOutput = schema.new({
    id = id.from(_N, "CreateCloudConnectorOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateCloudConnectorOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCloudConnectorInput = schema.new({
    id = id.from(_N, "DeleteCloudConnectorInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteCloudConnectorInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCloudConnectorOutput = schema.new({
    id = id.from(_N, "DeleteCloudConnectorOutput"),
    type = "structure",
})

M.GetCloudConnectorInput = schema.new({
    id = id.from(_N, "GetCloudConnectorInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetCloudConnectorInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCloudConnectorOutput = schema.new({
    id = id.from(_N, "GetCloudConnectorOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointConfig = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "EndpointConfig"),
            type = "structure",
            name = "EndpointConfig",
            target_id = id.from(_N, "EndpointConfig"),
            target = M.EndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "GetCloudConnectorOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCloudConnectorsInput = schema.new({
    id = id.from(_N, "ListCloudConnectorsInput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListCloudConnectorsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Type" },
            },
        }),
        LambdaArn = schema.new({
            id = id.from(_N, "ListCloudConnectorsInput", "LambdaArn"),
            type = "string",
            name = "LambdaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "LambdaArn" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCloudConnectorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCloudConnectorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ConnectorItem = schema.new({
    id = id.from(_N, "ConnectorItem"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ConnectorItem", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndpointConfig = schema.new({
            id = id.from(_N, "ConnectorItem", "EndpointConfig"),
            type = "structure",
            name = "EndpointConfig",
            target_id = id.from(_N, "EndpointConfig"),
            target = M.EndpointConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ConnectorItem", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EndpointType = schema.new({
            id = id.from(_N, "ConnectorItem", "EndpointType"),
            type = "string",
            name = "EndpointType",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ConnectorItem", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ConnectorItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCloudConnectorsOutput = schema.new({
    id = id.from(_N, "ListCloudConnectorsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListCloudConnectorsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ConnectorItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCloudConnectorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCloudConnectorInput = schema.new({
    id = id.from(_N, "UpdateCloudConnectorInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateCloudConnectorInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateCloudConnectorInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateCloudConnectorInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCloudConnectorOutput = schema.new({
    id = id.from(_N, "UpdateCloudConnectorOutput"),
    type = "structure",
})

M.CommandCapability = schema.new({
    id = id.from(_N, "CommandCapability"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CommandCapability", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CommandCapability", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "CommandCapability", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actions = schema.new({
            id = id.from(_N, "CommandCapability", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.CapabilityAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CommandEndpoint = schema.new({
    id = id.from(_N, "CommandEndpoint"),
    type = "structure",
    members = {
        endpointId = schema.new({
            id = id.from(_N, "CommandEndpoint", "endpointId"),
            type = "string",
            name = "endpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "CommandEndpoint", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = M.CommandCapability,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationError = schema.new({
    id = id.from(_N, "ConfigurationError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ConfigurationError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ConfigurationError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConfigurationStatus = schema.new({
    id = id.from(_N, "ConfigurationStatus"),
    type = "structure",
    members = {
        error = schema.new({
            id = id.from(_N, "ConfigurationStatus", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ConfigurationError"),
            target = M.ConfigurationError,
        }),
        state = schema.new({
            id = id.from(_N, "ConfigurationStatus", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectorDestinationSummary = schema.new({
    id = id.from(_N, "ConnectorDestinationSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ConnectorDestinationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ConnectorDestinationSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CloudConnectorId = schema.new({
            id = id.from(_N, "ConnectorDestinationSummary", "CloudConnectorId"),
            type = "string",
            name = "CloudConnectorId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ConnectorDestinationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectorDestinationInput = schema.new({
    id = id.from(_N, "CreateConnectorDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CloudConnectorId = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "CloudConnectorId"),
            type = "string",
            name = "CloudConnectorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthType = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthConfig = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "AuthConfig"),
            type = "structure",
            name = "AuthConfig",
            target_id = id.from(_N, "AuthConfig"),
            target = M.AuthConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SecretsManager = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "SecretsManager"),
            type = "structure",
            name = "SecretsManager",
            target_id = id.from(_N, "SecretsManager"),
            target = M.SecretsManager,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateConnectorDestinationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateConnectorDestinationOutput = schema.new({
    id = id.from(_N, "CreateConnectorDestinationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateConnectorDestinationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectorDestinationInput = schema.new({
    id = id.from(_N, "DeleteConnectorDestinationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteConnectorDestinationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectorDestinationOutput = schema.new({
    id = id.from(_N, "DeleteConnectorDestinationOutput"),
    type = "structure",
})

M.GetConnectorDestinationInput = schema.new({
    id = id.from(_N, "GetConnectorDestinationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetConnectorDestinationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectorDestinationOutput = schema.new({
    id = id.from(_N, "GetConnectorDestinationOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CloudConnectorId = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "CloudConnectorId"),
            type = "string",
            name = "CloudConnectorId",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AuthType = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthConfig = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "AuthConfig"),
            type = "structure",
            name = "AuthConfig",
            target_id = id.from(_N, "AuthConfig"),
            target = M.AuthConfig,
        }),
        SecretsManager = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "SecretsManager"),
            type = "structure",
            name = "SecretsManager",
            target_id = id.from(_N, "SecretsManager"),
            target = M.SecretsManager,
        }),
        OAuthCompleteRedirectUrl = schema.new({
            id = id.from(_N, "GetConnectorDestinationOutput", "OAuthCompleteRedirectUrl"),
            type = "string",
            name = "OAuthCompleteRedirectUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorDestinationsInput = schema.new({
    id = id.from(_N, "ListConnectorDestinationsInput"),
    type = "structure",
    members = {
        CloudConnectorId = schema.new({
            id = id.from(_N, "ListConnectorDestinationsInput", "CloudConnectorId"),
            type = "string",
            name = "CloudConnectorId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CloudConnectorId" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDestinationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectorDestinationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListConnectorDestinationsOutput = schema.new({
    id = id.from(_N, "ListConnectorDestinationsOutput"),
    type = "structure",
    members = {
        ConnectorDestinationList = schema.new({
            id = id.from(_N, "ListConnectorDestinationsOutput", "ConnectorDestinationList"),
            type = "list",
            name = "ConnectorDestinationList",
            target_id = prelude.Document.id,
            list_member = M.ConnectorDestinationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorDestinationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectorDestinationInput = schema.new({
    id = id.from(_N, "UpdateConnectorDestinationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        AuthType = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "AuthType"),
            type = "string",
            name = "AuthType",
            target_id = prelude.String.id,
        }),
        AuthConfig = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "AuthConfig"),
            type = "structure",
            name = "AuthConfig",
            target_id = id.from(_N, "AuthConfigUpdate"),
            target = M.AuthConfigUpdate,
        }),
        SecretsManager = schema.new({
            id = id.from(_N, "UpdateConnectorDestinationInput", "SecretsManager"),
            type = "structure",
            name = "SecretsManager",
            target_id = id.from(_N, "SecretsManager"),
            target = M.SecretsManager,
        }),
    },
})

M.UpdateConnectorDestinationOutput = schema.new({
    id = id.from(_N, "UpdateConnectorDestinationOutput"),
    type = "structure",
})

M.CreateCredentialLockerInput = schema.new({
    id = id.from(_N, "CreateCredentialLockerInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateCredentialLockerInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateCredentialLockerInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCredentialLockerInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateCredentialLockerOutput = schema.new({
    id = id.from(_N, "CreateCredentialLockerOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateCredentialLockerOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateCredentialLockerOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateCredentialLockerOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
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
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDestinationInput = schema.new({
    id = id.from(_N, "CreateDestinationInput"),
    type = "structure",
    members = {
        DeliveryDestinationArn = schema.new({
            id = id.from(_N, "CreateDestinationInput", "DeliveryDestinationArn"),
            type = "string",
            name = "DeliveryDestinationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeliveryDestinationType = schema.new({
            id = id.from(_N, "CreateDestinationInput", "DeliveryDestinationType"),
            type = "string",
            name = "DeliveryDestinationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RoleArn = schema.new({
            id = id.from(_N, "CreateDestinationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateDestinationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDestinationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDestinationOutput = schema.new({
    id = id.from(_N, "CreateDestinationOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateDestinationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEventLogConfigurationInput = schema.new({
    id = id.from(_N, "CreateEventLogConfigurationInput"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "CreateEventLogConfigurationInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "CreateEventLogConfigurationInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        EventLogLevel = schema.new({
            id = id.from(_N, "CreateEventLogConfigurationInput", "EventLogLevel"),
            type = "string",
            name = "EventLogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateEventLogConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateEventLogConfigurationOutput = schema.new({
    id = id.from(_N, "CreateEventLogConfigurationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateEventLogConfigurationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.WiFiSimpleSetupConfiguration = schema.new({
    id = id.from(_N, "WiFiSimpleSetupConfiguration"),
    type = "structure",
    members = {
        EnableAsProvisioner = schema.new({
            id = id.from(_N, "WiFiSimpleSetupConfiguration", "EnableAsProvisioner"),
            type = "boolean",
            name = "EnableAsProvisioner",
            target_id = prelude.Boolean.id,
        }),
        EnableAsProvisionee = schema.new({
            id = id.from(_N, "WiFiSimpleSetupConfiguration", "EnableAsProvisionee"),
            type = "boolean",
            name = "EnableAsProvisionee",
            target_id = prelude.Boolean.id,
        }),
        TimeoutInMinutes = schema.new({
            id = id.from(_N, "WiFiSimpleSetupConfiguration", "TimeoutInMinutes"),
            type = "integer",
            name = "TimeoutInMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateManagedThingInput = schema.new({
    id = id.from(_N, "CreateManagedThingInput"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        CredentialLockerId = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "CredentialLockerId"),
            type = "string",
            name = "CredentialLockerId",
            target_id = prelude.String.id,
        }),
        AuthenticationMaterial = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "AuthenticationMaterial"),
            type = "string",
            name = "AuthenticationMaterial",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMaterialType = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "AuthenticationMaterialType"),
            type = "string",
            name = "AuthenticationMaterialType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WiFiSimpleSetupConfiguration = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "WiFiSimpleSetupConfiguration"),
            type = "structure",
            name = "WiFiSimpleSetupConfiguration",
            target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
            target = M.WiFiSimpleSetupConfiguration,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        Brand = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Brand"),
            type = "string",
            name = "Brand",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CapabilityReport = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "CapabilityReport"),
            type = "structure",
            name = "CapabilityReport",
            target_id = id.from(_N, "CapabilityReport"),
            target = M.CapabilityReport,
        }),
        CapabilitySchemas = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "CapabilitySchemas"),
            type = "list",
            name = "CapabilitySchemas",
            target_id = prelude.Document.id,
            list_member = M.CapabilitySchemaItem,
        }),
        Capabilities = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Capabilities"),
            type = "string",
            name = "Capabilities",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Classification = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        MetaData = schema.new({
            id = id.from(_N, "CreateManagedThingInput", "MetaData"),
            type = "map",
            name = "MetaData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateManagedThingOutput = schema.new({
    id = id.from(_N, "CreateManagedThingOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateManagedThingOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateManagedThingOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CreateManagedThingOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateNotificationConfigurationInput = schema.new({
    id = id.from(_N, "CreateNotificationConfigurationInput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "CreateNotificationConfigurationInput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DestinationName = schema.new({
            id = id.from(_N, "CreateNotificationConfigurationInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateNotificationConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateNotificationConfigurationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "CreateNotificationConfigurationOutput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "CreateNotificationConfigurationOutput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
        }),
    },
})

M.ScheduleMaintenanceWindow = schema.new({
    id = id.from(_N, "ScheduleMaintenanceWindow"),
    type = "structure",
    members = {
        DurationInMinutes = schema.new({
            id = id.from(_N, "ScheduleMaintenanceWindow", "DurationInMinutes"),
            type = "integer",
            name = "DurationInMinutes",
            target_id = prelude.Integer.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ScheduleMaintenanceWindow", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
        }),
    },
})

M.OtaTaskSchedulingConfig = schema.new({
    id = id.from(_N, "OtaTaskSchedulingConfig"),
    type = "structure",
    members = {
        EndBehavior = schema.new({
            id = id.from(_N, "OtaTaskSchedulingConfig", "EndBehavior"),
            type = "string",
            name = "EndBehavior",
            target_id = prelude.String.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "OtaTaskSchedulingConfig", "EndTime"),
            type = "string",
            name = "EndTime",
            target_id = prelude.String.id,
        }),
        MaintenanceWindows = schema.new({
            id = id.from(_N, "OtaTaskSchedulingConfig", "MaintenanceWindows"),
            type = "list",
            name = "MaintenanceWindows",
            target_id = prelude.Document.id,
            list_member = M.ScheduleMaintenanceWindow,
        }),
        StartTime = schema.new({
            id = id.from(_N, "OtaTaskSchedulingConfig", "StartTime"),
            type = "string",
            name = "StartTime",
            target_id = prelude.String.id,
        }),
    },
})

M.RetryConfigCriteria = schema.new({
    id = id.from(_N, "RetryConfigCriteria"),
    type = "structure",
    members = {
        FailureType = schema.new({
            id = id.from(_N, "RetryConfigCriteria", "FailureType"),
            type = "string",
            name = "FailureType",
            target_id = prelude.String.id,
        }),
        MinNumberOfRetries = schema.new({
            id = id.from(_N, "RetryConfigCriteria", "MinNumberOfRetries"),
            type = "integer",
            name = "MinNumberOfRetries",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OtaTaskExecutionRetryConfig = schema.new({
    id = id.from(_N, "OtaTaskExecutionRetryConfig"),
    type = "structure",
    members = {
        RetryConfigCriteria = schema.new({
            id = id.from(_N, "OtaTaskExecutionRetryConfig", "RetryConfigCriteria"),
            type = "list",
            name = "RetryConfigCriteria",
            target_id = prelude.Document.id,
            list_member = M.RetryConfigCriteria,
        }),
    },
})

M.CreateOtaTaskInput = schema.new({
    id = id.from(_N, "CreateOtaTaskInput"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        S3Url = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "S3Url"),
            type = "string",
            name = "S3Url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "Target"),
            type = "list",
            name = "Target",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        TaskConfigurationId = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
        OtaMechanism = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "OtaMechanism"),
            type = "string",
            name = "OtaMechanism",
            target_id = prelude.String.id,
        }),
        OtaType = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "OtaType"),
            type = "string",
            name = "OtaType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OtaTargetQueryString = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "OtaTargetQueryString"),
            type = "string",
            name = "OtaTargetQueryString",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        OtaSchedulingConfig = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "OtaSchedulingConfig"),
            type = "structure",
            name = "OtaSchedulingConfig",
            target_id = id.from(_N, "OtaTaskSchedulingConfig"),
            target = M.OtaTaskSchedulingConfig,
        }),
        OtaTaskExecutionRetryConfig = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "OtaTaskExecutionRetryConfig"),
            type = "structure",
            name = "OtaTaskExecutionRetryConfig",
            target_id = id.from(_N, "OtaTaskExecutionRetryConfig"),
            target = M.OtaTaskExecutionRetryConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateOtaTaskInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateOtaTaskOutput = schema.new({
    id = id.from(_N, "CreateOtaTaskOutput"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "CreateOtaTaskOutput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "CreateOtaTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateOtaTaskOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.OtaTaskAbortConfig = schema.new({
    id = id.from(_N, "OtaTaskAbortConfig"),
    type = "structure",
    members = {
        AbortConfigCriteriaList = schema.new({
            id = id.from(_N, "OtaTaskAbortConfig", "AbortConfigCriteriaList"),
            type = "list",
            name = "AbortConfigCriteriaList",
            target_id = prelude.Document.id,
            list_member = M.AbortConfigCriteria,
        }),
    },
})

M.RolloutRateIncreaseCriteria = schema.new({
    id = id.from(_N, "RolloutRateIncreaseCriteria"),
    type = "structure",
    members = {
        numberOfNotifiedThings = schema.new({
            id = id.from(_N, "RolloutRateIncreaseCriteria", "numberOfNotifiedThings"),
            type = "integer",
            name = "numberOfNotifiedThings",
            target_id = prelude.Integer.id,
        }),
        numberOfSucceededThings = schema.new({
            id = id.from(_N, "RolloutRateIncreaseCriteria", "numberOfSucceededThings"),
            type = "integer",
            name = "numberOfSucceededThings",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ExponentialRolloutRate = schema.new({
    id = id.from(_N, "ExponentialRolloutRate"),
    type = "structure",
    members = {
        BaseRatePerMinute = schema.new({
            id = id.from(_N, "ExponentialRolloutRate", "BaseRatePerMinute"),
            type = "integer",
            name = "BaseRatePerMinute",
            target_id = prelude.Integer.id,
        }),
        IncrementFactor = schema.new({
            id = id.from(_N, "ExponentialRolloutRate", "IncrementFactor"),
            type = "double",
            name = "IncrementFactor",
            target_id = prelude.Double.id,
        }),
        RateIncreaseCriteria = schema.new({
            id = id.from(_N, "ExponentialRolloutRate", "RateIncreaseCriteria"),
            type = "structure",
            name = "RateIncreaseCriteria",
            target_id = id.from(_N, "RolloutRateIncreaseCriteria"),
            target = M.RolloutRateIncreaseCriteria,
        }),
    },
})

M.OtaTaskExecutionRolloutConfig = schema.new({
    id = id.from(_N, "OtaTaskExecutionRolloutConfig"),
    type = "structure",
    members = {
        ExponentialRolloutRate = schema.new({
            id = id.from(_N, "OtaTaskExecutionRolloutConfig", "ExponentialRolloutRate"),
            type = "structure",
            name = "ExponentialRolloutRate",
            target_id = id.from(_N, "ExponentialRolloutRate"),
            target = M.ExponentialRolloutRate,
        }),
        MaximumPerMinute = schema.new({
            id = id.from(_N, "OtaTaskExecutionRolloutConfig", "MaximumPerMinute"),
            type = "integer",
            name = "MaximumPerMinute",
            target_id = prelude.Integer.id,
        }),
    },
})

M.OtaTaskTimeoutConfig = schema.new({
    id = id.from(_N, "OtaTaskTimeoutConfig"),
    type = "structure",
    members = {
        InProgressTimeoutInMinutes = schema.new({
            id = id.from(_N, "OtaTaskTimeoutConfig", "InProgressTimeoutInMinutes"),
            type = "long",
            name = "InProgressTimeoutInMinutes",
            target_id = prelude.Long.id,
        }),
    },
})

M.PushConfig = schema.new({
    id = id.from(_N, "PushConfig"),
    type = "structure",
    members = {
        AbortConfig = schema.new({
            id = id.from(_N, "PushConfig", "AbortConfig"),
            type = "structure",
            name = "AbortConfig",
            target_id = id.from(_N, "OtaTaskAbortConfig"),
            target = M.OtaTaskAbortConfig,
        }),
        RolloutConfig = schema.new({
            id = id.from(_N, "PushConfig", "RolloutConfig"),
            type = "structure",
            name = "RolloutConfig",
            target_id = id.from(_N, "OtaTaskExecutionRolloutConfig"),
            target = M.OtaTaskExecutionRolloutConfig,
        }),
        TimeoutConfig = schema.new({
            id = id.from(_N, "PushConfig", "TimeoutConfig"),
            type = "structure",
            name = "TimeoutConfig",
            target_id = id.from(_N, "OtaTaskTimeoutConfig"),
            target = M.OtaTaskTimeoutConfig,
        }),
    },
})

M.CreateOtaTaskConfigurationInput = schema.new({
    id = id.from(_N, "CreateOtaTaskConfigurationInput"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "CreateOtaTaskConfigurationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateOtaTaskConfigurationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PushConfig = schema.new({
            id = id.from(_N, "CreateOtaTaskConfigurationInput", "PushConfig"),
            type = "structure",
            name = "PushConfig",
            target_id = id.from(_N, "PushConfig"),
            target = M.PushConfig,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateOtaTaskConfigurationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateOtaTaskConfigurationOutput = schema.new({
    id = id.from(_N, "CreateOtaTaskConfigurationOutput"),
    type = "structure",
    members = {
        TaskConfigurationId = schema.new({
            id = id.from(_N, "CreateOtaTaskConfigurationOutput", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProvisioningProfileInput = schema.new({
    id = id.from(_N, "CreateProvisioningProfileInput"),
    type = "structure",
    members = {
        ProvisioningType = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "ProvisioningType"),
            type = "string",
            name = "ProvisioningType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CaCertificate = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "CaCertificate"),
            type = "string",
            name = "CaCertificate",
            target_id = prelude.String.id,
        }),
        ClaimCertificate = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "ClaimCertificate"),
            type = "string",
            name = "ClaimCertificate",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateProvisioningProfileInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateProvisioningProfileOutput = schema.new({
    id = id.from(_N, "CreateProvisioningProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ProvisioningType = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "ProvisioningType"),
            type = "string",
            name = "ProvisioningType",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ClaimCertificate = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "ClaimCertificate"),
            type = "string",
            name = "ClaimCertificate",
            target_id = prelude.String.id,
        }),
        ClaimCertificatePrivateKey = schema.new({
            id = id.from(_N, "CreateProvisioningProfileOutput", "ClaimCertificatePrivateKey"),
            type = "string",
            name = "ClaimCertificatePrivateKey",
            target_id = prelude.String.id,
        }),
    },
})

M.CredentialLockerSummary = schema.new({
    id = id.from(_N, "CredentialLockerSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CredentialLockerSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CredentialLockerSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CredentialLockerSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "CredentialLockerSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteCredentialLockerInput = schema.new({
    id = id.from(_N, "DeleteCredentialLockerInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteCredentialLockerInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCredentialLockerOutput = schema.new({
    id = id.from(_N, "DeleteCredentialLockerOutput"),
    type = "structure",
})

M.GetCredentialLockerInput = schema.new({
    id = id.from(_N, "GetCredentialLockerInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetCredentialLockerInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCredentialLockerOutput = schema.new({
    id = id.from(_N, "GetCredentialLockerOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetCredentialLockerOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetCredentialLockerOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetCredentialLockerOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetCredentialLockerOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetCredentialLockerOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListCredentialLockersInput = schema.new({
    id = id.from(_N, "ListCredentialLockersInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCredentialLockersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCredentialLockersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListCredentialLockersOutput = schema.new({
    id = id.from(_N, "ListCredentialLockersOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListCredentialLockersOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.CredentialLockerSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCredentialLockersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDestinationInput = schema.new({
    id = id.from(_N, "DeleteDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DeleteDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDestinationOutput = schema.new({
    id = id.from(_N, "DeleteDestinationOutput"),
    type = "structure",
})

M.DeleteEventLogConfigurationInput = schema.new({
    id = id.from(_N, "DeleteEventLogConfigurationInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteEventLogConfigurationInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEventLogConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteEventLogConfigurationOutput"),
    type = "structure",
})

M.DeleteManagedThingInput = schema.new({
    id = id.from(_N, "DeleteManagedThingInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteManagedThingInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Force = schema.new({
            id = id.from(_N, "DeleteManagedThingInput", "Force"),
            type = "boolean",
            name = "Force",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Force" },
            },
        }),
    },
})

M.DeleteManagedThingOutput = schema.new({
    id = id.from(_N, "DeleteManagedThingOutput"),
    type = "structure",
})

M.DeleteNotificationConfigurationInput = schema.new({
    id = id.from(_N, "DeleteNotificationConfigurationInput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "DeleteNotificationConfigurationInput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteNotificationConfigurationOutput"),
    type = "structure",
})

M.DeleteOtaTaskInput = schema.new({
    id = id.from(_N, "DeleteOtaTaskInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteOtaTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOtaTaskOutput = schema.new({
    id = id.from(_N, "DeleteOtaTaskOutput"),
    type = "structure",
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOtaTaskConfigurationInput = schema.new({
    id = id.from(_N, "DeleteOtaTaskConfigurationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteOtaTaskConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOtaTaskConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteOtaTaskConfigurationOutput"),
    type = "structure",
})

M.DeleteProvisioningProfileInput = schema.new({
    id = id.from(_N, "DeleteProvisioningProfileInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "DeleteProvisioningProfileInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteProvisioningProfileOutput = schema.new({
    id = id.from(_N, "DeleteProvisioningProfileOutput"),
    type = "structure",
})

M.DeregisterAccountAssociationInput = schema.new({
    id = id.from(_N, "DeregisterAccountAssociationInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "DeregisterAccountAssociationInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "DeregisterAccountAssociationInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeregisterAccountAssociationOutput = schema.new({
    id = id.from(_N, "DeregisterAccountAssociationOutput"),
    type = "structure",
})

M.DestinationSummary = schema.new({
    id = id.from(_N, "DestinationSummary"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "DestinationSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeliveryDestinationArn = schema.new({
            id = id.from(_N, "DestinationSummary", "DeliveryDestinationArn"),
            type = "string",
            name = "DeliveryDestinationArn",
            target_id = prelude.String.id,
        }),
        DeliveryDestinationType = schema.new({
            id = id.from(_N, "DestinationSummary", "DeliveryDestinationType"),
            type = "string",
            name = "DeliveryDestinationType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DestinationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "DestinationSummary", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDestinationInput = schema.new({
    id = id.from(_N, "GetDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDestinationOutput = schema.new({
    id = id.from(_N, "GetDestinationOutput"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DeliveryDestinationArn = schema.new({
            id = id.from(_N, "GetDestinationOutput", "DeliveryDestinationArn"),
            type = "string",
            name = "DeliveryDestinationArn",
            target_id = prelude.String.id,
        }),
        DeliveryDestinationType = schema.new({
            id = id.from(_N, "GetDestinationOutput", "DeliveryDestinationType"),
            type = "string",
            name = "DeliveryDestinationType",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "GetDestinationOutput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetDestinationOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetDestinationOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetDestinationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListDestinationsInput = schema.new({
    id = id.from(_N, "ListDestinationsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDestinationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDestinationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListDestinationsOutput = schema.new({
    id = id.from(_N, "ListDestinationsOutput"),
    type = "structure",
    members = {
        DestinationList = schema.new({
            id = id.from(_N, "ListDestinationsOutput", "DestinationList"),
            type = "list",
            name = "DestinationList",
            target_id = prelude.Document.id,
            list_member = M.DestinationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDestinationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDestinationInput = schema.new({
    id = id.from(_N, "UpdateDestinationInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeliveryDestinationArn = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "DeliveryDestinationArn"),
            type = "string",
            name = "DeliveryDestinationArn",
            target_id = prelude.String.id,
        }),
        DeliveryDestinationType = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "DeliveryDestinationType"),
            type = "string",
            name = "DeliveryDestinationType",
            target_id = prelude.String.id,
        }),
        RoleArn = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateDestinationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDestinationOutput = schema.new({
    id = id.from(_N, "UpdateDestinationOutput"),
    type = "structure",
})

M.MatterCapabilityReportAttribute = schema.new({
    id = id.from(_N, "MatterCapabilityReportAttribute"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MatterCapabilityReportAttribute", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "MatterCapabilityReportAttribute", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "MatterCapabilityReportAttribute", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
        }),
    },
})

M.MatterCapabilityReportCluster = schema.new({
    id = id.from(_N, "MatterCapabilityReportCluster"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revision = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "revision"),
            type = "integer",
            name = "revision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        publicId = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "publicId"),
            type = "string",
            name = "publicId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        specVersion = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "specVersion"),
            type = "string",
            name = "specVersion",
            target_id = prelude.String.id,
        }),
        attributes = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "attributes"),
            type = "list",
            name = "attributes",
            target_id = prelude.Document.id,
            list_member = M.MatterCapabilityReportAttribute,
        }),
        commands = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "commands"),
            type = "list",
            name = "commands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        events = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "events"),
            type = "list",
            name = "events",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        featureMap = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "featureMap"),
            type = "long",
            name = "featureMap",
            target_id = prelude.Long.id,
        }),
        generatedCommands = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "generatedCommands"),
            type = "list",
            name = "generatedCommands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        fabricIndex = schema.new({
            id = id.from(_N, "MatterCapabilityReportCluster", "fabricIndex"),
            type = "integer",
            name = "fabricIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MatterCapabilityReportEndpoint = schema.new({
    id = id.from(_N, "MatterCapabilityReportEndpoint"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deviceTypes = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "deviceTypes"),
            type = "list",
            name = "deviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusters = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = M.MatterCapabilityReportCluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parts = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "parts"),
            type = "list",
            name = "parts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        semanticTags = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "semanticTags"),
            type = "list",
            name = "semanticTags",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientClusters = schema.new({
            id = id.from(_N, "MatterCapabilityReportEndpoint", "clientClusters"),
            type = "list",
            name = "clientClusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.MatterCapabilityReport = schema.new({
    id = id.from(_N, "MatterCapabilityReport"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "MatterCapabilityReport", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nodeId = schema.new({
            id = id.from(_N, "MatterCapabilityReport", "nodeId"),
            type = "string",
            name = "nodeId",
            target_id = prelude.String.id,
        }),
        endpoints = schema.new({
            id = id.from(_N, "MatterCapabilityReport", "endpoints"),
            type = "list",
            name = "endpoints",
            target_id = prelude.Document.id,
            list_member = M.MatterCapabilityReportEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Device = schema.new({
    id = id.from(_N, "Device"),
    type = "structure",
    members = {
        ConnectorDeviceId = schema.new({
            id = id.from(_N, "Device", "ConnectorDeviceId"),
            type = "string",
            name = "ConnectorDeviceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectorDeviceName = schema.new({
            id = id.from(_N, "Device", "ConnectorDeviceName"),
            type = "string",
            name = "ConnectorDeviceName",
            target_id = prelude.String.id,
        }),
        CapabilityReport = schema.new({
            id = id.from(_N, "Device", "CapabilityReport"),
            type = "structure",
            name = "CapabilityReport",
            target_id = id.from(_N, "MatterCapabilityReport"),
            target = M.MatterCapabilityReport,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CapabilitySchemas = schema.new({
            id = id.from(_N, "Device", "CapabilitySchemas"),
            type = "list",
            name = "CapabilitySchemas",
            target_id = prelude.Document.id,
            list_member = M.CapabilitySchemaItem,
        }),
        DeviceMetadata = schema.new({
            id = id.from(_N, "Device", "DeviceMetadata"),
            type = "document",
            name = "DeviceMetadata",
            target_id = prelude.Document.id,
        }),
    },
})

M.DeviceDiscoverySummary = schema.new({
    id = id.from(_N, "DeviceDiscoverySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeviceDiscoverySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        DiscoveryType = schema.new({
            id = id.from(_N, "DeviceDiscoverySummary", "DiscoveryType"),
            type = "string",
            name = "DiscoveryType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DeviceDiscoverySummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDeviceDiscoveryInput = schema.new({
    id = id.from(_N, "GetDeviceDiscoveryInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDeviceDiscoveryOutput = schema.new({
    id = id.from(_N, "GetDeviceDiscoveryOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DiscoveryType = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "DiscoveryType"),
            type = "string",
            name = "DiscoveryType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartedAt = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ControllerId = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "ControllerId"),
            type = "string",
            name = "ControllerId",
            target_id = prelude.String.id,
        }),
        ConnectorAssociationId = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "ConnectorAssociationId"),
            type = "string",
            name = "ConnectorAssociationId",
            target_id = prelude.String.id,
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
        }),
        FinishedAt = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "FinishedAt"),
            type = "timestamp",
            name = "FinishedAt",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetDeviceDiscoveryOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListDeviceDiscoveriesInput = schema.new({
    id = id.from(_N, "ListDeviceDiscoveriesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        TypeFilter = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesInput", "TypeFilter"),
            type = "string",
            name = "TypeFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "TypeFilter" },
            },
        }),
        StatusFilter = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesInput", "StatusFilter"),
            type = "string",
            name = "StatusFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "StatusFilter" },
            },
        }),
    },
})

M.ListDeviceDiscoveriesOutput = schema.new({
    id = id.from(_N, "ListDeviceDiscoveriesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.DeviceDiscoverySummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDeviceDiscoveriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredDevicesInput = schema.new({
    id = id.from(_N, "ListDiscoveredDevicesInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "ListDiscoveredDevicesInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredDevicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDiscoveredDevicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.DiscoveredDeviceSummary = schema.new({
    id = id.from(_N, "DiscoveredDeviceSummary"),
    type = "structure",
    members = {
        ConnectorDeviceId = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "ConnectorDeviceId"),
            type = "string",
            name = "ConnectorDeviceId",
            target_id = prelude.String.id,
        }),
        ConnectorDeviceName = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "ConnectorDeviceName"),
            type = "string",
            name = "ConnectorDeviceName",
            target_id = prelude.String.id,
        }),
        DeviceTypes = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "DeviceTypes"),
            type = "list",
            name = "DeviceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ManagedThingId = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        Modification = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "Modification"),
            type = "string",
            name = "Modification",
            target_id = prelude.String.id,
        }),
        DiscoveredAt = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "DiscoveredAt"),
            type = "timestamp",
            name = "DiscoveredAt",
            target_id = prelude.Timestamp.id,
        }),
        Brand = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "Brand"),
            type = "string",
            name = "Brand",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        AuthenticationMaterial = schema.new({
            id = id.from(_N, "DiscoveredDeviceSummary", "AuthenticationMaterial"),
            type = "string",
            name = "AuthenticationMaterial",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredDevicesOutput = schema.new({
    id = id.from(_N, "ListDiscoveredDevicesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListDiscoveredDevicesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.DiscoveredDeviceSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDiscoveredDevicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDeviceDiscoveryInput = schema.new({
    id = id.from(_N, "StartDeviceDiscoveryInput"),
    type = "structure",
    members = {
        DiscoveryType = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "DiscoveryType"),
            type = "string",
            name = "DiscoveryType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomProtocolDetail = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "CustomProtocolDetail"),
            type = "map",
            name = "CustomProtocolDetail",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ControllerIdentifier = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "ControllerIdentifier"),
            type = "string",
            name = "ControllerIdentifier",
            target_id = prelude.String.id,
        }),
        ConnectorAssociationIdentifier = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "ConnectorAssociationIdentifier"),
            type = "string",
            name = "ConnectorAssociationIdentifier",
            target_id = prelude.String.id,
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
        }),
        AuthenticationMaterial = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "AuthenticationMaterial"),
            type = "string",
            name = "AuthenticationMaterial",
            target_id = prelude.String.id,
        }),
        AuthenticationMaterialType = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "AuthenticationMaterialType"),
            type = "string",
            name = "AuthenticationMaterialType",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ConnectorDeviceIdList = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "ConnectorDeviceIdList"),
            type = "list",
            name = "ConnectorDeviceIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Protocol = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        EndDeviceIdentifier = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryInput", "EndDeviceIdentifier"),
            type = "string",
            name = "EndDeviceIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDeviceDiscoveryOutput = schema.new({
    id = id.from(_N, "StartDeviceDiscoveryOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "StartDeviceDiscoveryOutput", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.EventLogConfigurationSummary = schema.new({
    id = id.from(_N, "EventLogConfigurationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "EventLogConfigurationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "EventLogConfigurationSummary", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "EventLogConfigurationSummary", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        EventLogLevel = schema.new({
            id = id.from(_N, "EventLogConfigurationSummary", "EventLogLevel"),
            type = "string",
            name = "EventLogLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEventLogConfigurationInput = schema.new({
    id = id.from(_N, "GetEventLogConfigurationInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetEventLogConfigurationInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetEventLogConfigurationOutput = schema.new({
    id = id.from(_N, "GetEventLogConfigurationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetEventLogConfigurationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        ResourceType = schema.new({
            id = id.from(_N, "GetEventLogConfigurationOutput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "GetEventLogConfigurationOutput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        EventLogLevel = schema.new({
            id = id.from(_N, "GetEventLogConfigurationOutput", "EventLogLevel"),
            type = "string",
            name = "EventLogLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventLogConfigurationsInput = schema.new({
    id = id.from(_N, "ListEventLogConfigurationsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEventLogConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEventLogConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListEventLogConfigurationsOutput = schema.new({
    id = id.from(_N, "ListEventLogConfigurationsOutput"),
    type = "structure",
    members = {
        EventLogConfigurationList = schema.new({
            id = id.from(_N, "ListEventLogConfigurationsOutput", "EventLogConfigurationList"),
            type = "list",
            name = "EventLogConfigurationList",
            target_id = prelude.Document.id,
            list_member = M.EventLogConfigurationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventLogConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateEventLogConfigurationInput = schema.new({
    id = id.from(_N, "UpdateEventLogConfigurationInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateEventLogConfigurationInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EventLogLevel = schema.new({
            id = id.from(_N, "UpdateEventLogConfigurationInput", "EventLogLevel"),
            type = "string",
            name = "EventLogLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateEventLogConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateEventLogConfigurationOutput"),
    type = "structure",
})

M.GetCustomEndpointInput = schema.new({
    id = id.from(_N, "GetCustomEndpointInput"),
    type = "structure",
})

M.GetCustomEndpointOutput = schema.new({
    id = id.from(_N, "GetCustomEndpointOutput"),
    type = "structure",
    members = {
        EndpointAddress = schema.new({
            id = id.from(_N, "GetCustomEndpointOutput", "EndpointAddress"),
            type = "string",
            name = "EndpointAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDefaultEncryptionConfigurationInput = schema.new({
    id = id.from(_N, "GetDefaultEncryptionConfigurationInput"),
    type = "structure",
})

M.GetDefaultEncryptionConfigurationOutput = schema.new({
    id = id.from(_N, "GetDefaultEncryptionConfigurationOutput"),
    type = "structure",
    members = {
        configurationStatus = schema.new({
            id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionType = schema.new({
            id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "GetDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "InternalFailureException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHubConfigurationInput = schema.new({
    id = id.from(_N, "GetHubConfigurationInput"),
    type = "structure",
})

M.GetHubConfigurationOutput = schema.new({
    id = id.from(_N, "GetHubConfigurationOutput"),
    type = "structure",
    members = {
        HubTokenTimerExpirySettingInSeconds = schema.new({
            id = id.from(_N, "GetHubConfigurationOutput", "HubTokenTimerExpirySettingInSeconds"),
            type = "long",
            name = "HubTokenTimerExpirySettingInSeconds",
            target_id = prelude.Long.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetHubConfigurationOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetManagedThingInput = schema.new({
    id = id.from(_N, "GetManagedThingInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedThingInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedThingOutput = schema.new({
    id = id.from(_N, "GetManagedThingOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        CredentialLockerId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "CredentialLockerId"),
            type = "string",
            name = "CredentialLockerId",
            target_id = prelude.String.id,
        }),
        AdvertisedProductId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "AdvertisedProductId"),
            type = "string",
            name = "AdvertisedProductId",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        ProvisioningStatus = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ProvisioningStatus"),
            type = "string",
            name = "ProvisioningStatus",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        Brand = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Brand"),
            type = "string",
            name = "Brand",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        UniversalProductCode = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "UniversalProductCode"),
            type = "string",
            name = "UniversalProductCode",
            target_id = prelude.String.id,
        }),
        InternationalArticleNumber = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "InternationalArticleNumber"),
            type = "string",
            name = "InternationalArticleNumber",
            target_id = prelude.String.id,
        }),
        ConnectorPolicyId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ConnectorPolicyId"),
            type = "string",
            name = "ConnectorPolicyId",
            target_id = prelude.String.id,
        }),
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
        }),
        ConnectorDeviceId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ConnectorDeviceId"),
            type = "string",
            name = "ConnectorDeviceId",
            target_id = prelude.String.id,
        }),
        DeviceSpecificKey = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "DeviceSpecificKey"),
            type = "string",
            name = "DeviceSpecificKey",
            target_id = prelude.String.id,
        }),
        MacAddress = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "MacAddress"),
            type = "string",
            name = "MacAddress",
            target_id = prelude.String.id,
        }),
        ParentControllerId = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ParentControllerId"),
            type = "string",
            name = "ParentControllerId",
            target_id = prelude.String.id,
        }),
        Classification = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        ActivatedAt = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "ActivatedAt"),
            type = "timestamp",
            name = "ActivatedAt",
            target_id = prelude.Timestamp.id,
        }),
        HubNetworkMode = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "HubNetworkMode"),
            type = "string",
            name = "HubNetworkMode",
            target_id = prelude.String.id,
        }),
        MetaData = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "MetaData"),
            type = "map",
            name = "MetaData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        WiFiSimpleSetupConfiguration = schema.new({
            id = id.from(_N, "GetManagedThingOutput", "WiFiSimpleSetupConfiguration"),
            type = "structure",
            name = "WiFiSimpleSetupConfiguration",
            target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
            target = M.WiFiSimpleSetupConfiguration,
        }),
    },
})

M.GetManagedThingCapabilitiesInput = schema.new({
    id = id.from(_N, "GetManagedThingCapabilitiesInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedThingCapabilitiesInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedThingCapabilitiesOutput = schema.new({
    id = id.from(_N, "GetManagedThingCapabilitiesOutput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetManagedThingCapabilitiesOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        Capabilities = schema.new({
            id = id.from(_N, "GetManagedThingCapabilitiesOutput", "Capabilities"),
            type = "string",
            name = "Capabilities",
            target_id = prelude.String.id,
        }),
        CapabilityReport = schema.new({
            id = id.from(_N, "GetManagedThingCapabilitiesOutput", "CapabilityReport"),
            type = "structure",
            name = "CapabilityReport",
            target_id = id.from(_N, "CapabilityReport"),
            target = M.CapabilityReport,
        }),
    },
})

M.GetManagedThingCertificateInput = schema.new({
    id = id.from(_N, "GetManagedThingCertificateInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedThingCertificateInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedThingCertificateOutput = schema.new({
    id = id.from(_N, "GetManagedThingCertificateOutput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetManagedThingCertificateOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        CertificatePem = schema.new({
            id = id.from(_N, "GetManagedThingCertificateOutput", "CertificatePem"),
            type = "string",
            name = "CertificatePem",
            target_id = prelude.String.id,
        }),
    },
})

M.GetManagedThingConnectivityDataInput = schema.new({
    id = id.from(_N, "GetManagedThingConnectivityDataInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedThingConnectivityDataInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedThingConnectivityDataOutput = schema.new({
    id = id.from(_N, "GetManagedThingConnectivityDataOutput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetManagedThingConnectivityDataOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        Connected = schema.new({
            id = id.from(_N, "GetManagedThingConnectivityDataOutput", "Connected"),
            type = "boolean",
            name = "Connected",
            target_id = prelude.Boolean.id,
        }),
        Timestamp = schema.new({
            id = id.from(_N, "GetManagedThingConnectivityDataOutput", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        DisconnectReason = schema.new({
            id = id.from(_N, "GetManagedThingConnectivityDataOutput", "DisconnectReason"),
            type = "string",
            name = "DisconnectReason",
            target_id = prelude.String.id,
        }),
    },
})

M.GetManagedThingMetaDataInput = schema.new({
    id = id.from(_N, "GetManagedThingMetaDataInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetManagedThingMetaDataInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedThingMetaDataOutput = schema.new({
    id = id.from(_N, "GetManagedThingMetaDataOutput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetManagedThingMetaDataOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        MetaData = schema.new({
            id = id.from(_N, "GetManagedThingMetaDataOutput", "MetaData"),
            type = "map",
            name = "MetaData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetManagedThingStateInput = schema.new({
    id = id.from(_N, "GetManagedThingStateInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetManagedThingStateInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StateCapability = schema.new({
    id = id.from(_N, "StateCapability"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "StateCapability", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StateCapability", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "StateCapability", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "StateCapability", "properties"),
            type = "document",
            name = "properties",
            target_id = prelude.Document.id,
        }),
    },
})

M.StateEndpoint = schema.new({
    id = id.from(_N, "StateEndpoint"),
    type = "structure",
    members = {
        endpointId = schema.new({
            id = id.from(_N, "StateEndpoint", "endpointId"),
            type = "string",
            name = "endpointId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "StateEndpoint", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = M.StateCapability,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetManagedThingStateOutput = schema.new({
    id = id.from(_N, "GetManagedThingStateOutput"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "GetManagedThingStateOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.StateEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetNotificationConfigurationInput = schema.new({
    id = id.from(_N, "GetNotificationConfigurationInput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "GetNotificationConfigurationInput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "GetNotificationConfigurationOutput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "GetNotificationConfigurationOutput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "GetNotificationConfigurationOutput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetNotificationConfigurationOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetNotificationConfigurationOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetNotificationConfigurationOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetOtaTaskInput = schema.new({
    id = id.from(_N, "GetOtaTaskInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetOtaTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TaskProcessingDetails = schema.new({
    id = id.from(_N, "TaskProcessingDetails"),
    type = "structure",
    members = {
        NumberOfCanceledThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "NumberOfCanceledThings"),
            type = "integer",
            name = "NumberOfCanceledThings",
            target_id = prelude.Integer.id,
        }),
        NumberOfFailedThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "NumberOfFailedThings"),
            type = "integer",
            name = "NumberOfFailedThings",
            target_id = prelude.Integer.id,
        }),
        NumberOfInProgressThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "NumberOfInProgressThings"),
            type = "integer",
            name = "NumberOfInProgressThings",
            target_id = prelude.Integer.id,
        }),
        numberOfQueuedThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "numberOfQueuedThings"),
            type = "integer",
            name = "numberOfQueuedThings",
            target_id = prelude.Integer.id,
        }),
        numberOfRejectedThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "numberOfRejectedThings"),
            type = "integer",
            name = "numberOfRejectedThings",
            target_id = prelude.Integer.id,
        }),
        numberOfRemovedThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "numberOfRemovedThings"),
            type = "integer",
            name = "numberOfRemovedThings",
            target_id = prelude.Integer.id,
        }),
        numberOfSucceededThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "numberOfSucceededThings"),
            type = "integer",
            name = "numberOfSucceededThings",
            target_id = prelude.Integer.id,
        }),
        numberOfTimedOutThings = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "numberOfTimedOutThings"),
            type = "integer",
            name = "numberOfTimedOutThings",
            target_id = prelude.Integer.id,
        }),
        processingTargets = schema.new({
            id = id.from(_N, "TaskProcessingDetails", "processingTargets"),
            type = "list",
            name = "processingTargets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetOtaTaskOutput = schema.new({
    id = id.from(_N, "GetOtaTaskOutput"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        S3Url = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "S3Url"),
            type = "string",
            name = "S3Url",
            target_id = prelude.String.id,
        }),
        Protocol = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
        OtaType = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "OtaType"),
            type = "string",
            name = "OtaType",
            target_id = prelude.String.id,
        }),
        OtaTargetQueryString = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "OtaTargetQueryString"),
            type = "string",
            name = "OtaTargetQueryString",
            target_id = prelude.String.id,
        }),
        OtaMechanism = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "OtaMechanism"),
            type = "string",
            name = "OtaMechanism",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "Target"),
            type = "list",
            name = "Target",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedAt = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "LastUpdatedAt"),
            type = "timestamp",
            name = "LastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        TaskConfigurationId = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
        TaskProcessingDetails = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "TaskProcessingDetails"),
            type = "structure",
            name = "TaskProcessingDetails",
            target_id = id.from(_N, "TaskProcessingDetails"),
            target = M.TaskProcessingDetails,
        }),
        OtaSchedulingConfig = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "OtaSchedulingConfig"),
            type = "structure",
            name = "OtaSchedulingConfig",
            target_id = id.from(_N, "OtaTaskSchedulingConfig"),
            target = M.OtaTaskSchedulingConfig,
        }),
        OtaTaskExecutionRetryConfig = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "OtaTaskExecutionRetryConfig"),
            type = "structure",
            name = "OtaTaskExecutionRetryConfig",
            target_id = id.from(_N, "OtaTaskExecutionRetryConfig"),
            target = M.OtaTaskExecutionRetryConfig,
        }),
        Status = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetOtaTaskOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetOtaTaskConfigurationInput = schema.new({
    id = id.from(_N, "GetOtaTaskConfigurationInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOtaTaskConfigurationOutput = schema.new({
    id = id.from(_N, "GetOtaTaskConfigurationOutput"),
    type = "structure",
    members = {
        TaskConfigurationId = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationOutput", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        PushConfig = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationOutput", "PushConfig"),
            type = "structure",
            name = "PushConfig",
            target_id = id.from(_N, "PushConfig"),
            target = M.PushConfig,
        }),
        Description = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetOtaTaskConfigurationOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetProvisioningProfileInput = schema.new({
    id = id.from(_N, "GetProvisioningProfileInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "GetProvisioningProfileInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetProvisioningProfileOutput = schema.new({
    id = id.from(_N, "GetProvisioningProfileOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ProvisioningType = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "ProvisioningType"),
            type = "string",
            name = "ProvisioningType",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ClaimCertificate = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "ClaimCertificate"),
            type = "string",
            name = "ClaimCertificate",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetProvisioningProfileOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetRuntimeLogConfigurationInput = schema.new({
    id = id.from(_N, "GetRuntimeLogConfigurationInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetRuntimeLogConfigurationInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RuntimeLogConfigurations = schema.new({
    id = id.from(_N, "RuntimeLogConfigurations"),
    type = "structure",
    members = {
        LogLevel = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "LogLevel"),
            type = "string",
            name = "LogLevel",
            target_id = prelude.String.id,
        }),
        LogFlushLevel = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "LogFlushLevel"),
            type = "string",
            name = "LogFlushLevel",
            target_id = prelude.String.id,
        }),
        LocalStoreLocation = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreLocation"),
            type = "string",
            name = "LocalStoreLocation",
            target_id = prelude.String.id,
        }),
        LocalStoreFileRotationMaxFiles = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreFileRotationMaxFiles"),
            type = "integer",
            name = "LocalStoreFileRotationMaxFiles",
            target_id = prelude.Integer.id,
        }),
        LocalStoreFileRotationMaxBytes = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "LocalStoreFileRotationMaxBytes"),
            type = "integer",
            name = "LocalStoreFileRotationMaxBytes",
            target_id = prelude.Integer.id,
        }),
        UploadLog = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "UploadLog"),
            type = "boolean",
            name = "UploadLog",
            target_id = prelude.Boolean.id,
        }),
        UploadPeriodMinutes = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "UploadPeriodMinutes"),
            type = "integer",
            name = "UploadPeriodMinutes",
            target_id = prelude.Integer.id,
        }),
        DeleteLocalStoreAfterUpload = schema.new({
            id = id.from(_N, "RuntimeLogConfigurations", "DeleteLocalStoreAfterUpload"),
            type = "boolean",
            name = "DeleteLocalStoreAfterUpload",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetRuntimeLogConfigurationOutput = schema.new({
    id = id.from(_N, "GetRuntimeLogConfigurationOutput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "GetRuntimeLogConfigurationOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        RuntimeLogConfigurations = schema.new({
            id = id.from(_N, "GetRuntimeLogConfigurationOutput", "RuntimeLogConfigurations"),
            type = "structure",
            name = "RuntimeLogConfigurations",
            target_id = id.from(_N, "RuntimeLogConfigurations"),
            target = M.RuntimeLogConfigurations,
        }),
    },
})

M.GetSchemaVersionInput = schema.new({
    id = id.from(_N, "GetSchemaVersionInput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetSchemaVersionInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        SchemaVersionedId = schema.new({
            id = id.from(_N, "GetSchemaVersionInput", "SchemaVersionedId"),
            type = "string",
            name = "SchemaVersionedId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Format = schema.new({
            id = id.from(_N, "GetSchemaVersionInput", "Format"),
            type = "string",
            name = "Format",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "Format" },
            },
        }),
    },
})

M.GetSchemaVersionOutput = schema.new({
    id = id.from(_N, "GetSchemaVersionOutput"),
    type = "structure",
    members = {
        SchemaId = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        SemanticVersion = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "SemanticVersion"),
            type = "string",
            name = "SemanticVersion",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
        Schema = schema.new({
            id = id.from(_N, "GetSchemaVersionOutput", "Schema"),
            type = "document",
            name = "Schema",
            target_id = prelude.Document.id,
        }),
    },
})

M.PutHubConfigurationInput = schema.new({
    id = id.from(_N, "PutHubConfigurationInput"),
    type = "structure",
    members = {
        HubTokenTimerExpirySettingInSeconds = schema.new({
            id = id.from(_N, "PutHubConfigurationInput", "HubTokenTimerExpirySettingInSeconds"),
            type = "long",
            name = "HubTokenTimerExpirySettingInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutHubConfigurationOutput = schema.new({
    id = id.from(_N, "PutHubConfigurationOutput"),
    type = "structure",
    members = {
        HubTokenTimerExpirySettingInSeconds = schema.new({
            id = id.from(_N, "PutHubConfigurationOutput", "HubTokenTimerExpirySettingInSeconds"),
            type = "long",
            name = "HubTokenTimerExpirySettingInSeconds",
            target_id = prelude.Long.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutDefaultEncryptionConfigurationInput = schema.new({
    id = id.from(_N, "PutDefaultEncryptionConfigurationInput"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutDefaultEncryptionConfigurationOutput = schema.new({
    id = id.from(_N, "PutDefaultEncryptionConfigurationOutput"),
    type = "structure",
    members = {
        configurationStatus = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "configurationStatus"),
            type = "structure",
            name = "configurationStatus",
            target_id = id.from(_N, "ConfigurationStatus"),
            target = M.ConfigurationStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionType = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "PutDefaultEncryptionConfigurationOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListManagedThingAccountAssociationsInput = schema.new({
    id = id.from(_N, "ListManagedThingAccountAssociationsInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ManagedThingId" },
            },
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccountAssociationId" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ManagedThingAssociation = schema.new({
    id = id.from(_N, "ManagedThingAssociation"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "ManagedThingAssociation", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "ManagedThingAssociation", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
        }),
        ManagedThingAssociationStatus = schema.new({
            id = id.from(_N, "ManagedThingAssociation", "ManagedThingAssociationStatus"),
            type = "string",
            name = "ManagedThingAssociationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedThingAccountAssociationsOutput = schema.new({
    id = id.from(_N, "ListManagedThingAccountAssociationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ManagedThingAssociation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingAccountAssociationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterAccountAssociationInput = schema.new({
    id = id.from(_N, "RegisterAccountAssociationInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DeviceDiscoveryId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationInput", "DeviceDiscoveryId"),
            type = "string",
            name = "DeviceDiscoveryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterAccountAssociationOutput = schema.new({
    id = id.from(_N, "RegisterAccountAssociationOutput"),
    type = "structure",
    members = {
        AccountAssociationId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationOutput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
        }),
        DeviceDiscoveryId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationOutput", "DeviceDiscoveryId"),
            type = "string",
            name = "DeviceDiscoveryId",
            target_id = prelude.String.id,
        }),
        ManagedThingId = schema.new({
            id = id.from(_N, "RegisterAccountAssociationOutput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
    },
})

M.SendManagedThingCommandInput = schema.new({
    id = id.from(_N, "SendManagedThingCommandInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "SendManagedThingCommandInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Endpoints = schema.new({
            id = id.from(_N, "SendManagedThingCommandInput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.CommandEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConnectorAssociationId = schema.new({
            id = id.from(_N, "SendManagedThingCommandInput", "ConnectorAssociationId"),
            type = "string",
            name = "ConnectorAssociationId",
            target_id = prelude.String.id,
        }),
        AccountAssociationId = schema.new({
            id = id.from(_N, "SendManagedThingCommandInput", "AccountAssociationId"),
            type = "string",
            name = "AccountAssociationId",
            target_id = prelude.String.id,
        }),
    },
})

M.SendManagedThingCommandOutput = schema.new({
    id = id.from(_N, "SendManagedThingCommandOutput"),
    type = "structure",
    members = {
        TraceId = schema.new({
            id = id.from(_N, "SendManagedThingCommandOutput", "TraceId"),
            type = "string",
            name = "TraceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedThingsInput = schema.new({
    id = id.from(_N, "ListManagedThingsInput"),
    type = "structure",
    members = {
        OwnerFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "OwnerFilter"),
            type = "string",
            name = "OwnerFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OwnerFilter" },
            },
        }),
        CredentialLockerFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "CredentialLockerFilter"),
            type = "string",
            name = "CredentialLockerFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CredentialLockerFilter" },
            },
        }),
        RoleFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "RoleFilter"),
            type = "string",
            name = "RoleFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "RoleFilter" },
            },
        }),
        ParentControllerIdentifierFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "ParentControllerIdentifierFilter"),
            type = "string",
            name = "ParentControllerIdentifierFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ParentControllerIdentifierFilter" },
            },
        }),
        ConnectorPolicyIdFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "ConnectorPolicyIdFilter"),
            type = "string",
            name = "ConnectorPolicyIdFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ConnectorPolicyIdFilter" },
            },
        }),
        ConnectorDestinationIdFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "ConnectorDestinationIdFilter"),
            type = "string",
            name = "ConnectorDestinationIdFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ConnectorDestinationIdFilter" },
            },
        }),
        ConnectorDeviceIdFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "ConnectorDeviceIdFilter"),
            type = "string",
            name = "ConnectorDeviceIdFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ConnectorDeviceIdFilter" },
            },
        }),
        SerialNumberFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "SerialNumberFilter"),
            type = "string",
            name = "SerialNumberFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "SerialNumberFilter" },
            },
        }),
        ProvisioningStatusFilter = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "ProvisioningStatusFilter"),
            type = "string",
            name = "ProvisioningStatusFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ProvisioningStatusFilter" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListManagedThingsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ManagedThingSummary = schema.new({
    id = id.from(_N, "ManagedThingSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        AdvertisedProductId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "AdvertisedProductId"),
            type = "string",
            name = "AdvertisedProductId",
            target_id = prelude.String.id,
        }),
        Brand = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Brand"),
            type = "string",
            name = "Brand",
            target_id = prelude.String.id,
        }),
        Classification = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        ConnectorDeviceId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ConnectorDeviceId"),
            type = "string",
            name = "ConnectorDeviceId",
            target_id = prelude.String.id,
        }),
        ConnectorPolicyId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ConnectorPolicyId"),
            type = "string",
            name = "ConnectorPolicyId",
            target_id = prelude.String.id,
        }),
        ConnectorDestinationId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ConnectorDestinationId"),
            type = "string",
            name = "ConnectorDestinationId",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        CredentialLockerId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "CredentialLockerId"),
            type = "string",
            name = "CredentialLockerId",
            target_id = prelude.String.id,
        }),
        ParentControllerId = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ParentControllerId"),
            type = "string",
            name = "ParentControllerId",
            target_id = prelude.String.id,
        }),
        ProvisioningStatus = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ProvisioningStatus"),
            type = "string",
            name = "ProvisioningStatus",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "ManagedThingSummary", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "ManagedThingSummary", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ManagedThingSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "ManagedThingSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        ActivatedAt = schema.new({
            id = id.from(_N, "ManagedThingSummary", "ActivatedAt"),
            type = "timestamp",
            name = "ActivatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListManagedThingsOutput = schema.new({
    id = id.from(_N, "ListManagedThingsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListManagedThingsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ManagedThingSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedThingSchemasInput = schema.new({
    id = id.from(_N, "ListManagedThingSchemasInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "ListManagedThingSchemasInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EndpointIdFilter = schema.new({
            id = id.from(_N, "ListManagedThingSchemasInput", "EndpointIdFilter"),
            type = "string",
            name = "EndpointIdFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "EndpointIdFilter" },
            },
        }),
        CapabilityIdFilter = schema.new({
            id = id.from(_N, "ListManagedThingSchemasInput", "CapabilityIdFilter"),
            type = "string",
            name = "CapabilityIdFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CapabilityIdFilter" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingSchemasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListManagedThingSchemasInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ManagedThingSchemaListItem = schema.new({
    id = id.from(_N, "ManagedThingSchemaListItem"),
    type = "structure",
    members = {
        EndpointId = schema.new({
            id = id.from(_N, "ManagedThingSchemaListItem", "EndpointId"),
            type = "string",
            name = "EndpointId",
            target_id = prelude.String.id,
        }),
        CapabilityId = schema.new({
            id = id.from(_N, "ManagedThingSchemaListItem", "CapabilityId"),
            type = "string",
            name = "CapabilityId",
            target_id = prelude.String.id,
        }),
        Schema = schema.new({
            id = id.from(_N, "ManagedThingSchemaListItem", "Schema"),
            type = "document",
            name = "Schema",
            target_id = prelude.Document.id,
        }),
    },
})

M.ListManagedThingSchemasOutput = schema.new({
    id = id.from(_N, "ListManagedThingSchemasOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListManagedThingSchemasOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ManagedThingSchemaListItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListManagedThingSchemasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateManagedThingInput = schema.new({
    id = id.from(_N, "UpdateManagedThingInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Owner"),
            type = "string",
            name = "Owner",
            target_id = prelude.String.id,
        }),
        CredentialLockerId = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "CredentialLockerId"),
            type = "string",
            name = "CredentialLockerId",
            target_id = prelude.String.id,
        }),
        SerialNumber = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "SerialNumber"),
            type = "string",
            name = "SerialNumber",
            target_id = prelude.String.id,
        }),
        WiFiSimpleSetupConfiguration = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "WiFiSimpleSetupConfiguration"),
            type = "structure",
            name = "WiFiSimpleSetupConfiguration",
            target_id = id.from(_N, "WiFiSimpleSetupConfiguration"),
            target = M.WiFiSimpleSetupConfiguration,
        }),
        Brand = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Brand"),
            type = "string",
            name = "Brand",
            target_id = prelude.String.id,
        }),
        Model = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Model"),
            type = "string",
            name = "Model",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CapabilityReport = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "CapabilityReport"),
            type = "structure",
            name = "CapabilityReport",
            target_id = id.from(_N, "CapabilityReport"),
            target = M.CapabilityReport,
        }),
        CapabilitySchemas = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "CapabilitySchemas"),
            type = "list",
            name = "CapabilitySchemas",
            target_id = prelude.Document.id,
            list_member = M.CapabilitySchemaItem,
        }),
        Capabilities = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Capabilities"),
            type = "string",
            name = "Capabilities",
            target_id = prelude.String.id,
        }),
        Classification = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "Classification"),
            type = "string",
            name = "Classification",
            target_id = prelude.String.id,
        }),
        HubNetworkMode = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "HubNetworkMode"),
            type = "string",
            name = "HubNetworkMode",
            target_id = prelude.String.id,
        }),
        MetaData = schema.new({
            id = id.from(_N, "UpdateManagedThingInput", "MetaData"),
            type = "map",
            name = "MetaData",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateManagedThingOutput = schema.new({
    id = id.from(_N, "UpdateManagedThingOutput"),
    type = "structure",
})

M.ListNotificationConfigurationsInput = schema.new({
    id = id.from(_N, "ListNotificationConfigurationsInput"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListNotificationConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.NotificationConfigurationSummary = schema.new({
    id = id.from(_N, "NotificationConfigurationSummary"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "NotificationConfigurationSummary", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
        }),
        DestinationName = schema.new({
            id = id.from(_N, "NotificationConfigurationSummary", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationConfigurationsOutput = schema.new({
    id = id.from(_N, "ListNotificationConfigurationsOutput"),
    type = "structure",
    members = {
        NotificationConfigurationList = schema.new({
            id = id.from(_N, "ListNotificationConfigurationsOutput", "NotificationConfigurationList"),
            type = "list",
            name = "NotificationConfigurationList",
            target_id = prelude.Document.id,
            list_member = M.NotificationConfigurationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNotificationConfigurationInput = schema.new({
    id = id.from(_N, "UpdateNotificationConfigurationInput"),
    type = "structure",
    members = {
        EventType = schema.new({
            id = id.from(_N, "UpdateNotificationConfigurationInput", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DestinationName = schema.new({
            id = id.from(_N, "UpdateNotificationConfigurationInput", "DestinationName"),
            type = "string",
            name = "DestinationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateNotificationConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateNotificationConfigurationOutput"),
    type = "structure",
})

M.ListOtaTaskConfigurationsInput = schema.new({
    id = id.from(_N, "ListOtaTaskConfigurationsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTaskConfigurationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOtaTaskConfigurationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.OtaTaskConfigurationSummary = schema.new({
    id = id.from(_N, "OtaTaskConfigurationSummary"),
    type = "structure",
    members = {
        TaskConfigurationId = schema.new({
            id = id.from(_N, "OtaTaskConfigurationSummary", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "OtaTaskConfigurationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "OtaTaskConfigurationSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListOtaTaskConfigurationsOutput = schema.new({
    id = id.from(_N, "ListOtaTaskConfigurationsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListOtaTaskConfigurationsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.OtaTaskConfigurationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTaskConfigurationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOtaTaskExecutionsInput = schema.new({
    id = id.from(_N, "ListOtaTaskExecutionsInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "ListOtaTaskExecutionsInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTaskExecutionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOtaTaskExecutionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.OtaTaskExecutionSummary = schema.new({
    id = id.from(_N, "OtaTaskExecutionSummary"),
    type = "structure",
    members = {
        ExecutionNumber = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "ExecutionNumber"),
            type = "long",
            name = "ExecutionNumber",
            target_id = prelude.Long.id,
        }),
        LastUpdatedAt = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "LastUpdatedAt"),
            type = "timestamp",
            name = "LastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        QueuedAt = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "QueuedAt"),
            type = "timestamp",
            name = "QueuedAt",
            target_id = prelude.Timestamp.id,
        }),
        RetryAttempt = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "RetryAttempt"),
            type = "integer",
            name = "RetryAttempt",
            target_id = prelude.Integer.id,
        }),
        StartedAt = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "StartedAt"),
            type = "timestamp",
            name = "StartedAt",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.OtaTaskExecutionSummaries = schema.new({
    id = id.from(_N, "OtaTaskExecutionSummaries"),
    type = "structure",
    members = {
        TaskExecutionSummary = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummaries", "TaskExecutionSummary"),
            type = "structure",
            name = "TaskExecutionSummary",
            target_id = id.from(_N, "OtaTaskExecutionSummary"),
            target = M.OtaTaskExecutionSummary,
        }),
        ManagedThingId = schema.new({
            id = id.from(_N, "OtaTaskExecutionSummaries", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOtaTaskExecutionsOutput = schema.new({
    id = id.from(_N, "ListOtaTaskExecutionsOutput"),
    type = "structure",
    members = {
        ExecutionSummaries = schema.new({
            id = id.from(_N, "ListOtaTaskExecutionsOutput", "ExecutionSummaries"),
            type = "list",
            name = "ExecutionSummaries",
            target_id = prelude.Document.id,
            list_member = M.OtaTaskExecutionSummaries,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTaskExecutionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOtaTasksInput = schema.new({
    id = id.from(_N, "ListOtaTasksInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTasksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOtaTasksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.OtaTaskSummary = schema.new({
    id = id.from(_N, "OtaTaskSummary"),
    type = "structure",
    members = {
        TaskId = schema.new({
            id = id.from(_N, "OtaTaskSummary", "TaskId"),
            type = "string",
            name = "TaskId",
            target_id = prelude.String.id,
        }),
        TaskArn = schema.new({
            id = id.from(_N, "OtaTaskSummary", "TaskArn"),
            type = "string",
            name = "TaskArn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "OtaTaskSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdatedAt = schema.new({
            id = id.from(_N, "OtaTaskSummary", "LastUpdatedAt"),
            type = "timestamp",
            name = "LastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        TaskConfigurationId = schema.new({
            id = id.from(_N, "OtaTaskSummary", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "OtaTaskSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOtaTasksOutput = schema.new({
    id = id.from(_N, "ListOtaTasksOutput"),
    type = "structure",
    members = {
        Tasks = schema.new({
            id = id.from(_N, "ListOtaTasksOutput", "Tasks"),
            type = "list",
            name = "Tasks",
            target_id = prelude.Document.id,
            list_member = M.OtaTaskSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOtaTasksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOtaTaskInput = schema.new({
    id = id.from(_N, "UpdateOtaTaskInput"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "UpdateOtaTaskInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateOtaTaskInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        TaskConfigurationId = schema.new({
            id = id.from(_N, "UpdateOtaTaskInput", "TaskConfigurationId"),
            type = "string",
            name = "TaskConfigurationId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOtaTaskOutput = schema.new({
    id = id.from(_N, "UpdateOtaTaskOutput"),
    type = "structure",
})

M.ListProvisioningProfilesInput = schema.new({
    id = id.from(_N, "ListProvisioningProfilesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListProvisioningProfilesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListProvisioningProfilesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ProvisioningProfileSummary = schema.new({
    id = id.from(_N, "ProvisioningProfileSummary"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ProvisioningProfileSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ProvisioningProfileSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "ProvisioningProfileSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ProvisioningType = schema.new({
            id = id.from(_N, "ProvisioningProfileSummary", "ProvisioningType"),
            type = "string",
            name = "ProvisioningType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProvisioningProfileSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProvisioningProfilesOutput = schema.new({
    id = id.from(_N, "ListProvisioningProfilesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListProvisioningProfilesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ProvisioningProfileSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListProvisioningProfilesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterCustomEndpointInput = schema.new({
    id = id.from(_N, "RegisterCustomEndpointInput"),
    type = "structure",
})

M.RegisterCustomEndpointOutput = schema.new({
    id = id.from(_N, "RegisterCustomEndpointOutput"),
    type = "structure",
    members = {
        EndpointAddress = schema.new({
            id = id.from(_N, "RegisterCustomEndpointOutput", "EndpointAddress"),
            type = "string",
            name = "EndpointAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRuntimeLogConfigurationInput = schema.new({
    id = id.from(_N, "PutRuntimeLogConfigurationInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "PutRuntimeLogConfigurationInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        RuntimeLogConfigurations = schema.new({
            id = id.from(_N, "PutRuntimeLogConfigurationInput", "RuntimeLogConfigurations"),
            type = "structure",
            name = "RuntimeLogConfigurations",
            target_id = id.from(_N, "RuntimeLogConfigurations"),
            target = M.RuntimeLogConfigurations,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRuntimeLogConfigurationOutput = schema.new({
    id = id.from(_N, "PutRuntimeLogConfigurationOutput"),
    type = "structure",
})

M.ResetRuntimeLogConfigurationInput = schema.new({
    id = id.from(_N, "ResetRuntimeLogConfigurationInput"),
    type = "structure",
    members = {
        ManagedThingId = schema.new({
            id = id.from(_N, "ResetRuntimeLogConfigurationInput", "ManagedThingId"),
            type = "string",
            name = "ManagedThingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ResetRuntimeLogConfigurationOutput = schema.new({
    id = id.from(_N, "ResetRuntimeLogConfigurationOutput"),
    type = "structure",
})

M.ListSchemaVersionsInput = schema.new({
    id = id.from(_N, "ListSchemaVersionsInput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        SchemaId = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "SchemaIdFilter" },
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NamespaceFilter" },
            },
        }),
        Visibility = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "VisibilityFilter" },
            },
        }),
        SemanticVersion = schema.new({
            id = id.from(_N, "ListSchemaVersionsInput", "SemanticVersion"),
            type = "string",
            name = "SemanticVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "SemanticVersionFilter" },
            },
        }),
    },
})

M.SchemaVersionListItem = schema.new({
    id = id.from(_N, "SchemaVersionListItem"),
    type = "structure",
    members = {
        SchemaId = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "SchemaId"),
            type = "string",
            name = "SchemaId",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        SemanticVersion = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "SemanticVersion"),
            type = "string",
            name = "SemanticVersion",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "SchemaVersionListItem", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSchemaVersionsOutput = schema.new({
    id = id.from(_N, "ListSchemaVersionsOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ListSchemaVersionsOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.SchemaVersionListItem,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSchemaVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MatterCluster = schema.new({
    id = id.from(_N, "MatterCluster"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MatterCluster", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        attributes = schema.new({
            id = id.from(_N, "MatterCluster", "attributes"),
            type = "document",
            name = "attributes",
            target_id = prelude.Document.id,
        }),
        commands = schema.new({
            id = id.from(_N, "MatterCluster", "commands"),
            type = "map",
            name = "commands",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        events = schema.new({
            id = id.from(_N, "MatterCluster", "events"),
            type = "map",
            name = "events",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.MatterEndpoint = schema.new({
    id = id.from(_N, "MatterEndpoint"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "MatterEndpoint", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        clusters = schema.new({
            id = id.from(_N, "MatterEndpoint", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = M.MatterCluster,
        }),
    },
})

M.SendConnectorEventInput = schema.new({
    id = id.from(_N, "SendConnectorEventInput"),
    type = "structure",
    members = {
        ConnectorId = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "ConnectorId"),
            type = "string",
            name = "ConnectorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Operation = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "Operation"),
            type = "string",
            name = "Operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationVersion = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "OperationVersion"),
            type = "string",
            name = "OperationVersion",
            target_id = prelude.String.id,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "StatusCode"),
            type = "integer",
            name = "StatusCode",
            target_id = prelude.Integer.id,
        }),
        Message = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        DeviceDiscoveryId = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "DeviceDiscoveryId"),
            type = "string",
            name = "DeviceDiscoveryId",
            target_id = prelude.String.id,
        }),
        ConnectorDeviceId = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "ConnectorDeviceId"),
            type = "string",
            name = "ConnectorDeviceId",
            target_id = prelude.String.id,
        }),
        TraceId = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "TraceId"),
            type = "string",
            name = "TraceId",
            target_id = prelude.String.id,
        }),
        Devices = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "Devices"),
            type = "list",
            name = "Devices",
            target_id = prelude.Document.id,
            list_member = M.Device,
        }),
        MatterEndpoint = schema.new({
            id = id.from(_N, "SendConnectorEventInput", "MatterEndpoint"),
            type = "structure",
            name = "MatterEndpoint",
            target_id = id.from(_N, "MatterEndpoint"),
            target = M.MatterEndpoint,
        }),
    },
})

M.SendConnectorEventOutput = schema.new({
    id = id.from(_N, "SendConnectorEventOutput"),
    type = "structure",
    members = {
        ConnectorId = schema.new({
            id = id.from(_N, "SendConnectorEventOutput", "ConnectorId"),
            type = "string",
            name = "ConnectorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
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

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
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

return M
