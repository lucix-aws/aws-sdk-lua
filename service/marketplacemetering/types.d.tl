local record BatchMeterUsageInput
    UsageRecords: {UsageRecord}
    ProductCode: string
end

local record BatchMeterUsageOutput
    Results: {UsageRecordResult}
    UnprocessedRecords: {UsageRecord}
end

local record MeterUsageInput
    ProductCode: string
    Timestamp: number
    UsageDimension: string
    UsageQuantity: number
    DryRun: boolean
    UsageAllocations: {UsageAllocation}
    ClientToken: string
end

local record MeterUsageOutput
    MeteringRecordId: string
end

local record RegisterUsageInput
    ProductCode: string
    PublicKeyVersion: number
    Nonce: string
end

local record RegisterUsageOutput
    PublicKeyRotationTimestamp: number
    Signature: string
end

local record ResolveCustomerInput
    RegistrationToken: string
end

local record ResolveCustomerOutput
    CustomerIdentifier: string
    ProductCode: string
    CustomerAWSAccountId: string
    LicenseArn: string
end

local record DisabledApiException
    message: string
end

local record InternalServiceErrorException
    message: string
end

local record InvalidCustomerIdentifierException
    message: string
end

local record InvalidLicenseException
    message: string
end

local record InvalidProductCodeException
    message: string
end

local record InvalidTagException
    message: string
end

local record InvalidUsageAllocationsException
    message: string
end

local record InvalidUsageDimensionException
    message: string
end

local record ThrottlingException
    message: string
end

local record TimestampOutOfBoundsException
    message: string
end

local record CustomerNotEntitledException
    message: string
end

local record DuplicateRequestException
    message: string
end

local record IdempotencyConflictException
    message: string
end

local record InternalServiceErrorException
    message: string
end

local record InvalidEndpointRegionException
    message: string
end

local record InvalidProductCodeException
    message: string
end

local record InvalidTagException
    message: string
end

local record InvalidUsageAllocationsException
    message: string
end

local record InvalidUsageDimensionException
    message: string
end

local record ThrottlingException
    message: string
end

local record TimestampOutOfBoundsException
    message: string
end

local record CustomerNotEntitledException
    message: string
end

local record DisabledApiException
    message: string
end

local record InternalServiceErrorException
    message: string
end

local record InvalidProductCodeException
    message: string
end

local record InvalidPublicKeyVersionException
    message: string
end

local record InvalidRegionException
    message: string
end

local record PlatformNotSupportedException
    message: string
end

local record ThrottlingException
    message: string
end

local record DisabledApiException
    message: string
end

local record ExpiredTokenException
    message: string
end

local record InternalServiceErrorException
    message: string
end

local record InvalidTokenException
    message: string
end

local record ThrottlingException
    message: string
end

local record M
    BatchMeterUsageInput: BatchMeterUsageInput
    BatchMeterUsageOutput: BatchMeterUsageOutput
    MeterUsageInput: MeterUsageInput
    MeterUsageOutput: MeterUsageOutput
    RegisterUsageInput: RegisterUsageInput
    RegisterUsageOutput: RegisterUsageOutput
    ResolveCustomerInput: ResolveCustomerInput
    ResolveCustomerOutput: ResolveCustomerOutput
end

return M
