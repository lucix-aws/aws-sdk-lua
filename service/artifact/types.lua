local M = {}

M.AcceptanceType = {
    PASSTHROUGH = "PASSTHROUGH",
    EXPLICIT = "EXPLICIT",
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
    },
}

M.NotificationSubscriptionStatus = {
    SUBSCRIBED = "SUBSCRIBED",
    NOT_SUBSCRIBED = "NOT_SUBSCRIBED",
}

M.AccountSettings = {
    type = "structure",
    id = "AccountSettings",
    members = {
        notificationSubscriptionStatus = {
            type = "string",
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
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        accountSettings = M.AccountSettings,
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    INVALID_TOKEN = "invalidToken",
    OTHER = "other",
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
    id = "PutAccountSettingsInput",
    members = {
        notificationSubscriptionStatus = {
            type = "string",
        },
    },
}

M.PutAccountSettingsOutput = {
    type = "structure",
    id = "PutAccountSettingsOutput",
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
    id = "ListCustomerAgreementsInput",
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
    id = "CustomerAgreementSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        effectiveEnd = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListCustomerAgreementsOutput",
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
    id = "GetReportInput",
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
    id = "GetReportOutput",
    members = {
        documentPresignedUrl = {
            type = "string",
        },
    },
}

M.GetReportMetadataInput = {
    type = "structure",
    id = "GetReportMetadataInput",
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
    id = "ReportDetail",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        periodEnd = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        deletedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "GetReportMetadataOutput",
    members = {
        reportDetails = M.ReportDetail,
    },
}

M.GetTermForReportInput = {
    type = "structure",
    id = "GetTermForReportInput",
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
    id = "GetTermForReportOutput",
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
    id = "ListReportsInput",
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
    id = "ReportSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        periodEnd = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListReportsOutput",
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
    id = "ListReportVersionsInput",
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
    id = "ListReportVersionsOutput",
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
