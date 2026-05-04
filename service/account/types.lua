local M = {}

M.AcceptPrimaryEmailUpdateInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        AccountId = {
            type = "string",
        },
        AccountName = {
            type = "string",
        },
        AccountCreatedDate = {
            type = "timestamp",
        },
        AccountState = {
            type = "string",
        },
    },
}

M.PutAccountNameInput = {
    type = "structure",
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
}

M.AlternateContactType = {
    BILLING = "BILLING",
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
}

M.DeleteAlternateContactInput = {
    type = "structure",
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
}

M.GetAlternateContactInput = {
    type = "structure",
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
    members = {
        AlternateContact = M.AlternateContact,
    },
}

M.PutAlternateContactInput = {
    type = "structure",
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
}

M.GetGovCloudAccountInformationInput = {
    type = "structure",
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
    members = {
        AccountId = {
            type = "string",
        },
    },
}

M.ContactInformation = {
    type = "structure",
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
    members = {
        ContactInformation = M.ContactInformation,
    },
}

M.PutContactInformationInput = {
    type = "structure",
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
}

M.GetPrimaryEmailInput = {
    type = "structure",
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
    members = {
        PrimaryEmail = {
            type = "string",
        },
    },
}

M.StartPrimaryEmailUpdateInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DisableRegionInput = {
    type = "structure",
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
}

M.EnableRegionInput = {
    type = "structure",
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
}

M.GetRegionOptStatusInput = {
    type = "structure",
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
