local record ScanSbomInput
    sbom: any
    outputFormat: string
end

local record ScanSbomOutput
    sbom: any
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type OutputFormat = "CYCLONE_DX_1_5" | "INSPECTOR" | "INSPECTOR_ALT"

local record M
    ScanSbomInput: ScanSbomInput
    ScanSbomOutput: ScanSbomOutput
end

return M
