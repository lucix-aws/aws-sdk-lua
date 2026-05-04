local M = {}

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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMembershipAccountDetailError = {
    type = "structure",
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.InvalidTokenException = {
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
    },
}

M.SecurityIncidentResponseNotActiveException = {
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
            type = "number",
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
            member_type = "structure",
        },
    },
}

M.CancelMembershipInput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        watchers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        threatActorIpAddresses = {
            type = "list",
            member_type = "structure",
        },
        impactedServices = {
            type = "list",
            member_type = "string",
        },
        impactedAwsRegions = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCaseOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        threatActorIpAddresses = {
            type = "list",
            member_type = "structure",
        },
        pendingAction = {
            type = "string",
        },
        impactedAccounts = {
            type = "list",
            member_type = "string",
        },
        watchers = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        caseAttachments = {
            type = "list",
            member_type = "structure",
        },
        closedDate = {
            type = "timestamp",
        },
        caseMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetCaseAttachmentDownloadUrlInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.GetCaseAttachmentUploadUrlOutput = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        total = {
            type = "number",
        },
    },
}

M.ListCasesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListCasesItem = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        total = {
            type = "number",
        },
    },
}

M.ListCommentsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
        },
        total = {
            type = "number",
        },
    },
}

M.ListInvestigationsInput = {
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
        feedback = {
            type = "structure",
        },
    },
}

M.ListInvestigationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        investigationActions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SendFeedbackInput = {
    type = "structure",
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
}

M.UpdateCaseInput = {
    type = "structure",
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
            member_type = "structure",
        },
        watchersToDelete = {
            type = "list",
            member_type = "structure",
        },
        threatActorIpAddressesToAdd = {
            type = "list",
            member_type = "structure",
        },
        threatActorIpAddressesToDelete = {
            type = "list",
            member_type = "structure",
        },
        impactedServicesToAdd = {
            type = "list",
            member_type = "string",
        },
        impactedServicesToDelete = {
            type = "list",
            member_type = "string",
        },
        impactedAwsRegionsToAdd = {
            type = "list",
            member_type = "structure",
        },
        impactedAwsRegionsToDelete = {
            type = "list",
            member_type = "structure",
        },
        impactedAccountsToAdd = {
            type = "list",
            member_type = "string",
        },
        impactedAccountsToDelete = {
            type = "list",
            member_type = "string",
        },
        caseMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCaseOutput = {
    type = "structure",
}

M.UpdateCaseCommentInput = {
    type = "structure",
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
    members = {
        caseStatus = {
            type = "string",
        },
    },
}

M.UpdateResolverTypeInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.OptInFeatureName = {
    TRIAGE = "Triage",
}

M.OptInFeature = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
        },
        membershipName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        incidentResponseTeam = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        optInFeatures = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        coverEntireOrganization = {
            type = "boolean",
        },
    },
}

M.CreateMembershipOutput = {
    type = "structure",
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
    members = {
        coverEntireOrganization = {
            type = "boolean",
        },
        organizationalUnits = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        incidentResponseTeam = {
            type = "list",
            member_type = "structure",
        },
        optInFeatures = {
            type = "list",
            member_type = "structure",
        },
        membershipAccountsConfigurations = {
            type = "structure",
        },
    },
}

M.ListMembershipItem = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListMembershipsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        items = {
            type = "list",
            member_type = "structure",
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
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipAccountsConfigurationsUpdate = {
    type = "structure",
    members = {
        coverEntireOrganization = {
            type = "boolean",
        },
        organizationalUnitsToAdd = {
            type = "list",
            member_type = "string",
        },
        organizationalUnitsToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateMembershipInput = {
    type = "structure",
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
            member_type = "structure",
        },
        optInFeatures = {
            type = "list",
            member_type = "structure",
        },
        membershipAccountsConfigurationsUpdate = {
            type = "structure",
        },
        undoMembershipCancellation = {
            type = "boolean",
        },
    },
}

M.UpdateMembershipOutput = {
    type = "structure",
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

return M
