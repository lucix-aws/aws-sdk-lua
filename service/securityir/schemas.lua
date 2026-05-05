local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.securityir"

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

M.BatchGetMemberAccountDetailsInput = schema.new({
    id = id.from(_N, "BatchGetMemberAccountDetailsRequest"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "BatchGetMemberAccountDetailsInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accountIds = schema.new({
            id = id.from(_N, "BatchGetMemberAccountDetailsInput", "accountIds"),
            type = "list",
            name = "accountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMembershipAccountDetailError = schema.new({
    id = id.from(_N, "GetMembershipAccountDetailError"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailError", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailError", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMembershipAccountDetailItem = schema.new({
    id = id.from(_N, "GetMembershipAccountDetailItem"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailItem", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        relationshipStatus = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailItem", "relationshipStatus"),
            type = "string",
            name = "relationshipStatus",
            target_id = prelude.String.id,
        }),
        relationshipType = schema.new({
            id = id.from(_N, "GetMembershipAccountDetailItem", "relationshipType"),
            type = "string",
            name = "relationshipType",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetMemberAccountDetailsOutput = schema.new({
    id = id.from(_N, "BatchGetMemberAccountDetailsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "BatchGetMemberAccountDetailsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.GetMembershipAccountDetailItem,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchGetMemberAccountDetailsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.GetMembershipAccountDetailError,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
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
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.InvalidTokenException = schema.new({
    id = id.from(_N, "InvalidTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTokenException", "message"),
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
    },
})

M.SecurityIncidentResponseNotActiveException = schema.new({
    id = id.from(_N, "SecurityIncidentResponseNotActiveException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SecurityIncidentResponseNotActiveException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.CancelMembershipInput = schema.new({
    id = id.from(_N, "CancelMembershipRequest"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "CancelMembershipInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelMembershipOutput = schema.new({
    id = id.from(_N, "CancelMembershipResponse"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "CancelMembershipOutput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloseCaseInput = schema.new({
    id = id.from(_N, "CloseCaseRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "CloseCaseInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CloseCaseOutput = schema.new({
    id = id.from(_N, "CloseCaseResponse"),
    type = "structure",
    members = {
        caseStatus = schema.new({
            id = id.from(_N, "CloseCaseOutput", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
        }),
        closedDate = schema.new({
            id = id.from(_N, "CloseCaseOutput", "closedDate"),
            type = "timestamp",
            name = "closedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ImpactedAwsRegion = schema.new({
    id = id.from(_N, "ImpactedAwsRegion"),
    type = "structure",
    members = {
        region = schema.new({
            id = id.from(_N, "ImpactedAwsRegion", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThreatActorIp = schema.new({
    id = id.from(_N, "ThreatActorIp"),
    type = "structure",
    members = {
        ipAddress = schema.new({
            id = id.from(_N, "ThreatActorIp", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAgent = schema.new({
            id = id.from(_N, "ThreatActorIp", "userAgent"),
            type = "string",
            name = "userAgent",
            target_id = prelude.String.id,
        }),
    },
})

M.Watcher = schema.new({
    id = id.from(_N, "Watcher"),
    type = "structure",
    members = {
        email = schema.new({
            id = id.from(_N, "Watcher", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "Watcher", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        jobTitle = schema.new({
            id = id.from(_N, "Watcher", "jobTitle"),
            type = "string",
            name = "jobTitle",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCaseInput = schema.new({
    id = id.from(_N, "CreateCaseRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateCaseInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        resolverType = schema.new({
            id = id.from(_N, "CreateCaseInput", "resolverType"),
            type = "string",
            name = "resolverType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "CreateCaseInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateCaseInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        engagementType = schema.new({
            id = id.from(_N, "CreateCaseInput", "engagementType"),
            type = "string",
            name = "engagementType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reportedIncidentStartDate = schema.new({
            id = id.from(_N, "CreateCaseInput", "reportedIncidentStartDate"),
            type = "timestamp",
            name = "reportedIncidentStartDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        impactedAccounts = schema.new({
            id = id.from(_N, "CreateCaseInput", "impactedAccounts"),
            type = "list",
            name = "impactedAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        watchers = schema.new({
            id = id.from(_N, "CreateCaseInput", "watchers"),
            type = "list",
            name = "watchers",
            target_id = prelude.Document.id,
            list_member = M.Watcher,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        threatActorIpAddresses = schema.new({
            id = id.from(_N, "CreateCaseInput", "threatActorIpAddresses"),
            type = "list",
            name = "threatActorIpAddresses",
            target_id = prelude.Document.id,
            list_member = M.ThreatActorIp,
        }),
        impactedServices = schema.new({
            id = id.from(_N, "CreateCaseInput", "impactedServices"),
            type = "list",
            name = "impactedServices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        impactedAwsRegions = schema.new({
            id = id.from(_N, "CreateCaseInput", "impactedAwsRegions"),
            type = "list",
            name = "impactedAwsRegions",
            target_id = prelude.Document.id,
            list_member = M.ImpactedAwsRegion,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCaseInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateCaseOutput = schema.new({
    id = id.from(_N, "CreateCaseResponse"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "CreateCaseOutput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCaseCommentInput = schema.new({
    id = id.from(_N, "CreateCaseCommentRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "CreateCaseCommentInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateCaseCommentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "CreateCaseCommentInput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCaseCommentOutput = schema.new({
    id = id.from(_N, "CreateCaseCommentResponse"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "CreateCaseCommentOutput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCaseInput = schema.new({
    id = id.from(_N, "GetCaseRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "GetCaseInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CaseAttachmentAttributes = schema.new({
    id = id.from(_N, "CaseAttachmentAttributes"),
    type = "structure",
    members = {
        attachmentId = schema.new({
            id = id.from(_N, "CaseAttachmentAttributes", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "CaseAttachmentAttributes", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachmentStatus = schema.new({
            id = id.from(_N, "CaseAttachmentAttributes", "attachmentStatus"),
            type = "string",
            name = "attachmentStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creator = schema.new({
            id = id.from(_N, "CaseAttachmentAttributes", "creator"),
            type = "string",
            name = "creator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "CaseAttachmentAttributes", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CaseMetadataEntry = schema.new({
    id = id.from(_N, "CaseMetadataEntry"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "CaseMetadataEntry", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CaseMetadataEntry", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCaseOutput = schema.new({
    id = id.from(_N, "GetCaseResponse"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "GetCaseOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        caseArn = schema.new({
            id = id.from(_N, "GetCaseOutput", "caseArn"),
            type = "string",
            name = "caseArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetCaseOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        caseStatus = schema.new({
            id = id.from(_N, "GetCaseOutput", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
        }),
        engagementType = schema.new({
            id = id.from(_N, "GetCaseOutput", "engagementType"),
            type = "string",
            name = "engagementType",
            target_id = prelude.String.id,
        }),
        reportedIncidentStartDate = schema.new({
            id = id.from(_N, "GetCaseOutput", "reportedIncidentStartDate"),
            type = "timestamp",
            name = "reportedIncidentStartDate",
            target_id = prelude.Timestamp.id,
        }),
        actualIncidentStartDate = schema.new({
            id = id.from(_N, "GetCaseOutput", "actualIncidentStartDate"),
            type = "timestamp",
            name = "actualIncidentStartDate",
            target_id = prelude.Timestamp.id,
        }),
        impactedAwsRegions = schema.new({
            id = id.from(_N, "GetCaseOutput", "impactedAwsRegions"),
            type = "list",
            name = "impactedAwsRegions",
            target_id = prelude.Document.id,
            list_member = M.ImpactedAwsRegion,
        }),
        threatActorIpAddresses = schema.new({
            id = id.from(_N, "GetCaseOutput", "threatActorIpAddresses"),
            type = "list",
            name = "threatActorIpAddresses",
            target_id = prelude.Document.id,
            list_member = M.ThreatActorIp,
        }),
        pendingAction = schema.new({
            id = id.from(_N, "GetCaseOutput", "pendingAction"),
            type = "string",
            name = "pendingAction",
            target_id = prelude.String.id,
        }),
        impactedAccounts = schema.new({
            id = id.from(_N, "GetCaseOutput", "impactedAccounts"),
            type = "list",
            name = "impactedAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        watchers = schema.new({
            id = id.from(_N, "GetCaseOutput", "watchers"),
            type = "list",
            name = "watchers",
            target_id = prelude.Document.id,
            list_member = M.Watcher,
        }),
        createdDate = schema.new({
            id = id.from(_N, "GetCaseOutput", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "GetCaseOutput", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        closureCode = schema.new({
            id = id.from(_N, "GetCaseOutput", "closureCode"),
            type = "string",
            name = "closureCode",
            target_id = prelude.String.id,
        }),
        resolverType = schema.new({
            id = id.from(_N, "GetCaseOutput", "resolverType"),
            type = "string",
            name = "resolverType",
            target_id = prelude.String.id,
        }),
        impactedServices = schema.new({
            id = id.from(_N, "GetCaseOutput", "impactedServices"),
            type = "list",
            name = "impactedServices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        caseAttachments = schema.new({
            id = id.from(_N, "GetCaseOutput", "caseAttachments"),
            type = "list",
            name = "caseAttachments",
            target_id = prelude.Document.id,
            list_member = M.CaseAttachmentAttributes,
        }),
        closedDate = schema.new({
            id = id.from(_N, "GetCaseOutput", "closedDate"),
            type = "timestamp",
            name = "closedDate",
            target_id = prelude.Timestamp.id,
        }),
        caseMetadata = schema.new({
            id = id.from(_N, "GetCaseOutput", "caseMetadata"),
            type = "list",
            name = "caseMetadata",
            target_id = prelude.Document.id,
            list_member = M.CaseMetadataEntry,
        }),
    },
})

M.GetCaseAttachmentDownloadUrlInput = schema.new({
    id = id.from(_N, "GetCaseAttachmentDownloadUrlRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "GetCaseAttachmentDownloadUrlInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        attachmentId = schema.new({
            id = id.from(_N, "GetCaseAttachmentDownloadUrlInput", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCaseAttachmentDownloadUrlOutput = schema.new({
    id = id.from(_N, "GetCaseAttachmentDownloadUrlResponse"),
    type = "structure",
    members = {
        attachmentPresignedUrl = schema.new({
            id = id.from(_N, "GetCaseAttachmentDownloadUrlOutput", "attachmentPresignedUrl"),
            type = "string",
            name = "attachmentPresignedUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCaseAttachmentUploadUrlInput = schema.new({
    id = id.from(_N, "GetCaseAttachmentUploadUrlRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "GetCaseAttachmentUploadUrlInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "GetCaseAttachmentUploadUrlInput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        contentLength = schema.new({
            id = id.from(_N, "GetCaseAttachmentUploadUrlInput", "contentLength"),
            type = "long",
            name = "contentLength",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GetCaseAttachmentUploadUrlInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.GetCaseAttachmentUploadUrlOutput = schema.new({
    id = id.from(_N, "GetCaseAttachmentUploadUrlResponse"),
    type = "structure",
    members = {
        attachmentPresignedUrl = schema.new({
            id = id.from(_N, "GetCaseAttachmentUploadUrlOutput", "attachmentPresignedUrl"),
            type = "string",
            name = "attachmentPresignedUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCaseEditsInput = schema.new({
    id = id.from(_N, "ListCaseEditsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCaseEditsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCaseEditsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        caseId = schema.new({
            id = id.from(_N, "ListCaseEditsInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CaseEditItem = schema.new({
    id = id.from(_N, "CaseEditItem"),
    type = "structure",
    members = {
        eventTimestamp = schema.new({
            id = id.from(_N, "CaseEditItem", "eventTimestamp"),
            type = "timestamp",
            name = "eventTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        principal = schema.new({
            id = id.from(_N, "CaseEditItem", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
        }),
        action = schema.new({
            id = id.from(_N, "CaseEditItem", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "CaseEditItem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCaseEditsOutput = schema.new({
    id = id.from(_N, "ListCaseEditsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCaseEditsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListCaseEditsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.CaseEditItem,
        }),
        total = schema.new({
            id = id.from(_N, "ListCaseEditsOutput", "total"),
            type = "integer",
            name = "total",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListCasesInput = schema.new({
    id = id.from(_N, "ListCasesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCasesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCasesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListCasesItem = schema.new({
    id = id.from(_N, "ListCasesItem"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "ListCasesItem", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "ListCasesItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        title = schema.new({
            id = id.from(_N, "ListCasesItem", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        caseArn = schema.new({
            id = id.from(_N, "ListCasesItem", "caseArn"),
            type = "string",
            name = "caseArn",
            target_id = prelude.String.id,
        }),
        engagementType = schema.new({
            id = id.from(_N, "ListCasesItem", "engagementType"),
            type = "string",
            name = "engagementType",
            target_id = prelude.String.id,
        }),
        caseStatus = schema.new({
            id = id.from(_N, "ListCasesItem", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
        }),
        createdDate = schema.new({
            id = id.from(_N, "ListCasesItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        closedDate = schema.new({
            id = id.from(_N, "ListCasesItem", "closedDate"),
            type = "timestamp",
            name = "closedDate",
            target_id = prelude.Timestamp.id,
        }),
        resolverType = schema.new({
            id = id.from(_N, "ListCasesItem", "resolverType"),
            type = "string",
            name = "resolverType",
            target_id = prelude.String.id,
        }),
        pendingAction = schema.new({
            id = id.from(_N, "ListCasesItem", "pendingAction"),
            type = "string",
            name = "pendingAction",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCasesOutput = schema.new({
    id = id.from(_N, "ListCasesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCasesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListCasesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ListCasesItem,
        }),
        total = schema.new({
            id = id.from(_N, "ListCasesOutput", "total"),
            type = "long",
            name = "total",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListCommentsInput = schema.new({
    id = id.from(_N, "ListCommentsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCommentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCommentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        caseId = schema.new({
            id = id.from(_N, "ListCommentsInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListCommentsItem = schema.new({
    id = id.from(_N, "ListCommentsItem"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "ListCommentsItem", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdDate = schema.new({
            id = id.from(_N, "ListCommentsItem", "createdDate"),
            type = "timestamp",
            name = "createdDate",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDate = schema.new({
            id = id.from(_N, "ListCommentsItem", "lastUpdatedDate"),
            type = "timestamp",
            name = "lastUpdatedDate",
            target_id = prelude.Timestamp.id,
        }),
        creator = schema.new({
            id = id.from(_N, "ListCommentsItem", "creator"),
            type = "string",
            name = "creator",
            target_id = prelude.String.id,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "ListCommentsItem", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        body = schema.new({
            id = id.from(_N, "ListCommentsItem", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCommentsOutput = schema.new({
    id = id.from(_N, "ListCommentsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCommentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListCommentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ListCommentsItem,
        }),
        total = schema.new({
            id = id.from(_N, "ListCommentsOutput", "total"),
            type = "integer",
            name = "total",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListInvestigationsInput = schema.new({
    id = id.from(_N, "ListInvestigationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListInvestigationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListInvestigationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        caseId = schema.new({
            id = id.from(_N, "ListInvestigationsInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.InvestigationFeedback = schema.new({
    id = id.from(_N, "InvestigationFeedback"),
    type = "structure",
    members = {
        usefulness = schema.new({
            id = id.from(_N, "InvestigationFeedback", "usefulness"),
            type = "string",
            name = "usefulness",
            target_id = prelude.String.id,
        }),
        comment = schema.new({
            id = id.from(_N, "InvestigationFeedback", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        submittedAt = schema.new({
            id = id.from(_N, "InvestigationFeedback", "submittedAt"),
            type = "timestamp",
            name = "submittedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InvestigationAction = schema.new({
    id = id.from(_N, "InvestigationAction"),
    type = "structure",
    members = {
        investigationId = schema.new({
            id = id.from(_N, "InvestigationAction", "investigationId"),
            type = "string",
            name = "investigationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionType = schema.new({
            id = id.from(_N, "InvestigationAction", "actionType"),
            type = "string",
            name = "actionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "InvestigationAction", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "InvestigationAction", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "InvestigationAction", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdated = schema.new({
            id = id.from(_N, "InvestigationAction", "lastUpdated"),
            type = "timestamp",
            name = "lastUpdated",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        feedback = schema.new({
            id = id.from(_N, "InvestigationAction", "feedback"),
            type = "structure",
            name = "feedback",
            target_id = id.from(_N, "InvestigationFeedback"),
            target = M.InvestigationFeedback,
        }),
    },
})

M.ListInvestigationsOutput = schema.new({
    id = id.from(_N, "ListInvestigationsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListInvestigationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        investigationActions = schema.new({
            id = id.from(_N, "ListInvestigationsOutput", "investigationActions"),
            type = "list",
            name = "investigationActions",
            target_id = prelude.Document.id,
            list_member = M.InvestigationAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendFeedbackInput = schema.new({
    id = id.from(_N, "SendFeedbackRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "SendFeedbackInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resultId = schema.new({
            id = id.from(_N, "SendFeedbackInput", "resultId"),
            type = "string",
            name = "resultId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        usefulness = schema.new({
            id = id.from(_N, "SendFeedbackInput", "usefulness"),
            type = "string",
            name = "usefulness",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "SendFeedbackInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
    },
})

M.SendFeedbackOutput = schema.new({
    id = id.from(_N, "SendFeedbackResponse"),
    type = "structure",
})

M.UpdateCaseInput = schema.new({
    id = id.from(_N, "UpdateCaseRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "UpdateCaseInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UpdateCaseInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateCaseInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        reportedIncidentStartDate = schema.new({
            id = id.from(_N, "UpdateCaseInput", "reportedIncidentStartDate"),
            type = "timestamp",
            name = "reportedIncidentStartDate",
            target_id = prelude.Timestamp.id,
        }),
        actualIncidentStartDate = schema.new({
            id = id.from(_N, "UpdateCaseInput", "actualIncidentStartDate"),
            type = "timestamp",
            name = "actualIncidentStartDate",
            target_id = prelude.Timestamp.id,
        }),
        engagementType = schema.new({
            id = id.from(_N, "UpdateCaseInput", "engagementType"),
            type = "string",
            name = "engagementType",
            target_id = prelude.String.id,
        }),
        watchersToAdd = schema.new({
            id = id.from(_N, "UpdateCaseInput", "watchersToAdd"),
            type = "list",
            name = "watchersToAdd",
            target_id = prelude.Document.id,
            list_member = M.Watcher,
        }),
        watchersToDelete = schema.new({
            id = id.from(_N, "UpdateCaseInput", "watchersToDelete"),
            type = "list",
            name = "watchersToDelete",
            target_id = prelude.Document.id,
            list_member = M.Watcher,
        }),
        threatActorIpAddressesToAdd = schema.new({
            id = id.from(_N, "UpdateCaseInput", "threatActorIpAddressesToAdd"),
            type = "list",
            name = "threatActorIpAddressesToAdd",
            target_id = prelude.Document.id,
            list_member = M.ThreatActorIp,
        }),
        threatActorIpAddressesToDelete = schema.new({
            id = id.from(_N, "UpdateCaseInput", "threatActorIpAddressesToDelete"),
            type = "list",
            name = "threatActorIpAddressesToDelete",
            target_id = prelude.Document.id,
            list_member = M.ThreatActorIp,
        }),
        impactedServicesToAdd = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedServicesToAdd"),
            type = "list",
            name = "impactedServicesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        impactedServicesToDelete = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedServicesToDelete"),
            type = "list",
            name = "impactedServicesToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        impactedAwsRegionsToAdd = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedAwsRegionsToAdd"),
            type = "list",
            name = "impactedAwsRegionsToAdd",
            target_id = prelude.Document.id,
            list_member = M.ImpactedAwsRegion,
        }),
        impactedAwsRegionsToDelete = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedAwsRegionsToDelete"),
            type = "list",
            name = "impactedAwsRegionsToDelete",
            target_id = prelude.Document.id,
            list_member = M.ImpactedAwsRegion,
        }),
        impactedAccountsToAdd = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedAccountsToAdd"),
            type = "list",
            name = "impactedAccountsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        impactedAccountsToDelete = schema.new({
            id = id.from(_N, "UpdateCaseInput", "impactedAccountsToDelete"),
            type = "list",
            name = "impactedAccountsToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        caseMetadata = schema.new({
            id = id.from(_N, "UpdateCaseInput", "caseMetadata"),
            type = "list",
            name = "caseMetadata",
            target_id = prelude.Document.id,
            list_member = M.CaseMetadataEntry,
        }),
    },
})

M.UpdateCaseOutput = schema.new({
    id = id.from(_N, "UpdateCaseResponse"),
    type = "structure",
})

M.UpdateCaseCommentInput = schema.new({
    id = id.from(_N, "UpdateCaseCommentRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "UpdateCaseCommentInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        commentId = schema.new({
            id = id.from(_N, "UpdateCaseCommentInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "UpdateCaseCommentInput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateCaseCommentOutput = schema.new({
    id = id.from(_N, "UpdateCaseCommentResponse"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "UpdateCaseCommentOutput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "UpdateCaseCommentOutput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCaseStatusInput = schema.new({
    id = id.from(_N, "UpdateCaseStatusRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "UpdateCaseStatusInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        caseStatus = schema.new({
            id = id.from(_N, "UpdateCaseStatusInput", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateCaseStatusOutput = schema.new({
    id = id.from(_N, "UpdateCaseStatusResponse"),
    type = "structure",
    members = {
        caseStatus = schema.new({
            id = id.from(_N, "UpdateCaseStatusOutput", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateResolverTypeInput = schema.new({
    id = id.from(_N, "UpdateResolverTypeRequest"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "UpdateResolverTypeInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resolverType = schema.new({
            id = id.from(_N, "UpdateResolverTypeInput", "resolverType"),
            type = "string",
            name = "resolverType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResolverTypeOutput = schema.new({
    id = id.from(_N, "UpdateResolverTypeResponse"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "UpdateResolverTypeOutput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        caseStatus = schema.new({
            id = id.from(_N, "UpdateResolverTypeOutput", "caseStatus"),
            type = "string",
            name = "caseStatus",
            target_id = prelude.String.id,
        }),
        resolverType = schema.new({
            id = id.from(_N, "UpdateResolverTypeOutput", "resolverType"),
            type = "string",
            name = "resolverType",
            target_id = prelude.String.id,
        }),
    },
})

M.IncidentResponder = schema.new({
    id = id.from(_N, "IncidentResponder"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "IncidentResponder", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobTitle = schema.new({
            id = id.from(_N, "IncidentResponder", "jobTitle"),
            type = "string",
            name = "jobTitle",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "IncidentResponder", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        communicationPreferences = schema.new({
            id = id.from(_N, "IncidentResponder", "communicationPreferences"),
            type = "list",
            name = "communicationPreferences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OptInFeature = schema.new({
    id = id.from(_N, "OptInFeature"),
    type = "structure",
    members = {
        featureName = schema.new({
            id = id.from(_N, "OptInFeature", "featureName"),
            type = "string",
            name = "featureName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isEnabled = schema.new({
            id = id.from(_N, "OptInFeature", "isEnabled"),
            type = "boolean",
            name = "isEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMembershipInput = schema.new({
    id = id.from(_N, "CreateMembershipRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateMembershipInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        membershipName = schema.new({
            id = id.from(_N, "CreateMembershipInput", "membershipName"),
            type = "string",
            name = "membershipName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        incidentResponseTeam = schema.new({
            id = id.from(_N, "CreateMembershipInput", "incidentResponseTeam"),
            type = "list",
            name = "incidentResponseTeam",
            target_id = prelude.Document.id,
            list_member = M.IncidentResponder,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        optInFeatures = schema.new({
            id = id.from(_N, "CreateMembershipInput", "optInFeatures"),
            type = "list",
            name = "optInFeatures",
            target_id = prelude.Document.id,
            list_member = M.OptInFeature,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateMembershipInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        coverEntireOrganization = schema.new({
            id = id.from(_N, "CreateMembershipInput", "coverEntireOrganization"),
            type = "boolean",
            name = "coverEntireOrganization",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = true },
            },
        }),
    },
})

M.CreateMembershipOutput = schema.new({
    id = id.from(_N, "CreateMembershipResponse"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "CreateMembershipOutput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMembershipInput = schema.new({
    id = id.from(_N, "GetMembershipRequest"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "GetMembershipInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.MembershipAccountsConfigurations = schema.new({
    id = id.from(_N, "MembershipAccountsConfigurations"),
    type = "structure",
    members = {
        coverEntireOrganization = schema.new({
            id = id.from(_N, "MembershipAccountsConfigurations", "coverEntireOrganization"),
            type = "boolean",
            name = "coverEntireOrganization",
            target_id = prelude.Boolean.id,
        }),
        organizationalUnits = schema.new({
            id = id.from(_N, "MembershipAccountsConfigurations", "organizationalUnits"),
            type = "list",
            name = "organizationalUnits",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetMembershipOutput = schema.new({
    id = id.from(_N, "GetMembershipResponse"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "GetMembershipOutput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "GetMembershipOutput", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        membershipName = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipName"),
            type = "string",
            name = "membershipName",
            target_id = prelude.String.id,
        }),
        membershipArn = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipArn"),
            type = "string",
            name = "membershipArn",
            target_id = prelude.String.id,
        }),
        membershipStatus = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipStatus"),
            type = "string",
            name = "membershipStatus",
            target_id = prelude.String.id,
        }),
        membershipActivationTimestamp = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipActivationTimestamp"),
            type = "timestamp",
            name = "membershipActivationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        membershipDeactivationTimestamp = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipDeactivationTimestamp"),
            type = "timestamp",
            name = "membershipDeactivationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        customerType = schema.new({
            id = id.from(_N, "GetMembershipOutput", "customerType"),
            type = "string",
            name = "customerType",
            target_id = prelude.String.id,
        }),
        numberOfAccountsCovered = schema.new({
            id = id.from(_N, "GetMembershipOutput", "numberOfAccountsCovered"),
            type = "long",
            name = "numberOfAccountsCovered",
            target_id = prelude.Long.id,
        }),
        incidentResponseTeam = schema.new({
            id = id.from(_N, "GetMembershipOutput", "incidentResponseTeam"),
            type = "list",
            name = "incidentResponseTeam",
            target_id = prelude.Document.id,
            list_member = M.IncidentResponder,
        }),
        optInFeatures = schema.new({
            id = id.from(_N, "GetMembershipOutput", "optInFeatures"),
            type = "list",
            name = "optInFeatures",
            target_id = prelude.Document.id,
            list_member = M.OptInFeature,
        }),
        membershipAccountsConfigurations = schema.new({
            id = id.from(_N, "GetMembershipOutput", "membershipAccountsConfigurations"),
            type = "structure",
            name = "membershipAccountsConfigurations",
            target_id = id.from(_N, "MembershipAccountsConfigurations"),
            target = M.MembershipAccountsConfigurations,
        }),
    },
})

M.ListMembershipItem = schema.new({
    id = id.from(_N, "ListMembershipItem"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "ListMembershipItem", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "ListMembershipItem", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "ListMembershipItem", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        membershipArn = schema.new({
            id = id.from(_N, "ListMembershipItem", "membershipArn"),
            type = "string",
            name = "membershipArn",
            target_id = prelude.String.id,
        }),
        membershipStatus = schema.new({
            id = id.from(_N, "ListMembershipItem", "membershipStatus"),
            type = "string",
            name = "membershipStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMembershipsInput = schema.new({
    id = id.from(_N, "ListMembershipsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListMembershipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMembershipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListMembershipsOutput = schema.new({
    id = id.from(_N, "ListMembershipsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListMembershipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListMembershipsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ListMembershipItem,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
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

M.MembershipAccountsConfigurationsUpdate = schema.new({
    id = id.from(_N, "MembershipAccountsConfigurationsUpdate"),
    type = "structure",
    members = {
        coverEntireOrganization = schema.new({
            id = id.from(_N, "MembershipAccountsConfigurationsUpdate", "coverEntireOrganization"),
            type = "boolean",
            name = "coverEntireOrganization",
            target_id = prelude.Boolean.id,
        }),
        organizationalUnitsToAdd = schema.new({
            id = id.from(_N, "MembershipAccountsConfigurationsUpdate", "organizationalUnitsToAdd"),
            type = "list",
            name = "organizationalUnitsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        organizationalUnitsToRemove = schema.new({
            id = id.from(_N, "MembershipAccountsConfigurationsUpdate", "organizationalUnitsToRemove"),
            type = "list",
            name = "organizationalUnitsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateMembershipInput = schema.new({
    id = id.from(_N, "UpdateMembershipRequest"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        membershipName = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "membershipName"),
            type = "string",
            name = "membershipName",
            target_id = prelude.String.id,
        }),
        incidentResponseTeam = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "incidentResponseTeam"),
            type = "list",
            name = "incidentResponseTeam",
            target_id = prelude.Document.id,
            list_member = M.IncidentResponder,
        }),
        optInFeatures = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "optInFeatures"),
            type = "list",
            name = "optInFeatures",
            target_id = prelude.Document.id,
            list_member = M.OptInFeature,
        }),
        membershipAccountsConfigurationsUpdate = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "membershipAccountsConfigurationsUpdate"),
            type = "structure",
            name = "membershipAccountsConfigurationsUpdate",
            target_id = id.from(_N, "MembershipAccountsConfigurationsUpdate"),
            target = M.MembershipAccountsConfigurationsUpdate,
        }),
        undoMembershipCancellation = schema.new({
            id = id.from(_N, "UpdateMembershipInput", "undoMembershipCancellation"),
            type = "boolean",
            name = "undoMembershipCancellation",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateMembershipOutput = schema.new({
    id = id.from(_N, "UpdateMembershipResponse"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
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
