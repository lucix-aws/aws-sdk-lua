local M = {}

M.AcceptanceType = {
    PASSTHROUGH = "PASSTHROUGH",
    EXPLICIT = "EXPLICIT",
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
    },
}

M.NotificationSubscriptionStatus = {
    SUBSCRIBED = "SUBSCRIBED",
    NOT_SUBSCRIBED = "NOT_SUBSCRIBED",
}

M.AccountSettings = {
    type = "structure",
    members = {
        notificationSubscriptionStatus = {
            type = "string",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettings = M.AccountSettings,
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    INVALID_TOKEN = "invalidToken",
    OTHER = "other",
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
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.PutAccountSettingsInput = {
    type = "structure",
    members = {
        notificationSubscriptionStatus = {
            type = "string",
        },
    },
}

M.PutAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettings = M.AccountSettings,
    },
}

M.AgreementType = {
    CUSTOM = "CUSTOM",
    DEFAULT = "DEFAULT",
    MODIFIED = "MODIFIED",
}

M.ListCustomerAgreementsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.CustomerAgreementState = {
    ACTIVE = "ACTIVE",
    CUSTOMER_TERMINATED = "CUSTOMER_TERMINATED",
    AWS_TERMINATED = "AWS_TERMINATED",
}

M.CustomerAgreementSummary = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        agreementArn = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        organizationArn = {
            type = "string",
        },
        effectiveStart = {
            type = "timestamp",
        },
        effectiveEnd = {
            type = "timestamp",
        },
        state = {
            type = "string",
        },
        description = {
            type = "string",
        },
        acceptanceTerms = {
            type = "list",
            member = { type = "string" },
        },
        terminateTerms = {
            type = "list",
            member = { type = "string" },
        },
        type = {
            type = "string",
        },
    },
}

M.ListCustomerAgreementsOutput = {
    type = "structure",
    members = {
        customerAgreements = {
            type = "list",
            member = M.CustomerAgreementSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetReportInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_query = "reportId",
                required = true,
            },
        },
        reportVersion = {
            type = "long",
            traits = {
                http_query = "reportVersion",
            },
        },
        termToken = {
            type = "string",
            traits = {
                http_query = "termToken",
                required = true,
            },
        },
    },
}

M.GetReportOutput = {
    type = "structure",
    members = {
        documentPresignedUrl = {
            type = "string",
        },
    },
}

M.GetReportMetadataInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_query = "reportId",
                required = true,
            },
        },
        reportVersion = {
            type = "long",
            traits = {
                http_query = "reportVersion",
            },
        },
    },
}

M.PublishedState = {
    PUBLISHED = "PUBLISHED",
    UNPUBLISHED = "UNPUBLISHED",
}

M.UploadState = {
    PROCESSING = "PROCESSING",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    FAULT = "FAULT",
}

M.ReportDetail = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        periodStart = {
            type = "timestamp",
        },
        periodEnd = {
            type = "timestamp",
        },
        createdAt = {
            type = "timestamp",
        },
        lastModifiedAt = {
            type = "timestamp",
        },
        deletedAt = {
            type = "timestamp",
        },
        state = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        series = {
            type = "string",
        },
        category = {
            type = "string",
        },
        companyName = {
            type = "string",
        },
        productName = {
            type = "string",
        },
        termArn = {
            type = "string",
        },
        version = {
            type = "long",
        },
        acceptanceType = {
            type = "string",
        },
        sequenceNumber = {
            type = "long",
        },
        uploadState = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.GetReportMetadataOutput = {
    type = "structure",
    members = {
        reportDetails = M.ReportDetail,
    },
}

M.GetTermForReportInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_query = "reportId",
                required = true,
            },
        },
        reportVersion = {
            type = "long",
            traits = {
                http_query = "reportVersion",
            },
        },
    },
}

M.GetTermForReportOutput = {
    type = "structure",
    members = {
        documentPresignedUrl = {
            type = "string",
        },
        termToken = {
            type = "string",
        },
    },
}

M.ListReportsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ReportSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        state = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        version = {
            type = "long",
        },
        uploadState = {
            type = "string",
        },
        description = {
            type = "string",
        },
        periodStart = {
            type = "timestamp",
        },
        periodEnd = {
            type = "timestamp",
        },
        series = {
            type = "string",
        },
        category = {
            type = "string",
        },
        companyName = {
            type = "string",
        },
        productName = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        acceptanceType = {
            type = "string",
        },
    },
}

M.ListReportsOutput = {
    type = "structure",
    members = {
        reports = {
            type = "list",
            member = M.ReportSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListReportVersionsInput = {
    type = "structure",
    members = {
        reportId = {
            type = "string",
            traits = {
                http_query = "reportId",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListReportVersionsOutput = {
    type = "structure",
    members = {
        reports = {
            type = "list",
            member = M.ReportSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
