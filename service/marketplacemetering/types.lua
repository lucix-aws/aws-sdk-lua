local M = {}

M.Tag = {
    type = "structure",
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
    members = {
        AllocatedUsageQuantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UsageRecord = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CustomerIdentifier = {
            type = "string",
        },
        Dimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
        },
        UsageAllocations = {
            type = "list",
            member_type = "structure",
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
    members = {
        UsageRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ProductCode = {
            type = "string",
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
    members = {
        UsageRecord = {
            type = "structure",
        },
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
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedRecords = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DisabledApiException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCustomerIdentifierException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLicenseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidProductCodeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUsageAllocationsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUsageDimensionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TimestampOutOfBoundsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerNotEntitledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DuplicateRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotencyConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEndpointRegionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MeterUsageInput = {
    type = "structure",
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
            type = "number",
        },
        DryRun = {
            type = "boolean",
        },
        UsageAllocations = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.MeterUsageOutput = {
    type = "structure",
    members = {
        MeteringRecordId = {
            type = "string",
        },
    },
}

M.InvalidPublicKeyVersionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRegionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PlatformNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterUsageInput = {
    type = "structure",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicKeyVersion = {
            type = "number",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResolveCustomerInput = {
    type = "structure",
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
