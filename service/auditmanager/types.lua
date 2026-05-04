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
    id = "AWSAccount",
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
    id = "ControlComment",
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
    id = "AssessmentControl",
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
            member = M.ControlComment,
        },
        evidenceSources = {
            type = "list",
            member = { type = "string" },
        },
        evidenceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        assessmentReportEvidenceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "Delegation",
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
    id = "Role",
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
    id = "AssessmentControlSet",
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
            member = M.Role,
        },
        controls = {
            type = "list",
            member = M.AssessmentControl,
        },
        delegations = {
            type = "list",
            member = M.Delegation,
        },
        systemEvidenceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        manualEvidenceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.FrameworkMetadata = {
    type = "structure",
    id = "FrameworkMetadata",
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
    id = "AssessmentFramework",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        metadata = M.FrameworkMetadata,
        controlSets = {
            type = "list",
            member = M.AssessmentControlSet,
        },
    },
}

M.AssessmentReportDestinationType = {
    S3 = "S3",
}

M.AssessmentReportsDestination = {
    type = "structure",
    id = "AssessmentReportsDestination",
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
    id = "AWSService",
    members = {
        serviceName = {
            type = "string",
        },
    },
}

M.Scope = {
    type = "structure",
    id = "Scope",
    members = {
        awsAccounts = {
            type = "list",
            member = M.AWSAccount,
        },
        awsServices = {
            type = "list",
            member = M.AWSService,
        },
    },
}

M.AssessmentStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AssessmentMetadata = {
    type = "structure",
    id = "AssessmentMetadata",
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
        assessmentReportsDestination = M.AssessmentReportsDestination,
        scope = M.Scope,
        roles = {
            type = "list",
            member = M.Role,
        },
        delegations = {
            type = "list",
            member = M.Delegation,
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
    id = "Assessment",
    members = {
        arn = {
            type = "string",
        },
        awsAccount = M.AWSAccount,
        metadata = M.AssessmentMetadata,
        framework = M.AssessmentFramework,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AssessmentEvidenceFolder = {
    type = "structure",
    id = "AssessmentEvidenceFolder",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        assessmentReportSelectionCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        controlName = {
            type = "string",
        },
        evidenceResourcesIncludedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceByTypeConfigurationDataCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceByTypeManualCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceByTypeComplianceCheckCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceByTypeComplianceCheckIssuesCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceByTypeUserActivityCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        evidenceAwsServiceSourceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.FrameworkType = {
    STANDARD = "Standard",
    CUSTOM = "Custom",
}

M.AssessmentFrameworkMetadata = {
    type = "structure",
    id = "AssessmentFrameworkMetadata",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        controlSetsCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "AssessmentFrameworkShareRequest",
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
            type = "integer",
        },
        customControlsCount = {
            type = "integer",
        },
        complianceType = {
            type = "string",
        },
    },
}

M.AssessmentMetadataItem = {
    type = "structure",
    id = "AssessmentMetadataItem",
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
            member = M.Role,
        },
        delegations = {
            type = "list",
            member = M.Delegation,
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
    id = "AssessmentReport",
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
    id = "AssessmentReportEvidenceError",
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
    id = "AssessmentReportMetadata",
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
    id = "AssociateAssessmentReportEvidenceFolderInput",
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
    id = "AssociateAssessmentReportEvidenceFolderOutput",
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
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.BatchAssociateAssessmentReportEvidenceInput = {
    type = "structure",
    id = "BatchAssociateAssessmentReportEvidenceInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAssociateAssessmentReportEvidenceOutput = {
    type = "structure",
    id = "BatchAssociateAssessmentReportEvidenceOutput",
    members = {
        evidenceIds = {
            type = "list",
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = M.AssessmentReportEvidenceError,
        },
    },
}

M.CreateDelegationRequest = {
    type = "structure",
    id = "CreateDelegationRequest",
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
    id = "BatchCreateDelegationByAssessmentInput",
    members = {
        createDelegationRequests = {
            type = "list",
            member = M.CreateDelegationRequest,
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
    id = "BatchCreateDelegationByAssessmentError",
    members = {
        createDelegationRequest = M.CreateDelegationRequest,
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
    id = "BatchCreateDelegationByAssessmentOutput",
    members = {
        delegations = {
            type = "list",
            member = M.Delegation,
        },
        errors = {
            type = "list",
            member = M.BatchCreateDelegationByAssessmentError,
        },
    },
}

M.BatchDeleteDelegationByAssessmentInput = {
    type = "structure",
    id = "BatchDeleteDelegationByAssessmentInput",
    members = {
        delegationIds = {
            type = "list",
            member = { type = "string" },
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
    id = "BatchDeleteDelegationByAssessmentError",
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
    id = "BatchDeleteDelegationByAssessmentOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchDeleteDelegationByAssessmentError,
        },
    },
}

M.BatchDisassociateAssessmentReportEvidenceInput = {
    type = "structure",
    id = "BatchDisassociateAssessmentReportEvidenceInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateAssessmentReportEvidenceOutput = {
    type = "structure",
    id = "BatchDisassociateAssessmentReportEvidenceOutput",
    members = {
        evidenceIds = {
            type = "list",
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = M.AssessmentReportEvidenceError,
        },
    },
}

M.ManualEvidence = {
    type = "structure",
    id = "ManualEvidence",
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
    id = "BatchImportEvidenceToAssessmentControlInput",
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
            member = M.ManualEvidence,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchImportEvidenceToAssessmentControlError = {
    type = "structure",
    id = "BatchImportEvidenceToAssessmentControlError",
    members = {
        manualEvidence = M.ManualEvidence,
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
    id = "BatchImportEvidenceToAssessmentControlOutput",
    members = {
        errors = {
            type = "list",
            member = M.BatchImportEvidenceToAssessmentControlError,
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
    },
}

M.CreateAssessmentInput = {
    type = "structure",
    id = "CreateAssessmentInput",
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
        assessmentReportsDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssessmentReportsDestination }),
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Scope }),
        roles = {
            type = "list",
            member = M.Role,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAssessmentOutput = {
    type = "structure",
    id = "CreateAssessmentOutput",
    members = {
        assessment = M.Assessment,
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
    },
}

M.CreateAssessmentFrameworkControl = {
    type = "structure",
    id = "CreateAssessmentFrameworkControl",
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
    id = "CreateAssessmentFrameworkControlSet",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controls = {
            type = "list",
            member = M.CreateAssessmentFrameworkControl,
        },
    },
}

M.CreateAssessmentFrameworkInput = {
    type = "structure",
    id = "CreateAssessmentFrameworkInput",
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
            member = M.CreateAssessmentFrameworkControlSet,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "SourceKeyword",
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
    id = "ControlMappingSource",
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
        sourceKeyword = M.SourceKeyword,
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
    id = "Control",
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
            member = M.ControlMappingSource,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        state = {
            type = "string",
        },
    },
}

M.ControlSet = {
    type = "structure",
    id = "ControlSet",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        controls = {
            type = "list",
            member = M.Control,
        },
    },
}

M.Framework = {
    type = "structure",
    id = "Framework",
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
            member = M.ControlSet,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAssessmentFrameworkOutput = {
    type = "structure",
    id = "CreateAssessmentFrameworkOutput",
    members = {
        framework = M.Framework,
    },
}

M.CreateAssessmentReportInput = {
    type = "structure",
    id = "CreateAssessmentReportInput",
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
    id = "CreateAssessmentReportOutput",
    members = {
        assessmentReport = M.AssessmentReport,
    },
}

M.CreateControlMappingSource = {
    type = "structure",
    id = "CreateControlMappingSource",
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
        sourceKeyword = M.SourceKeyword,
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
    id = "CreateControlInput",
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
            member = M.CreateControlMappingSource,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateControlOutput = {
    type = "structure",
    id = "CreateControlOutput",
    members = {
        control = M.Control,
    },
}

M.DeleteAssessmentInput = {
    type = "structure",
    id = "DeleteAssessmentInput",
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
    id = "DeleteAssessmentOutput",
}

M.DeleteAssessmentFrameworkInput = {
    type = "structure",
    id = "DeleteAssessmentFrameworkInput",
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
    id = "DeleteAssessmentFrameworkOutput",
}

M.ShareRequestType = {
    SENT = "SENT",
    RECEIVED = "RECEIVED",
}

M.DeleteAssessmentFrameworkShareInput = {
    type = "structure",
    id = "DeleteAssessmentFrameworkShareInput",
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
    id = "DeleteAssessmentFrameworkShareOutput",
}

M.DeleteAssessmentReportInput = {
    type = "structure",
    id = "DeleteAssessmentReportInput",
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
    id = "DeleteAssessmentReportOutput",
}

M.DeleteControlInput = {
    type = "structure",
    id = "DeleteControlInput",
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
    id = "DeleteControlOutput",
}

M.DeregisterAccountInput = {
    type = "structure",
    id = "DeregisterAccountInput",
}

M.DeregisterAccountOutput = {
    type = "structure",
    id = "DeregisterAccountOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationAdminAccountInput = {
    type = "structure",
    id = "DeregisterOrganizationAdminAccountInput",
    members = {
        adminAccountId = {
            type = "string",
        },
    },
}

M.DeregisterOrganizationAdminAccountOutput = {
    type = "structure",
    id = "DeregisterOrganizationAdminAccountOutput",
}

M.DisassociateAssessmentReportEvidenceFolderInput = {
    type = "structure",
    id = "DisassociateAssessmentReportEvidenceFolderInput",
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
    id = "DisassociateAssessmentReportEvidenceFolderOutput",
}

M.GetAccountStatusInput = {
    type = "structure",
    id = "GetAccountStatusInput",
}

M.GetAccountStatusOutput = {
    type = "structure",
    id = "GetAccountStatusOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.GetAssessmentInput = {
    type = "structure",
    id = "GetAssessmentInput",
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
    id = "GetAssessmentOutput",
    members = {
        assessment = M.Assessment,
        userRole = M.Role,
    },
}

M.GetAssessmentFrameworkInput = {
    type = "structure",
    id = "GetAssessmentFrameworkInput",
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
    id = "GetAssessmentFrameworkOutput",
    members = {
        framework = M.Framework,
    },
}

M.GetAssessmentReportUrlInput = {
    type = "structure",
    id = "GetAssessmentReportUrlInput",
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
    id = "URL",
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
    id = "GetAssessmentReportUrlOutput",
    members = {
        preSignedUrl = M.URL,
    },
}

M.GetChangeLogsInput = {
    type = "structure",
    id = "GetChangeLogsInput",
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
            type = "integer",
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
    id = "ChangeLog",
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
    id = "GetChangeLogsOutput",
    members = {
        changeLogs = {
            type = "list",
            member = M.ChangeLog,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetControlInput = {
    type = "structure",
    id = "GetControlInput",
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
    id = "GetControlOutput",
    members = {
        control = M.Control,
    },
}

M.GetDelegationsInput = {
    type = "structure",
    id = "GetDelegationsInput",
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

M.DelegationMetadata = {
    type = "structure",
    id = "DelegationMetadata",
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
    id = "GetDelegationsOutput",
    members = {
        delegations = {
            type = "list",
            member = M.DelegationMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceInput = {
    type = "structure",
    id = "GetEvidenceInput",
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
    id = "Resource",
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
    id = "Evidence",
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
            member = M.Resource,
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "GetEvidenceOutput",
    members = {
        evidence = M.Evidence,
    },
}

M.GetEvidenceByEvidenceFolderInput = {
    type = "structure",
    id = "GetEvidenceByEvidenceFolderInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetEvidenceByEvidenceFolderOutput = {
    type = "structure",
    id = "GetEvidenceByEvidenceFolderOutput",
    members = {
        evidence = {
            type = "list",
            member = M.Evidence,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceFileUploadUrlInput = {
    type = "structure",
    id = "GetEvidenceFileUploadUrlInput",
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
    id = "GetEvidenceFileUploadUrlOutput",
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
    id = "GetEvidenceFolderInput",
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
    id = "GetEvidenceFolderOutput",
    members = {
        evidenceFolder = M.AssessmentEvidenceFolder,
    },
}

M.GetEvidenceFoldersByAssessmentInput = {
    type = "structure",
    id = "GetEvidenceFoldersByAssessmentInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetEvidenceFoldersByAssessmentOutput = {
    type = "structure",
    id = "GetEvidenceFoldersByAssessmentOutput",
    members = {
        evidenceFolders = {
            type = "list",
            member = M.AssessmentEvidenceFolder,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetEvidenceFoldersByAssessmentControlInput = {
    type = "structure",
    id = "GetEvidenceFoldersByAssessmentControlInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetEvidenceFoldersByAssessmentControlOutput = {
    type = "structure",
    id = "GetEvidenceFoldersByAssessmentControlOutput",
    members = {
        evidenceFolders = {
            type = "list",
            member = M.AssessmentEvidenceFolder,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetInsightsInput = {
    type = "structure",
    id = "GetInsightsInput",
}

M.Insights = {
    type = "structure",
    id = "Insights",
    members = {
        activeAssessmentsCount = {
            type = "integer",
        },
        noncompliantEvidenceCount = {
            type = "integer",
        },
        compliantEvidenceCount = {
            type = "integer",
        },
        inconclusiveEvidenceCount = {
            type = "integer",
        },
        assessmentControlsCountByNoncompliantEvidence = {
            type = "integer",
        },
        totalAssessmentControlsCount = {
            type = "integer",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.GetInsightsOutput = {
    type = "structure",
    id = "GetInsightsOutput",
    members = {
        insights = M.Insights,
    },
}

M.GetInsightsByAssessmentInput = {
    type = "structure",
    id = "GetInsightsByAssessmentInput",
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
    id = "InsightsByAssessment",
    members = {
        noncompliantEvidenceCount = {
            type = "integer",
        },
        compliantEvidenceCount = {
            type = "integer",
        },
        inconclusiveEvidenceCount = {
            type = "integer",
        },
        assessmentControlsCountByNoncompliantEvidence = {
            type = "integer",
        },
        totalAssessmentControlsCount = {
            type = "integer",
        },
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.GetInsightsByAssessmentOutput = {
    type = "structure",
    id = "GetInsightsByAssessmentOutput",
    members = {
        insights = M.InsightsByAssessment,
    },
}

M.GetOrganizationAdminAccountInput = {
    type = "structure",
    id = "GetOrganizationAdminAccountInput",
}

M.GetOrganizationAdminAccountOutput = {
    type = "structure",
    id = "GetOrganizationAdminAccountOutput",
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
    id = "GetServicesInScopeInput",
}

M.ServiceMetadata = {
    type = "structure",
    id = "ServiceMetadata",
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
    id = "GetServicesInScopeOutput",
    members = {
        serviceMetadata = {
            type = "list",
            member = M.ServiceMetadata,
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
    id = "GetSettingsInput",
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
    id = "DefaultExportDestination",
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
    id = "DeregistrationPolicy",
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
    id = "EvidenceFinderEnablement",
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
    id = "Settings",
    members = {
        isAwsOrgEnabled = {
            type = "boolean",
        },
        snsTopic = {
            type = "string",
        },
        defaultAssessmentReportsDestination = M.AssessmentReportsDestination,
        defaultProcessOwners = {
            type = "list",
            member = M.Role,
        },
        kmsKey = {
            type = "string",
        },
        evidenceFinderEnablement = M.EvidenceFinderEnablement,
        deregistrationPolicy = M.DeregistrationPolicy,
        defaultExportDestination = M.DefaultExportDestination,
    },
}

M.GetSettingsOutput = {
    type = "structure",
    id = "GetSettingsOutput",
    members = {
        settings = M.Settings,
    },
}

M.ListAssessmentControlInsightsByControlDomainInput = {
    type = "structure",
    id = "ListAssessmentControlInsightsByControlDomainInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EvidenceInsights = {
    type = "structure",
    id = "EvidenceInsights",
    members = {
        noncompliantEvidenceCount = {
            type = "integer",
        },
        compliantEvidenceCount = {
            type = "integer",
        },
        inconclusiveEvidenceCount = {
            type = "integer",
        },
    },
}

M.ControlInsightsMetadataByAssessmentItem = {
    type = "structure",
    id = "ControlInsightsMetadataByAssessmentItem",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        evidenceInsights = M.EvidenceInsights,
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
    id = "ListAssessmentControlInsightsByControlDomainOutput",
    members = {
        controlInsightsByAssessment = {
            type = "list",
            member = M.ControlInsightsMetadataByAssessmentItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentFrameworksInput = {
    type = "structure",
    id = "ListAssessmentFrameworksInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssessmentFrameworksOutput = {
    type = "structure",
    id = "ListAssessmentFrameworksOutput",
    members = {
        frameworkMetadataList = {
            type = "list",
            member = M.AssessmentFrameworkMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentFrameworkShareRequestsInput = {
    type = "structure",
    id = "ListAssessmentFrameworkShareRequestsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssessmentFrameworkShareRequestsOutput = {
    type = "structure",
    id = "ListAssessmentFrameworkShareRequestsOutput",
    members = {
        assessmentFrameworkShareRequests = {
            type = "list",
            member = M.AssessmentFrameworkShareRequest,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentReportsInput = {
    type = "structure",
    id = "ListAssessmentReportsInput",
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

M.ListAssessmentReportsOutput = {
    type = "structure",
    id = "ListAssessmentReportsOutput",
    members = {
        assessmentReports = {
            type = "list",
            member = M.AssessmentReportMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssessmentsInput = {
    type = "structure",
    id = "ListAssessmentsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAssessmentsOutput = {
    type = "structure",
    id = "ListAssessmentsOutput",
    members = {
        assessmentMetadata = {
            type = "list",
            member = M.AssessmentMetadataItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlDomainInsightsInput = {
    type = "structure",
    id = "ListControlDomainInsightsInput",
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

M.ControlDomainInsights = {
    type = "structure",
    id = "ControlDomainInsights",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        controlsCountByNoncompliantEvidence = {
            type = "integer",
        },
        totalControlsCount = {
            type = "integer",
        },
        evidenceInsights = M.EvidenceInsights,
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.ListControlDomainInsightsOutput = {
    type = "structure",
    id = "ListControlDomainInsightsOutput",
    members = {
        controlDomainInsights = {
            type = "list",
            member = M.ControlDomainInsights,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlDomainInsightsByAssessmentInput = {
    type = "structure",
    id = "ListControlDomainInsightsByAssessmentInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListControlDomainInsightsByAssessmentOutput = {
    type = "structure",
    id = "ListControlDomainInsightsByAssessmentOutput",
    members = {
        controlDomainInsights = {
            type = "list",
            member = M.ControlDomainInsights,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlInsightsByControlDomainInput = {
    type = "structure",
    id = "ListControlInsightsByControlDomainInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ControlInsightsMetadataItem = {
    type = "structure",
    id = "ControlInsightsMetadataItem",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        evidenceInsights = M.EvidenceInsights,
        lastUpdated = {
            type = "timestamp",
        },
    },
}

M.ListControlInsightsByControlDomainOutput = {
    type = "structure",
    id = "ListControlInsightsByControlDomainOutput",
    members = {
        controlInsightsMetadata = {
            type = "list",
            member = M.ControlInsightsMetadataItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListControlsInput = {
    type = "structure",
    id = "ListControlsInput",
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
            type = "integer",
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
    id = "ControlMetadata",
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
    id = "ListControlsOutput",
    members = {
        controlMetadataList = {
            type = "list",
            member = M.ControlMetadata,
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
    id = "ListKeywordsForDataSourceInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListKeywordsForDataSourceOutput = {
    type = "structure",
    id = "ListKeywordsForDataSourceOutput",
    members = {
        keywords = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNotificationsInput = {
    type = "structure",
    id = "ListNotificationsInput",
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

M.Notification = {
    type = "structure",
    id = "Notification",
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
    id = "ListNotificationsOutput",
    members = {
        notifications = {
            type = "list",
            member = M.Notification,
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

M.RegisterAccountInput = {
    type = "structure",
    id = "RegisterAccountInput",
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
    id = "RegisterAccountOutput",
    members = {
        status = {
            type = "string",
        },
    },
}

M.RegisterOrganizationAdminAccountInput = {
    type = "structure",
    id = "RegisterOrganizationAdminAccountInput",
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
    id = "RegisterOrganizationAdminAccountOutput",
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
    id = "StartAssessmentFrameworkShareInput",
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
    id = "StartAssessmentFrameworkShareOutput",
    members = {
        assessmentFrameworkShareRequest = M.AssessmentFrameworkShareRequest,
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

M.UpdateAssessmentInput = {
    type = "structure",
    id = "UpdateAssessmentInput",
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
        scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Scope }),
        assessmentReportsDestination = M.AssessmentReportsDestination,
        roles = {
            type = "list",
            member = M.Role,
        },
    },
}

M.UpdateAssessmentOutput = {
    type = "structure",
    id = "UpdateAssessmentOutput",
    members = {
        assessment = M.Assessment,
    },
}

M.UpdateAssessmentControlInput = {
    type = "structure",
    id = "UpdateAssessmentControlInput",
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
    id = "UpdateAssessmentControlOutput",
    members = {
        control = M.AssessmentControl,
    },
}

M.UpdateAssessmentControlSetStatusInput = {
    type = "structure",
    id = "UpdateAssessmentControlSetStatusInput",
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
    id = "UpdateAssessmentControlSetStatusOutput",
    members = {
        controlSet = M.AssessmentControlSet,
    },
}

M.UpdateAssessmentFrameworkControlSet = {
    type = "structure",
    id = "UpdateAssessmentFrameworkControlSet",
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
            member = M.CreateAssessmentFrameworkControl,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentFrameworkInput = {
    type = "structure",
    id = "UpdateAssessmentFrameworkInput",
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
            member = M.UpdateAssessmentFrameworkControlSet,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssessmentFrameworkOutput = {
    type = "structure",
    id = "UpdateAssessmentFrameworkOutput",
    members = {
        framework = M.Framework,
    },
}

M.ShareRequestAction = {
    ACCEPT = "ACCEPT",
    DECLINE = "DECLINE",
    REVOKE = "REVOKE",
}

M.UpdateAssessmentFrameworkShareInput = {
    type = "structure",
    id = "UpdateAssessmentFrameworkShareInput",
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
    id = "UpdateAssessmentFrameworkShareOutput",
    members = {
        assessmentFrameworkShareRequest = M.AssessmentFrameworkShareRequest,
    },
}

M.UpdateAssessmentStatusInput = {
    type = "structure",
    id = "UpdateAssessmentStatusInput",
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
    id = "UpdateAssessmentStatusOutput",
    members = {
        assessment = M.Assessment,
    },
}

M.UpdateControlInput = {
    type = "structure",
    id = "UpdateControlInput",
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
            member = M.ControlMappingSource,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateControlOutput = {
    type = "structure",
    id = "UpdateControlOutput",
    members = {
        control = M.Control,
    },
}

M.UpdateSettingsInput = {
    type = "structure",
    id = "UpdateSettingsInput",
    members = {
        snsTopic = {
            type = "string",
        },
        defaultAssessmentReportsDestination = M.AssessmentReportsDestination,
        defaultProcessOwners = {
            type = "list",
            member = M.Role,
        },
        kmsKey = {
            type = "string",
        },
        evidenceFinderEnabled = {
            type = "boolean",
        },
        deregistrationPolicy = M.DeregistrationPolicy,
        defaultExportDestination = M.DefaultExportDestination,
    },
}

M.UpdateSettingsOutput = {
    type = "structure",
    id = "UpdateSettingsOutput",
    members = {
        settings = M.Settings,
    },
}

M.ValidateAssessmentReportIntegrityInput = {
    type = "structure",
    id = "ValidateAssessmentReportIntegrityInput",
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
    id = "ValidateAssessmentReportIntegrityOutput",
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
            member = { type = "string" },
        },
    },
}

return M
