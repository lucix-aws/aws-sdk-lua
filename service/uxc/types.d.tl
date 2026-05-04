local record GetAccountCustomizationsInput
end

local record GetAccountCustomizationsOutput
    accountColor: string
    visibleServices: {string}
    visibleRegions: {string}
end

local record ListServicesInput
    nextToken: string
    maxResults: number
end

local record ListServicesOutput
    nextToken: string
    services: {string}
end

local record UpdateAccountCustomizationsInput
    accountColor: string
    visibleServices: {string}
    visibleRegions: {string}
end

local record UpdateAccountCustomizationsOutput
    accountColor: string
    visibleServices: {string}
    visibleRegions: {string}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local type AccountColor = "none" | "pink" | "purple" | "darkBlue" | "lightBlue" | "teal" | "green" | "yellow" | "orange" | "red"

local record M
    GetAccountCustomizationsInput: GetAccountCustomizationsInput
    GetAccountCustomizationsOutput: GetAccountCustomizationsOutput
    ListServicesInput: ListServicesInput
    ListServicesOutput: ListServicesOutput
    UpdateAccountCustomizationsInput: UpdateAccountCustomizationsInput
    UpdateAccountCustomizationsOutput: UpdateAccountCustomizationsOutput
end

return M
