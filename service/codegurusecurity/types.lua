local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        info = {
            type = "number",
        },
        low = {
            type = "number",
        },
        medium = {
            type = "number",
        },
        high = {
            type = "number",
        },
        critical = {
            type = "number",
        },
    },
}

M.AccountFindingsMetric = {
    type = "structure",
    members = {
        date = {
            type = "timestamp",
        },
        newFindings = {
            type = "structure",
        },
        closedFindings = {
            type = "structure",
        },
        openFindings = {
            type = "structure",
        },
        meanTimeToClose = {
            type = "structure",
        },
    },
}

M.AnalysisType = {
    SECURITY = "Security",
    ALL = "All",
}

M.FindingIdentifier = {
    type = "structure",
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
    members = {
        findingIdentifiers = {
            type = "list",
            member_type = "structure",
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
    members = {
        recommendation = {
            type = "structure",
        },
        suggestedFixes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Resource = {
    type = "structure",
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
    members = {
        number = {
            type = "number",
        },
        content = {
            type = "string",
        },
    },
}

M.FilePath = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        path = {
            type = "string",
        },
        startLine = {
            type = "number",
        },
        endLine = {
            type = "number",
        },
        codeSnippet = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Vulnerability = {
    type = "structure",
    members = {
        referenceUrls = {
            type = "list",
            member_type = "string",
        },
        relatedVulnerabilities = {
            type = "list",
            member_type = "string",
        },
        id = {
            type = "string",
        },
        filePath = {
            type = "structure",
        },
        itemCount = {
            type = "number",
        },
    },
}

M.Finding = {
    type = "structure",
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
        resource = {
            type = "structure",
        },
        vulnerability = {
            type = "structure",
        },
        severity = {
            type = "string",
        },
        remediation = {
            type = "structure",
        },
        title = {
            type = "string",
        },
        detectorTags = {
            type = "list",
            member_type = "string",
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
    members = {
        findings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedFindings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
        },
        resourceId = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
        resourceId = {
            type = "union",
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
        scanNameArn = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        s3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestHeaders = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
}

M.EncryptionConfig = {
    type = "structure",
    members = {
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GetAccountConfigurationOutput = {
    type = "structure",
    members = {
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFindingsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        findings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetMetricsSummaryInput = {
    type = "structure",
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
    members = {
        categoryName = {
            type = "string",
        },
        findingNumber = {
            type = "number",
        },
    },
}

M.ScanNameWithFindingNum = {
    type = "structure",
    members = {
        scanName = {
            type = "string",
        },
        findingNumber = {
            type = "number",
        },
    },
}

M.MetricsSummary = {
    type = "structure",
    members = {
        date = {
            type = "timestamp",
        },
        openFindings = {
            type = "structure",
        },
        categoriesWithMostFindings = {
            type = "list",
            member_type = "structure",
        },
        scansWithMostOpenFindings = {
            type = "list",
            member_type = "structure",
        },
        scansWithMostOpenCriticalFindings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMetricsSummaryOutput = {
    type = "structure",
    members = {
        metricsSummary = {
            type = "structure",
        },
    },
}

M.GetScanInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        findingsMetrics = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListScansInput = {
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

M.ScanSummary = {
    type = "structure",
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
    members = {
        summaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAccountConfigurationInput = {
    type = "structure",
    members = {
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccountConfigurationOutput = {
    type = "structure",
    members = {
        encryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
