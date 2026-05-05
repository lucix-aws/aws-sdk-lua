local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.support"

local M = {}

M.Attachment = schema.new({
    id = id.from(_N, "Attachment"),
    type = "structure",
    members = {
        fileName = schema.new({
            id = id.from(_N, "Attachment", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
        }),
        data = schema.new({
            id = id.from(_N, "Attachment", "data"),
            type = "blob",
            name = "data",
            target_id = prelude.Blob.id,
        }),
    },
})

M.AddAttachmentsToSetInput = schema.new({
    id = id.from(_N, "AddAttachmentsToSetInput"),
    type = "structure",
    members = {
        attachmentSetId = schema.new({
            id = id.from(_N, "AddAttachmentsToSetInput", "attachmentSetId"),
            type = "string",
            name = "attachmentSetId",
            target_id = prelude.String.id,
        }),
        attachments = schema.new({
            id = id.from(_N, "AddAttachmentsToSetInput", "attachments"),
            type = "list",
            name = "attachments",
            target_id = prelude.Document.id,
            list_member = M.Attachment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddAttachmentsToSetOutput = schema.new({
    id = id.from(_N, "AddAttachmentsToSetOutput"),
    type = "structure",
    members = {
        attachmentSetId = schema.new({
            id = id.from(_N, "AddAttachmentsToSetOutput", "attachmentSetId"),
            type = "string",
            name = "attachmentSetId",
            target_id = prelude.String.id,
        }),
        expiryTime = schema.new({
            id = id.from(_N, "AddAttachmentsToSetOutput", "expiryTime"),
            type = "string",
            name = "expiryTime",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentLimitExceeded = schema.new({
    id = id.from(_N, "AttachmentLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AttachmentLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentSetExpired = schema.new({
    id = id.from(_N, "AttachmentSetExpired"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AttachmentSetExpired", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentSetIdNotFound = schema.new({
    id = id.from(_N, "AttachmentSetIdNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AttachmentSetIdNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentSetSizeLimitExceeded = schema.new({
    id = id.from(_N, "AttachmentSetSizeLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AttachmentSetSizeLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AddCommunicationToCaseInput = schema.new({
    id = id.from(_N, "AddCommunicationToCaseInput"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "AddCommunicationToCaseInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
        }),
        communicationBody = schema.new({
            id = id.from(_N, "AddCommunicationToCaseInput", "communicationBody"),
            type = "string",
            name = "communicationBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ccEmailAddresses = schema.new({
            id = id.from(_N, "AddCommunicationToCaseInput", "ccEmailAddresses"),
            type = "list",
            name = "ccEmailAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        attachmentSetId = schema.new({
            id = id.from(_N, "AddCommunicationToCaseInput", "attachmentSetId"),
            type = "string",
            name = "attachmentSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.AddCommunicationToCaseOutput = schema.new({
    id = id.from(_N, "AddCommunicationToCaseOutput"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "AddCommunicationToCaseOutput", "result"),
            type = "boolean",
            name = "result",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CaseIdNotFound = schema.new({
    id = id.from(_N, "CaseIdNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CaseIdNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentDetails = schema.new({
    id = id.from(_N, "AttachmentDetails"),
    type = "structure",
    members = {
        attachmentId = schema.new({
            id = id.from(_N, "AttachmentDetails", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
        }),
        fileName = schema.new({
            id = id.from(_N, "AttachmentDetails", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachmentIdNotFound = schema.new({
    id = id.from(_N, "AttachmentIdNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AttachmentIdNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CaseCreationLimitExceeded = schema.new({
    id = id.from(_N, "CaseCreationLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CaseCreationLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCaseInput = schema.new({
    id = id.from(_N, "CreateCaseInput"),
    type = "structure",
    members = {
        subject = schema.new({
            id = id.from(_N, "CreateCaseInput", "subject"),
            type = "string",
            name = "subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "CreateCaseInput", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        severityCode = schema.new({
            id = id.from(_N, "CreateCaseInput", "severityCode"),
            type = "string",
            name = "severityCode",
            target_id = prelude.String.id,
        }),
        categoryCode = schema.new({
            id = id.from(_N, "CreateCaseInput", "categoryCode"),
            type = "string",
            name = "categoryCode",
            target_id = prelude.String.id,
        }),
        communicationBody = schema.new({
            id = id.from(_N, "CreateCaseInput", "communicationBody"),
            type = "string",
            name = "communicationBody",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ccEmailAddresses = schema.new({
            id = id.from(_N, "CreateCaseInput", "ccEmailAddresses"),
            type = "list",
            name = "ccEmailAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        language = schema.new({
            id = id.from(_N, "CreateCaseInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
        issueType = schema.new({
            id = id.from(_N, "CreateCaseInput", "issueType"),
            type = "string",
            name = "issueType",
            target_id = prelude.String.id,
        }),
        attachmentSetId = schema.new({
            id = id.from(_N, "CreateCaseInput", "attachmentSetId"),
            type = "string",
            name = "attachmentSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCaseOutput = schema.new({
    id = id.from(_N, "CreateCaseOutput"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "CreateCaseOutput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAttachmentInput = schema.new({
    id = id.from(_N, "DescribeAttachmentInput"),
    type = "structure",
    members = {
        attachmentId = schema.new({
            id = id.from(_N, "DescribeAttachmentInput", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAttachmentLimitExceeded = schema.new({
    id = id.from(_N, "DescribeAttachmentLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DescribeAttachmentLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeAttachmentOutput = schema.new({
    id = id.from(_N, "DescribeAttachmentOutput"),
    type = "structure",
    members = {
        attachment = schema.new({
            id = id.from(_N, "DescribeAttachmentOutput", "attachment"),
            type = "structure",
            name = "attachment",
            target_id = id.from(_N, "Attachment"),
            target = M.Attachment,
        }),
    },
})

M.DescribeCasesInput = schema.new({
    id = id.from(_N, "DescribeCasesInput"),
    type = "structure",
    members = {
        caseIdList = schema.new({
            id = id.from(_N, "DescribeCasesInput", "caseIdList"),
            type = "list",
            name = "caseIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        displayId = schema.new({
            id = id.from(_N, "DescribeCasesInput", "displayId"),
            type = "string",
            name = "displayId",
            target_id = prelude.String.id,
        }),
        afterTime = schema.new({
            id = id.from(_N, "DescribeCasesInput", "afterTime"),
            type = "string",
            name = "afterTime",
            target_id = prelude.String.id,
        }),
        beforeTime = schema.new({
            id = id.from(_N, "DescribeCasesInput", "beforeTime"),
            type = "string",
            name = "beforeTime",
            target_id = prelude.String.id,
        }),
        includeResolvedCases = schema.new({
            id = id.from(_N, "DescribeCasesInput", "includeResolvedCases"),
            type = "boolean",
            name = "includeResolvedCases",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeCasesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeCasesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        language = schema.new({
            id = id.from(_N, "DescribeCasesInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
        includeCommunications = schema.new({
            id = id.from(_N, "DescribeCasesInput", "includeCommunications"),
            type = "boolean",
            name = "includeCommunications",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Communication = schema.new({
    id = id.from(_N, "Communication"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "Communication", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
        }),
        body = schema.new({
            id = id.from(_N, "Communication", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
        submittedBy = schema.new({
            id = id.from(_N, "Communication", "submittedBy"),
            type = "string",
            name = "submittedBy",
            target_id = prelude.String.id,
        }),
        timeCreated = schema.new({
            id = id.from(_N, "Communication", "timeCreated"),
            type = "string",
            name = "timeCreated",
            target_id = prelude.String.id,
        }),
        attachmentSet = schema.new({
            id = id.from(_N, "Communication", "attachmentSet"),
            type = "list",
            name = "attachmentSet",
            target_id = prelude.Document.id,
            list_member = M.AttachmentDetails,
        }),
    },
})

M.RecentCaseCommunications = schema.new({
    id = id.from(_N, "RecentCaseCommunications"),
    type = "structure",
    members = {
        communications = schema.new({
            id = id.from(_N, "RecentCaseCommunications", "communications"),
            type = "list",
            name = "communications",
            target_id = prelude.Document.id,
            list_member = M.Communication,
        }),
        nextToken = schema.new({
            id = id.from(_N, "RecentCaseCommunications", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CaseDetails = schema.new({
    id = id.from(_N, "CaseDetails"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "CaseDetails", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
        }),
        displayId = schema.new({
            id = id.from(_N, "CaseDetails", "displayId"),
            type = "string",
            name = "displayId",
            target_id = prelude.String.id,
        }),
        subject = schema.new({
            id = id.from(_N, "CaseDetails", "subject"),
            type = "string",
            name = "subject",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CaseDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        serviceCode = schema.new({
            id = id.from(_N, "CaseDetails", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        categoryCode = schema.new({
            id = id.from(_N, "CaseDetails", "categoryCode"),
            type = "string",
            name = "categoryCode",
            target_id = prelude.String.id,
        }),
        severityCode = schema.new({
            id = id.from(_N, "CaseDetails", "severityCode"),
            type = "string",
            name = "severityCode",
            target_id = prelude.String.id,
        }),
        submittedBy = schema.new({
            id = id.from(_N, "CaseDetails", "submittedBy"),
            type = "string",
            name = "submittedBy",
            target_id = prelude.String.id,
        }),
        timeCreated = schema.new({
            id = id.from(_N, "CaseDetails", "timeCreated"),
            type = "string",
            name = "timeCreated",
            target_id = prelude.String.id,
        }),
        recentCommunications = schema.new({
            id = id.from(_N, "CaseDetails", "recentCommunications"),
            type = "structure",
            name = "recentCommunications",
            target_id = id.from(_N, "RecentCaseCommunications"),
            target = M.RecentCaseCommunications,
        }),
        ccEmailAddresses = schema.new({
            id = id.from(_N, "CaseDetails", "ccEmailAddresses"),
            type = "list",
            name = "ccEmailAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        language = schema.new({
            id = id.from(_N, "CaseDetails", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCasesOutput = schema.new({
    id = id.from(_N, "DescribeCasesOutput"),
    type = "structure",
    members = {
        cases = schema.new({
            id = id.from(_N, "DescribeCasesOutput", "cases"),
            type = "list",
            name = "cases",
            target_id = prelude.Document.id,
            list_member = M.CaseDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeCasesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCommunicationsInput = schema.new({
    id = id.from(_N, "DescribeCommunicationsInput"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "DescribeCommunicationsInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforeTime = schema.new({
            id = id.from(_N, "DescribeCommunicationsInput", "beforeTime"),
            type = "string",
            name = "beforeTime",
            target_id = prelude.String.id,
        }),
        afterTime = schema.new({
            id = id.from(_N, "DescribeCommunicationsInput", "afterTime"),
            type = "string",
            name = "afterTime",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeCommunicationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeCommunicationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeCommunicationsOutput = schema.new({
    id = id.from(_N, "DescribeCommunicationsOutput"),
    type = "structure",
    members = {
        communications = schema.new({
            id = id.from(_N, "DescribeCommunicationsOutput", "communications"),
            type = "list",
            name = "communications",
            target_id = prelude.Document.id,
            list_member = M.Communication,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeCommunicationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCreateCaseOptionsInput = schema.new({
    id = id.from(_N, "DescribeCreateCaseOptionsInput"),
    type = "structure",
    members = {
        issueType = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsInput", "issueType"),
            type = "string",
            name = "issueType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsInput", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        language = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categoryCode = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsInput", "categoryCode"),
            type = "string",
            name = "categoryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DateInterval = schema.new({
    id = id.from(_N, "DateInterval"),
    type = "structure",
    members = {
        startDateTime = schema.new({
            id = id.from(_N, "DateInterval", "startDateTime"),
            type = "string",
            name = "startDateTime",
            target_id = prelude.String.id,
        }),
        endDateTime = schema.new({
            id = id.from(_N, "DateInterval", "endDateTime"),
            type = "string",
            name = "endDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.SupportedHour = schema.new({
    id = id.from(_N, "SupportedHour"),
    type = "structure",
    members = {
        startTime = schema.new({
            id = id.from(_N, "SupportedHour", "startTime"),
            type = "string",
            name = "startTime",
            target_id = prelude.String.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "SupportedHour", "endTime"),
            type = "string",
            name = "endTime",
            target_id = prelude.String.id,
        }),
    },
})

M.CommunicationTypeOptions = schema.new({
    id = id.from(_N, "CommunicationTypeOptions"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "CommunicationTypeOptions", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        supportedHours = schema.new({
            id = id.from(_N, "CommunicationTypeOptions", "supportedHours"),
            type = "list",
            name = "supportedHours",
            target_id = prelude.Document.id,
            list_member = M.SupportedHour,
        }),
        datesWithoutSupport = schema.new({
            id = id.from(_N, "CommunicationTypeOptions", "datesWithoutSupport"),
            type = "list",
            name = "datesWithoutSupport",
            target_id = prelude.Document.id,
            list_member = M.DateInterval,
        }),
    },
})

M.DescribeCreateCaseOptionsOutput = schema.new({
    id = id.from(_N, "DescribeCreateCaseOptionsOutput"),
    type = "structure",
    members = {
        languageAvailability = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsOutput", "languageAvailability"),
            type = "string",
            name = "languageAvailability",
            target_id = prelude.String.id,
        }),
        communicationTypes = schema.new({
            id = id.from(_N, "DescribeCreateCaseOptionsOutput", "communicationTypes"),
            type = "list",
            name = "communicationTypes",
            target_id = prelude.Document.id,
            list_member = M.CommunicationTypeOptions,
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
        }),
    },
})

M.DescribeServicesInput = schema.new({
    id = id.from(_N, "DescribeServicesInput"),
    type = "structure",
    members = {
        serviceCodeList = schema.new({
            id = id.from(_N, "DescribeServicesInput", "serviceCodeList"),
            type = "list",
            name = "serviceCodeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        language = schema.new({
            id = id.from(_N, "DescribeServicesInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
    },
})

M.Category = schema.new({
    id = id.from(_N, "Category"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "Category", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Category", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.Service = schema.new({
    id = id.from(_N, "Service"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "Service", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Service", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        categories = schema.new({
            id = id.from(_N, "Service", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
        }),
    },
})

M.DescribeServicesOutput = schema.new({
    id = id.from(_N, "DescribeServicesOutput"),
    type = "structure",
    members = {
        services = schema.new({
            id = id.from(_N, "DescribeServicesOutput", "services"),
            type = "list",
            name = "services",
            target_id = prelude.Document.id,
            list_member = M.Service,
        }),
    },
})

M.DescribeSeverityLevelsInput = schema.new({
    id = id.from(_N, "DescribeSeverityLevelsInput"),
    type = "structure",
    members = {
        language = schema.new({
            id = id.from(_N, "DescribeSeverityLevelsInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
    },
})

M.SeverityLevel = schema.new({
    id = id.from(_N, "SeverityLevel"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "SeverityLevel", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "SeverityLevel", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSeverityLevelsOutput = schema.new({
    id = id.from(_N, "DescribeSeverityLevelsOutput"),
    type = "structure",
    members = {
        severityLevels = schema.new({
            id = id.from(_N, "DescribeSeverityLevelsOutput", "severityLevels"),
            type = "list",
            name = "severityLevels",
            target_id = prelude.Document.id,
            list_member = M.SeverityLevel,
        }),
    },
})

M.DescribeSupportedLanguagesInput = schema.new({
    id = id.from(_N, "DescribeSupportedLanguagesInput"),
    type = "structure",
    members = {
        issueType = schema.new({
            id = id.from(_N, "DescribeSupportedLanguagesInput", "issueType"),
            type = "string",
            name = "issueType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceCode = schema.new({
            id = id.from(_N, "DescribeSupportedLanguagesInput", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categoryCode = schema.new({
            id = id.from(_N, "DescribeSupportedLanguagesInput", "categoryCode"),
            type = "string",
            name = "categoryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SupportedLanguage = schema.new({
    id = id.from(_N, "SupportedLanguage"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "SupportedLanguage", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        language = schema.new({
            id = id.from(_N, "SupportedLanguage", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
        display = schema.new({
            id = id.from(_N, "SupportedLanguage", "display"),
            type = "string",
            name = "display",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSupportedLanguagesOutput = schema.new({
    id = id.from(_N, "DescribeSupportedLanguagesOutput"),
    type = "structure",
    members = {
        supportedLanguages = schema.new({
            id = id.from(_N, "DescribeSupportedLanguagesOutput", "supportedLanguages"),
            type = "list",
            name = "supportedLanguages",
            target_id = prelude.Document.id,
            list_member = M.SupportedLanguage,
        }),
    },
})

M.DescribeTrustedAdvisorCheckRefreshStatusesInput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckRefreshStatusesInput"),
    type = "structure",
    members = {
        checkIds = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckRefreshStatusesInput", "checkIds"),
            type = "list",
            name = "checkIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrustedAdvisorCheckRefreshStatus = schema.new({
    id = id.from(_N, "TrustedAdvisorCheckRefreshStatus"),
    type = "structure",
    members = {
        checkId = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckRefreshStatus", "checkId"),
            type = "string",
            name = "checkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckRefreshStatus", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        millisUntilNextRefreshable = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckRefreshStatus", "millisUntilNextRefreshable"),
            type = "long",
            name = "millisUntilNextRefreshable",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeTrustedAdvisorCheckRefreshStatusesOutput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckRefreshStatusesOutput"),
    type = "structure",
    members = {
        statuses = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckRefreshStatusesOutput", "statuses"),
            type = "list",
            name = "statuses",
            target_id = prelude.Document.id,
            list_member = M.TrustedAdvisorCheckRefreshStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedAdvisorCheckResultInput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckResultInput"),
    type = "structure",
    members = {
        checkId = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckResultInput", "checkId"),
            type = "string",
            name = "checkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        language = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckResultInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustedAdvisorCostOptimizingSummary = schema.new({
    id = id.from(_N, "TrustedAdvisorCostOptimizingSummary"),
    type = "structure",
    members = {
        estimatedMonthlySavings = schema.new({
            id = id.from(_N, "TrustedAdvisorCostOptimizingSummary", "estimatedMonthlySavings"),
            type = "double",
            name = "estimatedMonthlySavings",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        estimatedPercentMonthlySavings = schema.new({
            id = id.from(_N, "TrustedAdvisorCostOptimizingSummary", "estimatedPercentMonthlySavings"),
            type = "double",
            name = "estimatedPercentMonthlySavings",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.TrustedAdvisorCategorySpecificSummary = schema.new({
    id = id.from(_N, "TrustedAdvisorCategorySpecificSummary"),
    type = "structure",
    members = {
        costOptimizing = schema.new({
            id = id.from(_N, "TrustedAdvisorCategorySpecificSummary", "costOptimizing"),
            type = "structure",
            name = "costOptimizing",
            target_id = id.from(_N, "TrustedAdvisorCostOptimizingSummary"),
            target = M.TrustedAdvisorCostOptimizingSummary,
        }),
    },
})

M.TrustedAdvisorResourceDetail = schema.new({
    id = id.from(_N, "TrustedAdvisorResourceDetail"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "TrustedAdvisorResourceDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        region = schema.new({
            id = id.from(_N, "TrustedAdvisorResourceDetail", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        resourceId = schema.new({
            id = id.from(_N, "TrustedAdvisorResourceDetail", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isSuppressed = schema.new({
            id = id.from(_N, "TrustedAdvisorResourceDetail", "isSuppressed"),
            type = "boolean",
            name = "isSuppressed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "TrustedAdvisorResourceDetail", "metadata"),
            type = "list",
            name = "metadata",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrustedAdvisorResourcesSummary = schema.new({
    id = id.from(_N, "TrustedAdvisorResourcesSummary"),
    type = "structure",
    members = {
        resourcesProcessed = schema.new({
            id = id.from(_N, "TrustedAdvisorResourcesSummary", "resourcesProcessed"),
            type = "long",
            name = "resourcesProcessed",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resourcesFlagged = schema.new({
            id = id.from(_N, "TrustedAdvisorResourcesSummary", "resourcesFlagged"),
            type = "long",
            name = "resourcesFlagged",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resourcesIgnored = schema.new({
            id = id.from(_N, "TrustedAdvisorResourcesSummary", "resourcesIgnored"),
            type = "long",
            name = "resourcesIgnored",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        resourcesSuppressed = schema.new({
            id = id.from(_N, "TrustedAdvisorResourcesSummary", "resourcesSuppressed"),
            type = "long",
            name = "resourcesSuppressed",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.TrustedAdvisorCheckResult = schema.new({
    id = id.from(_N, "TrustedAdvisorCheckResult"),
    type = "structure",
    members = {
        checkId = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "checkId"),
            type = "string",
            name = "checkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "timestamp"),
            type = "string",
            name = "timestamp",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourcesSummary = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "resourcesSummary"),
            type = "structure",
            name = "resourcesSummary",
            target_id = id.from(_N, "TrustedAdvisorResourcesSummary"),
            target = M.TrustedAdvisorResourcesSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categorySpecificSummary = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "categorySpecificSummary"),
            type = "structure",
            name = "categorySpecificSummary",
            target_id = id.from(_N, "TrustedAdvisorCategorySpecificSummary"),
            target = M.TrustedAdvisorCategorySpecificSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        flaggedResources = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckResult", "flaggedResources"),
            type = "list",
            name = "flaggedResources",
            target_id = prelude.Document.id,
            list_member = M.TrustedAdvisorResourceDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedAdvisorCheckResultOutput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckResultOutput"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckResultOutput", "result"),
            type = "structure",
            name = "result",
            target_id = id.from(_N, "TrustedAdvisorCheckResult"),
            target = M.TrustedAdvisorCheckResult,
        }),
    },
})

M.DescribeTrustedAdvisorChecksInput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorChecksInput"),
    type = "structure",
    members = {
        language = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorChecksInput", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrustedAdvisorCheckDescription = schema.new({
    id = id.from(_N, "TrustedAdvisorCheckDescription"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckDescription", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckDescription", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckDescription", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        category = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckDescription", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckDescription", "metadata"),
            type = "list",
            name = "metadata",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedAdvisorChecksOutput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorChecksOutput"),
    type = "structure",
    members = {
        checks = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorChecksOutput", "checks"),
            type = "list",
            name = "checks",
            target_id = prelude.Document.id,
            list_member = M.TrustedAdvisorCheckDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedAdvisorCheckSummariesInput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckSummariesInput"),
    type = "structure",
    members = {
        checkIds = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckSummariesInput", "checkIds"),
            type = "list",
            name = "checkIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrustedAdvisorCheckSummary = schema.new({
    id = id.from(_N, "TrustedAdvisorCheckSummary"),
    type = "structure",
    members = {
        checkId = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "checkId"),
            type = "string",
            name = "checkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "timestamp"),
            type = "string",
            name = "timestamp",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hasFlaggedResources = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "hasFlaggedResources"),
            type = "boolean",
            name = "hasFlaggedResources",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        resourcesSummary = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "resourcesSummary"),
            type = "structure",
            name = "resourcesSummary",
            target_id = id.from(_N, "TrustedAdvisorResourcesSummary"),
            target = M.TrustedAdvisorResourcesSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categorySpecificSummary = schema.new({
            id = id.from(_N, "TrustedAdvisorCheckSummary", "categorySpecificSummary"),
            type = "structure",
            name = "categorySpecificSummary",
            target_id = id.from(_N, "TrustedAdvisorCategorySpecificSummary"),
            target = M.TrustedAdvisorCategorySpecificSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTrustedAdvisorCheckSummariesOutput = schema.new({
    id = id.from(_N, "DescribeTrustedAdvisorCheckSummariesOutput"),
    type = "structure",
    members = {
        summaries = schema.new({
            id = id.from(_N, "DescribeTrustedAdvisorCheckSummariesOutput", "summaries"),
            type = "list",
            name = "summaries",
            target_id = prelude.Document.id,
            list_member = M.TrustedAdvisorCheckSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RefreshTrustedAdvisorCheckInput = schema.new({
    id = id.from(_N, "RefreshTrustedAdvisorCheckInput"),
    type = "structure",
    members = {
        checkId = schema.new({
            id = id.from(_N, "RefreshTrustedAdvisorCheckInput", "checkId"),
            type = "string",
            name = "checkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RefreshTrustedAdvisorCheckOutput = schema.new({
    id = id.from(_N, "RefreshTrustedAdvisorCheckOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "RefreshTrustedAdvisorCheckOutput", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "TrustedAdvisorCheckRefreshStatus"),
            target = M.TrustedAdvisorCheckRefreshStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResolveCaseInput = schema.new({
    id = id.from(_N, "ResolveCaseInput"),
    type = "structure",
    members = {
        caseId = schema.new({
            id = id.from(_N, "ResolveCaseInput", "caseId"),
            type = "string",
            name = "caseId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResolveCaseOutput = schema.new({
    id = id.from(_N, "ResolveCaseOutput"),
    type = "structure",
    members = {
        initialCaseStatus = schema.new({
            id = id.from(_N, "ResolveCaseOutput", "initialCaseStatus"),
            type = "string",
            name = "initialCaseStatus",
            target_id = prelude.String.id,
        }),
        finalCaseStatus = schema.new({
            id = id.from(_N, "ResolveCaseOutput", "finalCaseStatus"),
            type = "string",
            name = "finalCaseStatus",
            target_id = prelude.String.id,
        }),
    },
})

return M
