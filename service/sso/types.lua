local M = {}

M.AccountInfo = {
    type = "structure",
    id = "AccountInfo",
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
    id = "GetRoleCredentialsInput",
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
    id = "RoleCredentials",
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
    id = "GetRoleCredentialsOutput",
    members = {
        roleCredentials = M.RoleCredentials,
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

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAccountRolesInput = {
    type = "structure",
    id = "ListAccountRolesInput",
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
    id = "RoleInfo",
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
    id = "ListAccountRolesOutput",
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
    id = "ListAccountsInput",
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
    id = "ListAccountsOutput",
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
    id = "LogoutInput",
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
    id = "LogoutOutput",
}

return M
