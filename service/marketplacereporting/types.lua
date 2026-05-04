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

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBuyerDashboardInput = {
    type = "structure",
    id = "GetBuyerDashboardInput",
    members = {
        dashboardIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        embeddingDomains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetBuyerDashboardOutput = {
    type = "structure",
    id = "GetBuyerDashboardOutput",
    members = {
        embedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        embeddingDomains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
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

return M
