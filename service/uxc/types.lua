local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "GetAccountCustomizationsInput",
}

M.GetAccountCustomizationsOutput = {
    type = "structure",
    id = "GetAccountCustomizationsOutput",
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
    id = "InternalServerException",
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
    id = "ThrottlingException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "ListServicesInput",
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
    id = "ListServicesOutput",
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
    id = "UpdateAccountCustomizationsInput",
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
    id = "UpdateAccountCustomizationsOutput",
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
