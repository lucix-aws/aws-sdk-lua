local M = {}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED = "KMS_AccessDeniedException",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.AuthorizationPendingException = {
    type = "structure",
    id = "AuthorizationPendingException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.AwsAdditionalDetails = {
    type = "structure",
    id = "AwsAdditionalDetails",
    members = {
        identityContext = {
            type = "string",
        },
    },
}

M.CreateTokenInput = {
    type = "structure",
    id = "CreateTokenInput",
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
        grantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceCode = {
            type = "string",
        },
        code = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        scope = {
            type = "list",
            member = { type = "string" },
        },
        redirectUri = {
            type = "string",
        },
        codeVerifier = {
            type = "string",
        },
    },
}

M.CreateTokenOutput = {
    type = "structure",
    id = "CreateTokenOutput",
    members = {
        accessToken = {
            type = "string",
        },
        tokenType = {
            type = "string",
        },
        expiresIn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        refreshToken = {
            type = "string",
        },
        idToken = {
            type = "string",
        },
    },
}

M.ExpiredTokenException = {
    type = "structure",
    id = "ExpiredTokenException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InvalidClientException = {
    type = "structure",
    id = "InvalidClientException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InvalidGrantException = {
    type = "structure",
    id = "InvalidGrantException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InvalidRequestExceptionReason = {
    KMS_KEY_NOT_FOUND = "KMS_NotFoundException",
    KMS_INVALID_KEY_USAGE = "KMS_InvalidKeyUsageException",
    KMS_INVALID_STATE = "KMS_InvalidStateException",
    KMS_DISABLED_KEY = "KMS_DisabledException",
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InvalidScopeException = {
    type = "structure",
    id = "InvalidScopeException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.SlowDownException = {
    type = "structure",
    id = "SlowDownException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.UnauthorizedClientException = {
    type = "structure",
    id = "UnauthorizedClientException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.UnsupportedGrantTypeException = {
    type = "structure",
    id = "UnsupportedGrantTypeException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.CreateTokenWithIAMInput = {
    type = "structure",
    id = "CreateTokenWithIAMInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
        },
        refreshToken = {
            type = "string",
        },
        assertion = {
            type = "string",
        },
        scope = {
            type = "list",
            member = { type = "string" },
        },
        redirectUri = {
            type = "string",
        },
        subjectToken = {
            type = "string",
        },
        subjectTokenType = {
            type = "string",
        },
        requestedTokenType = {
            type = "string",
        },
        codeVerifier = {
            type = "string",
        },
    },
}

M.CreateTokenWithIAMOutput = {
    type = "structure",
    id = "CreateTokenWithIAMOutput",
    members = {
        accessToken = {
            type = "string",
        },
        tokenType = {
            type = "string",
        },
        expiresIn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        refreshToken = {
            type = "string",
        },
        idToken = {
            type = "string",
        },
        issuedTokenType = {
            type = "string",
        },
        scope = {
            type = "list",
            member = { type = "string" },
        },
        awsAdditionalDetails = M.AwsAdditionalDetails,
    },
}

M.InvalidRequestRegionException = {
    type = "structure",
    id = "InvalidRequestRegionException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.InvalidClientMetadataException = {
    type = "structure",
    id = "InvalidClientMetadataException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.InvalidRedirectUriException = {
    type = "structure",
    id = "InvalidRedirectUriException",
    error = "client",
    members = {
        error = {
            type = "string",
        },
        error_description = {
            type = "string",
        },
    },
}

M.RegisterClientInput = {
    type = "structure",
    id = "RegisterClientInput",
    members = {
        clientName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = { type = "string" },
        },
        redirectUris = {
            type = "list",
            member = { type = "string" },
        },
        grantTypes = {
            type = "list",
            member = { type = "string" },
        },
        issuerUrl = {
            type = "string",
        },
        entitledApplicationArn = {
            type = "string",
        },
    },
}

M.RegisterClientOutput = {
    type = "structure",
    id = "RegisterClientOutput",
    members = {
        clientId = {
            type = "string",
        },
        clientSecret = {
            type = "string",
        },
        clientIdIssuedAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        clientSecretExpiresAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        authorizationEndpoint = {
            type = "string",
        },
        tokenEndpoint = {
            type = "string",
        },
    },
}

M.StartDeviceAuthorizationInput = {
    type = "structure",
    id = "StartDeviceAuthorizationInput",
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
        startUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDeviceAuthorizationOutput = {
    type = "structure",
    id = "StartDeviceAuthorizationOutput",
    members = {
        deviceCode = {
            type = "string",
        },
        userCode = {
            type = "string",
        },
        verificationUri = {
            type = "string",
        },
        verificationUriComplete = {
            type = "string",
        },
        expiresIn = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        interval = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

return M
