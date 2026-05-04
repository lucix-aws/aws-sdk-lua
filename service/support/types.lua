local M = {}

M.Attachment = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetExpired = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetIdNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentSetSizeLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddCommunicationToCaseInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachmentDetails = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CaseCreationLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCaseInput = {
    type = "structure",
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
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.DescribeAttachmentInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAttachmentOutput = {
    type = "structure",
    members = {
        attachment = M.Attachment,
    },
}

M.DescribeCasesInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServicesInput = {
    type = "structure",
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
    members = {
        services = {
            type = "list",
            member = M.Service,
        },
    },
}

M.DescribeSeverityLevelsInput = {
    type = "structure",
    members = {
        language = {
            type = "string",
        },
    },
}

M.SeverityLevel = {
    type = "structure",
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
    members = {
        severityLevels = {
            type = "list",
            member = M.SeverityLevel,
        },
    },
}

M.DescribeSupportedLanguagesInput = {
    type = "structure",
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
    members = {
        supportedLanguages = {
            type = "list",
            member = M.SupportedLanguage,
        },
    },
}

M.DescribeTrustedAdvisorCheckRefreshStatusesInput = {
    type = "structure",
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
    members = {
        costOptimizing = M.TrustedAdvisorCostOptimizingSummary,
    },
}

M.TrustedAdvisorResourceDetail = {
    type = "structure",
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
    members = {
        result = M.TrustedAdvisorCheckResult,
    },
}

M.DescribeTrustedAdvisorChecksInput = {
    type = "structure",
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
    members = {
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedAdvisorCheckRefreshStatus }),
    },
}

M.ResolveCaseInput = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.ResolveCaseOutput = {
    type = "structure",
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
