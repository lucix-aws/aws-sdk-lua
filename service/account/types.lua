local M = {}

M.AcceptPrimaryEmailUpdateInput = {
    type = "structure",
    id = "AcceptPrimaryEmailUpdateInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Otp = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrimaryEmailUpdateStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
}

M.AcceptPrimaryEmailUpdateOutput = {
    type = "structure",
    id = "AcceptPrimaryEmailUpdateOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    INVALID_REGION_OPT_TARGET = "invalidRegionOptTarget",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.GetAccountInformationInput = {
    type = "structure",
    id = "GetAccountInformationInput",
    members = {
        AccountId = {
            type = "string",
        },
    },
}

M.AccountState = {
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
    ACTIVE = "ACTIVE",
    SUSPENDED = "SUSPENDED",
    CLOSED = "CLOSED",
}

M.GetAccountInformationOutput = {
    type = "structure",
    id = "GetAccountInformationOutput",
    members = {
        AccountId = {
            type = "string",
        },
        AccountName = {
            type = "string",
        },
        AccountCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AccountState = {
            type = "string",
        },
    },
}

M.PutAccountNameInput = {
    type = "structure",
    id = "PutAccountNameInput",
    members = {
        AccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.PutAccountNameOutput = {
    type = "structure",
    id = "PutAccountNameOutput",
}

M.AlternateContactType = {
    BILLING = "BILLING",
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
}

M.DeleteAlternateContactInput = {
    type = "structure",
    id = "DeleteAlternateContactInput",
    members = {
        AlternateContactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.DeleteAlternateContactOutput = {
    type = "structure",
    id = "DeleteAlternateContactOutput",
}

M.GetAlternateContactInput = {
    type = "structure",
    id = "GetAlternateContactInput",
    members = {
        AlternateContactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.AlternateContact = {
    type = "structure",
    id = "AlternateContact",
    members = {
        Name = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        AlternateContactType = {
            type = "string",
        },
    },
}

M.GetAlternateContactOutput = {
    type = "structure",
    id = "GetAlternateContactOutput",
    members = {
        AlternateContact = M.AlternateContact,
    },
}

M.PutAlternateContactInput = {
    type = "structure",
    id = "PutAlternateContactInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlternateContactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.PutAlternateContactOutput = {
    type = "structure",
    id = "PutAlternateContactOutput",
}

M.GetGovCloudAccountInformationInput = {
    type = "structure",
    id = "GetGovCloudAccountInformationInput",
    members = {
        StandardAccountId = {
            type = "string",
        },
    },
}

M.AwsAccountState = {
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
    ACTIVE = "ACTIVE",
    SUSPENDED = "SUSPENDED",
    CLOSED = "CLOSED",
}

M.GetGovCloudAccountInformationOutput = {
    type = "structure",
    id = "GetGovCloudAccountInformationOutput",
    members = {
        GovCloudAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    id = "ResourceUnavailableException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                http_header = "x-amzn-ErrorType",
            },
        },
    },
}

M.GetContactInformationInput = {
    type = "structure",
    id = "GetContactInformationInput",
    members = {
        AccountId = {
            type = "string",
        },
    },
}

M.ContactInformation = {
    type = "structure",
    id = "ContactInformation",
    members = {
        FullName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLine1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLine2 = {
            type = "string",
        },
        AddressLine3 = {
            type = "string",
        },
        City = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateOrRegion = {
            type = "string",
        },
        DistrictOrCounty = {
            type = "string",
        },
        PostalCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompanyName = {
            type = "string",
        },
        WebsiteUrl = {
            type = "string",
        },
    },
}

M.GetContactInformationOutput = {
    type = "structure",
    id = "GetContactInformationOutput",
    members = {
        ContactInformation = M.ContactInformation,
    },
}

M.PutContactInformationInput = {
    type = "structure",
    id = "PutContactInformationInput",
    members = {
        ContactInformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactInformation }),
        AccountId = {
            type = "string",
        },
    },
}

M.PutContactInformationOutput = {
    type = "structure",
    id = "PutContactInformationOutput",
}

M.GetPrimaryEmailInput = {
    type = "structure",
    id = "GetPrimaryEmailInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPrimaryEmailOutput = {
    type = "structure",
    id = "GetPrimaryEmailOutput",
    members = {
        PrimaryEmail = {
            type = "string",
        },
    },
}

M.StartPrimaryEmailUpdateInput = {
    type = "structure",
    id = "StartPrimaryEmailUpdateInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPrimaryEmailUpdateOutput = {
    type = "structure",
    id = "StartPrimaryEmailUpdateOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DisableRegionInput = {
    type = "structure",
    id = "DisableRegionInput",
    members = {
        AccountId = {
            type = "string",
        },
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableRegionOutput = {
    type = "structure",
    id = "DisableRegionOutput",
}

M.EnableRegionInput = {
    type = "structure",
    id = "EnableRegionInput",
    members = {
        AccountId = {
            type = "string",
        },
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableRegionOutput = {
    type = "structure",
    id = "EnableRegionOutput",
}

M.GetRegionOptStatusInput = {
    type = "structure",
    id = "GetRegionOptStatusInput",
    members = {
        AccountId = {
            type = "string",
        },
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegionOptStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    ENABLED_BY_DEFAULT = "ENABLED_BY_DEFAULT",
}

M.GetRegionOptStatusOutput = {
    type = "structure",
    id = "GetRegionOptStatusOutput",
    members = {
        RegionName = {
            type = "string",
        },
        RegionOptStatus = {
            type = "string",
        },
    },
}

M.ListRegionsInput = {
    type = "structure",
    id = "ListRegionsInput",
    members = {
        AccountId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        RegionOptStatusContains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Region = {
    type = "structure",
    id = "Region",
    members = {
        RegionName = {
            type = "string",
        },
        RegionOptStatus = {
            type = "string",
        },
    },
}

M.ListRegionsOutput = {
    type = "structure",
    id = "ListRegionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = M.Region,
        },
    },
}

return M
