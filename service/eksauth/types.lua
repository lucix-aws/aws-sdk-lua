local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssumedRoleUser = {
    type = "structure",
    id = "AssumedRoleUser",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assumeRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeRoleForPodIdentityInput = {
    type = "structure",
    id = "AssumeRoleForPodIdentityInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        token = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Credentials = {
    type = "structure",
    id = "Credentials",
    members = {
        sessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiration = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.PodIdentityAssociation = {
    type = "structure",
    id = "PodIdentityAssociation",
    members = {
        associationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Subject = {
    type = "structure",
    id = "Subject",
    members = {
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeRoleForPodIdentityOutput = {
    type = "structure",
    id = "AssumeRoleForPodIdentityOutput",
    members = {
        subject = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Subject }),
        audience = {
            type = "string",
            traits = {
                required = true,
            },
        },
        podIdentityAssociation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PodIdentityAssociation }),
        assumedRoleUser = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssumedRoleUser }),
        credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Credentials }),
    },
}

M.ExpiredTokenException = {
    type = "structure",
    id = "ExpiredTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    id = "InvalidTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
