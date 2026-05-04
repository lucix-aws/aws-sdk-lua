local M = {}

M.GetEntitlementFilterName = {
    CUSTOMER_IDENTIFIER = "CUSTOMER_IDENTIFIER",
    DIMENSION = "DIMENSION",
    CUSTOMER_AWS_ACCOUNT_ID = "CUSTOMER_AWS_ACCOUNT_ID",
    LICENSE_ARN = "LICENSE_ARN",
}

M.GetEntitlementsInput = {
    type = "structure",
    id = "GetEntitlementsInput",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.EntitlementValue = {
    type = "structure",
    id = "EntitlementValue",
    members = {
        IntegerValue = {
            type = "integer",
        },
        DoubleValue = {
            type = "double",
        },
        BooleanValue = {
            type = "boolean",
        },
        StringValue = {
            type = "string",
        },
    },
}

M.Entitlement = {
    type = "structure",
    id = "Entitlement",
    members = {
        ProductCode = {
            type = "string",
        },
        Dimension = {
            type = "string",
        },
        CustomerIdentifier = {
            type = "string",
        },
        CustomerAWSAccountId = {
            type = "string",
        },
        Value = M.EntitlementValue,
        ExpirationDate = {
            type = "timestamp",
        },
        LicenseArn = {
            type = "string",
        },
    },
}

M.GetEntitlementsOutput = {
    type = "structure",
    id = "GetEntitlementsOutput",
    members = {
        Entitlements = {
            type = "list",
            member = M.Entitlement,
        },
        NextToken = {
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

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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

return M
