local record GetExportInput
    exportArn: string
end

local record GetExportOutput
    exportArn: string
    clientToken: string
    exportStatus: string
    domainName: string
    requestedAt: number
    s3Bucket: string
    s3KeyPrefix: string
    s3SseAlgorithm: string
    s3SseKmsKeyId: string
    s3BucketOwner: string
    failureCode: string
    failureMessage: string
    exportManifest: string
    itemsCount: number
    exportDataCutoffTime: number
end

local record ListExportsInput
    domainName: string
    maxResults: number
    nextToken: string
end

local record ListExportsOutput
    exportSummaries: {ExportSummary}
    nextToken: string
end

local record StartDomainExportInput
    clientToken: string
    domainName: string
    s3Bucket: string
    s3KeyPrefix: string
    s3SseAlgorithm: string
    s3SseKmsKeyId: string
    s3BucketOwner: string
end

local record StartDomainExportOutput
    clientToken: string
    exportArn: string
    requestedAt: number
end

local record InvalidParameterValueException
    message: string
end

local record NoSuchExportException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NoSuchDomainException
    message: string
end

local record ConflictException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NoSuchDomainException
    message: string
end

local record NumberExportsLimitExceeded
    message: string
end

local type S3SseAlgorithm = "AES256" | "KMS"

local type ExportStatus = "PENDING" | "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local record M
    GetExportInput: GetExportInput
    GetExportOutput: GetExportOutput
    ListExportsInput: ListExportsInput
    ListExportsOutput: ListExportsOutput
    StartDomainExportInput: StartDomainExportInput
    StartDomainExportOutput: StartDomainExportOutput
end

return M
