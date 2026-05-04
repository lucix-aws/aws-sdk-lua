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

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBuyerDashboardInput = {
    type = "structure",
    members = {
        dashboardIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        embeddingDomains = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBuyerDashboardOutput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
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

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
