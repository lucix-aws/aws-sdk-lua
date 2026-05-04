local M = {}

M.GetEntitlementFilterName = {
    CUSTOMER_IDENTIFIER = "CUSTOMER_IDENTIFIER",
    DIMENSION = "DIMENSION",
    CUSTOMER_AWS_ACCOUNT_ID = "CUSTOMER_AWS_ACCOUNT_ID",
    LICENSE_ARN = "LICENSE_ARN",
}

M.GetEntitlementsInput = {
    type = "structure",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.EntitlementValue = {
    type = "structure",
    members = {
        IntegerValue = {
            type = "number",
        },
        DoubleValue = {
            type = "number",
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
        Value = {
            type = "structure",
        },
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
    members = {
        Entitlements = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
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

M.InvalidParameterException = {
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

return M
