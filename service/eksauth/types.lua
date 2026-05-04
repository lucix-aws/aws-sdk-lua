local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssumedRoleUser = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
