local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.auditmanager"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AWSAccount = schema.new({
    id = id.from(_N, "AWSAccount"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AWSAccount", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        emailAddress = schema.new({
            id = id.from(_N, "AWSAccount", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AWSAccount", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.ControlComment = schema.new({
    id = id.from(_N, "ControlComment"),
    type = "structure",
    members = {
        authorName = schema.new({
            id = id.from(_N, "ControlComment", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        commentBody = schema.new({
            id = id.from(_N, "ControlComment", "commentBody"),
            type = "string",
            name = "commentBody",
            target_id = prelude.String.id,
        }),
        postedDate = schema.new({
            id = id.from(_N, "ControlComment", "postedDate"),
            type = "timestamp",
            name = "postedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssessmentControl = schema.new({
    id = id.from(_N, "AssessmentControl"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentControl", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssessmentControl", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentControl", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentControl", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        response = schema.new({
            id = id.from(_N, "AssessmentControl", "response"),
            type = "string",
            name = "response",
            target_id = prelude.String.id,
        }),
        comments = schema.new({
            id = id.from(_N, "AssessmentControl", "comments"),
            type = "list",
            name = "comments",
            target_id = prelude.Document.id,
            list_member = M.ControlComment,
        }),
        evidenceSources = schema.new({
            id = id.from(_N, "AssessmentControl", "evidenceSources"),
            type = "list",
            name = "evidenceSources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        evidenceCount = schema.new({
            id = id.from(_N, "AssessmentControl", "evidenceCount"),
            type = "integer",
            name = "evidenceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        assessmentReportEvidenceCount = schema.new({
            id = id.from(_N, "AssessmentControl", "assessmentReportEvidenceCount"),
            type = "integer",
            name = "assessmentReportEvidenceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Delegation = schema.new({
    id = id.from(_N, "Delegation"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Delegation", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        assessmentName = schema.new({
            id = id.from(_N, "Delegation", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "Delegation", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Delegation", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "Delegation", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        roleType = schema.new({
            id = id.from(_N, "Delegation", "roleType"),
            type = "string",
            name = "roleType",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "Delegation", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "Delegation", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        controlSetId = schema.new({
            id = id.from(_N, "Delegation", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
        }),
        comment = schema.new({
            id = id.from(_N, "Delegation", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "Delegation", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
    },
})

M.Role = schema.new({
    id = id.from(_N, "Role"),
    type = "structure",
    members = {
        roleType = schema.new({
            id = id.from(_N, "Role", "roleType"),
            type = "string",
            name = "roleType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "Role", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssessmentControlSet = schema.new({
    id = id.from(_N, "AssessmentControlSet"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentControlSet", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentControlSet", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentControlSet", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        roles = schema.new({
            id = id.from(_N, "AssessmentControlSet", "roles"),
            type = "list",
            name = "roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        controls = schema.new({
            id = id.from(_N, "AssessmentControlSet", "controls"),
            type = "list",
            name = "controls",
            target_id = prelude.Document.id,
            list_member = M.AssessmentControl,
        }),
        delegations = schema.new({
            id = id.from(_N, "AssessmentControlSet", "delegations"),
            type = "list",
            name = "delegations",
            target_id = prelude.Document.id,
            list_member = M.Delegation,
        }),
        systemEvidenceCount = schema.new({
            id = id.from(_N, "AssessmentControlSet", "systemEvidenceCount"),
            type = "integer",
            name = "systemEvidenceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        manualEvidenceCount = schema.new({
            id = id.from(_N, "AssessmentControlSet", "manualEvidenceCount"),
            type = "integer",
            name = "manualEvidenceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.FrameworkMetadata = schema.new({
    id = id.from(_N, "FrameworkMetadata"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "FrameworkMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "FrameworkMetadata", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logo = schema.new({
            id = id.from(_N, "FrameworkMetadata", "logo"),
            type = "string",
            name = "logo",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "FrameworkMetadata", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssessmentFramework = schema.new({
    id = id.from(_N, "AssessmentFramework"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentFramework", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AssessmentFramework", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "AssessmentFramework", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "FrameworkMetadata"),
            target = M.FrameworkMetadata,
        }),
        controlSets = schema.new({
            id = id.from(_N, "AssessmentFramework", "controlSets"),
            type = "list",
            name = "controlSets",
            target_id = prelude.Document.id,
            list_member = M.AssessmentControlSet,
        }),
    },
})

M.AssessmentReportsDestination = schema.new({
    id = id.from(_N, "AssessmentReportsDestination"),
    type = "structure",
    members = {
        destinationType = schema.new({
            id = id.from(_N, "AssessmentReportsDestination", "destinationType"),
            type = "string",
            name = "destinationType",
            target_id = prelude.String.id,
        }),
        destination = schema.new({
            id = id.from(_N, "AssessmentReportsDestination", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
    },
})

M.AWSService = schema.new({
    id = id.from(_N, "AWSService"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "AWSService", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
        }),
    },
})

M.Scope = schema.new({
    id = id.from(_N, "Scope"),
    type = "structure",
    members = {
        awsAccounts = schema.new({
            id = id.from(_N, "Scope", "awsAccounts"),
            type = "list",
            name = "awsAccounts",
            target_id = prelude.Document.id,
            list_member = M.AWSAccount,
        }),
        awsServices = schema.new({
            id = id.from(_N, "Scope", "awsServices"),
            type = "list",
            name = "awsServices",
            target_id = prelude.Document.id,
            list_member = M.AWSService,
        }),
    },
})

M.AssessmentMetadata = schema.new({
    id = id.from(_N, "AssessmentMetadata"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssessmentMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "AssessmentMetadata", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentMetadata", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "AssessmentMetadata", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentMetadata", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        assessmentReportsDestination = schema.new({
            id = id.from(_N, "AssessmentMetadata", "assessmentReportsDestination"),
            type = "structure",
            name = "assessmentReportsDestination",
            target_id = id.from(_N, "AssessmentReportsDestination"),
            target = M.AssessmentReportsDestination,
        }),
        scope = schema.new({
            id = id.from(_N, "AssessmentMetadata", "scope"),
            type = "structure",
            name = "scope",
            target_id = id.from(_N, "Scope"),
            target = M.Scope,
        }),
        roles = schema.new({
            id = id.from(_N, "AssessmentMetadata", "roles"),
            type = "list",
            name = "roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        delegations = schema.new({
            id = id.from(_N, "AssessmentMetadata", "delegations"),
            type = "list",
            name = "delegations",
            target_id = prelude.Document.id,
            list_member = M.Delegation,
        }),
        creationTime = schema.new({
            id = id.from(_N, "AssessmentMetadata", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "AssessmentMetadata", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Assessment = schema.new({
    id = id.from(_N, "Assessment"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Assessment", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        awsAccount = schema.new({
            id = id.from(_N, "Assessment", "awsAccount"),
            type = "structure",
            name = "awsAccount",
            target_id = id.from(_N, "AWSAccount"),
            target = M.AWSAccount,
        }),
        metadata = schema.new({
            id = id.from(_N, "Assessment", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "AssessmentMetadata"),
            target = M.AssessmentMetadata,
        }),
        framework = schema.new({
            id = id.from(_N, "Assessment", "framework"),
            type = "structure",
            name = "framework",
            target_id = id.from(_N, "AssessmentFramework"),
            target = M.AssessmentFramework,
        }),
        tags = schema.new({
            id = id.from(_N, "Assessment", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AssessmentEvidenceFolder = schema.new({
    id = id.from(_N, "AssessmentEvidenceFolder"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        date = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "date"),
            type = "timestamp",
            name = "date",
            target_id = prelude.Timestamp.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        controlSetId = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
        }),
        controlId = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        dataSource = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "dataSource"),
            type = "string",
            name = "dataSource",
            target_id = prelude.String.id,
        }),
        author = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "author"),
            type = "string",
            name = "author",
            target_id = prelude.String.id,
        }),
        totalEvidence = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "totalEvidence"),
            type = "integer",
            name = "totalEvidence",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        assessmentReportSelectionCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "assessmentReportSelectionCount"),
            type = "integer",
            name = "assessmentReportSelectionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        controlName = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "controlName"),
            type = "string",
            name = "controlName",
            target_id = prelude.String.id,
        }),
        evidenceResourcesIncludedCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceResourcesIncludedCount"),
            type = "integer",
            name = "evidenceResourcesIncludedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceByTypeConfigurationDataCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceByTypeConfigurationDataCount"),
            type = "integer",
            name = "evidenceByTypeConfigurationDataCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceByTypeManualCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceByTypeManualCount"),
            type = "integer",
            name = "evidenceByTypeManualCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceByTypeComplianceCheckCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceByTypeComplianceCheckCount"),
            type = "integer",
            name = "evidenceByTypeComplianceCheckCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceByTypeComplianceCheckIssuesCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceByTypeComplianceCheckIssuesCount"),
            type = "integer",
            name = "evidenceByTypeComplianceCheckIssuesCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceByTypeUserActivityCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceByTypeUserActivityCount"),
            type = "integer",
            name = "evidenceByTypeUserActivityCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        evidenceAwsServiceSourceCount = schema.new({
            id = id.from(_N, "AssessmentEvidenceFolder", "evidenceAwsServiceSourceCount"),
            type = "integer",
            name = "evidenceAwsServiceSourceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AssessmentFrameworkMetadata = schema.new({
    id = id.from(_N, "AssessmentFrameworkMetadata"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logo = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "logo"),
            type = "string",
            name = "logo",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        controlsCount = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "controlsCount"),
            type = "integer",
            name = "controlsCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        controlSetsCount = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "controlSetsCount"),
            type = "integer",
            name = "controlSetsCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "AssessmentFrameworkMetadata", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssessmentFrameworkShareRequest = schema.new({
    id = id.from(_N, "AssessmentFrameworkShareRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        frameworkId = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
        }),
        frameworkName = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "frameworkName"),
            type = "string",
            name = "frameworkName",
            target_id = prelude.String.id,
        }),
        frameworkDescription = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "frameworkDescription"),
            type = "string",
            name = "frameworkDescription",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        sourceAccount = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "sourceAccount"),
            type = "string",
            name = "sourceAccount",
            target_id = prelude.String.id,
        }),
        destinationAccount = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "destinationAccount"),
            type = "string",
            name = "destinationAccount",
            target_id = prelude.String.id,
        }),
        destinationRegion = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "destinationRegion"),
            type = "string",
            name = "destinationRegion",
            target_id = prelude.String.id,
        }),
        expirationTime = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "expirationTime"),
            type = "timestamp",
            name = "expirationTime",
            target_id = prelude.Timestamp.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        comment = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        standardControlsCount = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "standardControlsCount"),
            type = "integer",
            name = "standardControlsCount",
            target_id = prelude.Integer.id,
        }),
        customControlsCount = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "customControlsCount"),
            type = "integer",
            name = "customControlsCount",
            target_id = prelude.Integer.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "AssessmentFrameworkShareRequest", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AssessmentMetadataItem = schema.new({
    id = id.from(_N, "AssessmentMetadataItem"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        roles = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "roles"),
            type = "list",
            name = "roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        delegations = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "delegations"),
            type = "list",
            name = "delegations",
            target_id = prelude.Document.id,
            list_member = M.Delegation,
        }),
        creationTime = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "AssessmentMetadataItem", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssessmentReport = schema.new({
    id = id.from(_N, "AssessmentReport"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentReport", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssessmentReport", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentReport", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "AssessmentReport", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "AssessmentReport", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        assessmentName = schema.new({
            id = id.from(_N, "AssessmentReport", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        author = schema.new({
            id = id.from(_N, "AssessmentReport", "author"),
            type = "string",
            name = "author",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentReport", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "AssessmentReport", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssessmentReportEvidenceError = schema.new({
    id = id.from(_N, "AssessmentReportEvidenceError"),
    type = "structure",
    members = {
        evidenceId = schema.new({
            id = id.from(_N, "AssessmentReportEvidenceError", "evidenceId"),
            type = "string",
            name = "evidenceId",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "AssessmentReportEvidenceError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "AssessmentReportEvidenceError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.AssessmentReportMetadata = schema.new({
    id = id.from(_N, "AssessmentReportMetadata"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        assessmentName = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        author = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "author"),
            type = "string",
            name = "author",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "AssessmentReportMetadata", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AssociateAssessmentReportEvidenceFolderInput = schema.new({
    id = id.from(_N, "AssociateAssessmentReportEvidenceFolderRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "AssociateAssessmentReportEvidenceFolderInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "AssociateAssessmentReportEvidenceFolderInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateAssessmentReportEvidenceFolderOutput = schema.new({
    id = id.from(_N, "AssociateAssessmentReportEvidenceFolderResponse"),
    type = "structure",
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        fields = schema.new({
            id = id.from(_N, "ValidationException", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.BatchAssociateAssessmentReportEvidenceInput = schema.new({
    id = id.from(_N, "BatchAssociateAssessmentReportEvidenceRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "BatchAssociateAssessmentReportEvidenceInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "BatchAssociateAssessmentReportEvidenceInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evidenceIds = schema.new({
            id = id.from(_N, "BatchAssociateAssessmentReportEvidenceInput", "evidenceIds"),
            type = "list",
            name = "evidenceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchAssociateAssessmentReportEvidenceOutput = schema.new({
    id = id.from(_N, "BatchAssociateAssessmentReportEvidenceResponse"),
    type = "structure",
    members = {
        evidenceIds = schema.new({
            id = id.from(_N, "BatchAssociateAssessmentReportEvidenceOutput", "evidenceIds"),
            type = "list",
            name = "evidenceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchAssociateAssessmentReportEvidenceOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.AssessmentReportEvidenceError,
        }),
    },
})

M.CreateDelegationRequest = schema.new({
    id = id.from(_N, "CreateDelegationRequest"),
    type = "structure",
    members = {
        comment = schema.new({
            id = id.from(_N, "CreateDelegationRequest", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        controlSetId = schema.new({
            id = id.from(_N, "CreateDelegationRequest", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDelegationRequest", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        roleType = schema.new({
            id = id.from(_N, "CreateDelegationRequest", "roleType"),
            type = "string",
            name = "roleType",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateDelegationByAssessmentInput = schema.new({
    id = id.from(_N, "BatchCreateDelegationByAssessmentRequest"),
    type = "structure",
    members = {
        createDelegationRequests = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentInput", "createDelegationRequests"),
            type = "list",
            name = "createDelegationRequests",
            target_id = prelude.Document.id,
            list_member = M.CreateDelegationRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assessmentId = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.BatchCreateDelegationByAssessmentError = schema.new({
    id = id.from(_N, "BatchCreateDelegationByAssessmentError"),
    type = "structure",
    members = {
        createDelegationRequest = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentError", "createDelegationRequest"),
            type = "structure",
            name = "createDelegationRequest",
            target_id = id.from(_N, "CreateDelegationRequest"),
            target = M.CreateDelegationRequest,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateDelegationByAssessmentOutput = schema.new({
    id = id.from(_N, "BatchCreateDelegationByAssessmentResponse"),
    type = "structure",
    members = {
        delegations = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentOutput", "delegations"),
            type = "list",
            name = "delegations",
            target_id = prelude.Document.id,
            list_member = M.Delegation,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchCreateDelegationByAssessmentOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateDelegationByAssessmentError,
        }),
    },
})

M.BatchDeleteDelegationByAssessmentInput = schema.new({
    id = id.from(_N, "BatchDeleteDelegationByAssessmentRequest"),
    type = "structure",
    members = {
        delegationIds = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentInput", "delegationIds"),
            type = "list",
            name = "delegationIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assessmentId = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.BatchDeleteDelegationByAssessmentError = schema.new({
    id = id.from(_N, "BatchDeleteDelegationByAssessmentError"),
    type = "structure",
    members = {
        delegationId = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentError", "delegationId"),
            type = "string",
            name = "delegationId",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteDelegationByAssessmentOutput = schema.new({
    id = id.from(_N, "BatchDeleteDelegationByAssessmentResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchDeleteDelegationByAssessmentOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteDelegationByAssessmentError,
        }),
    },
})

M.BatchDisassociateAssessmentReportEvidenceInput = schema.new({
    id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evidenceIds = schema.new({
            id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceInput", "evidenceIds"),
            type = "list",
            name = "evidenceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDisassociateAssessmentReportEvidenceOutput = schema.new({
    id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceResponse"),
    type = "structure",
    members = {
        evidenceIds = schema.new({
            id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceOutput", "evidenceIds"),
            type = "list",
            name = "evidenceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchDisassociateAssessmentReportEvidenceOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.AssessmentReportEvidenceError,
        }),
    },
})

M.ManualEvidence = schema.new({
    id = id.from(_N, "ManualEvidence"),
    type = "structure",
    members = {
        s3ResourcePath = schema.new({
            id = id.from(_N, "ManualEvidence", "s3ResourcePath"),
            type = "string",
            name = "s3ResourcePath",
            target_id = prelude.String.id,
        }),
        textResponse = schema.new({
            id = id.from(_N, "ManualEvidence", "textResponse"),
            type = "string",
            name = "textResponse",
            target_id = prelude.String.id,
        }),
        evidenceFileName = schema.new({
            id = id.from(_N, "ManualEvidence", "evidenceFileName"),
            type = "string",
            name = "evidenceFileName",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchImportEvidenceToAssessmentControlInput = schema.new({
    id = id.from(_N, "BatchImportEvidenceToAssessmentControlRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlId = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        manualEvidence = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlInput", "manualEvidence"),
            type = "list",
            name = "manualEvidence",
            target_id = prelude.Document.id,
            list_member = M.ManualEvidence,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchImportEvidenceToAssessmentControlError = schema.new({
    id = id.from(_N, "BatchImportEvidenceToAssessmentControlError"),
    type = "structure",
    members = {
        manualEvidence = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlError", "manualEvidence"),
            type = "structure",
            name = "manualEvidence",
            target_id = id.from(_N, "ManualEvidence"),
            target = M.ManualEvidence,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchImportEvidenceToAssessmentControlOutput = schema.new({
    id = id.from(_N, "BatchImportEvidenceToAssessmentControlResponse"),
    type = "structure",
    members = {
        errors = schema.new({
            id = id.from(_N, "BatchImportEvidenceToAssessmentControlOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchImportEvidenceToAssessmentControlError,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssessmentInput = schema.new({
    id = id.from(_N, "CreateAssessmentRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        assessmentReportsDestination = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "assessmentReportsDestination"),
            type = "structure",
            name = "assessmentReportsDestination",
            target_id = id.from(_N, "AssessmentReportsDestination"),
            target = M.AssessmentReportsDestination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scope = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "scope"),
            type = "structure",
            name = "scope",
            target_id = id.from(_N, "Scope"),
            target = M.Scope,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roles = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "roles"),
            type = "list",
            name = "roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        frameworkId = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAssessmentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAssessmentOutput = schema.new({
    id = id.from(_N, "CreateAssessmentResponse"),
    type = "structure",
    members = {
        assessment = schema.new({
            id = id.from(_N, "CreateAssessmentOutput", "assessment"),
            type = "structure",
            name = "assessment",
            target_id = id.from(_N, "Assessment"),
            target = M.Assessment,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssessmentFrameworkControl = schema.new({
    id = id.from(_N, "CreateAssessmentFrameworkControl"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkControl", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAssessmentFrameworkControlSet = schema.new({
    id = id.from(_N, "CreateAssessmentFrameworkControlSet"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkControlSet", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controls = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkControlSet", "controls"),
            type = "list",
            name = "controls",
            target_id = prelude.Document.id,
            list_member = M.CreateAssessmentFrameworkControl,
        }),
    },
})

M.CreateAssessmentFrameworkInput = schema.new({
    id = id.from(_N, "CreateAssessmentFrameworkRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkInput", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        controlSets = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkInput", "controlSets"),
            type = "list",
            name = "controlSets",
            target_id = prelude.Document.id,
            list_member = M.CreateAssessmentFrameworkControlSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.SourceKeyword = schema.new({
    id = id.from(_N, "SourceKeyword"),
    type = "structure",
    members = {
        keywordInputType = schema.new({
            id = id.from(_N, "SourceKeyword", "keywordInputType"),
            type = "string",
            name = "keywordInputType",
            target_id = prelude.String.id,
        }),
        keywordValue = schema.new({
            id = id.from(_N, "SourceKeyword", "keywordValue"),
            type = "string",
            name = "keywordValue",
            target_id = prelude.String.id,
        }),
    },
})

M.ControlMappingSource = schema.new({
    id = id.from(_N, "ControlMappingSource"),
    type = "structure",
    members = {
        sourceId = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceId"),
            type = "string",
            name = "sourceId",
            target_id = prelude.String.id,
        }),
        sourceName = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceName"),
            type = "string",
            name = "sourceName",
            target_id = prelude.String.id,
        }),
        sourceDescription = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceDescription"),
            type = "string",
            name = "sourceDescription",
            target_id = prelude.String.id,
        }),
        sourceSetUpOption = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceSetUpOption"),
            type = "string",
            name = "sourceSetUpOption",
            target_id = prelude.String.id,
        }),
        sourceType = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceType"),
            type = "string",
            name = "sourceType",
            target_id = prelude.String.id,
        }),
        sourceKeyword = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceKeyword"),
            type = "structure",
            name = "sourceKeyword",
            target_id = id.from(_N, "SourceKeyword"),
            target = M.SourceKeyword,
        }),
        sourceFrequency = schema.new({
            id = id.from(_N, "ControlMappingSource", "sourceFrequency"),
            type = "string",
            name = "sourceFrequency",
            target_id = prelude.String.id,
        }),
        troubleshootingText = schema.new({
            id = id.from(_N, "ControlMappingSource", "troubleshootingText"),
            type = "string",
            name = "troubleshootingText",
            target_id = prelude.String.id,
        }),
    },
})

M.Control = schema.new({
    id = id.from(_N, "Control"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Control", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "Control", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Control", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Control", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Control", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        testingInformation = schema.new({
            id = id.from(_N, "Control", "testingInformation"),
            type = "string",
            name = "testingInformation",
            target_id = prelude.String.id,
        }),
        actionPlanTitle = schema.new({
            id = id.from(_N, "Control", "actionPlanTitle"),
            type = "string",
            name = "actionPlanTitle",
            target_id = prelude.String.id,
        }),
        actionPlanInstructions = schema.new({
            id = id.from(_N, "Control", "actionPlanInstructions"),
            type = "string",
            name = "actionPlanInstructions",
            target_id = prelude.String.id,
        }),
        controlSources = schema.new({
            id = id.from(_N, "Control", "controlSources"),
            type = "string",
            name = "controlSources",
            target_id = prelude.String.id,
        }),
        controlMappingSources = schema.new({
            id = id.from(_N, "Control", "controlMappingSources"),
            type = "list",
            name = "controlMappingSources",
            target_id = prelude.Document.id,
            list_member = M.ControlMappingSource,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Control", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "Control", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "Control", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "Control", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Control", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        state = schema.new({
            id = id.from(_N, "Control", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
    },
})

M.ControlSet = schema.new({
    id = id.from(_N, "ControlSet"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ControlSet", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ControlSet", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        controls = schema.new({
            id = id.from(_N, "ControlSet", "controls"),
            type = "list",
            name = "controls",
            target_id = prelude.Document.id,
            list_member = M.Control,
        }),
    },
})

M.Framework = schema.new({
    id = id.from(_N, "Framework"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Framework", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "Framework", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Framework", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Framework", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "Framework", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Framework", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logo = schema.new({
            id = id.from(_N, "Framework", "logo"),
            type = "string",
            name = "logo",
            target_id = prelude.String.id,
        }),
        controlSources = schema.new({
            id = id.from(_N, "Framework", "controlSources"),
            type = "string",
            name = "controlSources",
            target_id = prelude.String.id,
        }),
        controlSets = schema.new({
            id = id.from(_N, "Framework", "controlSets"),
            type = "list",
            name = "controlSets",
            target_id = prelude.Document.id,
            list_member = M.ControlSet,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Framework", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "Framework", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "Framework", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "Framework", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Framework", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAssessmentFrameworkOutput = schema.new({
    id = id.from(_N, "CreateAssessmentFrameworkResponse"),
    type = "structure",
    members = {
        framework = schema.new({
            id = id.from(_N, "CreateAssessmentFrameworkOutput", "framework"),
            type = "structure",
            name = "framework",
            target_id = id.from(_N, "Framework"),
            target = M.Framework,
        }),
    },
})

M.CreateAssessmentReportInput = schema.new({
    id = id.from(_N, "CreateAssessmentReportRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAssessmentReportInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAssessmentReportInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "CreateAssessmentReportInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        queryStatement = schema.new({
            id = id.from(_N, "CreateAssessmentReportInput", "queryStatement"),
            type = "string",
            name = "queryStatement",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAssessmentReportOutput = schema.new({
    id = id.from(_N, "CreateAssessmentReportResponse"),
    type = "structure",
    members = {
        assessmentReport = schema.new({
            id = id.from(_N, "CreateAssessmentReportOutput", "assessmentReport"),
            type = "structure",
            name = "assessmentReport",
            target_id = id.from(_N, "AssessmentReport"),
            target = M.AssessmentReport,
        }),
    },
})

M.CreateControlMappingSource = schema.new({
    id = id.from(_N, "CreateControlMappingSource"),
    type = "structure",
    members = {
        sourceName = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceName"),
            type = "string",
            name = "sourceName",
            target_id = prelude.String.id,
        }),
        sourceDescription = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceDescription"),
            type = "string",
            name = "sourceDescription",
            target_id = prelude.String.id,
        }),
        sourceSetUpOption = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceSetUpOption"),
            type = "string",
            name = "sourceSetUpOption",
            target_id = prelude.String.id,
        }),
        sourceType = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceType"),
            type = "string",
            name = "sourceType",
            target_id = prelude.String.id,
        }),
        sourceKeyword = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceKeyword"),
            type = "structure",
            name = "sourceKeyword",
            target_id = id.from(_N, "SourceKeyword"),
            target = M.SourceKeyword,
        }),
        sourceFrequency = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "sourceFrequency"),
            type = "string",
            name = "sourceFrequency",
            target_id = prelude.String.id,
        }),
        troubleshootingText = schema.new({
            id = id.from(_N, "CreateControlMappingSource", "troubleshootingText"),
            type = "string",
            name = "troubleshootingText",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateControlInput = schema.new({
    id = id.from(_N, "CreateControlRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateControlInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateControlInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        testingInformation = schema.new({
            id = id.from(_N, "CreateControlInput", "testingInformation"),
            type = "string",
            name = "testingInformation",
            target_id = prelude.String.id,
        }),
        actionPlanTitle = schema.new({
            id = id.from(_N, "CreateControlInput", "actionPlanTitle"),
            type = "string",
            name = "actionPlanTitle",
            target_id = prelude.String.id,
        }),
        actionPlanInstructions = schema.new({
            id = id.from(_N, "CreateControlInput", "actionPlanInstructions"),
            type = "string",
            name = "actionPlanInstructions",
            target_id = prelude.String.id,
        }),
        controlMappingSources = schema.new({
            id = id.from(_N, "CreateControlInput", "controlMappingSources"),
            type = "list",
            name = "controlMappingSources",
            target_id = prelude.Document.id,
            list_member = M.CreateControlMappingSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateControlInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateControlOutput = schema.new({
    id = id.from(_N, "CreateControlResponse"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "CreateControlOutput", "control"),
            type = "structure",
            name = "control",
            target_id = id.from(_N, "Control"),
            target = M.Control,
        }),
    },
})

M.DeleteAssessmentInput = schema.new({
    id = id.from(_N, "DeleteAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "DeleteAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAssessmentOutput = schema.new({
    id = id.from(_N, "DeleteAssessmentResponse"),
    type = "structure",
})

M.DeleteAssessmentFrameworkInput = schema.new({
    id = id.from(_N, "DeleteAssessmentFrameworkRequest"),
    type = "structure",
    members = {
        frameworkId = schema.new({
            id = id.from(_N, "DeleteAssessmentFrameworkInput", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAssessmentFrameworkOutput = schema.new({
    id = id.from(_N, "DeleteAssessmentFrameworkResponse"),
    type = "structure",
})

M.DeleteAssessmentFrameworkShareInput = schema.new({
    id = id.from(_N, "DeleteAssessmentFrameworkShareRequest"),
    type = "structure",
    members = {
        requestId = schema.new({
            id = id.from(_N, "DeleteAssessmentFrameworkShareInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        requestType = schema.new({
            id = id.from(_N, "DeleteAssessmentFrameworkShareInput", "requestType"),
            type = "string",
            name = "requestType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "requestType" },
            },
        }),
    },
})

M.DeleteAssessmentFrameworkShareOutput = schema.new({
    id = id.from(_N, "DeleteAssessmentFrameworkShareResponse"),
    type = "structure",
})

M.DeleteAssessmentReportInput = schema.new({
    id = id.from(_N, "DeleteAssessmentReportRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "DeleteAssessmentReportInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assessmentReportId = schema.new({
            id = id.from(_N, "DeleteAssessmentReportInput", "assessmentReportId"),
            type = "string",
            name = "assessmentReportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAssessmentReportOutput = schema.new({
    id = id.from(_N, "DeleteAssessmentReportResponse"),
    type = "structure",
})

M.DeleteControlInput = schema.new({
    id = id.from(_N, "DeleteControlRequest"),
    type = "structure",
    members = {
        controlId = schema.new({
            id = id.from(_N, "DeleteControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteControlOutput = schema.new({
    id = id.from(_N, "DeleteControlResponse"),
    type = "structure",
})

M.DeregisterAccountInput = schema.new({
    id = id.from(_N, "DeregisterAccountRequest"),
    type = "structure",
})

M.DeregisterAccountOutput = schema.new({
    id = id.from(_N, "DeregisterAccountResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeregisterAccountOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterOrganizationAdminAccountInput = schema.new({
    id = id.from(_N, "DeregisterOrganizationAdminAccountRequest"),
    type = "structure",
    members = {
        adminAccountId = schema.new({
            id = id.from(_N, "DeregisterOrganizationAdminAccountInput", "adminAccountId"),
            type = "string",
            name = "adminAccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregisterOrganizationAdminAccountOutput = schema.new({
    id = id.from(_N, "DeregisterOrganizationAdminAccountResponse"),
    type = "structure",
})

M.DisassociateAssessmentReportEvidenceFolderInput = schema.new({
    id = id.from(_N, "DisassociateAssessmentReportEvidenceFolderRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "DisassociateAssessmentReportEvidenceFolderInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "DisassociateAssessmentReportEvidenceFolderInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateAssessmentReportEvidenceFolderOutput = schema.new({
    id = id.from(_N, "DisassociateAssessmentReportEvidenceFolderResponse"),
    type = "structure",
})

M.GetAccountStatusInput = schema.new({
    id = id.from(_N, "GetAccountStatusRequest"),
    type = "structure",
})

M.GetAccountStatusOutput = schema.new({
    id = id.from(_N, "GetAccountStatusResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetAccountStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssessmentInput = schema.new({
    id = id.from(_N, "GetAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAssessmentOutput = schema.new({
    id = id.from(_N, "GetAssessmentResponse"),
    type = "structure",
    members = {
        assessment = schema.new({
            id = id.from(_N, "GetAssessmentOutput", "assessment"),
            type = "structure",
            name = "assessment",
            target_id = id.from(_N, "Assessment"),
            target = M.Assessment,
        }),
        userRole = schema.new({
            id = id.from(_N, "GetAssessmentOutput", "userRole"),
            type = "structure",
            name = "userRole",
            target_id = id.from(_N, "Role"),
            target = M.Role,
        }),
    },
})

M.GetAssessmentFrameworkInput = schema.new({
    id = id.from(_N, "GetAssessmentFrameworkRequest"),
    type = "structure",
    members = {
        frameworkId = schema.new({
            id = id.from(_N, "GetAssessmentFrameworkInput", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAssessmentFrameworkOutput = schema.new({
    id = id.from(_N, "GetAssessmentFrameworkResponse"),
    type = "structure",
    members = {
        framework = schema.new({
            id = id.from(_N, "GetAssessmentFrameworkOutput", "framework"),
            type = "structure",
            name = "framework",
            target_id = id.from(_N, "Framework"),
            target = M.Framework,
        }),
    },
})

M.GetAssessmentReportUrlInput = schema.new({
    id = id.from(_N, "GetAssessmentReportUrlRequest"),
    type = "structure",
    members = {
        assessmentReportId = schema.new({
            id = id.from(_N, "GetAssessmentReportUrlInput", "assessmentReportId"),
            type = "string",
            name = "assessmentReportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assessmentId = schema.new({
            id = id.from(_N, "GetAssessmentReportUrlInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.URL = schema.new({
    id = id.from(_N, "URL"),
    type = "structure",
    members = {
        hyperlinkName = schema.new({
            id = id.from(_N, "URL", "hyperlinkName"),
            type = "string",
            name = "hyperlinkName",
            target_id = prelude.String.id,
        }),
        link = schema.new({
            id = id.from(_N, "URL", "link"),
            type = "string",
            name = "link",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssessmentReportUrlOutput = schema.new({
    id = id.from(_N, "GetAssessmentReportUrlResponse"),
    type = "structure",
    members = {
        preSignedUrl = schema.new({
            id = id.from(_N, "GetAssessmentReportUrlOutput", "preSignedUrl"),
            type = "structure",
            name = "preSignedUrl",
            target_id = id.from(_N, "URL"),
            target = M.URL,
        }),
    },
})

M.GetChangeLogsInput = schema.new({
    id = id.from(_N, "GetChangeLogsRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetChangeLogsInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "GetChangeLogsInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "controlSetId" },
            },
        }),
        controlId = schema.new({
            id = id.from(_N, "GetChangeLogsInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "controlId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetChangeLogsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetChangeLogsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ChangeLog = schema.new({
    id = id.from(_N, "ChangeLog"),
    type = "structure",
    members = {
        objectType = schema.new({
            id = id.from(_N, "ChangeLog", "objectType"),
            type = "string",
            name = "objectType",
            target_id = prelude.String.id,
        }),
        objectName = schema.new({
            id = id.from(_N, "ChangeLog", "objectName"),
            type = "string",
            name = "objectName",
            target_id = prelude.String.id,
        }),
        action = schema.new({
            id = id.from(_N, "ChangeLog", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ChangeLog", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "ChangeLog", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetChangeLogsOutput = schema.new({
    id = id.from(_N, "GetChangeLogsResponse"),
    type = "structure",
    members = {
        changeLogs = schema.new({
            id = id.from(_N, "GetChangeLogsOutput", "changeLogs"),
            type = "list",
            name = "changeLogs",
            target_id = prelude.Document.id,
            list_member = M.ChangeLog,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetChangeLogsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetControlInput = schema.new({
    id = id.from(_N, "GetControlRequest"),
    type = "structure",
    members = {
        controlId = schema.new({
            id = id.from(_N, "GetControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetControlOutput = schema.new({
    id = id.from(_N, "GetControlResponse"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "GetControlOutput", "control"),
            type = "structure",
            name = "control",
            target_id = id.from(_N, "Control"),
            target = M.Control,
        }),
    },
})

M.GetDelegationsInput = schema.new({
    id = id.from(_N, "GetDelegationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "GetDelegationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetDelegationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DelegationMetadata = schema.new({
    id = id.from(_N, "DelegationMetadata"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DelegationMetadata", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        assessmentName = schema.new({
            id = id.from(_N, "DelegationMetadata", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "DelegationMetadata", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DelegationMetadata", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DelegationMetadata", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "DelegationMetadata", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
        }),
        controlSetName = schema.new({
            id = id.from(_N, "DelegationMetadata", "controlSetName"),
            type = "string",
            name = "controlSetName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDelegationsOutput = schema.new({
    id = id.from(_N, "GetDelegationsResponse"),
    type = "structure",
    members = {
        delegations = schema.new({
            id = id.from(_N, "GetDelegationsOutput", "delegations"),
            type = "list",
            name = "delegations",
            target_id = prelude.Document.id,
            list_member = M.DelegationMetadata,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetDelegationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEvidenceInput = schema.new({
    id = id.from(_N, "GetEvidenceRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetEvidenceInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "GetEvidenceInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "GetEvidenceInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceId = schema.new({
            id = id.from(_N, "GetEvidenceInput", "evidenceId"),
            type = "string",
            name = "evidenceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Resource", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Resource", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        complianceCheck = schema.new({
            id = id.from(_N, "Resource", "complianceCheck"),
            type = "string",
            name = "complianceCheck",
            target_id = prelude.String.id,
        }),
    },
})

M.Evidence = schema.new({
    id = id.from(_N, "Evidence"),
    type = "structure",
    members = {
        dataSource = schema.new({
            id = id.from(_N, "Evidence", "dataSource"),
            type = "string",
            name = "dataSource",
            target_id = prelude.String.id,
        }),
        evidenceAwsAccountId = schema.new({
            id = id.from(_N, "Evidence", "evidenceAwsAccountId"),
            type = "string",
            name = "evidenceAwsAccountId",
            target_id = prelude.String.id,
        }),
        time = schema.new({
            id = id.from(_N, "Evidence", "time"),
            type = "timestamp",
            name = "time",
            target_id = prelude.Timestamp.id,
        }),
        eventSource = schema.new({
            id = id.from(_N, "Evidence", "eventSource"),
            type = "string",
            name = "eventSource",
            target_id = prelude.String.id,
        }),
        eventName = schema.new({
            id = id.from(_N, "Evidence", "eventName"),
            type = "string",
            name = "eventName",
            target_id = prelude.String.id,
        }),
        evidenceByType = schema.new({
            id = id.from(_N, "Evidence", "evidenceByType"),
            type = "string",
            name = "evidenceByType",
            target_id = prelude.String.id,
        }),
        resourcesIncluded = schema.new({
            id = id.from(_N, "Evidence", "resourcesIncluded"),
            type = "list",
            name = "resourcesIncluded",
            target_id = prelude.Document.id,
            list_member = M.Resource,
        }),
        attributes = schema.new({
            id = id.from(_N, "Evidence", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        iamId = schema.new({
            id = id.from(_N, "Evidence", "iamId"),
            type = "string",
            name = "iamId",
            target_id = prelude.String.id,
        }),
        complianceCheck = schema.new({
            id = id.from(_N, "Evidence", "complianceCheck"),
            type = "string",
            name = "complianceCheck",
            target_id = prelude.String.id,
        }),
        awsOrganization = schema.new({
            id = id.from(_N, "Evidence", "awsOrganization"),
            type = "string",
            name = "awsOrganization",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "Evidence", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "Evidence", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "Evidence", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        assessmentReportSelection = schema.new({
            id = id.from(_N, "Evidence", "assessmentReportSelection"),
            type = "string",
            name = "assessmentReportSelection",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEvidenceOutput = schema.new({
    id = id.from(_N, "GetEvidenceResponse"),
    type = "structure",
    members = {
        evidence = schema.new({
            id = id.from(_N, "GetEvidenceOutput", "evidence"),
            type = "structure",
            name = "evidence",
            target_id = id.from(_N, "Evidence"),
            target = M.Evidence,
        }),
    },
})

M.GetEvidenceByEvidenceFolderInput = schema.new({
    id = id.from(_N, "GetEvidenceByEvidenceFolderRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GetEvidenceByEvidenceFolderOutput = schema.new({
    id = id.from(_N, "GetEvidenceByEvidenceFolderResponse"),
    type = "structure",
    members = {
        evidence = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderOutput", "evidence"),
            type = "list",
            name = "evidence",
            target_id = prelude.Document.id,
            list_member = M.Evidence,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceByEvidenceFolderOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEvidenceFileUploadUrlInput = schema.new({
    id = id.from(_N, "GetEvidenceFileUploadUrlRequest"),
    type = "structure",
    members = {
        fileName = schema.new({
            id = id.from(_N, "GetEvidenceFileUploadUrlInput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "fileName" },
            },
        }),
    },
})

M.GetEvidenceFileUploadUrlOutput = schema.new({
    id = id.from(_N, "GetEvidenceFileUploadUrlResponse"),
    type = "structure",
    members = {
        evidenceFileName = schema.new({
            id = id.from(_N, "GetEvidenceFileUploadUrlOutput", "evidenceFileName"),
            type = "string",
            name = "evidenceFileName",
            target_id = prelude.String.id,
        }),
        uploadUrl = schema.new({
            id = id.from(_N, "GetEvidenceFileUploadUrlOutput", "uploadUrl"),
            type = "string",
            name = "uploadUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEvidenceFolderInput = schema.new({
    id = id.from(_N, "GetEvidenceFolderRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetEvidenceFolderInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "GetEvidenceFolderInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evidenceFolderId = schema.new({
            id = id.from(_N, "GetEvidenceFolderInput", "evidenceFolderId"),
            type = "string",
            name = "evidenceFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetEvidenceFolderOutput = schema.new({
    id = id.from(_N, "GetEvidenceFolderResponse"),
    type = "structure",
    members = {
        evidenceFolder = schema.new({
            id = id.from(_N, "GetEvidenceFolderOutput", "evidenceFolder"),
            type = "structure",
            name = "evidenceFolder",
            target_id = id.from(_N, "AssessmentEvidenceFolder"),
            target = M.AssessmentEvidenceFolder,
        }),
    },
})

M.GetEvidenceFoldersByAssessmentInput = schema.new({
    id = id.from(_N, "GetEvidenceFoldersByAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GetEvidenceFoldersByAssessmentOutput = schema.new({
    id = id.from(_N, "GetEvidenceFoldersByAssessmentResponse"),
    type = "structure",
    members = {
        evidenceFolders = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentOutput", "evidenceFolders"),
            type = "list",
            name = "evidenceFolders",
            target_id = prelude.Document.id,
            list_member = M.AssessmentEvidenceFolder,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEvidenceFoldersByAssessmentControlInput = schema.new({
    id = id.from(_N, "GetEvidenceFoldersByAssessmentControlRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlId = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GetEvidenceFoldersByAssessmentControlOutput = schema.new({
    id = id.from(_N, "GetEvidenceFoldersByAssessmentControlResponse"),
    type = "structure",
    members = {
        evidenceFolders = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlOutput", "evidenceFolders"),
            type = "list",
            name = "evidenceFolders",
            target_id = prelude.Document.id,
            list_member = M.AssessmentEvidenceFolder,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetEvidenceFoldersByAssessmentControlOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInsightsInput = schema.new({
    id = id.from(_N, "GetInsightsRequest"),
    type = "structure",
})

M.Insights = schema.new({
    id = id.from(_N, "Insights"),
    type = "structure",
    members = {
        activeAssessmentsCount = schema.new({
            id = id.from(_N, "Insights", "activeAssessmentsCount"),
            type = "integer",
            name = "activeAssessmentsCount",
            target_id = prelude.Integer.id,
        }),
        noncompliantEvidenceCount = schema.new({
            id = id.from(_N, "Insights", "noncompliantEvidenceCount"),
            type = "integer",
            name = "noncompliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        compliantEvidenceCount = schema.new({
            id = id.from(_N, "Insights", "compliantEvidenceCount"),
            type = "integer",
            name = "compliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        inconclusiveEvidenceCount = schema.new({
            id = id.from(_N, "Insights", "inconclusiveEvidenceCount"),
            type = "integer",
            name = "inconclusiveEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        assessmentControlsCountByNoncompliantEvidence = schema.new({
            id = id.from(_N, "Insights", "assessmentControlsCountByNoncompliantEvidence"),
            type = "integer",
            name = "assessmentControlsCountByNoncompliantEvidence",
            target_id = prelude.Integer.id,
        }),
        totalAssessmentControlsCount = schema.new({
            id = id.from(_N, "Insights", "totalAssessmentControlsCount"),
            type = "integer",
            name = "totalAssessmentControlsCount",
            target_id = prelude.Integer.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "Insights", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetInsightsOutput = schema.new({
    id = id.from(_N, "GetInsightsResponse"),
    type = "structure",
    members = {
        insights = schema.new({
            id = id.from(_N, "GetInsightsOutput", "insights"),
            type = "structure",
            name = "insights",
            target_id = id.from(_N, "Insights"),
            target = M.Insights,
        }),
    },
})

M.GetInsightsByAssessmentInput = schema.new({
    id = id.from(_N, "GetInsightsByAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "GetInsightsByAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.InsightsByAssessment = schema.new({
    id = id.from(_N, "InsightsByAssessment"),
    type = "structure",
    members = {
        noncompliantEvidenceCount = schema.new({
            id = id.from(_N, "InsightsByAssessment", "noncompliantEvidenceCount"),
            type = "integer",
            name = "noncompliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        compliantEvidenceCount = schema.new({
            id = id.from(_N, "InsightsByAssessment", "compliantEvidenceCount"),
            type = "integer",
            name = "compliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        inconclusiveEvidenceCount = schema.new({
            id = id.from(_N, "InsightsByAssessment", "inconclusiveEvidenceCount"),
            type = "integer",
            name = "inconclusiveEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        assessmentControlsCountByNoncompliantEvidence = schema.new({
            id = id.from(_N, "InsightsByAssessment", "assessmentControlsCountByNoncompliantEvidence"),
            type = "integer",
            name = "assessmentControlsCountByNoncompliantEvidence",
            target_id = prelude.Integer.id,
        }),
        totalAssessmentControlsCount = schema.new({
            id = id.from(_N, "InsightsByAssessment", "totalAssessmentControlsCount"),
            type = "integer",
            name = "totalAssessmentControlsCount",
            target_id = prelude.Integer.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "InsightsByAssessment", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetInsightsByAssessmentOutput = schema.new({
    id = id.from(_N, "GetInsightsByAssessmentResponse"),
    type = "structure",
    members = {
        insights = schema.new({
            id = id.from(_N, "GetInsightsByAssessmentOutput", "insights"),
            type = "structure",
            name = "insights",
            target_id = id.from(_N, "InsightsByAssessment"),
            target = M.InsightsByAssessment,
        }),
    },
})

M.GetOrganizationAdminAccountInput = schema.new({
    id = id.from(_N, "GetOrganizationAdminAccountRequest"),
    type = "structure",
})

M.GetOrganizationAdminAccountOutput = schema.new({
    id = id.from(_N, "GetOrganizationAdminAccountResponse"),
    type = "structure",
    members = {
        adminAccountId = schema.new({
            id = id.from(_N, "GetOrganizationAdminAccountOutput", "adminAccountId"),
            type = "string",
            name = "adminAccountId",
            target_id = prelude.String.id,
        }),
        organizationId = schema.new({
            id = id.from(_N, "GetOrganizationAdminAccountOutput", "organizationId"),
            type = "string",
            name = "organizationId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServicesInScopeInput = schema.new({
    id = id.from(_N, "GetServicesInScopeRequest"),
    type = "structure",
})

M.ServiceMetadata = schema.new({
    id = id.from(_N, "ServiceMetadata"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ServiceMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "ServiceMetadata", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ServiceMetadata", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "ServiceMetadata", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServicesInScopeOutput = schema.new({
    id = id.from(_N, "GetServicesInScopeResponse"),
    type = "structure",
    members = {
        serviceMetadata = schema.new({
            id = id.from(_N, "GetServicesInScopeOutput", "serviceMetadata"),
            type = "list",
            name = "serviceMetadata",
            target_id = prelude.Document.id,
            list_member = M.ServiceMetadata,
        }),
    },
})

M.GetSettingsInput = schema.new({
    id = id.from(_N, "GetSettingsRequest"),
    type = "structure",
    members = {
        attribute = schema.new({
            id = id.from(_N, "GetSettingsInput", "attribute"),
            type = "string",
            name = "attribute",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DefaultExportDestination = schema.new({
    id = id.from(_N, "DefaultExportDestination"),
    type = "structure",
    members = {
        destinationType = schema.new({
            id = id.from(_N, "DefaultExportDestination", "destinationType"),
            type = "string",
            name = "destinationType",
            target_id = prelude.String.id,
        }),
        destination = schema.new({
            id = id.from(_N, "DefaultExportDestination", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
    },
})

M.DeregistrationPolicy = schema.new({
    id = id.from(_N, "DeregistrationPolicy"),
    type = "structure",
    members = {
        deleteResources = schema.new({
            id = id.from(_N, "DeregistrationPolicy", "deleteResources"),
            type = "string",
            name = "deleteResources",
            target_id = prelude.String.id,
        }),
    },
})

M.EvidenceFinderEnablement = schema.new({
    id = id.from(_N, "EvidenceFinderEnablement"),
    type = "structure",
    members = {
        eventDataStoreArn = schema.new({
            id = id.from(_N, "EvidenceFinderEnablement", "eventDataStoreArn"),
            type = "string",
            name = "eventDataStoreArn",
            target_id = prelude.String.id,
        }),
        enablementStatus = schema.new({
            id = id.from(_N, "EvidenceFinderEnablement", "enablementStatus"),
            type = "string",
            name = "enablementStatus",
            target_id = prelude.String.id,
        }),
        backfillStatus = schema.new({
            id = id.from(_N, "EvidenceFinderEnablement", "backfillStatus"),
            type = "string",
            name = "backfillStatus",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "EvidenceFinderEnablement", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.Settings = schema.new({
    id = id.from(_N, "Settings"),
    type = "structure",
    members = {
        isAwsOrgEnabled = schema.new({
            id = id.from(_N, "Settings", "isAwsOrgEnabled"),
            type = "boolean",
            name = "isAwsOrgEnabled",
            target_id = prelude.Boolean.id,
        }),
        snsTopic = schema.new({
            id = id.from(_N, "Settings", "snsTopic"),
            type = "string",
            name = "snsTopic",
            target_id = prelude.String.id,
        }),
        defaultAssessmentReportsDestination = schema.new({
            id = id.from(_N, "Settings", "defaultAssessmentReportsDestination"),
            type = "structure",
            name = "defaultAssessmentReportsDestination",
            target_id = id.from(_N, "AssessmentReportsDestination"),
            target = M.AssessmentReportsDestination,
        }),
        defaultProcessOwners = schema.new({
            id = id.from(_N, "Settings", "defaultProcessOwners"),
            type = "list",
            name = "defaultProcessOwners",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        kmsKey = schema.new({
            id = id.from(_N, "Settings", "kmsKey"),
            type = "string",
            name = "kmsKey",
            target_id = prelude.String.id,
        }),
        evidenceFinderEnablement = schema.new({
            id = id.from(_N, "Settings", "evidenceFinderEnablement"),
            type = "structure",
            name = "evidenceFinderEnablement",
            target_id = id.from(_N, "EvidenceFinderEnablement"),
            target = M.EvidenceFinderEnablement,
        }),
        deregistrationPolicy = schema.new({
            id = id.from(_N, "Settings", "deregistrationPolicy"),
            type = "structure",
            name = "deregistrationPolicy",
            target_id = id.from(_N, "DeregistrationPolicy"),
            target = M.DeregistrationPolicy,
        }),
        defaultExportDestination = schema.new({
            id = id.from(_N, "Settings", "defaultExportDestination"),
            type = "structure",
            name = "defaultExportDestination",
            target_id = id.from(_N, "DefaultExportDestination"),
            target = M.DefaultExportDestination,
        }),
    },
})

M.GetSettingsOutput = schema.new({
    id = id.from(_N, "GetSettingsResponse"),
    type = "structure",
    members = {
        settings = schema.new({
            id = id.from(_N, "GetSettingsOutput", "settings"),
            type = "structure",
            name = "settings",
            target_id = id.from(_N, "Settings"),
            target = M.Settings,
        }),
    },
})

M.ListAssessmentControlInsightsByControlDomainInput = schema.new({
    id = id.from(_N, "ListAssessmentControlInsightsByControlDomainRequest"),
    type = "structure",
    members = {
        controlDomainId = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainInput", "controlDomainId"),
            type = "string",
            name = "controlDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "controlDomainId" },
            },
        }),
        assessmentId = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "assessmentId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.EvidenceInsights = schema.new({
    id = id.from(_N, "EvidenceInsights"),
    type = "structure",
    members = {
        noncompliantEvidenceCount = schema.new({
            id = id.from(_N, "EvidenceInsights", "noncompliantEvidenceCount"),
            type = "integer",
            name = "noncompliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        compliantEvidenceCount = schema.new({
            id = id.from(_N, "EvidenceInsights", "compliantEvidenceCount"),
            type = "integer",
            name = "compliantEvidenceCount",
            target_id = prelude.Integer.id,
        }),
        inconclusiveEvidenceCount = schema.new({
            id = id.from(_N, "EvidenceInsights", "inconclusiveEvidenceCount"),
            type = "integer",
            name = "inconclusiveEvidenceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ControlInsightsMetadataByAssessmentItem = schema.new({
    id = id.from(_N, "ControlInsightsMetadataByAssessmentItem"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ControlInsightsMetadataByAssessmentItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "ControlInsightsMetadataByAssessmentItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        evidenceInsights = schema.new({
            id = id.from(_N, "ControlInsightsMetadataByAssessmentItem", "evidenceInsights"),
            type = "structure",
            name = "evidenceInsights",
            target_id = id.from(_N, "EvidenceInsights"),
            target = M.EvidenceInsights,
        }),
        controlSetName = schema.new({
            id = id.from(_N, "ControlInsightsMetadataByAssessmentItem", "controlSetName"),
            type = "string",
            name = "controlSetName",
            target_id = prelude.String.id,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "ControlInsightsMetadataByAssessmentItem", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListAssessmentControlInsightsByControlDomainOutput = schema.new({
    id = id.from(_N, "ListAssessmentControlInsightsByControlDomainResponse"),
    type = "structure",
    members = {
        controlInsightsByAssessment = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainOutput", "controlInsightsByAssessment"),
            type = "list",
            name = "controlInsightsByAssessment",
            target_id = prelude.Document.id,
            list_member = M.ControlInsightsMetadataByAssessmentItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentControlInsightsByControlDomainOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssessmentFrameworksInput = schema.new({
    id = id.from(_N, "ListAssessmentFrameworksRequest"),
    type = "structure",
    members = {
        frameworkType = schema.new({
            id = id.from(_N, "ListAssessmentFrameworksInput", "frameworkType"),
            type = "string",
            name = "frameworkType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "frameworkType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentFrameworksInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssessmentFrameworksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssessmentFrameworksOutput = schema.new({
    id = id.from(_N, "ListAssessmentFrameworksResponse"),
    type = "structure",
    members = {
        frameworkMetadataList = schema.new({
            id = id.from(_N, "ListAssessmentFrameworksOutput", "frameworkMetadataList"),
            type = "list",
            name = "frameworkMetadataList",
            target_id = prelude.Document.id,
            list_member = M.AssessmentFrameworkMetadata,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentFrameworksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssessmentFrameworkShareRequestsInput = schema.new({
    id = id.from(_N, "ListAssessmentFrameworkShareRequestsRequest"),
    type = "structure",
    members = {
        requestType = schema.new({
            id = id.from(_N, "ListAssessmentFrameworkShareRequestsInput", "requestType"),
            type = "string",
            name = "requestType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "requestType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentFrameworkShareRequestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssessmentFrameworkShareRequestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssessmentFrameworkShareRequestsOutput = schema.new({
    id = id.from(_N, "ListAssessmentFrameworkShareRequestsResponse"),
    type = "structure",
    members = {
        assessmentFrameworkShareRequests = schema.new({
            id = id.from(_N, "ListAssessmentFrameworkShareRequestsOutput", "assessmentFrameworkShareRequests"),
            type = "list",
            name = "assessmentFrameworkShareRequests",
            target_id = prelude.Document.id,
            list_member = M.AssessmentFrameworkShareRequest,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentFrameworkShareRequestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssessmentReportsInput = schema.new({
    id = id.from(_N, "ListAssessmentReportsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentReportsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssessmentReportsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssessmentReportsOutput = schema.new({
    id = id.from(_N, "ListAssessmentReportsResponse"),
    type = "structure",
    members = {
        assessmentReports = schema.new({
            id = id.from(_N, "ListAssessmentReportsOutput", "assessmentReports"),
            type = "list",
            name = "assessmentReports",
            target_id = prelude.Document.id,
            list_member = M.AssessmentReportMetadata,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentReportsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssessmentsInput = schema.new({
    id = id.from(_N, "ListAssessmentsRequest"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListAssessmentsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssessmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAssessmentsOutput = schema.new({
    id = id.from(_N, "ListAssessmentsResponse"),
    type = "structure",
    members = {
        assessmentMetadata = schema.new({
            id = id.from(_N, "ListAssessmentsOutput", "assessmentMetadata"),
            type = "list",
            name = "assessmentMetadata",
            target_id = prelude.Document.id,
            list_member = M.AssessmentMetadataItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssessmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListControlDomainInsightsInput = schema.new({
    id = id.from(_N, "ListControlDomainInsightsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListControlDomainInsightsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListControlDomainInsightsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ControlDomainInsights = schema.new({
    id = id.from(_N, "ControlDomainInsights"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ControlDomainInsights", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "ControlDomainInsights", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        controlsCountByNoncompliantEvidence = schema.new({
            id = id.from(_N, "ControlDomainInsights", "controlsCountByNoncompliantEvidence"),
            type = "integer",
            name = "controlsCountByNoncompliantEvidence",
            target_id = prelude.Integer.id,
        }),
        totalControlsCount = schema.new({
            id = id.from(_N, "ControlDomainInsights", "totalControlsCount"),
            type = "integer",
            name = "totalControlsCount",
            target_id = prelude.Integer.id,
        }),
        evidenceInsights = schema.new({
            id = id.from(_N, "ControlDomainInsights", "evidenceInsights"),
            type = "structure",
            name = "evidenceInsights",
            target_id = id.from(_N, "EvidenceInsights"),
            target = M.EvidenceInsights,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "ControlDomainInsights", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListControlDomainInsightsOutput = schema.new({
    id = id.from(_N, "ListControlDomainInsightsResponse"),
    type = "structure",
    members = {
        controlDomainInsights = schema.new({
            id = id.from(_N, "ListControlDomainInsightsOutput", "controlDomainInsights"),
            type = "list",
            name = "controlDomainInsights",
            target_id = prelude.Document.id,
            list_member = M.ControlDomainInsights,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlDomainInsightsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListControlDomainInsightsByAssessmentInput = schema.new({
    id = id.from(_N, "ListControlDomainInsightsByAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "ListControlDomainInsightsByAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "assessmentId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlDomainInsightsByAssessmentInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListControlDomainInsightsByAssessmentInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListControlDomainInsightsByAssessmentOutput = schema.new({
    id = id.from(_N, "ListControlDomainInsightsByAssessmentResponse"),
    type = "structure",
    members = {
        controlDomainInsights = schema.new({
            id = id.from(_N, "ListControlDomainInsightsByAssessmentOutput", "controlDomainInsights"),
            type = "list",
            name = "controlDomainInsights",
            target_id = prelude.Document.id,
            list_member = M.ControlDomainInsights,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlDomainInsightsByAssessmentOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListControlInsightsByControlDomainInput = schema.new({
    id = id.from(_N, "ListControlInsightsByControlDomainRequest"),
    type = "structure",
    members = {
        controlDomainId = schema.new({
            id = id.from(_N, "ListControlInsightsByControlDomainInput", "controlDomainId"),
            type = "string",
            name = "controlDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "controlDomainId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlInsightsByControlDomainInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListControlInsightsByControlDomainInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ControlInsightsMetadataItem = schema.new({
    id = id.from(_N, "ControlInsightsMetadataItem"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ControlInsightsMetadataItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "ControlInsightsMetadataItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        evidenceInsights = schema.new({
            id = id.from(_N, "ControlInsightsMetadataItem", "evidenceInsights"),
            type = "structure",
            name = "evidenceInsights",
            target_id = id.from(_N, "EvidenceInsights"),
            target = M.EvidenceInsights,
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "ControlInsightsMetadataItem", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListControlInsightsByControlDomainOutput = schema.new({
    id = id.from(_N, "ListControlInsightsByControlDomainResponse"),
    type = "structure",
    members = {
        controlInsightsMetadata = schema.new({
            id = id.from(_N, "ListControlInsightsByControlDomainOutput", "controlInsightsMetadata"),
            type = "list",
            name = "controlInsightsMetadata",
            target_id = prelude.Document.id,
            list_member = M.ControlInsightsMetadataItem,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlInsightsByControlDomainOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListControlsInput = schema.new({
    id = id.from(_N, "ListControlsRequest"),
    type = "structure",
    members = {
        controlType = schema.new({
            id = id.from(_N, "ListControlsInput", "controlType"),
            type = "string",
            name = "controlType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "controlType" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListControlsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        controlCatalogId = schema.new({
            id = id.from(_N, "ListControlsInput", "controlCatalogId"),
            type = "string",
            name = "controlCatalogId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "controlCatalogId" },
            },
        }),
    },
})

M.ControlMetadata = schema.new({
    id = id.from(_N, "ControlMetadata"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ControlMetadata", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "ControlMetadata", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ControlMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        controlSources = schema.new({
            id = id.from(_N, "ControlMetadata", "controlSources"),
            type = "string",
            name = "controlSources",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ControlMetadata", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "ControlMetadata", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListControlsOutput = schema.new({
    id = id.from(_N, "ListControlsResponse"),
    type = "structure",
    members = {
        controlMetadataList = schema.new({
            id = id.from(_N, "ListControlsOutput", "controlMetadataList"),
            type = "list",
            name = "controlMetadataList",
            target_id = prelude.Document.id,
            list_member = M.ControlMetadata,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListControlsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKeywordsForDataSourceInput = schema.new({
    id = id.from(_N, "ListKeywordsForDataSourceRequest"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "ListKeywordsForDataSourceInput", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "source" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKeywordsForDataSourceInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKeywordsForDataSourceInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListKeywordsForDataSourceOutput = schema.new({
    id = id.from(_N, "ListKeywordsForDataSourceResponse"),
    type = "structure",
    members = {
        keywords = schema.new({
            id = id.from(_N, "ListKeywordsForDataSourceOutput", "keywords"),
            type = "list",
            name = "keywords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKeywordsForDataSourceOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationsInput = schema.new({
    id = id.from(_N, "ListNotificationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListNotificationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNotificationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Notification = schema.new({
    id = id.from(_N, "Notification"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Notification", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        assessmentId = schema.new({
            id = id.from(_N, "Notification", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
        }),
        assessmentName = schema.new({
            id = id.from(_N, "Notification", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        controlSetId = schema.new({
            id = id.from(_N, "Notification", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
        }),
        controlSetName = schema.new({
            id = id.from(_N, "Notification", "controlSetName"),
            type = "string",
            name = "controlSetName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Notification", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        eventTime = schema.new({
            id = id.from(_N, "Notification", "eventTime"),
            type = "timestamp",
            name = "eventTime",
            target_id = prelude.Timestamp.id,
        }),
        source = schema.new({
            id = id.from(_N, "Notification", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationsOutput = schema.new({
    id = id.from(_N, "ListNotificationsResponse"),
    type = "structure",
    members = {
        notifications = schema.new({
            id = id.from(_N, "ListNotificationsOutput", "notifications"),
            type = "list",
            name = "notifications",
            target_id = prelude.Document.id,
            list_member = M.Notification,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNotificationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterAccountInput = schema.new({
    id = id.from(_N, "RegisterAccountRequest"),
    type = "structure",
    members = {
        kmsKey = schema.new({
            id = id.from(_N, "RegisterAccountInput", "kmsKey"),
            type = "string",
            name = "kmsKey",
            target_id = prelude.String.id,
        }),
        delegatedAdminAccount = schema.new({
            id = id.from(_N, "RegisterAccountInput", "delegatedAdminAccount"),
            type = "string",
            name = "delegatedAdminAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterAccountOutput = schema.new({
    id = id.from(_N, "RegisterAccountResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "RegisterAccountOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisterOrganizationAdminAccountInput = schema.new({
    id = id.from(_N, "RegisterOrganizationAdminAccountRequest"),
    type = "structure",
    members = {
        adminAccountId = schema.new({
            id = id.from(_N, "RegisterOrganizationAdminAccountInput", "adminAccountId"),
            type = "string",
            name = "adminAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterOrganizationAdminAccountOutput = schema.new({
    id = id.from(_N, "RegisterOrganizationAdminAccountResponse"),
    type = "structure",
    members = {
        adminAccountId = schema.new({
            id = id.from(_N, "RegisterOrganizationAdminAccountOutput", "adminAccountId"),
            type = "string",
            name = "adminAccountId",
            target_id = prelude.String.id,
        }),
        organizationId = schema.new({
            id = id.from(_N, "RegisterOrganizationAdminAccountOutput", "organizationId"),
            type = "string",
            name = "organizationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAssessmentFrameworkShareInput = schema.new({
    id = id.from(_N, "StartAssessmentFrameworkShareRequest"),
    type = "structure",
    members = {
        frameworkId = schema.new({
            id = id.from(_N, "StartAssessmentFrameworkShareInput", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        destinationAccount = schema.new({
            id = id.from(_N, "StartAssessmentFrameworkShareInput", "destinationAccount"),
            type = "string",
            name = "destinationAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationRegion = schema.new({
            id = id.from(_N, "StartAssessmentFrameworkShareInput", "destinationRegion"),
            type = "string",
            name = "destinationRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "StartAssessmentFrameworkShareInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
    },
})

M.StartAssessmentFrameworkShareOutput = schema.new({
    id = id.from(_N, "StartAssessmentFrameworkShareResponse"),
    type = "structure",
    members = {
        assessmentFrameworkShareRequest = schema.new({
            id = id.from(_N, "StartAssessmentFrameworkShareOutput", "assessmentFrameworkShareRequest"),
            type = "structure",
            name = "assessmentFrameworkShareRequest",
            target_id = id.from(_N, "AssessmentFrameworkShareRequest"),
            target = M.AssessmentFrameworkShareRequest,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateAssessmentInput = schema.new({
    id = id.from(_N, "UpdateAssessmentRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        assessmentName = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "assessmentName"),
            type = "string",
            name = "assessmentName",
            target_id = prelude.String.id,
        }),
        assessmentDescription = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "assessmentDescription"),
            type = "string",
            name = "assessmentDescription",
            target_id = prelude.String.id,
        }),
        scope = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "scope"),
            type = "structure",
            name = "scope",
            target_id = id.from(_N, "Scope"),
            target = M.Scope,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assessmentReportsDestination = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "assessmentReportsDestination"),
            type = "structure",
            name = "assessmentReportsDestination",
            target_id = id.from(_N, "AssessmentReportsDestination"),
            target = M.AssessmentReportsDestination,
        }),
        roles = schema.new({
            id = id.from(_N, "UpdateAssessmentInput", "roles"),
            type = "list",
            name = "roles",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
    },
})

M.UpdateAssessmentOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentResponse"),
    type = "structure",
    members = {
        assessment = schema.new({
            id = id.from(_N, "UpdateAssessmentOutput", "assessment"),
            type = "structure",
            name = "assessment",
            target_id = id.from(_N, "Assessment"),
            target = M.Assessment,
        }),
    },
})

M.UpdateAssessmentControlInput = schema.new({
    id = id.from(_N, "UpdateAssessmentControlRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "UpdateAssessmentControlInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "UpdateAssessmentControlInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlId = schema.new({
            id = id.from(_N, "UpdateAssessmentControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlStatus = schema.new({
            id = id.from(_N, "UpdateAssessmentControlInput", "controlStatus"),
            type = "string",
            name = "controlStatus",
            target_id = prelude.String.id,
        }),
        commentBody = schema.new({
            id = id.from(_N, "UpdateAssessmentControlInput", "commentBody"),
            type = "string",
            name = "commentBody",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAssessmentControlOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentControlResponse"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "UpdateAssessmentControlOutput", "control"),
            type = "structure",
            name = "control",
            target_id = id.from(_N, "AssessmentControl"),
            target = M.AssessmentControl,
        }),
    },
})

M.UpdateAssessmentControlSetStatusInput = schema.new({
    id = id.from(_N, "UpdateAssessmentControlSetStatusRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "UpdateAssessmentControlSetStatusInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        controlSetId = schema.new({
            id = id.from(_N, "UpdateAssessmentControlSetStatusInput", "controlSetId"),
            type = "string",
            name = "controlSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAssessmentControlSetStatusInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "UpdateAssessmentControlSetStatusInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssessmentControlSetStatusOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentControlSetStatusResponse"),
    type = "structure",
    members = {
        controlSet = schema.new({
            id = id.from(_N, "UpdateAssessmentControlSetStatusOutput", "controlSet"),
            type = "structure",
            name = "controlSet",
            target_id = id.from(_N, "AssessmentControlSet"),
            target = M.AssessmentControlSet,
        }),
    },
})

M.UpdateAssessmentFrameworkControlSet = schema.new({
    id = id.from(_N, "UpdateAssessmentFrameworkControlSet"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkControlSet", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkControlSet", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controls = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkControlSet", "controls"),
            type = "list",
            name = "controls",
            target_id = prelude.Document.id,
            list_member = M.CreateAssessmentFrameworkControl,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssessmentFrameworkInput = schema.new({
    id = id.from(_N, "UpdateAssessmentFrameworkRequest"),
    type = "structure",
    members = {
        frameworkId = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkInput", "frameworkId"),
            type = "string",
            name = "frameworkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        complianceType = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkInput", "complianceType"),
            type = "string",
            name = "complianceType",
            target_id = prelude.String.id,
        }),
        controlSets = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkInput", "controlSets"),
            type = "list",
            name = "controlSets",
            target_id = prelude.Document.id,
            list_member = M.UpdateAssessmentFrameworkControlSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssessmentFrameworkOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentFrameworkResponse"),
    type = "structure",
    members = {
        framework = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkOutput", "framework"),
            type = "structure",
            name = "framework",
            target_id = id.from(_N, "Framework"),
            target = M.Framework,
        }),
    },
})

M.UpdateAssessmentFrameworkShareInput = schema.new({
    id = id.from(_N, "UpdateAssessmentFrameworkShareRequest"),
    type = "structure",
    members = {
        requestId = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkShareInput", "requestId"),
            type = "string",
            name = "requestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        requestType = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkShareInput", "requestType"),
            type = "string",
            name = "requestType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        action = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkShareInput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssessmentFrameworkShareOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentFrameworkShareResponse"),
    type = "structure",
    members = {
        assessmentFrameworkShareRequest = schema.new({
            id = id.from(_N, "UpdateAssessmentFrameworkShareOutput", "assessmentFrameworkShareRequest"),
            type = "structure",
            name = "assessmentFrameworkShareRequest",
            target_id = id.from(_N, "AssessmentFrameworkShareRequest"),
            target = M.AssessmentFrameworkShareRequest,
        }),
    },
})

M.UpdateAssessmentStatusInput = schema.new({
    id = id.from(_N, "UpdateAssessmentStatusRequest"),
    type = "structure",
    members = {
        assessmentId = schema.new({
            id = id.from(_N, "UpdateAssessmentStatusInput", "assessmentId"),
            type = "string",
            name = "assessmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAssessmentStatusInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAssessmentStatusOutput = schema.new({
    id = id.from(_N, "UpdateAssessmentStatusResponse"),
    type = "structure",
    members = {
        assessment = schema.new({
            id = id.from(_N, "UpdateAssessmentStatusOutput", "assessment"),
            type = "structure",
            name = "assessment",
            target_id = id.from(_N, "Assessment"),
            target = M.Assessment,
        }),
    },
})

M.UpdateControlInput = schema.new({
    id = id.from(_N, "UpdateControlRequest"),
    type = "structure",
    members = {
        controlId = schema.new({
            id = id.from(_N, "UpdateControlInput", "controlId"),
            type = "string",
            name = "controlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateControlInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateControlInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        testingInformation = schema.new({
            id = id.from(_N, "UpdateControlInput", "testingInformation"),
            type = "string",
            name = "testingInformation",
            target_id = prelude.String.id,
        }),
        actionPlanTitle = schema.new({
            id = id.from(_N, "UpdateControlInput", "actionPlanTitle"),
            type = "string",
            name = "actionPlanTitle",
            target_id = prelude.String.id,
        }),
        actionPlanInstructions = schema.new({
            id = id.from(_N, "UpdateControlInput", "actionPlanInstructions"),
            type = "string",
            name = "actionPlanInstructions",
            target_id = prelude.String.id,
        }),
        controlMappingSources = schema.new({
            id = id.from(_N, "UpdateControlInput", "controlMappingSources"),
            type = "list",
            name = "controlMappingSources",
            target_id = prelude.Document.id,
            list_member = M.ControlMappingSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateControlOutput = schema.new({
    id = id.from(_N, "UpdateControlResponse"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "UpdateControlOutput", "control"),
            type = "structure",
            name = "control",
            target_id = id.from(_N, "Control"),
            target = M.Control,
        }),
    },
})

M.UpdateSettingsInput = schema.new({
    id = id.from(_N, "UpdateSettingsRequest"),
    type = "structure",
    members = {
        snsTopic = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "snsTopic"),
            type = "string",
            name = "snsTopic",
            target_id = prelude.String.id,
        }),
        defaultAssessmentReportsDestination = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "defaultAssessmentReportsDestination"),
            type = "structure",
            name = "defaultAssessmentReportsDestination",
            target_id = id.from(_N, "AssessmentReportsDestination"),
            target = M.AssessmentReportsDestination,
        }),
        defaultProcessOwners = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "defaultProcessOwners"),
            type = "list",
            name = "defaultProcessOwners",
            target_id = prelude.Document.id,
            list_member = M.Role,
        }),
        kmsKey = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "kmsKey"),
            type = "string",
            name = "kmsKey",
            target_id = prelude.String.id,
        }),
        evidenceFinderEnabled = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "evidenceFinderEnabled"),
            type = "boolean",
            name = "evidenceFinderEnabled",
            target_id = prelude.Boolean.id,
        }),
        deregistrationPolicy = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "deregistrationPolicy"),
            type = "structure",
            name = "deregistrationPolicy",
            target_id = id.from(_N, "DeregistrationPolicy"),
            target = M.DeregistrationPolicy,
        }),
        defaultExportDestination = schema.new({
            id = id.from(_N, "UpdateSettingsInput", "defaultExportDestination"),
            type = "structure",
            name = "defaultExportDestination",
            target_id = id.from(_N, "DefaultExportDestination"),
            target = M.DefaultExportDestination,
        }),
    },
})

M.UpdateSettingsOutput = schema.new({
    id = id.from(_N, "UpdateSettingsResponse"),
    type = "structure",
    members = {
        settings = schema.new({
            id = id.from(_N, "UpdateSettingsOutput", "settings"),
            type = "structure",
            name = "settings",
            target_id = id.from(_N, "Settings"),
            target = M.Settings,
        }),
    },
})

M.ValidateAssessmentReportIntegrityInput = schema.new({
    id = id.from(_N, "ValidateAssessmentReportIntegrityRequest"),
    type = "structure",
    members = {
        s3RelativePath = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityInput", "s3RelativePath"),
            type = "string",
            name = "s3RelativePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidateAssessmentReportIntegrityOutput = schema.new({
    id = id.from(_N, "ValidateAssessmentReportIntegrityResponse"),
    type = "structure",
    members = {
        signatureValid = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityOutput", "signatureValid"),
            type = "boolean",
            name = "signatureValid",
            target_id = prelude.Boolean.id,
        }),
        signatureAlgorithm = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityOutput", "signatureAlgorithm"),
            type = "string",
            name = "signatureAlgorithm",
            target_id = prelude.String.id,
        }),
        signatureDateTime = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityOutput", "signatureDateTime"),
            type = "string",
            name = "signatureDateTime",
            target_id = prelude.String.id,
        }),
        signatureKeyId = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityOutput", "signatureKeyId"),
            type = "string",
            name = "signatureKeyId",
            target_id = prelude.String.id,
        }),
        validationErrors = schema.new({
            id = id.from(_N, "ValidateAssessmentReportIntegrityOutput", "validationErrors"),
            type = "list",
            name = "validationErrors",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
