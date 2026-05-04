local M = {}

M.OAuth2ErrorCode = {
    TOKEN_EXPIRED = "TOKEN_EXPIRED",
    USER_CREDENTIALS_CHANGED = "USER_CREDENTIALS_CHANGED",
    INSUFFICIENT_PERMISSIONS = "INSUFFICIENT_PERMISSIONS",
    AUTHCODE_EXPIRED = "AUTHCODE_EXPIRED",
    SERVER_ERROR = "server_error",
    INVALID_REQUEST = "INVALID_REQUEST",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        error = {
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

M.AccessToken = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                json_name = "accessKeyId",
                required = true,
            },
        },
        secretAccessKey = {
            type = "string",
            traits = {
                json_name = "secretAccessKey",
                required = true,
            },
        },
        sessionToken = {
            type = "string",
            traits = {
                json_name = "sessionToken",
                required = true,
            },
        },
    },
}

M.CreateOAuth2TokenRequestBody = {
    type = "structure",
    members = {
        clientId = {
            type = "string",
            traits = {
                json_name = "clientId",
                required = true,
            },
        },
        grantType = {
            type = "string",
            traits = {
                json_name = "grantType",
                required = true,
            },
        },
        code = {
            type = "string",
        },
        redirectUri = {
            type = "string",
            traits = {
                json_name = "redirectUri",
            },
        },
        codeVerifier = {
            type = "string",
            traits = {
                json_name = "codeVerifier",
            },
        },
        refreshToken = {
            type = "string",
            traits = {
                json_name = "refreshToken",
            },
        },
    },
}

M.CreateOAuth2TokenInput = {
    type = "structure",
    members = {
        tokenInput = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateOAuth2TokenRequestBody }),
    },
}

M.CreateOAuth2TokenResponseBody = {
    type = "structure",
    members = {
        accessToken = setmetatable({ traits = {
            json_name = "accessToken",
            required = true,
        } }, { __index = M.AccessToken }),
        tokenType = {
            type = "string",
            traits = {
                json_name = "tokenType",
                required = true,
            },
        },
        expiresIn = {
            type = "integer",
            traits = {
                json_name = "expiresIn",
                required = true,
            },
        },
        refreshToken = {
            type = "string",
            traits = {
                json_name = "refreshToken",
                required = true,
            },
        },
        idToken = {
            type = "string",
            traits = {
                json_name = "idToken",
            },
        },
    },
}

M.CreateOAuth2TokenOutput = {
    type = "structure",
    members = {
        tokenOutput = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateOAuth2TokenResponseBody }),
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        error = {
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

M.TooManyRequestsError = {
    type = "structure",
    error = "client",
    members = {
        error = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        error = {
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

return M
