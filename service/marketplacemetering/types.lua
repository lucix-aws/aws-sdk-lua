local M = {}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UsageAllocation = {
    type = "structure",
    id = "UsageAllocation",
    members = {
        AllocatedUsageQuantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UsageRecord = {
    type = "structure",
    id = "UsageRecord",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CustomerIdentifier = {
            type = "string",
            traits = {
                default = "",
            },
        },
        Dimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
        },
        UsageAllocations = {
            type = "list",
            member = M.UsageAllocation,
        },
        CustomerAWSAccountId = {
            type = "string",
        },
        LicenseArn = {
            type = "string",
        },
    },
}

M.BatchMeterUsageInput = {
    type = "structure",
    id = "BatchMeterUsageInput",
    members = {
        UsageRecords = {
            type = "list",
            member = M.UsageRecord,
            traits = {
                required = true,
            },
        },
        ProductCode = {
            type = "string",
            traits = {
                default = "",
            },
        },
    },
}

M.UsageRecordResultStatus = {
    SUCCESS = "Success",
    CUSTOMER_NOT_SUBSCRIBED = "CustomerNotSubscribed",
    DUPLICATE_RECORD = "DuplicateRecord",
}

M.UsageRecordResult = {
    type = "structure",
    id = "UsageRecordResult",
    members = {
        UsageRecord = M.UsageRecord,
        MeteringRecordId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.BatchMeterUsageOutput = {
    type = "structure",
    id = "BatchMeterUsageOutput",
    members = {
        Results = {
            type = "list",
            member = M.UsageRecordResult,
        },
        UnprocessedRecords = {
            type = "list",
            member = M.UsageRecord,
        },
    },
}

M.DisabledApiException = {
    type = "structure",
    id = "DisabledApiException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCustomerIdentifierException = {
    type = "structure",
    id = "InvalidCustomerIdentifierException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLicenseException = {
    type = "structure",
    id = "InvalidLicenseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidProductCodeException = {
    type = "structure",
    id = "InvalidProductCodeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    id = "InvalidTagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUsageAllocationsException = {
    type = "structure",
    id = "InvalidUsageAllocationsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUsageDimensionException = {
    type = "structure",
    id = "InvalidUsageDimensionException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.TimestampOutOfBoundsException = {
    type = "structure",
    id = "TimestampOutOfBoundsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerNotEntitledException = {
    type = "structure",
    id = "CustomerNotEntitledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DuplicateRequestException = {
    type = "structure",
    id = "DuplicateRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotencyConflictException = {
    type = "structure",
    id = "IdempotencyConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEndpointRegionException = {
    type = "structure",
    id = "InvalidEndpointRegionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MeterUsageInput = {
    type = "structure",
    id = "MeterUsageInput",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UsageDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UsageQuantity = {
            type = "integer",
        },
        DryRun = {
            type = "boolean",
        },
        UsageAllocations = {
            type = "list",
            member = M.UsageAllocation,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.MeterUsageOutput = {
    type = "structure",
    id = "MeterUsageOutput",
    members = {
        MeteringRecordId = {
            type = "string",
        },
    },
}

M.InvalidPublicKeyVersionException = {
    type = "structure",
    id = "InvalidPublicKeyVersionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRegionException = {
    type = "structure",
    id = "InvalidRegionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PlatformNotSupportedException = {
    type = "structure",
    id = "PlatformNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterUsageInput = {
    type = "structure",
    id = "RegisterUsageInput",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKeyVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Nonce = {
            type = "string",
        },
    },
}

M.RegisterUsageOutput = {
    type = "structure",
    id = "RegisterUsageOutput",
    members = {
        PublicKeyRotationTimestamp = {
            type = "timestamp",
        },
        Signature = {
            type = "string",
        },
    },
}

M.ExpiredTokenException = {
    type = "structure",
    id = "ExpiredTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    id = "InvalidTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResolveCustomerInput = {
    type = "structure",
    id = "ResolveCustomerInput",
    members = {
        RegistrationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolveCustomerOutput = {
    type = "structure",
    id = "ResolveCustomerOutput",
    members = {
        CustomerIdentifier = {
            type = "string",
        },
        ProductCode = {
            type = "string",
        },
        CustomerAWSAccountId = {
            type = "string",
        },
        LicenseArn = {
            type = "string",
        },
    },
}

return M
