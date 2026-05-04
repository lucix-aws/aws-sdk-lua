local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteReportDefinitionInput = {
    type = "structure",
    id = "DeleteReportDefinitionInput",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReportDefinitionOutput = {
    type = "structure",
    id = "DeleteReportDefinitionOutput",
    members = {
        reportId = {
            type = "string",
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

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetReportDefinitionInput = {
    type = "structure",
    id = "GetReportDefinitionInput",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Format = {
    CSV = "CSV",
    PARQUET = "PARQUET",
}

M.ReportFrequency = {
    MONTHLY = "MONTHLY",
    DAILY = "DAILY",
    ALL = "ALL",
}

M.GetReportDefinitionOutput = {
    type = "structure",
    id = "GetReportDefinitionOutput",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdated = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.S3BucketRegion = {
    AP_EAST_1 = "ap-east-1",
    ME_SOUTH_1 = "me-south-1",
    EU_SOUTH_1 = "eu-south-1",
    AF_SOUTH_1 = "af-south-1",
}

M.SourceS3Location = {
    type = "structure",
    id = "SourceS3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
        },
    },
}

M.ImportApplicationUsageInput = {
    type = "structure",
    id = "ImportApplicationUsageInput",
    members = {
        sourceS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceS3Location }),
    },
}

M.ImportApplicationUsageOutput = {
    type = "structure",
    id = "ImportApplicationUsageOutput",
    members = {
        importId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListReportDefinitionsInput = {
    type = "structure",
    id = "ListReportDefinitionsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ReportDefinition = {
    type = "structure",
    id = "ReportDefinition",
    members = {
        reportId = {
            type = "string",
        },
        reportDescription = {
            type = "string",
        },
        reportFrequency = {
            type = "string",
        },
        format = {
            type = "string",
        },
        destinationS3Location = M.S3Location,
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListReportDefinitionsOutput = {
    type = "structure",
    id = "ListReportDefinitionsOutput",
    members = {
        reportDefinitions = {
            type = "list",
            member = M.ReportDefinition,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutReportDefinitionInput = {
    type = "structure",
    id = "PutReportDefinitionInput",
    members = {
        reportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.PutReportDefinitionOutput = {
    type = "structure",
    id = "PutReportDefinitionOutput",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateReportDefinitionInput = {
    type = "structure",
    id = "UpdateReportDefinitionInput",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        reportDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.UpdateReportDefinitionOutput = {
    type = "structure",
    id = "UpdateReportDefinitionOutput",
    members = {
        reportId = {
            type = "string",
        },
    },
}

return M
