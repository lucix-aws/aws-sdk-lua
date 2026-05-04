local record CreateOAuth2TokenInput
    tokenInput: CreateOAuth2TokenRequestBody
end

local record CreateOAuth2TokenOutput
    tokenOutput: CreateOAuth2TokenResponseBody
end

local record AccessDeniedException
    error: string
    message: string
end

local record InternalServerException
    error: string
    message: string
end

local record TooManyRequestsError
    error: string
    message: string
end

local record ValidationException
    error: string
    message: string
end

local record M
    CreateOAuth2TokenInput: CreateOAuth2TokenInput
    CreateOAuth2TokenOutput: CreateOAuth2TokenOutput
end

return M
