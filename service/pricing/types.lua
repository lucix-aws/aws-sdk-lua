local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttributeValue = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
    },
}

M.DescribeServicesInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        FormatVersion = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeServicesOutput = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        FormatVersion = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExpiredNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetAttributeValuesInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetAttributeValuesOutput = {
    type = "structure",
    members = {
        AttributeValues = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetPriceListFileUrlInput = {
    type = "structure",
    members = {
        PriceListArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPriceListFileUrlOutput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FilterType = {
    TERM_MATCH = "TERM_MATCH",
    EQUALS = "EQUALS",
    CONTAINS = "CONTAINS",
    ANY_OF = "ANY_OF",
    NONE_OF = "NONE_OF",
}

M.Filter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Field = {
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

M.GetProductsInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        FormatVersion = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetProductsOutput = {
    type = "structure",
    members = {
        FormatVersion = {
            type = "string",
        },
        PriceList = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPriceListsInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EffectiveDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RegionCode = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.PriceList = {
    type = "structure",
    members = {
        PriceListArn = {
            type = "string",
        },
        RegionCode = {
            type = "string",
        },
        CurrencyCode = {
            type = "string",
        },
        FileFormats = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPriceListsOutput = {
    type = "structure",
    members = {
        PriceLists = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
