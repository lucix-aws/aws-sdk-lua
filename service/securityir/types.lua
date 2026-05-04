local M = {}

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

M.ActionType = {
    EVIDENCE_COLLECTION = "Evidence",
    INVESTIGATION_ANALYSIS = "Investigation",
    SUMMARIZATION = "Summarization",
}

M.AwsRegion = {
    AF_SOUTH_1 = "af-south-1",
    AP_EAST_1 = "ap-east-1",
    AP_EAST_2 = "ap-east-2",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_NORTHEAST_3 = "ap-northeast-3",
    AP_SOUTH_1 = "ap-south-1",
    AP_SOUTH_2 = "ap-south-2",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_4 = "ap-southeast-4",
    AP_SOUTHEAST_5 = "ap-southeast-5",
    AP_SOUTHEAST_6 = "ap-southeast-6",
    AP_SOUTHEAST_7 = "ap-southeast-7",
    CA_CENTRAL_1 = "ca-central-1",
    CA_WEST_1 = "ca-west-1",
    CN_NORTH_1 = "cn-north-1",
    CN_NORTHWEST_1 = "cn-northwest-1",
    EU_CENTRAL_1 = "eu-central-1",
    EU_CENTRAL_2 = "eu-central-2",
    EU_NORTH_1 = "eu-north-1",
    EU_SOUTH_1 = "eu-south-1",
    EU_SOUTH_2 = "eu-south-2",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    EU_WEST_3 = "eu-west-3",
    IL_CENTRAL_1 = "il-central-1",
    ME_CENTRAL_1 = "me-central-1",
    ME_SOUTH_1 = "me-south-1",
    MX_CENTRAL_1 = "mx-central-1",
    SA_EAST_1 = "sa-east-1",
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2",
}

M.BatchGetMemberAccountDetailsInput = {
    type = "structure",
    id = "BatchGetMemberAccountDetailsInput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetMembershipAccountDetailError = {
    type = "structure",
    id = "GetMembershipAccountDetailError",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
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

M.MembershipAccountRelationshipStatus = {
    ASSOCIATED = "Associated",
    DISASSOCIATED = "Disassociated",
    UNASSOCIATED = "Unassociated",
}

M.MembershipAccountRelationshipType = {
    ORGANIZATION = "Organization",
    UNRELATED = "Unrelated",
}

M.GetMembershipAccountDetailItem = {
    type = "structure",
    id = "GetMembershipAccountDetailItem",
    members = {
        accountId = {
            type = "string",
        },
        relationshipStatus = {
            type = "string",
        },
        relationshipType = {
            type = "string",
        },
    },
}

M.BatchGetMemberAccountDetailsOutput = {
    type = "structure",
    id = "BatchGetMemberAccountDetailsOutput",
    members = {
        items = {
            type = "list",
            member = M.GetMembershipAccountDetailItem,
        },
        errors = {
            type = "list",
            member = M.GetMembershipAccountDetailError,
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

M.InvalidTokenException = {
    type = "structure",
    id = "InvalidTokenException",
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
    },
}

M.SecurityIncidentResponseNotActiveException = {
    type = "structure",
    id = "SecurityIncidentResponseNotActiveException",
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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

M.CancelMembershipInput = {
    type = "structure",
    id = "CancelMembershipInput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelMembershipOutput = {
    type = "structure",
    id = "CancelMembershipOutput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloseCaseInput = {
    type = "structure",
    id = "CloseCaseInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CaseStatus = {
    SUBMITTED = "Submitted",
    ACKNOWLEDGED = "Acknowledged",
    DETECTION_AND_ANALYSIS = "Detection and Analysis",
    CONTAINMENT_ERADICATION_AND_RECOVERY = "Containment, Eradication and Recovery",
    POST_INCIDENT_ACTIVITIES = "Post-incident Activities",
    READY_TO_CLOSE = "Ready to Close",
    CLOSED = "Closed",
}

M.CloseCaseOutput = {
    type = "structure",
    id = "CloseCaseOutput",
    members = {
        caseStatus = {
            type = "string",
        },
        closedDate = {
            type = "timestamp",
        },
    },
}

M.EngagementType = {
    SECURITY_INCIDENT = "Security Incident",
    INVESTIGATION = "Investigation",
}

M.ImpactedAwsRegion = {
    type = "structure",
    id = "ImpactedAwsRegion",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolverType = {
    AWS = "AWS",
    SELF = "Self",
}

M.ThreatActorIp = {
    type = "structure",
    id = "ThreatActorIp",
    members = {
        ipAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userAgent = {
            type = "string",
        },
    },
}

M.Watcher = {
    type = "structure",
    id = "Watcher",
    members = {
        email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        jobTitle = {
            type = "string",
        },
    },
}

M.CreateCaseInput = {
    type = "structure",
    id = "CreateCaseInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        resolverType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
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
        engagementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reportedIncidentStartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        impactedAccounts = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        watchers = {
            type = "list",
            member = M.Watcher,
            traits = {
                required = true,
            },
        },
        threatActorIpAddresses = {
            type = "list",
            member = M.ThreatActorIp,
        },
        impactedServices = {
            type = "list",
            member = { type = "string" },
        },
        impactedAwsRegions = {
            type = "list",
            member = M.ImpactedAwsRegion,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCaseOutput = {
    type = "structure",
    id = "CreateCaseOutput",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCaseCommentInput = {
    type = "structure",
    id = "CreateCaseCommentInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCaseCommentOutput = {
    type = "structure",
    id = "CreateCaseCommentOutput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCaseInput = {
    type = "structure",
    id = "GetCaseInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CaseAttachmentStatus = {
    VERIFIED = "Verified",
    FAILED = "Failed",
    PENDING = "Pending",
}

M.CaseAttachmentAttributes = {
    type = "structure",
    id = "CaseAttachmentAttributes",
    members = {
        attachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CaseMetadataEntry = {
    type = "structure",
    id = "CaseMetadataEntry",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClosureCode = {
    INVESTIGATION_COMPLETED = "Investigation Completed",
    NOT_RESOLVED = "Not Resolved",
    FALSE_POSITIVE = "False Positive",
    DUPLICATE = "Duplicate",
}

M.PendingAction = {
    CUSTOMER = "Customer",
    NONE = "None",
}

M.GetCaseOutput = {
    type = "structure",
    id = "GetCaseOutput",
    members = {
        title = {
            type = "string",
        },
        caseArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        caseStatus = {
            type = "string",
        },
        engagementType = {
            type = "string",
        },
        reportedIncidentStartDate = {
            type = "timestamp",
        },
        actualIncidentStartDate = {
            type = "timestamp",
        },
        impactedAwsRegions = {
            type = "list",
            member = M.ImpactedAwsRegion,
        },
        threatActorIpAddresses = {
            type = "list",
            member = M.ThreatActorIp,
        },
        pendingAction = {
            type = "string",
        },
        impactedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        watchers = {
            type = "list",
            member = M.Watcher,
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        closureCode = {
            type = "string",
        },
        resolverType = {
            type = "string",
        },
        impactedServices = {
            type = "list",
            member = { type = "string" },
        },
        caseAttachments = {
            type = "list",
            member = M.CaseAttachmentAttributes,
        },
        closedDate = {
            type = "timestamp",
        },
        caseMetadata = {
            type = "list",
            member = M.CaseMetadataEntry,
        },
    },
}

M.GetCaseAttachmentDownloadUrlInput = {
    type = "structure",
    id = "GetCaseAttachmentDownloadUrlInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attachmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCaseAttachmentDownloadUrlOutput = {
    type = "structure",
    id = "GetCaseAttachmentDownloadUrlOutput",
    members = {
        attachmentPresignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCaseAttachmentUploadUrlInput = {
    type = "structure",
    id = "GetCaseAttachmentUploadUrlInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentLength = {
            type = "long",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.GetCaseAttachmentUploadUrlOutput = {
    type = "structure",
    id = "GetCaseAttachmentUploadUrlOutput",
    members = {
        attachmentPresignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCaseEditsInput = {
    type = "structure",
    id = "ListCaseEditsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CaseEditItem = {
    type = "structure",
    id = "CaseEditItem",
    members = {
        eventTimestamp = {
            type = "timestamp",
        },
        principal = {
            type = "string",
        },
        action = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ListCaseEditsOutput = {
    type = "structure",
    id = "ListCaseEditsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.CaseEditItem,
        },
        total = {
            type = "integer",
        },
    },
}

M.ListCasesInput = {
    type = "structure",
    id = "ListCasesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListCasesItem = {
    type = "structure",
    id = "ListCasesItem",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        title = {
            type = "string",
        },
        caseArn = {
            type = "string",
        },
        engagementType = {
            type = "string",
        },
        caseStatus = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        closedDate = {
            type = "timestamp",
        },
        resolverType = {
            type = "string",
        },
        pendingAction = {
            type = "string",
        },
    },
}

M.ListCasesOutput = {
    type = "structure",
    id = "ListCasesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ListCasesItem,
        },
        total = {
            type = "long",
        },
    },
}

M.ListCommentsInput = {
    type = "structure",
    id = "ListCommentsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListCommentsItem = {
    type = "structure",
    id = "ListCommentsItem",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        creator = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        body = {
            type = "string",
        },
    },
}

M.ListCommentsOutput = {
    type = "structure",
    id = "ListCommentsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ListCommentsItem,
        },
        total = {
            type = "integer",
        },
    },
}

M.ListInvestigationsInput = {
    type = "structure",
    id = "ListInvestigationsInput",
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
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UsefulnessRating = {
    USEFUL = "USEFUL",
    NOT_USEFUL = "NOT_USEFUL",
}

M.InvestigationFeedback = {
    type = "structure",
    id = "InvestigationFeedback",
    members = {
        usefulness = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        submittedAt = {
            type = "timestamp",
        },
    },
}

M.ExecutionStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    WAITING = "Waiting",
    COMPLETED = "Completed",
    FAILED = "Failed",
    CANCELLED = "Cancelled",
}

M.InvestigationAction = {
    type = "structure",
    id = "InvestigationAction",
    members = {
        investigationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
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
        lastUpdated = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        feedback = M.InvestigationFeedback,
    },
}

M.ListInvestigationsOutput = {
    type = "structure",
    id = "ListInvestigationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        investigationActions = {
            type = "list",
            member = M.InvestigationAction,
            traits = {
                required = true,
            },
        },
    },
}

M.SendFeedbackInput = {
    type = "structure",
    id = "SendFeedbackInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resultId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        usefulness = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
        },
    },
}

M.SendFeedbackOutput = {
    type = "structure",
    id = "SendFeedbackOutput",
}

M.UpdateCaseInput = {
    type = "structure",
    id = "UpdateCaseInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        title = {
            type = "string",
        },
        description = {
            type = "string",
        },
        reportedIncidentStartDate = {
            type = "timestamp",
        },
        actualIncidentStartDate = {
            type = "timestamp",
        },
        engagementType = {
            type = "string",
        },
        watchersToAdd = {
            type = "list",
            member = M.Watcher,
        },
        watchersToDelete = {
            type = "list",
            member = M.Watcher,
        },
        threatActorIpAddressesToAdd = {
            type = "list",
            member = M.ThreatActorIp,
        },
        threatActorIpAddressesToDelete = {
            type = "list",
            member = M.ThreatActorIp,
        },
        impactedServicesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        impactedServicesToDelete = {
            type = "list",
            member = { type = "string" },
        },
        impactedAwsRegionsToAdd = {
            type = "list",
            member = M.ImpactedAwsRegion,
        },
        impactedAwsRegionsToDelete = {
            type = "list",
            member = M.ImpactedAwsRegion,
        },
        impactedAccountsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        impactedAccountsToDelete = {
            type = "list",
            member = { type = "string" },
        },
        caseMetadata = {
            type = "list",
            member = M.CaseMetadataEntry,
        },
    },
}

M.UpdateCaseOutput = {
    type = "structure",
    id = "UpdateCaseOutput",
}

M.UpdateCaseCommentInput = {
    type = "structure",
    id = "UpdateCaseCommentInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        commentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCaseCommentOutput = {
    type = "structure",
    id = "UpdateCaseCommentOutput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        body = {
            type = "string",
        },
    },
}

M.SelfManagedCaseStatus = {
    SUBMITTED = "Submitted",
    DETECTION_AND_ANALYSIS = "Detection and Analysis",
    CONTAINMENT_ERADICATION_AND_RECOVERY = "Containment, Eradication and Recovery",
    POST_INCIDENT_ACTIVITIES = "Post-incident Activities",
}

M.UpdateCaseStatusInput = {
    type = "structure",
    id = "UpdateCaseStatusInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCaseStatusOutput = {
    type = "structure",
    id = "UpdateCaseStatusOutput",
    members = {
        caseStatus = {
            type = "string",
        },
    },
}

M.UpdateResolverTypeInput = {
    type = "structure",
    id = "UpdateResolverTypeInput",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resolverType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResolverTypeOutput = {
    type = "structure",
    id = "UpdateResolverTypeOutput",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseStatus = {
            type = "string",
        },
        resolverType = {
            type = "string",
        },
    },
}

M.CommunicationType = {
    CASE_CREATED = "Case Created",
    CASE_UPDATED = "Case Updated",
    CASE_ACKNOWLEDGED = "Case Acknowledged",
    CASE_CLOSED = "Case Closed",
    CASE_UPDATED_TO_SERVICE_MANAGED = "Case Updated To Service Managed",
    CASE_UPDATE_CASE_STATUS = "Case Status Updated",
    CASE_PENDING_CUSTOMER_ACTION_REMINDER = "Case Pending Customer Action Reminder",
    CASE_ATTACHMENT_URL_UPLOADED = "Case Attachment Url Uploaded",
    CASE_COMMENT_ADDED = "Case Comment Added",
    CASE_COMMENT_UPDATED = "Case Comment Updated",
    MEMBERSHIP_CREATED = "Membership Created",
    MEMBERSHIP_UPDATED = "Membership Updated",
    MEMBERSHIP_CANCELLED = "Membership Cancelled",
    REGISTER_DELEGATED_ADMINISTRATOR = "Register Delegated Administrator",
    DEREGISTER_DELEGATED_ADMINISTRATOR = "Deregister Delegated Administrator",
    DISABLE_AWS_SERVICE_ACCESS = "Disable AWS Service Access",
}

M.IncidentResponder = {
    type = "structure",
    id = "IncidentResponder",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        communicationPreferences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OptInFeatureName = {
    TRIAGE = "Triage",
}

M.OptInFeature = {
    type = "structure",
    id = "OptInFeature",
    members = {
        featureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMembershipInput = {
    type = "structure",
    id = "CreateMembershipInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        membershipName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        incidentResponseTeam = {
            type = "list",
            member = M.IncidentResponder,
            traits = {
                required = true,
            },
        },
        optInFeatures = {
            type = "list",
            member = M.OptInFeature,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        coverEntireOrganization = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.CreateMembershipOutput = {
    type = "structure",
    id = "CreateMembershipOutput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerType = {
    STANDALONE = "Standalone",
    ORGANIZATION = "Organization",
}

M.GetMembershipInput = {
    type = "structure",
    id = "GetMembershipInput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MembershipAccountsConfigurations = {
    type = "structure",
    id = "MembershipAccountsConfigurations",
    members = {
        coverEntireOrganization = {
            type = "boolean",
        },
        organizationalUnits = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MembershipStatus = {
    ACTIVE = "Active",
    CANCELLED = "Cancelled",
    TERMINATED = "Terminated",
}

M.GetMembershipOutput = {
    type = "structure",
    id = "GetMembershipOutput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        membershipName = {
            type = "string",
        },
        membershipArn = {
            type = "string",
        },
        membershipStatus = {
            type = "string",
        },
        membershipActivationTimestamp = {
            type = "timestamp",
        },
        membershipDeactivationTimestamp = {
            type = "timestamp",
        },
        customerType = {
            type = "string",
        },
        numberOfAccountsCovered = {
            type = "long",
        },
        incidentResponseTeam = {
            type = "list",
            member = M.IncidentResponder,
        },
        optInFeatures = {
            type = "list",
            member = M.OptInFeature,
        },
        membershipAccountsConfigurations = M.MembershipAccountsConfigurations,
    },
}

M.ListMembershipItem = {
    type = "structure",
    id = "ListMembershipItem",
    members = {
        membershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        membershipArn = {
            type = "string",
        },
        membershipStatus = {
            type = "string",
        },
    },
}

M.ListMembershipsInput = {
    type = "structure",
    id = "ListMembershipsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListMembershipsOutput = {
    type = "structure",
    id = "ListMembershipsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member = M.ListMembershipItem,
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
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipAccountsConfigurationsUpdate = {
    type = "structure",
    id = "MembershipAccountsConfigurationsUpdate",
    members = {
        coverEntireOrganization = {
            type = "boolean",
        },
        organizationalUnitsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        organizationalUnitsToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateMembershipInput = {
    type = "structure",
    id = "UpdateMembershipInput",
    members = {
        membershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        membershipName = {
            type = "string",
        },
        incidentResponseTeam = {
            type = "list",
            member = M.IncidentResponder,
        },
        optInFeatures = {
            type = "list",
            member = M.OptInFeature,
        },
        membershipAccountsConfigurationsUpdate = M.MembershipAccountsConfigurationsUpdate,
        undoMembershipCancellation = {
            type = "boolean",
        },
    },
}

M.UpdateMembershipOutput = {
    type = "structure",
    id = "UpdateMembershipOutput",
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

return M
