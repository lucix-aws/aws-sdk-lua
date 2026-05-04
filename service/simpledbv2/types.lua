local M = {}

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
    },
}

M.ExportStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.ExportSummary = {
    type = "structure",
    id = "ExportSummary",
    members = {
        exportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetExportInput = {
    type = "structure",
    id = "GetExportInput",
    members = {
        exportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3SseAlgorithm = {
    AES256 = "AES256",
    KMS = "KMS",
}

M.GetExportOutput = {
    type = "structure",
    id = "GetExportOutput",
    members = {
        exportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3KeyPrefix = {
            type = "string",
        },
        s3SseAlgorithm = {
            type = "string",
        },
        s3SseKmsKeyId = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        exportManifest = {
            type = "string",
        },
        itemsCount = {
            type = "long",
        },
        exportDataCutoffTime = {
            type = "timestamp",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoSuchExportException = {
    type = "structure",
    id = "NoSuchExportException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    id = "InvalidParameterCombinationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    id = "ListExportsInput",
    members = {
        domainName = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    id = "ListExportsOutput",
    members = {
        exportSummaries = {
            type = "list",
            member = M.ExportSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NoSuchDomainException = {
    type = "structure",
    id = "NoSuchDomainException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumberExportsLimitExceeded = {
    type = "structure",
    id = "NumberExportsLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDomainExportInput = {
    type = "structure",
    id = "StartDomainExportInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3KeyPrefix = {
            type = "string",
        },
        s3SseAlgorithm = {
            type = "string",
        },
        s3SseKmsKeyId = {
            type = "string",
        },
        s3BucketOwner = {
            type = "string",
        },
    },
}

M.StartDomainExportOutput = {
    type = "structure",
    id = "StartDomainExportOutput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

return M
