local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.artifact"

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

M.AccountSettings = schema.new({
    id = id.from(_N, "AccountSettings"),
    type = "structure",
    members = {
        notificationSubscriptionStatus = schema.new({
            id = id.from(_N, "AccountSettings", "notificationSubscriptionStatus"),
            type = "string",
            name = "notificationSubscriptionStatus",
            target_id = prelude.String.id,
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

M.GetAccountSettingsInput = schema.new({
    id = id.from(_N, "GetAccountSettingsInput"),
    type = "structure",
})

M.GetAccountSettingsOutput = schema.new({
    id = id.from(_N, "GetAccountSettingsOutput"),
    type = "structure",
    members = {
        accountSettings = schema.new({
            id = id.from(_N, "GetAccountSettingsOutput", "accountSettings"),
            type = "structure",
            name = "accountSettings",
            target_id = id.from(_N, "AccountSettings"),
            target = M.AccountSettings,
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

M.PutAccountSettingsInput = schema.new({
    id = id.from(_N, "PutAccountSettingsInput"),
    type = "structure",
    members = {
        notificationSubscriptionStatus = schema.new({
            id = id.from(_N, "PutAccountSettingsInput", "notificationSubscriptionStatus"),
            type = "string",
            name = "notificationSubscriptionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAccountSettingsOutput = schema.new({
    id = id.from(_N, "PutAccountSettingsOutput"),
    type = "structure",
    members = {
        accountSettings = schema.new({
            id = id.from(_N, "PutAccountSettingsOutput", "accountSettings"),
            type = "structure",
            name = "accountSettings",
            target_id = id.from(_N, "AccountSettings"),
            target = M.AccountSettings,
        }),
    },
})

M.ListCustomerAgreementsInput = schema.new({
    id = id.from(_N, "ListCustomerAgreementsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListCustomerAgreementsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCustomerAgreementsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.CustomerAgreementSummary = schema.new({
    id = id.from(_N, "CustomerAgreementSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        agreementArn = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "agreementArn"),
            type = "string",
            name = "agreementArn",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        organizationArn = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "organizationArn"),
            type = "string",
            name = "organizationArn",
            target_id = prelude.String.id,
        }),
        effectiveStart = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "effectiveStart"),
            type = "timestamp",
            name = "effectiveStart",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        effectiveEnd = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "effectiveEnd"),
            type = "timestamp",
            name = "effectiveEnd",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        state = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        acceptanceTerms = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "acceptanceTerms"),
            type = "list",
            name = "acceptanceTerms",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        terminateTerms = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "terminateTerms"),
            type = "list",
            name = "terminateTerms",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        type = schema.new({
            id = id.from(_N, "CustomerAgreementSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCustomerAgreementsOutput = schema.new({
    id = id.from(_N, "ListCustomerAgreementsOutput"),
    type = "structure",
    members = {
        customerAgreements = schema.new({
            id = id.from(_N, "ListCustomerAgreementsOutput", "customerAgreements"),
            type = "list",
            name = "customerAgreements",
            target_id = prelude.Document.id,
            list_member = M.CustomerAgreementSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCustomerAgreementsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReportInput = schema.new({
    id = id.from(_N, "GetReportInput"),
    type = "structure",
    members = {
        reportId = schema.new({
            id = id.from(_N, "GetReportInput", "reportId"),
            type = "string",
            name = "reportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "reportId" },
            },
        }),
        reportVersion = schema.new({
            id = id.from(_N, "GetReportInput", "reportVersion"),
            type = "long",
            name = "reportVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "reportVersion" },
            },
        }),
        termToken = schema.new({
            id = id.from(_N, "GetReportInput", "termToken"),
            type = "string",
            name = "termToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "termToken" },
            },
        }),
    },
})

M.GetReportOutput = schema.new({
    id = id.from(_N, "GetReportOutput"),
    type = "structure",
    members = {
        documentPresignedUrl = schema.new({
            id = id.from(_N, "GetReportOutput", "documentPresignedUrl"),
            type = "string",
            name = "documentPresignedUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReportMetadataInput = schema.new({
    id = id.from(_N, "GetReportMetadataInput"),
    type = "structure",
    members = {
        reportId = schema.new({
            id = id.from(_N, "GetReportMetadataInput", "reportId"),
            type = "string",
            name = "reportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "reportId" },
            },
        }),
        reportVersion = schema.new({
            id = id.from(_N, "GetReportMetadataInput", "reportVersion"),
            type = "long",
            name = "reportVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "reportVersion" },
            },
        }),
    },
})

M.ReportDetail = schema.new({
    id = id.from(_N, "ReportDetail"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ReportDetail", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ReportDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ReportDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        periodStart = schema.new({
            id = id.from(_N, "ReportDetail", "periodStart"),
            type = "timestamp",
            name = "periodStart",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        periodEnd = schema.new({
            id = id.from(_N, "ReportDetail", "periodEnd"),
            type = "timestamp",
            name = "periodEnd",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "ReportDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastModifiedAt = schema.new({
            id = id.from(_N, "ReportDetail", "lastModifiedAt"),
            type = "timestamp",
            name = "lastModifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        deletedAt = schema.new({
            id = id.from(_N, "ReportDetail", "deletedAt"),
            type = "timestamp",
            name = "deletedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        state = schema.new({
            id = id.from(_N, "ReportDetail", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ReportDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        series = schema.new({
            id = id.from(_N, "ReportDetail", "series"),
            type = "string",
            name = "series",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "ReportDetail", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        companyName = schema.new({
            id = id.from(_N, "ReportDetail", "companyName"),
            type = "string",
            name = "companyName",
            target_id = prelude.String.id,
        }),
        productName = schema.new({
            id = id.from(_N, "ReportDetail", "productName"),
            type = "string",
            name = "productName",
            target_id = prelude.String.id,
        }),
        termArn = schema.new({
            id = id.from(_N, "ReportDetail", "termArn"),
            type = "string",
            name = "termArn",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "ReportDetail", "version"),
            type = "long",
            name = "version",
            target_id = prelude.Long.id,
        }),
        acceptanceType = schema.new({
            id = id.from(_N, "ReportDetail", "acceptanceType"),
            type = "string",
            name = "acceptanceType",
            target_id = prelude.String.id,
        }),
        sequenceNumber = schema.new({
            id = id.from(_N, "ReportDetail", "sequenceNumber"),
            type = "long",
            name = "sequenceNumber",
            target_id = prelude.Long.id,
        }),
        uploadState = schema.new({
            id = id.from(_N, "ReportDetail", "uploadState"),
            type = "string",
            name = "uploadState",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ReportDetail", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReportMetadataOutput = schema.new({
    id = id.from(_N, "GetReportMetadataOutput"),
    type = "structure",
    members = {
        reportDetails = schema.new({
            id = id.from(_N, "GetReportMetadataOutput", "reportDetails"),
            type = "structure",
            name = "reportDetails",
            target_id = id.from(_N, "ReportDetail"),
            target = M.ReportDetail,
        }),
    },
})

M.GetTermForReportInput = schema.new({
    id = id.from(_N, "GetTermForReportInput"),
    type = "structure",
    members = {
        reportId = schema.new({
            id = id.from(_N, "GetTermForReportInput", "reportId"),
            type = "string",
            name = "reportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "reportId" },
            },
        }),
        reportVersion = schema.new({
            id = id.from(_N, "GetTermForReportInput", "reportVersion"),
            type = "long",
            name = "reportVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "reportVersion" },
            },
        }),
    },
})

M.GetTermForReportOutput = schema.new({
    id = id.from(_N, "GetTermForReportOutput"),
    type = "structure",
    members = {
        documentPresignedUrl = schema.new({
            id = id.from(_N, "GetTermForReportOutput", "documentPresignedUrl"),
            type = "string",
            name = "documentPresignedUrl",
            target_id = prelude.String.id,
        }),
        termToken = schema.new({
            id = id.from(_N, "GetTermForReportOutput", "termToken"),
            type = "string",
            name = "termToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReportsInput = schema.new({
    id = id.from(_N, "ListReportsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListReportsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ReportSummary = schema.new({
    id = id.from(_N, "ReportSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ReportSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ReportSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "ReportSummary", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ReportSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "ReportSummary", "version"),
            type = "long",
            name = "version",
            target_id = prelude.Long.id,
        }),
        uploadState = schema.new({
            id = id.from(_N, "ReportSummary", "uploadState"),
            type = "string",
            name = "uploadState",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ReportSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        periodStart = schema.new({
            id = id.from(_N, "ReportSummary", "periodStart"),
            type = "timestamp",
            name = "periodStart",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        periodEnd = schema.new({
            id = id.from(_N, "ReportSummary", "periodEnd"),
            type = "timestamp",
            name = "periodEnd",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        series = schema.new({
            id = id.from(_N, "ReportSummary", "series"),
            type = "string",
            name = "series",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "ReportSummary", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        companyName = schema.new({
            id = id.from(_N, "ReportSummary", "companyName"),
            type = "string",
            name = "companyName",
            target_id = prelude.String.id,
        }),
        productName = schema.new({
            id = id.from(_N, "ReportSummary", "productName"),
            type = "string",
            name = "productName",
            target_id = prelude.String.id,
        }),
        statusMessage = schema.new({
            id = id.from(_N, "ReportSummary", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        acceptanceType = schema.new({
            id = id.from(_N, "ReportSummary", "acceptanceType"),
            type = "string",
            name = "acceptanceType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReportsOutput = schema.new({
    id = id.from(_N, "ListReportsOutput"),
    type = "structure",
    members = {
        reports = schema.new({
            id = id.from(_N, "ListReportsOutput", "reports"),
            type = "list",
            name = "reports",
            target_id = prelude.Document.id,
            list_member = M.ReportSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListReportVersionsInput = schema.new({
    id = id.from(_N, "ListReportVersionsInput"),
    type = "structure",
    members = {
        reportId = schema.new({
            id = id.from(_N, "ListReportVersionsInput", "reportId"),
            type = "string",
            name = "reportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "reportId" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListReportVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListReportVersionsOutput = schema.new({
    id = id.from(_N, "ListReportVersionsOutput"),
    type = "structure",
    members = {
        reports = schema.new({
            id = id.from(_N, "ListReportVersionsOutput", "reports"),
            type = "list",
            name = "reports",
            target_id = prelude.Document.id,
            list_member = M.ReportSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListReportVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

return M
