local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        errorCode = {
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.FindingMetricsValuePerSeverity = {
    type = "structure",
    id = "FindingMetricsValuePerSeverity",
    members = {
        info = {
            type = "double",
        },
        low = {
            type = "double",
        },
        medium = {
            type = "double",
        },
        high = {
            type = "double",
        },
        critical = {
            type = "double",
        },
    },
}

M.AccountFindingsMetric = {
    type = "structure",
    id = "AccountFindingsMetric",
    members = {
        date = {
            type = "timestamp",
        },
        newFindings = M.FindingMetricsValuePerSeverity,
        closedFindings = M.FindingMetricsValuePerSeverity,
        openFindings = M.FindingMetricsValuePerSeverity,
        meanTimeToClose = M.FindingMetricsValuePerSeverity,
    },
}

M.AnalysisType = {
    SECURITY = "Security",
    ALL = "All",
}

M.FindingIdentifier = {
    type = "structure",
    id = "FindingIdentifier",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFindingsInput = {
    type = "structure",
    id = "BatchGetFindingsInput",
    members = {
        findingIdentifiers = {
            type = "list",
            member = M.FindingIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorCode = {
    DUPLICATE_IDENTIFIER = "DUPLICATE_IDENTIFIER",
    ITEM_DOES_NOT_EXIST = "ITEM_DOES_NOT_EXIST",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_FINDING_ID = "INVALID_FINDING_ID",
    INVALID_SCAN_NAME = "INVALID_SCAN_NAME",
}

M.BatchGetFindingsError = {
    type = "structure",
    id = "BatchGetFindingsError",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
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

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        text = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.SuggestedFix = {
    type = "structure",
    id = "SuggestedFix",
    members = {
        description = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.Remediation = {
    type = "structure",
    id = "Remediation",
    members = {
        recommendation = M.Recommendation,
        suggestedFixes = {
            type = "list",
            member = M.SuggestedFix,
        },
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        id = {
            type = "string",
        },
        subResourceId = {
            type = "string",
        },
    },
}

M.Severity = {
    CRITICAL = "Critical",
    HIGH = "High",
    MEDIUM = "Medium",
    LOW = "Low",
    INFO = "Info",
}

M.Status = {
    CLOSED = "Closed",
    OPEN = "Open",
    ALL = "All",
}

M.CodeLine = {
    type = "structure",
    id = "CodeLine",
    members = {
        number = {
            type = "integer",
        },
        content = {
            type = "string",
        },
    },
}

M.FilePath = {
    type = "structure",
    id = "FilePath",
    members = {
        name = {
            type = "string",
        },
        path = {
            type = "string",
        },
        startLine = {
            type = "integer",
        },
        endLine = {
            type = "integer",
        },
        codeSnippet = {
            type = "list",
            member = M.CodeLine,
        },
    },
}

M.Vulnerability = {
    type = "structure",
    id = "Vulnerability",
    members = {
        referenceUrls = {
            type = "list",
            member = { type = "string" },
        },
        relatedVulnerabilities = {
            type = "list",
            member = { type = "string" },
        },
        id = {
            type = "string",
        },
        filePath = M.FilePath,
        itemCount = {
            type = "integer",
        },
    },
}

M.Finding = {
    type = "structure",
    id = "Finding",
    members = {
        createdAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        generatorId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resource = M.Resource,
        vulnerability = M.Vulnerability,
        severity = {
            type = "string",
        },
        remediation = M.Remediation,
        title = {
            type = "string",
        },
        detectorTags = {
            type = "list",
            member = { type = "string" },
        },
        detectorId = {
            type = "string",
        },
        detectorName = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
    },
}

M.BatchGetFindingsOutput = {
    type = "structure",
    id = "BatchGetFindingsOutput",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
            traits = {
                required = true,
            },
        },
        failedFindings = {
            type = "list",
            member = M.BatchGetFindingsError,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        error = {
            type = "string",
        },
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
        errorCode = {
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
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
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
    OTHER = "other",
    LAMBDA_CODE_SHA_MISMATCH = "lambdaCodeShaMisMatch",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        errorCode = {
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

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        errorCode = {
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

M.ResourceId = {
    type = "union",
    id = "ResourceId",
    members = {
        codeArtifactId = {
            type = "string",
        },
    },
}

M.ScanType = {
    STANDARD = "Standard",
    EXPRESS = "Express",
}

M.CreateScanInput = {
    type = "structure",
    id = "CreateScanInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        resourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceId }),
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanType = {
            type = "string",
        },
        analysisType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ScanState = {
    IN_PROGRESS = "InProgress",
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
}

M.CreateScanOutput = {
    type = "structure",
    id = "CreateScanOutput",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceId }),
        scanState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanNameArn = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        errorCode = {
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

M.CreateUploadUrlInput = {
    type = "structure",
    id = "CreateUploadUrlInput",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUploadUrlOutput = {
    type = "structure",
    id = "CreateUploadUrlOutput",
    members = {
        s3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        codeArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccountConfigurationInput = {
    type = "structure",
    id = "GetAccountConfigurationInput",
}

M.EncryptionConfig = {
    type = "structure",
    id = "EncryptionConfig",
    members = {
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GetAccountConfigurationOutput = {
    type = "structure",
    id = "GetAccountConfigurationOutput",
    members = {
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.GetFindingsInput = {
    type = "structure",
    id = "GetFindingsInput",
    members = {
        scanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.GetFindingsOutput = {
    type = "structure",
    id = "GetFindingsOutput",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetMetricsSummaryInput = {
    type = "structure",
    id = "GetMetricsSummaryInput",
    members = {
        date = {
            type = "timestamp",
            traits = {
                http_query = "date",
                required = true,
            },
        },
    },
}

M.CategoryWithFindingNum = {
    type = "structure",
    id = "CategoryWithFindingNum",
    members = {
        categoryName = {
            type = "string",
        },
        findingNumber = {
            type = "integer",
        },
    },
}

M.ScanNameWithFindingNum = {
    type = "structure",
    id = "ScanNameWithFindingNum",
    members = {
        scanName = {
            type = "string",
        },
        findingNumber = {
            type = "integer",
        },
    },
}

M.MetricsSummary = {
    type = "structure",
    id = "MetricsSummary",
    members = {
        date = {
            type = "timestamp",
        },
        openFindings = M.FindingMetricsValuePerSeverity,
        categoriesWithMostFindings = {
            type = "list",
            member = M.CategoryWithFindingNum,
        },
        scansWithMostOpenFindings = {
            type = "list",
            member = M.ScanNameWithFindingNum,
        },
        scansWithMostOpenCriticalFindings = {
            type = "list",
            member = M.ScanNameWithFindingNum,
        },
    },
}

M.GetMetricsSummaryOutput = {
    type = "structure",
    id = "GetMetricsSummaryOutput",
    members = {
        metricsSummary = M.MetricsSummary,
    },
}

M.GetScanInput = {
    type = "structure",
    id = "GetScanInput",
    members = {
        scanName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        runId = {
            type = "string",
            traits = {
                http_query = "runId",
            },
        },
    },
}

M.GetScanOutput = {
    type = "structure",
    id = "GetScanOutput",
    members = {
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanState = {
            type = "string",
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
        analysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        numberOfRevisions = {
            type = "long",
        },
        scanNameArn = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.ListFindingsMetricsInput = {
    type = "structure",
    id = "ListFindingsMetricsInput",
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
        startDate = {
            type = "timestamp",
            traits = {
                http_query = "startDate",
                required = true,
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                http_query = "endDate",
                required = true,
            },
        },
    },
}

M.ListFindingsMetricsOutput = {
    type = "structure",
    id = "ListFindingsMetricsOutput",
    members = {
        findingsMetrics = {
            type = "list",
            member = M.AccountFindingsMetric,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScansInput = {
    type = "structure",
    id = "ListScansInput",
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

M.ScanSummary = {
    type = "structure",
    id = "ScanSummary",
    members = {
        scanState = {
            type = "string",
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
        updatedAt = {
            type = "timestamp",
        },
        scanName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scanNameArn = {
            type = "string",
        },
    },
}

M.ListScansOutput = {
    type = "structure",
    id = "ListScansOutput",
    members = {
        summaries = {
            type = "list",
            member = M.ScanSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAccountConfigurationInput = {
    type = "structure",
    id = "UpdateAccountConfigurationInput",
    members = {
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

M.UpdateAccountConfigurationOutput = {
    type = "structure",
    id = "UpdateAccountConfigurationOutput",
    members = {
        encryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfig }),
    },
}

return M
