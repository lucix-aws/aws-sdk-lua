local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteReportDefinitionInput = {
    type = "structure",
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
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetReportDefinitionInput = {
    type = "structure",
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
        destinationS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        sourceS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportApplicationUsageOutput = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ReportDefinition = {
    type = "structure",
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
        destinationS3Location = {
            type = "structure",
        },
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
    members = {
        reportDefinitions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutReportDefinitionInput = {
    type = "structure",
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
        destinationS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutReportDefinitionOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateReportDefinitionInput = {
    type = "structure",
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
        destinationS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateReportDefinitionOutput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
        },
    },
}

return M
