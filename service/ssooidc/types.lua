local M = {}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED = "KMS_AccessDeniedException",
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        identityContext = {
            type = "string",
        },
    },
}

M.CreateTokenInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        accessToken = {
            type = "string",
        },
        tokenType = {
            type = "string",
        },
        expiresIn = {
            type = "number",
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
            member_type = "string",
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
    members = {
        accessToken = {
            type = "string",
        },
        tokenType = {
            type = "string",
        },
        expiresIn = {
            type = "number",
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
            member_type = "string",
        },
        awsAdditionalDetails = {
            type = "structure",
        },
    },
}

M.InvalidRequestRegionException = {
    type = "structure",
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
            member_type = "string",
        },
        redirectUris = {
            type = "list",
            member_type = "string",
        },
        grantTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        clientId = {
            type = "string",
        },
        clientSecret = {
            type = "string",
        },
        clientIdIssuedAt = {
            type = "number",
        },
        clientSecretExpiresAt = {
            type = "number",
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
            type = "number",
        },
        interval = {
            type = "number",
        },
    },
}

return M
