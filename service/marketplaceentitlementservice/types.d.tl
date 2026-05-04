local record GetEntitlementsInput
    ProductCode: string
    Filter: {string : {string}}
    NextToken: string
    MaxResults: number
end

local record GetEntitlementsOutput
    Entitlements: {Entitlement}
    NextToken: string
end

local record InternalServiceErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
end

local record M
    GetEntitlementsInput: GetEntitlementsInput
    GetEntitlementsOutput: GetEntitlementsOutput
end

return M
