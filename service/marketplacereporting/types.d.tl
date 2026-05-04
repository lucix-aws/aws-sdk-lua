local record GetBuyerDashboardInput
    dashboardIdentifier: string
    embeddingDomains: {string}
end

local record GetBuyerDashboardOutput
    embedUrl: string
    dashboardIdentifier: string
    embeddingDomains: {string}
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalServerException
    message: string
end

local record UnauthorizedException
    message: string
end

local record M
    GetBuyerDashboardInput: GetBuyerDashboardInput
    GetBuyerDashboardOutput: GetBuyerDashboardOutput
end

return M
