local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountColor = {
    NONE = "none",
    PINK = "pink",
    PURPLE = "purple",
    DARKBLUE = "darkBlue",
    LIGHTBLUE = "lightBlue",
    TEAL = "teal",
    GREEN = "green",
    YELLOW = "yellow",
    ORANGE = "orange",
    RED = "red",
}

M.GetAccountCustomizationsInput = {
    type = "structure",
}

M.GetAccountCustomizationsOutput = {
    type = "structure",
    members = {
        accountColor = {
            type = "string",
        },
        visibleServices = {
            type = "list",
            member = { type = "string" },
        },
        visibleRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        path = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        services = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateAccountCustomizationsInput = {
    type = "structure",
    members = {
        accountColor = {
            type = "string",
        },
        visibleServices = {
            type = "list",
            member = { type = "string" },
        },
        visibleRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateAccountCustomizationsOutput = {
    type = "structure",
    members = {
        accountColor = {
            type = "string",
        },
        visibleServices = {
            type = "list",
            member = { type = "string" },
        },
        visibleRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
