local M = {}

M.AccountInfo = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        accountName = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
    },
}

M.GetRoleCredentialsInput = {
    type = "structure",
    members = {
        roleName = {
            type = "string",
            traits = {
                http_query = "role_name",
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_query = "account_id",
                required = true,
            },
        },
        accessToken = {
            type = "string",
            traits = {
                http_header = "x-amz-sso_bearer_token",
                required = true,
            },
        },
    },
}

M.RoleCredentials = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        sessionToken = {
            type = "string",
        },
        expiration = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetRoleCredentialsOutput = {
    type = "structure",
    members = {
        roleCredentials = M.RoleCredentials,
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAccountRolesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_result",
            },
        },
        accessToken = {
            type = "string",
            traits = {
                http_header = "x-amz-sso_bearer_token",
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_query = "account_id",
                required = true,
            },
        },
    },
}

M.RoleInfo = {
    type = "structure",
    members = {
        roleName = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
    },
}

M.ListAccountRolesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        roleList = {
            type = "list",
            member = M.RoleInfo,
        },
    },
}

M.ListAccountsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_result",
            },
        },
        accessToken = {
            type = "string",
            traits = {
                http_header = "x-amz-sso_bearer_token",
                required = true,
            },
        },
    },
}

M.ListAccountsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        accountList = {
            type = "list",
            member = M.AccountInfo,
        },
    },
}

M.LogoutInput = {
    type = "structure",
    members = {
        accessToken = {
            type = "string",
            traits = {
                http_header = "x-amz-sso_bearer_token",
                required = true,
            },
        },
    },
}

M.LogoutOutput = {
    type = "structure",
}

return M
