local M = {}

M.Attachment = {
    type = "structure",
    id = "Attachment",
    members = {
        fileName = {
            type = "string",
        },
        data = {
            type = "blob",
        },
    },
}

M.AddAttachmentsToSetInput = {
    type = "structure",
    id = "AddAttachmentsToSetInput",
    members = {
        attachmentSetId = {
            type = "string",
        },
        attachments = {
            type = "list",
            member = M.Attachment,
            traits = {
                required = true,
            },
        },
    },
}

M.AddAttachmentsToSetOutput = {
    type = "structure",
    id = "AddAttachmentsToSetOutput",
    members = {
        attachmentSetId = {
            type = "string",
        },
        expiryTime = {
            type = "string",
        },
    },
}

M.AttachmentLimitExceeded = {
    type = "structure",
    id = "AttachmentLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetExpired = {
    type = "structure",
    id = "AttachmentSetExpired",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetIdNotFound = {
    type = "structure",
    id = "AttachmentSetIdNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetSizeLimitExceeded = {
    type = "structure",
    id = "AttachmentSetSizeLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddCommunicationToCaseInput = {
    type = "structure",
    id = "AddCommunicationToCaseInput",
    members = {
        caseId = {
            type = "string",
        },
        communicationBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ccEmailAddresses = {
            type = "list",
            member = { type = "string" },
        },
        attachmentSetId = {
            type = "string",
        },
    },
}

M.AddCommunicationToCaseOutput = {
    type = "structure",
    id = "AddCommunicationToCaseOutput",
    members = {
        result = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CaseIdNotFound = {
    type = "structure",
    id = "CaseIdNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentDetails = {
    type = "structure",
    id = "AttachmentDetails",
    members = {
        attachmentId = {
            type = "string",
        },
        fileName = {
            type = "string",
        },
    },
}

M.AttachmentIdNotFound = {
    type = "structure",
    id = "AttachmentIdNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CaseCreationLimitExceeded = {
    type = "structure",
    id = "CaseCreationLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCaseInput = {
    type = "structure",
    id = "CreateCaseInput",
    members = {
        subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        severityCode = {
            type = "string",
        },
        categoryCode = {
            type = "string",
        },
        communicationBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ccEmailAddresses = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
        issueType = {
            type = "string",
        },
        attachmentSetId = {
            type = "string",
        },
    },
}

M.CreateCaseOutput = {
    type = "structure",
    id = "CreateCaseOutput",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.DescribeAttachmentInput = {
    type = "structure",
    id = "DescribeAttachmentInput",
    members = {
        attachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAttachmentLimitExceeded = {
    type = "structure",
    id = "DescribeAttachmentLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAttachmentOutput = {
    type = "structure",
    id = "DescribeAttachmentOutput",
    members = {
        attachment = M.Attachment,
    },
}

M.DescribeCasesInput = {
    type = "structure",
    id = "DescribeCasesInput",
    members = {
        caseIdList = {
            type = "list",
            member = { type = "string" },
        },
        displayId = {
            type = "string",
        },
        afterTime = {
            type = "string",
        },
        beforeTime = {
            type = "string",
        },
        includeResolvedCases = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        language = {
            type = "string",
        },
        includeCommunications = {
            type = "boolean",
        },
    },
}

M.Communication = {
    type = "structure",
    id = "Communication",
    members = {
        caseId = {
            type = "string",
        },
        body = {
            type = "string",
        },
        submittedBy = {
            type = "string",
        },
        timeCreated = {
            type = "string",
        },
        attachmentSet = {
            type = "list",
            member = M.AttachmentDetails,
        },
    },
}

M.RecentCaseCommunications = {
    type = "structure",
    id = "RecentCaseCommunications",
    members = {
        communications = {
            type = "list",
            member = M.Communication,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CaseDetails = {
    type = "structure",
    id = "CaseDetails",
    members = {
        caseId = {
            type = "string",
        },
        displayId = {
            type = "string",
        },
        subject = {
            type = "string",
        },
        status = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        categoryCode = {
            type = "string",
        },
        severityCode = {
            type = "string",
        },
        submittedBy = {
            type = "string",
        },
        timeCreated = {
            type = "string",
        },
        recentCommunications = M.RecentCaseCommunications,
        ccEmailAddresses = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
    },
}

M.DescribeCasesOutput = {
    type = "structure",
    id = "DescribeCasesOutput",
    members = {
        cases = {
            type = "list",
            member = M.CaseDetails,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeCommunicationsInput = {
    type = "structure",
    id = "DescribeCommunicationsInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeTime = {
            type = "string",
        },
        afterTime = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DescribeCommunicationsOutput = {
    type = "structure",
    id = "DescribeCommunicationsOutput",
    members = {
        communications = {
            type = "list",
            member = M.Communication,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeCreateCaseOptionsInput = {
    type = "structure",
    id = "DescribeCreateCaseOptionsInput",
    members = {
        issueType = {
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
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
        categoryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DateInterval = {
    type = "structure",
    id = "DateInterval",
    members = {
        startDateTime = {
            type = "string",
        },
        endDateTime = {
            type = "string",
        },
    },
}

M.SupportedHour = {
    type = "structure",
    id = "SupportedHour",
    members = {
        startTime = {
            type = "string",
        },
        endTime = {
            type = "string",
        },
    },
}

M.CommunicationTypeOptions = {
    type = "structure",
    id = "CommunicationTypeOptions",
    members = {
        type = {
            type = "string",
        },
        supportedHours = {
            type = "list",
            member = M.SupportedHour,
        },
        datesWithoutSupport = {
            type = "list",
            member = M.DateInterval,
        },
    },
}

M.DescribeCreateCaseOptionsOutput = {
    type = "structure",
    id = "DescribeCreateCaseOptionsOutput",
    members = {
        languageAvailability = {
            type = "string",
        },
        communicationTypes = {
            type = "list",
            member = M.CommunicationTypeOptions,
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

M.DescribeServicesInput = {
    type = "structure",
    id = "DescribeServicesInput",
    members = {
        serviceCodeList = {
            type = "list",
            member = { type = "string" },
        },
        language = {
            type = "string",
        },
    },
}

M.Category = {
    type = "structure",
    id = "Category",
    members = {
        code = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.Service = {
    type = "structure",
    id = "Service",
    members = {
        code = {
            type = "string",
        },
        name = {
            type = "string",
        },
        categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.DescribeServicesOutput = {
    type = "structure",
    id = "DescribeServicesOutput",
    members = {
        services = {
            type = "list",
            member = M.Service,
        },
    },
}

M.DescribeSeverityLevelsInput = {
    type = "structure",
    id = "DescribeSeverityLevelsInput",
    members = {
        language = {
            type = "string",
        },
    },
}

M.SeverityLevel = {
    type = "structure",
    id = "SeverityLevel",
    members = {
        code = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.DescribeSeverityLevelsOutput = {
    type = "structure",
    id = "DescribeSeverityLevelsOutput",
    members = {
        severityLevels = {
            type = "list",
            member = M.SeverityLevel,
        },
    },
}

M.DescribeSupportedLanguagesInput = {
    type = "structure",
    id = "DescribeSupportedLanguagesInput",
    members = {
        issueType = {
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
        categoryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SupportedLanguage = {
    type = "structure",
    id = "SupportedLanguage",
    members = {
        code = {
            type = "string",
        },
        language = {
            type = "string",
        },
        display = {
            type = "string",
        },
    },
}

M.DescribeSupportedLanguagesOutput = {
    type = "structure",
    id = "DescribeSupportedLanguagesOutput",
    members = {
        supportedLanguages = {
            type = "list",
            member = M.SupportedLanguage,
        },
    },
}

M.DescribeTrustedAdvisorCheckRefreshStatusesInput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckRefreshStatusesInput",
    members = {
        checkIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TrustedAdvisorCheckRefreshStatus = {
    type = "structure",
    id = "TrustedAdvisorCheckRefreshStatus",
    members = {
        checkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        millisUntilNextRefreshable = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DescribeTrustedAdvisorCheckRefreshStatusesOutput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckRefreshStatusesOutput",
    members = {
        statuses = {
            type = "list",
            member = M.TrustedAdvisorCheckRefreshStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTrustedAdvisorCheckResultInput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckResultInput",
    members = {
        checkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        language = {
            type = "string",
        },
    },
}

M.TrustedAdvisorCostOptimizingSummary = {
    type = "structure",
    id = "TrustedAdvisorCostOptimizingSummary",
    members = {
        estimatedMonthlySavings = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        estimatedPercentMonthlySavings = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TrustedAdvisorCategorySpecificSummary = {
    type = "structure",
    id = "TrustedAdvisorCategorySpecificSummary",
    members = {
        costOptimizing = M.TrustedAdvisorCostOptimizingSummary,
    },
}

M.TrustedAdvisorResourceDetail = {
    type = "structure",
    id = "TrustedAdvisorResourceDetail",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isSuppressed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        metadata = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TrustedAdvisorResourcesSummary = {
    type = "structure",
    id = "TrustedAdvisorResourcesSummary",
    members = {
        resourcesProcessed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        resourcesFlagged = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        resourcesIgnored = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        resourcesSuppressed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TrustedAdvisorCheckResult = {
    type = "structure",
    id = "TrustedAdvisorCheckResult",
    members = {
        checkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourcesSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorResourcesSummary }),
        categorySpecificSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorCategorySpecificSummary }),
        flaggedResources = {
            type = "list",
            member = M.TrustedAdvisorResourceDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTrustedAdvisorCheckResultOutput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckResultOutput",
    members = {
        result = M.TrustedAdvisorCheckResult,
    },
}

M.DescribeTrustedAdvisorChecksInput = {
    type = "structure",
    id = "DescribeTrustedAdvisorChecksInput",
    members = {
        language = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrustedAdvisorCheckDescription = {
    type = "structure",
    id = "TrustedAdvisorCheckDescription",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTrustedAdvisorChecksOutput = {
    type = "structure",
    id = "DescribeTrustedAdvisorChecksOutput",
    members = {
        checks = {
            type = "list",
            member = M.TrustedAdvisorCheckDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTrustedAdvisorCheckSummariesInput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckSummariesInput",
    members = {
        checkIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TrustedAdvisorCheckSummary = {
    type = "structure",
    id = "TrustedAdvisorCheckSummary",
    members = {
        checkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hasFlaggedResources = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        resourcesSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorResourcesSummary }),
        categorySpecificSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorCategorySpecificSummary }),
    },
}

M.DescribeTrustedAdvisorCheckSummariesOutput = {
    type = "structure",
    id = "DescribeTrustedAdvisorCheckSummariesOutput",
    members = {
        summaries = {
            type = "list",
            member = M.TrustedAdvisorCheckSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.RefreshTrustedAdvisorCheckInput = {
    type = "structure",
    id = "RefreshTrustedAdvisorCheckInput",
    members = {
        checkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RefreshTrustedAdvisorCheckOutput = {
    type = "structure",
    id = "RefreshTrustedAdvisorCheckOutput",
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorCheckRefreshStatus }),
    },
}

M.ResolveCaseInput = {
    type = "structure",
    id = "ResolveCaseInput",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.ResolveCaseOutput = {
    type = "structure",
    id = "ResolveCaseOutput",
    members = {
        initialCaseStatus = {
            type = "string",
        },
        finalCaseStatus = {
            type = "string",
        },
    },
}

return M
