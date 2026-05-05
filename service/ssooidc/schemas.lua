local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssooidc"

local M = {}

M.Scopes = schema.new({ type = "list", list_member = prelude.String })

M.RedirectUris = schema.new({ type = "list", list_member = prelude.String })

M.GrantTypes = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "AccessDeniedException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "AccessDeniedException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "AccessDeniedException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizationPendingException = schema.new({
    id = id.from(_N, "AuthorizationPendingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "AuthorizationPendingException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "AuthorizationPendingException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.AwsAdditionalDetails = schema.new({
    id = id.from(_N, "AwsAdditionalDetails"),
    type = "structure",
    members = {
        identityContext = schema.new({
            id = id.from(_N, "AwsAdditionalDetails", "identityContext"),
            type = "string",
            name = "identityContext",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTokenInput = schema.new({
    id = id.from(_N, "CreateTokenRequest"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "CreateTokenInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "CreateTokenInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        grantType = schema.new({
            id = id.from(_N, "CreateTokenInput", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deviceCode = schema.new({
            id = id.from(_N, "CreateTokenInput", "deviceCode"),
            type = "string",
            name = "deviceCode",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "CreateTokenInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "CreateTokenInput", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "CreateTokenInput", "scope"),
            type = "list",
            name = "scope",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        redirectUri = schema.new({
            id = id.from(_N, "CreateTokenInput", "redirectUri"),
            type = "string",
            name = "redirectUri",
            target_id = prelude.String.id,
        }),
        codeVerifier = schema.new({
            id = id.from(_N, "CreateTokenInput", "codeVerifier"),
            type = "string",
            name = "codeVerifier",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTokenOutput = schema.new({
    id = id.from(_N, "CreateTokenResponse"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "CreateTokenOutput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        tokenType = schema.new({
            id = id.from(_N, "CreateTokenOutput", "tokenType"),
            type = "string",
            name = "tokenType",
            target_id = prelude.String.id,
        }),
        expiresIn = schema.new({
            id = id.from(_N, "CreateTokenOutput", "expiresIn"),
            type = "integer",
            name = "expiresIn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        refreshToken = schema.new({
            id = id.from(_N, "CreateTokenOutput", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        idToken = schema.new({
            id = id.from(_N, "CreateTokenOutput", "idToken"),
            type = "string",
            name = "idToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExpiredTokenException = schema.new({
    id = id.from(_N, "ExpiredTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "ExpiredTokenException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "ExpiredTokenException", "error_description"),
            type = "string",
            name = "error_description",
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
        error = schema.new({
            id = id.from(_N, "InternalServerException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InternalServerException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidClientException = schema.new({
    id = id.from(_N, "InvalidClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidClientException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidClientException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidGrantException = schema.new({
    id = id.from(_N, "InvalidGrantException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidGrantException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidGrantException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
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
        error = schema.new({
            id = id.from(_N, "InvalidRequestException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "InvalidRequestException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidRequestException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidScopeException = schema.new({
    id = id.from(_N, "InvalidScopeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidScopeException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidScopeException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.SlowDownException = schema.new({
    id = id.from(_N, "SlowDownException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "SlowDownException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "SlowDownException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedClientException = schema.new({
    id = id.from(_N, "UnauthorizedClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "UnauthorizedClientException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedGrantTypeException = schema.new({
    id = id.from(_N, "UnsupportedGrantTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "UnsupportedGrantTypeException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "UnsupportedGrantTypeException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTokenWithIAMInput = schema.new({
    id = id.from(_N, "CreateTokenWithIAMRequest"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        grantType = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        refreshToken = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        assertion = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "assertion"),
            type = "string",
            name = "assertion",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "scope"),
            type = "list",
            name = "scope",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        redirectUri = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "redirectUri"),
            type = "string",
            name = "redirectUri",
            target_id = prelude.String.id,
        }),
        subjectToken = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "subjectToken"),
            type = "string",
            name = "subjectToken",
            target_id = prelude.String.id,
        }),
        subjectTokenType = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "subjectTokenType"),
            type = "string",
            name = "subjectTokenType",
            target_id = prelude.String.id,
        }),
        requestedTokenType = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "requestedTokenType"),
            type = "string",
            name = "requestedTokenType",
            target_id = prelude.String.id,
        }),
        codeVerifier = schema.new({
            id = id.from(_N, "CreateTokenWithIAMInput", "codeVerifier"),
            type = "string",
            name = "codeVerifier",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTokenWithIAMOutput = schema.new({
    id = id.from(_N, "CreateTokenWithIAMResponse"),
    type = "structure",
    members = {
        accessToken = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        tokenType = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "tokenType"),
            type = "string",
            name = "tokenType",
            target_id = prelude.String.id,
        }),
        expiresIn = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "expiresIn"),
            type = "integer",
            name = "expiresIn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        refreshToken = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "refreshToken"),
            type = "string",
            name = "refreshToken",
            target_id = prelude.String.id,
        }),
        idToken = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "idToken"),
            type = "string",
            name = "idToken",
            target_id = prelude.String.id,
        }),
        issuedTokenType = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "issuedTokenType"),
            type = "string",
            name = "issuedTokenType",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "scope"),
            type = "list",
            name = "scope",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        awsAdditionalDetails = schema.new({
            id = id.from(_N, "CreateTokenWithIAMOutput", "awsAdditionalDetails"),
            type = "structure",
            name = "awsAdditionalDetails",
            target_id = id.from(_N, "AwsAdditionalDetails"),
            target = M.AwsAdditionalDetails,
        }),
    },
})

M.InvalidRequestRegionException = schema.new({
    id = id.from(_N, "InvalidRequestRegionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidRequestRegionException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidRequestRegionException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
        endpoint = schema.new({
            id = id.from(_N, "InvalidRequestRegionException", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "InvalidRequestRegionException", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidClientMetadataException = schema.new({
    id = id.from(_N, "InvalidClientMetadataException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidClientMetadataException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidClientMetadataException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRedirectUriException = schema.new({
    id = id.from(_N, "InvalidRedirectUriException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        error = schema.new({
            id = id.from(_N, "InvalidRedirectUriException", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        error_description = schema.new({
            id = id.from(_N, "InvalidRedirectUriException", "error_description"),
            type = "string",
            name = "error_description",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterClientInput = schema.new({
    id = id.from(_N, "RegisterClientRequest"),
    type = "structure",
    members = {
        clientName = schema.new({
            id = id.from(_N, "RegisterClientInput", "clientName"),
            type = "string",
            name = "clientName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientType = schema.new({
            id = id.from(_N, "RegisterClientInput", "clientType"),
            type = "string",
            name = "clientType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scopes = schema.new({
            id = id.from(_N, "RegisterClientInput", "scopes"),
            type = "list",
            name = "scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        redirectUris = schema.new({
            id = id.from(_N, "RegisterClientInput", "redirectUris"),
            type = "list",
            name = "redirectUris",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        grantTypes = schema.new({
            id = id.from(_N, "RegisterClientInput", "grantTypes"),
            type = "list",
            name = "grantTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        issuerUrl = schema.new({
            id = id.from(_N, "RegisterClientInput", "issuerUrl"),
            type = "string",
            name = "issuerUrl",
            target_id = prelude.String.id,
        }),
        entitledApplicationArn = schema.new({
            id = id.from(_N, "RegisterClientInput", "entitledApplicationArn"),
            type = "string",
            name = "entitledApplicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterClientOutput = schema.new({
    id = id.from(_N, "RegisterClientResponse"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "RegisterClientOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
        clientSecret = schema.new({
            id = id.from(_N, "RegisterClientOutput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
        }),
        clientIdIssuedAt = schema.new({
            id = id.from(_N, "RegisterClientOutput", "clientIdIssuedAt"),
            type = "long",
            name = "clientIdIssuedAt",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        clientSecretExpiresAt = schema.new({
            id = id.from(_N, "RegisterClientOutput", "clientSecretExpiresAt"),
            type = "long",
            name = "clientSecretExpiresAt",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        authorizationEndpoint = schema.new({
            id = id.from(_N, "RegisterClientOutput", "authorizationEndpoint"),
            type = "string",
            name = "authorizationEndpoint",
            target_id = prelude.String.id,
        }),
        tokenEndpoint = schema.new({
            id = id.from(_N, "RegisterClientOutput", "tokenEndpoint"),
            type = "string",
            name = "tokenEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDeviceAuthorizationInput = schema.new({
    id = id.from(_N, "StartDeviceAuthorizationRequest"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startUrl = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationInput", "startUrl"),
            type = "string",
            name = "startUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDeviceAuthorizationOutput = schema.new({
    id = id.from(_N, "StartDeviceAuthorizationResponse"),
    type = "structure",
    members = {
        deviceCode = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "deviceCode"),
            type = "string",
            name = "deviceCode",
            target_id = prelude.String.id,
        }),
        userCode = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "userCode"),
            type = "string",
            name = "userCode",
            target_id = prelude.String.id,
        }),
        verificationUri = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "verificationUri"),
            type = "string",
            name = "verificationUri",
            target_id = prelude.String.id,
        }),
        verificationUriComplete = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "verificationUriComplete"),
            type = "string",
            name = "verificationUriComplete",
            target_id = prelude.String.id,
        }),
        expiresIn = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "expiresIn"),
            type = "integer",
            name = "expiresIn",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        interval = schema.new({
            id = id.from(_N, "StartDeviceAuthorizationOutput", "interval"),
            type = "integer",
            name = "interval",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
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
