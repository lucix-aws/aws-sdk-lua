local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "GetRevocationStatusInput",
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
            member = { type = "string" },
            traits = {
                http_query = "certificateHashes",
                required = true,
            },
        },
    },
}

M.GetRevocationStatusOutput = {
    type = "structure",
    id = "GetRevocationStatusOutput",
    members = {
        revokedEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
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
    id = "TooManyRequestsException",
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
    id = "ValidationException",
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
