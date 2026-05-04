local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.GetRevocationStatusInput = {
    type = "structure",
    members = {
        signatureTimestamp = {
            type = "timestamp",
            traits = {
                http_query = "signatureTimestamp",
                required = true,
            },
        },
        platformId = {
            type = "string",
            traits = {
                http_query = "platformId",
                required = true,
            },
        },
        profileVersionArn = {
            type = "string",
            traits = {
                http_query = "profileVersionArn",
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                http_query = "jobArn",
                required = true,
            },
        },
        certificateHashes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "certificateHashes",
                required = true,
            },
        },
    },
}

M.GetRevocationStatusOutput = {
    type = "structure",
    members = {
        revokedEntities = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

return M
