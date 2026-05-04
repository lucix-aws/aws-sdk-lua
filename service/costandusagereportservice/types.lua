local M = {}

M.AdditionalArtifact = {
    REDSHIFT = "REDSHIFT",
    QUICKSIGHT = "QUICKSIGHT",
    ATHENA = "ATHENA",
}

M.DeleteReportDefinitionInput = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReportDefinitionOutput = {
    type = "structure",
    members = {
        ResponseMessage = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeReportDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SchemaElement = {
    RESOURCES = "RESOURCES",
    SPLIT_COST_ALLOCATION_DATA = "SPLIT_COST_ALLOCATION_DATA",
    MANUAL_DISCOUNT_COMPATIBILITY = "MANUAL_DISCOUNT_COMPATIBILITY",
}

M.CompressionFormat = {
    ZIP = "ZIP",
    GZIP = "GZIP",
    Parquet = "Parquet",
}

M.ReportFormat = {
    CSV = "textORcsv",
    Parquet = "Parquet",
}

M.LastStatus = {
    SUCCESS = "SUCCESS",
    ERROR_PERMISSIONS = "ERROR_PERMISSIONS",
    ERROR_NO_BUCKET = "ERROR_NO_BUCKET",
}

M.ReportStatus = {
    type = "structure",
    members = {
        lastDelivery = {
            type = "string",
        },
        lastStatus = {
            type = "string",
        },
    },
}

M.ReportVersioning = {
    CREATE_NEW_REPORT = "CREATE_NEW_REPORT",
    OVERWRITE_REPORT = "OVERWRITE_REPORT",
}

M.AWSRegion = {
    CAPE_TOWN = "af-south-1",
    HONG_KONG = "ap-east-1",
    MUMBAI = "ap-south-1",
    HYDERABAD = "ap-south-2",
    SINGAPORE = "ap-southeast-1",
    SYDNEY = "ap-southeast-2",
    JAKARTA = "ap-southeast-3",
    TOKYO = "ap-northeast-1",
    SEOUL = "ap-northeast-2",
    OSAKA = "ap-northeast-3",
    CANADA_CENTRAL = "ca-central-1",
    FRANKFURT = "eu-central-1",
    ZURICH = "eu-central-2",
    IRELAND = "eu-west-1",
    LONDON = "eu-west-2",
    PARIS = "eu-west-3",
    STOCKHOLM = "eu-north-1",
    MILANO = "eu-south-1",
    SPAIN = "eu-south-2",
    UAE = "me-central-1",
    BAHRAIN = "me-south-1",
    SAO_PAULO = "sa-east-1",
    US_STANDARD = "us-east-1",
    OHIO = "us-east-2",
    NORTHERN_CALIFORNIA = "us-west-1",
    OREGON = "us-west-2",
    BEIJING = "cn-north-1",
    NINGXIA = "cn-northwest-1",
}

M.TimeUnit = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    MONTHLY = "MONTHLY",
}

M.ReportDefinition = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Compression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalSchemaElements = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalArtifacts = {
            type = "list",
            member = { type = "string" },
        },
        RefreshClosedReports = {
            type = "boolean",
        },
        ReportVersioning = {
            type = "string",
        },
        BillingViewArn = {
            type = "string",
        },
        ReportStatus = M.ReportStatus,
    },
}

M.DescribeReportDefinitionsOutput = {
    type = "structure",
    members = {
        ReportDefinitions = {
            type = "list",
            member = M.ReportDefinition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
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

M.ModifyReportDefinitionInput = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReportDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportDefinition }),
    },
}

M.ModifyReportDefinitionOutput = {
    type = "structure",
}

M.DuplicateReportNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutReportDefinitionInput = {
    type = "structure",
    members = {
        ReportDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportDefinition }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutReportDefinitionOutput = {
    type = "structure",
}

M.ReportLimitReachedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ReportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
