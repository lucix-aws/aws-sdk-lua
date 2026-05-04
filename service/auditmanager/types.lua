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

M.AccountStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
}

M.ActionEnum = {
    CREATE = "CREATE",
    UPDATE_METADATA = "UPDATE_METADATA",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETE = "DELETE",
    UNDER_REVIEW = "UNDER_REVIEW",
    REVIEWED = "REVIEWED",
    IMPORT_EVIDENCE = "IMPORT_EVIDENCE",
}

M.AWSAccount = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ControlComment = {
    type = "structure",
    members = {
        authorName = {
            type = "string",
        },
        commentBody = {
            type = "string",
        },
        postedDate = {
            type = "timestamp",
        },
    },
}

M.ControlResponse = {
    MANUAL = "MANUAL",
    AUTOMATE = "AUTOMATE",
    DEFER = "DEFER",
    IGNORE = "IGNORE",
}

M.ControlStatus = {
    UNDER_REVIEW = "UNDER_REVIEW",
    REVIEWED = "REVIEWED",
    INACTIVE = "INACTIVE",
}

M.AssessmentControl = {
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
        status = {
            type = "string",
        },
        response = {
            type = "string",
        },
        comments = {
            type = "list",
            member_type = "structure",
        },
        evidenceSources = {
            type = "list",
            member_type = "string",
        },
        evidenceCount = {
            type = "number",
        },
        assessmentReportEvidenceCount = {
            type = "number",
        },
    },
}

M.RoleType = {
    PROCESS_OWNER = "PROCESS_OWNER",
    RESOURCE_OWNER = "RESOURCE_OWNER",
}

M.DelegationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    UNDER_REVIEW = "UNDER_REVIEW",
    COMPLETE = "COMPLETE",
}

M.Delegation = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        assessmentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        roleType = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdated = {
            type = "timestamp",
        },
        controlSetId = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
    },
}

M.Role = {
    type = "structure",
    members = {
        roleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ControlSetStatus = {
    ACTIVE = "ACTIVE",
    UNDER_REVIEW = "UNDER_REVIEW",
    REVIEWED = "REVIEWED",
}

M.AssessmentControlSet = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roles = {
            type = "list",
            member_type = "structure",
        },
        controls = {
            type = "list",
            member_type = "structure",
        },
        delegations = {
            type = "list",
            member_type = "structure",
        },
        systemEvidenceCount = {
            type = "number",
        },
        manualEvidenceCount = {
            type = "number",
        },
    },
}

M.FrameworkMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logo = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
    },
}

M.AssessmentFramework = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        metadata = {
            type = "structure",
        },
        controlSets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssessmentReportDestinationType = {
    S3 = "S3",
}

M.AssessmentReportsDestination = {
    type = "structure",
    members = {
        destinationType = {
            type = "string",
        },
        destination = {
            type = "string",
        },
    },
}

M.AWSService = {
    type = "structure",
    members = {
        serviceName = {
            type = "string",
        },
    },
}

M.Scope = {
    type = "structure",
    members = {
        awsAccounts = {
            type = "list",
            member_type = "structure",
        },
        awsServices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssessmentStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AssessmentMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        assessmentReportsDestination = {
            type = "structure",
        },
        scope = {
            type = "structure",
        },
        roles = {
            type = "list",
            member_type = "structure",
        },
        delegations = {
            type = "list",
            member_type = "structure",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.Assessment = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        awsAccount = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        framework = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AssessmentEvidenceFolder = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        date = {
            type = "timestamp",
        },
        assessmentId = {
            type = "string",
        },
        controlSetId = {
            type = "string",
        },
        controlId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        dataSource = {
            type = "string",
        },
        author = {
            type = "string",
        },
        totalEvidence = {
            type = "number",
        },
        assessmentReportSelectionCount = {
            type = "number",
        },
        controlName = {
            type = "string",
        },
        evidenceResourcesIncludedCount = {
            type = "number",
        },
        evidenceByTypeConfigurationDataCount = {
            type = "number",
        },
        evidenceByTypeManualCount = {
            type = "number",
        },
        evidenceByTypeComplianceCheckCount = {
            type = "number",
        },
        evidenceByTypeComplianceCheckIssuesCount = {
            type = "number",
        },
        evidenceByTypeUserActivityCount = {
            type = "number",
        },
        evidenceAwsServiceSourceCount = {
            type = "number",
        },
    },
}

M.FrameworkType = {
    STANDARD = "Standard",
    CUSTOM = "Custom",
}

M.AssessmentFrameworkMetadata = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logo = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
        controlsCount = {
            type = "number",
        },
        controlSetsCount = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ShareRequestStatus = {
    ACTIVE = "ACTIVE",
    REPLICATING = "REPLICATING",
    SHARED = "SHARED",
    EXPIRING = "EXPIRING",
    FAILED = "FAILED",
    EXPIRED = "EXPIRED",
    DECLINED = "DECLINED",
    REVOKED = "REVOKED",
}

M.AssessmentFrameworkShareRequest = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        frameworkId = {
            type = "string",
        },
        frameworkName = {
            type = "string",
        },
        frameworkDescription = {
            type = "string",
        },
        status = {
            type = "string",
        },
        sourceAccount = {
            type = "string",
        },
        destinationAccount = {
            type = "string",
        },
        destinationRegion = {
            type = "string",
        },
        expirationTime = {
            type = "timestamp",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdated = {
            type = "timestamp",
        },
        comment = {
            type = "string",
        },
        standardControlsCount = {
            type = "number",
        },
        customControlsCount = {
            type = "number",
        },
        complianceType = {
            type = "string",
        },
    },
}

M.AssessmentMetadataItem = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roles = {
            type = "list",
            member_type = "structure",
        },
        delegations = {
            type = "list",
            member_type = "structure",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.AssessmentReportStatus = {
    COMPLETE = "COMPLETE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.AssessmentReport = {
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
        awsAccountId = {
            type = "string",
        },
        assessmentId = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        author = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
    },
}

M.AssessmentReportEvidenceError = {
    type = "structure",
    members = {
        evidenceId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.AssessmentReportMetadata = {
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
        assessmentId = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        author = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
    },
}

M.AssociateAssessmentReportEvidenceFolderInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAssessmentReportEvidenceFolderOutput = {
    type = "structure",
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
        },
        fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchAssociateAssessmentReportEvidenceInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evidenceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAssociateAssessmentReportEvidenceOutput = {
    type = "structure",
    members = {
        evidenceIds = {
            type = "list",
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDelegationRequest = {
    type = "structure",
    members = {
        comment = {
            type = "string",
        },
        controlSetId = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        roleType = {
            type = "string",
        },
    },
}

M.BatchCreateDelegationByAssessmentInput = {
    type = "structure",
    members = {
        createDelegationRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BatchCreateDelegationByAssessmentError = {
    type = "structure",
    members = {
        createDelegationRequest = {
            type = "structure",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchCreateDelegationByAssessmentOutput = {
    type = "structure",
    members = {
        delegations = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDeleteDelegationByAssessmentInput = {
    type = "structure",
    members = {
        delegationIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BatchDeleteDelegationByAssessmentError = {
    type = "structure",
    members = {
        delegationId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteDelegationByAssessmentOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDisassociateAssessmentReportEvidenceInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evidenceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateAssessmentReportEvidenceOutput = {
    type = "structure",
    members = {
        evidenceIds = {
            type = "list",
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ManualEvidence = {
    type = "structure",
    members = {
        s3ResourcePath = {
            type = "string",
        },
        textResponse = {
            type = "string",
        },
        evidenceFileName = {
            type = "string",
        },
    },
}

M.BatchImportEvidenceToAssessmentControlInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        manualEvidence = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchImportEvidenceToAssessmentControlError = {
    type = "structure",
    members = {
        manualEvidence = {
            type = "structure",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchImportEvidenceToAssessmentControlOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
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
    },
}

M.CreateAssessmentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        assessmentReportsDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roles = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        frameworkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAssessmentOutput = {
    type = "structure",
    members = {
        assessment = {
            type = "structure",
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
    },
}

M.CreateAssessmentFrameworkControl = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAssessmentFrameworkControlSet = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controls = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAssessmentFrameworkInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
        controlSets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SourceFrequency = {
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
}

M.KeywordInputType = {
    SELECT_FROM_LIST = "SELECT_FROM_LIST",
    UPLOAD_FILE = "UPLOAD_FILE",
    INPUT_TEXT = "INPUT_TEXT",
}

M.SourceKeyword = {
    type = "structure",
    members = {
        keywordInputType = {
            type = "string",
        },
        keywordValue = {
            type = "string",
        },
    },
}

M.SourceSetUpOption = {
    SYSTEM_CONTROLS_MAPPING = "System_Controls_Mapping",
    PROCEDURAL_CONTROLS_MAPPING = "Procedural_Controls_Mapping",
}

M.SourceType = {
    AWS_CLOUDTRAIL = "AWS_Cloudtrail",
    AWS_CONFIG = "AWS_Config",
    AWS_SECURITY_HUB = "AWS_Security_Hub",
    AWS_API_CALL = "AWS_API_Call",
    MANUAL = "MANUAL",
    COMMON_CONTROL = "Common_Control",
    CORE_CONTROL = "Core_Control",
}

M.ControlMappingSource = {
    type = "structure",
    members = {
        sourceId = {
            type = "string",
        },
        sourceName = {
            type = "string",
        },
        sourceDescription = {
            type = "string",
        },
        sourceSetUpOption = {
            type = "string",
        },
        sourceType = {
            type = "string",
        },
        sourceKeyword = {
            type = "structure",
        },
        sourceFrequency = {
            type = "string",
        },
        troubleshootingText = {
            type = "string",
        },
    },
}

M.ControlState = {
    ACTIVE = "ACTIVE",
    END_OF_SUPPORT = "END_OF_SUPPORT",
}

M.ControlType = {
    STANDARD = "Standard",
    CUSTOM = "Custom",
    CORE = "Core",
}

M.Control = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        testingInformation = {
            type = "string",
        },
        actionPlanTitle = {
            type = "string",
        },
        actionPlanInstructions = {
            type = "string",
        },
        controlSources = {
            type = "string",
        },
        controlMappingSources = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.ControlSet = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        controls = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Framework = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        complianceType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        logo = {
            type = "string",
        },
        controlSources = {
            type = "string",
        },
        controlSets = {
            type = "list",
            member_type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        lastUpdatedBy = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAssessmentFrameworkOutput = {
    type = "structure",
    members = {
        framework = {
            type = "structure",
        },
    },
}

M.CreateAssessmentReportInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queryStatement = {
            type = "string",
        },
    },
}

M.CreateAssessmentReportOutput = {
    type = "structure",
    members = {
        assessmentReport = {
            type = "structure",
        },
    },
}

M.CreateControlMappingSource = {
    type = "structure",
    members = {
        sourceName = {
            type = "string",
        },
        sourceDescription = {
            type = "string",
        },
        sourceSetUpOption = {
            type = "string",
        },
        sourceType = {
            type = "string",
        },
        sourceKeyword = {
            type = "structure",
        },
        sourceFrequency = {
            type = "string",
        },
        troubleshootingText = {
            type = "string",
        },
    },
}

M.CreateControlInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        testingInformation = {
            type = "string",
        },
        actionPlanTitle = {
            type = "string",
        },
        actionPlanInstructions = {
            type = "string",
        },
        controlMappingSources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateControlOutput = {
    type = "structure",
    members = {
        control = {
            type = "structure",
        },
    },
}

M.DeleteAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssessmentOutput = {
    type = "structure",
}

M.DeleteAssessmentFrameworkInput = {
    type = "structure",
    members = {
        frameworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssessmentFrameworkOutput = {
    type = "structure",
}

M.ShareRequestType = {
    SENT = "SENT",
    RECEIVED = "RECEIVED",
}

M.DeleteAssessmentFrameworkShareInput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestType = {
            type = "string",
            traits = {
                http_query = "requestType",
                required = true,
            },
        },
    },
}

M.DeleteAssessmentFrameworkShareOutput = {
    type = "structure",
}

M.DeleteAssessmentReportInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assessmentReportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssessmentReportOutput = {
    type = "structure",
}

M.DeleteControlInput = {
    type = "structure",
    members = {
        controlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteControlOutput = {
    type = "structure",
}

M.DeregisterAccountInput = {
    type = "structure",
}

M.DeregisterAccountOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationAdminAccountOutput = {
    type = "structure",
}

M.DisassociateAssessmentReportEvidenceFolderInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAssessmentReportEvidenceFolderOutput = {
    type = "structure",
}

M.GetAccountStatusInput = {
    type = "structure",
}

M.GetAccountStatusOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.GetAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssessmentOutput = {
    type = "structure",
    members = {
        assessment = {
            type = "structure",
        },
        userRole = {
            type = "structure",
        },
    },
}

M.GetAssessmentFrameworkInput = {
    type = "structure",
    members = {
        frameworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssessmentFrameworkOutput = {
    type = "structure",
    members = {
        framework = {
            type = "structure",
        },
    },
}

M.GetAssessmentReportUrlInput = {
    type = "structure",
    members = {
        assessmentReportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.URL = {
    type = "structure",
    members = {
        hyperlinkName = {
            type = "string",
        },
        link = {
            type = "string",
        },
    },
}

M.GetAssessmentReportUrlOutput = {
    type = "structure",
    members = {
        preSignedUrl = {
            type = "structure",
        },
    },
}

M.GetChangeLogsInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_query = "controlSetId",
            },
        },
        controlId = {
            type = "string",
            traits = {
                http_query = "controlId",
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
    },
}

M.ObjectTypeEnum = {
    ASSESSMENT = "ASSESSMENT",
    CONTROL_SET = "CONTROL_SET",
    CONTROL = "CONTROL",
    DELEGATION = "DELEGATION",
    ASSESSMENT_REPORT = "ASSESSMENT_REPORT",
}

M.ChangeLog = {
    type = "structure",
    members = {
        objectType = {
            type = "string",
        },
        objectName = {
            type = "string",
        },
        action = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
    },
}

M.GetChangeLogsOutput = {
    type = "structure",
    members = {
        changeLogs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetControlInput = {
    type = "structure",
    members = {
        controlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetControlOutput = {
    type = "structure",
    members = {
        control = {
            type = "structure",
        },
    },
}

M.GetDelegationsInput = {
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

M.DelegationMetadata = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        assessmentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        controlSetName = {
            type = "string",
        },
    },
}

M.GetDelegationsOutput = {
    type = "structure",
    members = {
        delegations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        value = {
            type = "string",
        },
        complianceCheck = {
            type = "string",
        },
    },
}

M.Evidence = {
    type = "structure",
    members = {
        dataSource = {
            type = "string",
        },
        evidenceAwsAccountId = {
            type = "string",
        },
        time = {
            type = "timestamp",
        },
        eventSource = {
            type = "string",
        },
        eventName = {
            type = "string",
        },
        evidenceByType = {
            type = "string",
        },
        resourcesIncluded = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        iamId = {
            type = "string",
        },
        complianceCheck = {
            type = "string",
        },
        awsOrganization = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        evidenceFolderId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        assessmentReportSelection = {
            type = "string",
        },
    },
}

M.GetEvidenceOutput = {
    type = "structure",
    members = {
        evidence = {
            type = "structure",
        },
    },
}

M.GetEvidenceByEvidenceFolderInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
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
    },
}

M.GetEvidenceByEvidenceFolderOutput = {
    type = "structure",
    members = {
        evidence = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceFileUploadUrlInput = {
    type = "structure",
    members = {
        fileName = {
            type = "string",
            traits = {
                http_query = "fileName",
                required = true,
            },
        },
    },
}

M.GetEvidenceFileUploadUrlOutput = {
    type = "structure",
    members = {
        evidenceFileName = {
            type = "string",
        },
        uploadUrl = {
            type = "string",
        },
    },
}

M.GetEvidenceFolderInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evidenceFolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEvidenceFolderOutput = {
    type = "structure",
    members = {
        evidenceFolder = {
            type = "structure",
        },
    },
}

M.GetEvidenceFoldersByAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
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
    },
}

M.GetEvidenceFoldersByAssessmentOutput = {
    type = "structure",
    members = {
        evidenceFolders = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceFoldersByAssessmentControlInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlId = {
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
    },
}

M.GetEvidenceFoldersByAssessmentControlOutput = {
    type = "structure",
    members = {
        evidenceFolders = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetInsightsInput = {
    type = "structure",
}

M.Insights = {
    type = "structure",
    members = {
        activeAssessmentsCount = {
            type = "number",
        },
        noncompliantEvidenceCount = {
            type = "number",
        },
        compliantEvidenceCount = {
            type = "number",
        },
        inconclusiveEvidenceCount = {
            type = "number",
        },
        assessmentControlsCountByNoncompliantEvidence = {
            type = "number",
        },
        totalAssessmentControlsCount = {
            type = "number",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.GetInsightsOutput = {
    type = "structure",
    members = {
        insights = {
            type = "structure",
        },
    },
}

M.GetInsightsByAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InsightsByAssessment = {
    type = "structure",
    members = {
        noncompliantEvidenceCount = {
            type = "number",
        },
        compliantEvidenceCount = {
            type = "number",
        },
        inconclusiveEvidenceCount = {
            type = "number",
        },
        assessmentControlsCountByNoncompliantEvidence = {
            type = "number",
        },
        totalAssessmentControlsCount = {
            type = "number",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.GetInsightsByAssessmentOutput = {
    type = "structure",
    members = {
        insights = {
            type = "structure",
        },
    },
}

M.GetOrganizationAdminAccountInput = {
    type = "structure",
}

M.GetOrganizationAdminAccountOutput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
        },
        organizationId = {
            type = "string",
        },
    },
}

M.GetServicesInScopeInput = {
    type = "structure",
}

M.ServiceMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.GetServicesInScopeOutput = {
    type = "structure",
    members = {
        serviceMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SettingAttribute = {
    ALL = "ALL",
    IS_AWS_ORG_ENABLED = "IS_AWS_ORG_ENABLED",
    SNS_TOPIC = "SNS_TOPIC",
    DEFAULT_ASSESSMENT_REPORTS_DESTINATION = "DEFAULT_ASSESSMENT_REPORTS_DESTINATION",
    DEFAULT_PROCESS_OWNERS = "DEFAULT_PROCESS_OWNERS",
    EVIDENCE_FINDER_ENABLEMENT = "EVIDENCE_FINDER_ENABLEMENT",
    DEREGISTRATION_POLICY = "DEREGISTRATION_POLICY",
    DEFAULT_EXPORT_DESTINATION = "DEFAULT_EXPORT_DESTINATION",
}

M.GetSettingsInput = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExportDestinationType = {
    S3 = "S3",
}

M.DefaultExportDestination = {
    type = "structure",
    members = {
        destinationType = {
            type = "string",
        },
        destination = {
            type = "string",
        },
    },
}

M.DeleteResources = {
    ALL = "ALL",
    DEFAULT = "DEFAULT",
}

M.DeregistrationPolicy = {
    type = "structure",
    members = {
        deleteResources = {
            type = "string",
        },
    },
}

M.EvidenceFinderBackfillStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.EvidenceFinderEnablementStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
}

M.EvidenceFinderEnablement = {
    type = "structure",
    members = {
        eventDataStoreArn = {
            type = "string",
        },
        enablementStatus = {
            type = "string",
        },
        backfillStatus = {
            type = "string",
        },
        error = {
            type = "string",
        },
    },
}

M.Settings = {
    type = "structure",
    members = {
        isAwsOrgEnabled = {
            type = "boolean",
        },
        snsTopic = {
            type = "string",
        },
        defaultAssessmentReportsDestination = {
            type = "structure",
        },
        defaultProcessOwners = {
            type = "list",
            member_type = "structure",
        },
        kmsKey = {
            type = "string",
        },
        evidenceFinderEnablement = {
            type = "structure",
        },
        deregistrationPolicy = {
            type = "structure",
        },
        defaultExportDestination = {
            type = "structure",
        },
    },
}

M.GetSettingsOutput = {
    type = "structure",
    members = {
        settings = {
            type = "structure",
        },
    },
}

M.ListAssessmentControlInsightsByControlDomainInput = {
    type = "structure",
    members = {
        controlDomainId = {
            type = "string",
            traits = {
                http_query = "controlDomainId",
                required = true,
            },
        },
        assessmentId = {
            type = "string",
            traits = {
                http_query = "assessmentId",
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
    },
}

M.EvidenceInsights = {
    type = "structure",
    members = {
        noncompliantEvidenceCount = {
            type = "number",
        },
        compliantEvidenceCount = {
            type = "number",
        },
        inconclusiveEvidenceCount = {
            type = "number",
        },
    },
}

M.ControlInsightsMetadataByAssessmentItem = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        evidenceInsights = {
            type = "structure",
        },
        controlSetName = {
            type = "string",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.ListAssessmentControlInsightsByControlDomainOutput = {
    type = "structure",
    members = {
        controlInsightsByAssessment = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentFrameworksInput = {
    type = "structure",
    members = {
        frameworkType = {
            type = "string",
            traits = {
                http_query = "frameworkType",
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
    },
}

M.ListAssessmentFrameworksOutput = {
    type = "structure",
    members = {
        frameworkMetadataList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentFrameworkShareRequestsInput = {
    type = "structure",
    members = {
        requestType = {
            type = "string",
            traits = {
                http_query = "requestType",
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
    },
}

M.ListAssessmentFrameworkShareRequestsOutput = {
    type = "structure",
    members = {
        assessmentFrameworkShareRequests = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentReportsInput = {
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

M.ListAssessmentReportsOutput = {
    type = "structure",
    members = {
        assessmentReports = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentsInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
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
    },
}

M.ListAssessmentsOutput = {
    type = "structure",
    members = {
        assessmentMetadata = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlDomainInsightsInput = {
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

M.ControlDomainInsights = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        controlsCountByNoncompliantEvidence = {
            type = "number",
        },
        totalControlsCount = {
            type = "number",
        },
        evidenceInsights = {
            type = "structure",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.ListControlDomainInsightsOutput = {
    type = "structure",
    members = {
        controlDomainInsights = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlDomainInsightsByAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_query = "assessmentId",
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
    },
}

M.ListControlDomainInsightsByAssessmentOutput = {
    type = "structure",
    members = {
        controlDomainInsights = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlInsightsByControlDomainInput = {
    type = "structure",
    members = {
        controlDomainId = {
            type = "string",
            traits = {
                http_query = "controlDomainId",
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
    },
}

M.ControlInsightsMetadataItem = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        evidenceInsights = {
            type = "structure",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.ListControlInsightsByControlDomainOutput = {
    type = "structure",
    members = {
        controlInsightsMetadata = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlsInput = {
    type = "structure",
    members = {
        controlType = {
            type = "string",
            traits = {
                http_query = "controlType",
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
        controlCatalogId = {
            type = "string",
            traits = {
                http_query = "controlCatalogId",
            },
        },
    },
}

M.ControlMetadata = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        controlSources = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListControlsOutput = {
    type = "structure",
    members = {
        controlMetadataList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DataSourceType = {
    AWS_CLOUDTRAIL = "AWS_Cloudtrail",
    AWS_CONFIG = "AWS_Config",
    AWS_SECURITY_HUB = "AWS_Security_Hub",
    AWS_API_CALL = "AWS_API_Call",
    MANUAL = "MANUAL",
}

M.ListKeywordsForDataSourceInput = {
    type = "structure",
    members = {
        source = {
            type = "string",
            traits = {
                http_query = "source",
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
    },
}

M.ListKeywordsForDataSourceOutput = {
    type = "structure",
    members = {
        keywords = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNotificationsInput = {
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

M.Notification = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        assessmentId = {
            type = "string",
        },
        assessmentName = {
            type = "string",
        },
        controlSetId = {
            type = "string",
        },
        controlSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        eventTime = {
            type = "timestamp",
        },
        source = {
            type = "string",
        },
    },
}

M.ListNotificationsOutput = {
    type = "structure",
    members = {
        notifications = {
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

M.RegisterAccountInput = {
    type = "structure",
    members = {
        kmsKey = {
            type = "string",
        },
        delegatedAdminAccount = {
            type = "string",
        },
    },
}

M.RegisterAccountOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.RegisterOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterOrganizationAdminAccountOutput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
        },
        organizationId = {
            type = "string",
        },
    },
}

M.StartAssessmentFrameworkShareInput = {
    type = "structure",
    members = {
        frameworkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destinationAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationRegion = {
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

M.StartAssessmentFrameworkShareOutput = {
    type = "structure",
    members = {
        assessmentFrameworkShareRequest = {
            type = "structure",
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

M.UpdateAssessmentInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        assessmentName = {
            type = "string",
        },
        assessmentDescription = {
            type = "string",
        },
        scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        assessmentReportsDestination = {
            type = "structure",
        },
        roles = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateAssessmentOutput = {
    type = "structure",
    members = {
        assessment = {
            type = "structure",
        },
    },
}

M.UpdateAssessmentControlInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlStatus = {
            type = "string",
        },
        commentBody = {
            type = "string",
        },
    },
}

M.UpdateAssessmentControlOutput = {
    type = "structure",
    members = {
        control = {
            type = "structure",
        },
    },
}

M.UpdateAssessmentControlSetStatusInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        controlSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentControlSetStatusOutput = {
    type = "structure",
    members = {
        controlSet = {
            type = "structure",
        },
    },
}

M.UpdateAssessmentFrameworkControlSet = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controls = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentFrameworkInput = {
    type = "structure",
    members = {
        frameworkId = {
            type = "string",
            traits = {
                http_label = true,
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
        },
        complianceType = {
            type = "string",
        },
        controlSets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentFrameworkOutput = {
    type = "structure",
    members = {
        framework = {
            type = "structure",
        },
    },
}

M.ShareRequestAction = {
    ACCEPT = "ACCEPT",
    DECLINE = "DECLINE",
    REVOKE = "REVOKE",
}

M.UpdateAssessmentFrameworkShareInput = {
    type = "structure",
    members = {
        requestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentFrameworkShareOutput = {
    type = "structure",
    members = {
        assessmentFrameworkShareRequest = {
            type = "structure",
        },
    },
}

M.UpdateAssessmentStatusInput = {
    type = "structure",
    members = {
        assessmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentStatusOutput = {
    type = "structure",
    members = {
        assessment = {
            type = "structure",
        },
    },
}

M.UpdateControlInput = {
    type = "structure",
    members = {
        controlId = {
            type = "string",
            traits = {
                http_label = true,
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
        },
        testingInformation = {
            type = "string",
        },
        actionPlanTitle = {
            type = "string",
        },
        actionPlanInstructions = {
            type = "string",
        },
        controlMappingSources = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateControlOutput = {
    type = "structure",
    members = {
        control = {
            type = "structure",
        },
    },
}

M.UpdateSettingsInput = {
    type = "structure",
    members = {
        snsTopic = {
            type = "string",
        },
        defaultAssessmentReportsDestination = {
            type = "structure",
        },
        defaultProcessOwners = {
            type = "list",
            member_type = "structure",
        },
        kmsKey = {
            type = "string",
        },
        evidenceFinderEnabled = {
            type = "boolean",
        },
        deregistrationPolicy = {
            type = "structure",
        },
        defaultExportDestination = {
            type = "structure",
        },
    },
}

M.UpdateSettingsOutput = {
    type = "structure",
    members = {
        settings = {
            type = "structure",
        },
    },
}

M.ValidateAssessmentReportIntegrityInput = {
    type = "structure",
    members = {
        s3RelativePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateAssessmentReportIntegrityOutput = {
    type = "structure",
    members = {
        signatureValid = {
            type = "boolean",
        },
        signatureAlgorithm = {
            type = "string",
        },
        signatureDateTime = {
            type = "string",
        },
        signatureKeyId = {
            type = "string",
        },
        validationErrors = {
            type = "list",
            member_type = "string",
        },
    },
}

return M
