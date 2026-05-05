local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.accessanalyzer"

local M = {}

M.Access = schema.new({
    id = id.from(_N, "Access"),
    type = "structure",
    members = {
        actions = schema.new({
            id = id.from(_N, "Access", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
        resources = schema.new({
            id = id.from(_N, "Access", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
    },
})

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

M.Criterion = schema.new({
    id = id.from(_N, "Criterion"),
    type = "structure",
    members = {
        eq = schema.new({
            id = id.from(_N, "Criterion", "eq"),
            type = "list",
            name = "eq",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        neq = schema.new({
            id = id.from(_N, "Criterion", "neq"),
            type = "list",
            name = "neq",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        contains = schema.new({
            id = id.from(_N, "Criterion", "contains"),
            type = "list",
            name = "contains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        exists = schema.new({
            id = id.from(_N, "Criterion", "exists"),
            type = "boolean",
            name = "exists",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateArchiveRuleInput = schema.new({
    id = id.from(_N, "CreateArchiveRuleRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "CreateArchiveRuleInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleName = schema.new({
            id = id.from(_N, "CreateArchiveRuleInput", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "CreateArchiveRuleInput", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateArchiveRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateArchiveRuleOutput = schema.new({
    id = id.from(_N, "Unit"),
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

M.DeleteArchiveRuleInput = schema.new({
    id = id.from(_N, "DeleteArchiveRuleRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "DeleteArchiveRuleInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleName = schema.new({
            id = id.from(_N, "DeleteArchiveRuleInput", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteArchiveRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteArchiveRuleOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetArchiveRuleInput = schema.new({
    id = id.from(_N, "GetArchiveRuleRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "GetArchiveRuleInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleName = schema.new({
            id = id.from(_N, "GetArchiveRuleInput", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ArchiveRuleSummary = schema.new({
    id = id.from(_N, "ArchiveRuleSummary"),
    type = "structure",
    members = {
        ruleName = schema.new({
            id = id.from(_N, "ArchiveRuleSummary", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ArchiveRuleSummary", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "ArchiveRuleSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ArchiveRuleSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetArchiveRuleOutput = schema.new({
    id = id.from(_N, "GetArchiveRuleResponse"),
    type = "structure",
    members = {
        archiveRule = schema.new({
            id = id.from(_N, "GetArchiveRuleOutput", "archiveRule"),
            type = "structure",
            name = "archiveRule",
            target_id = id.from(_N, "ArchiveRuleSummary"),
            target = M.ArchiveRuleSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListArchiveRulesInput = schema.new({
    id = id.from(_N, "ListArchiveRulesRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "ListArchiveRulesInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArchiveRulesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListArchiveRulesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListArchiveRulesOutput = schema.new({
    id = id.from(_N, "ListArchiveRulesResponse"),
    type = "structure",
    members = {
        archiveRules = schema.new({
            id = id.from(_N, "ListArchiveRulesOutput", "archiveRules"),
            type = "list",
            name = "archiveRules",
            target_id = prelude.Document.id,
            list_member = M.ArchiveRuleSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArchiveRulesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateArchiveRuleInput = schema.new({
    id = id.from(_N, "UpdateArchiveRuleRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "UpdateArchiveRuleInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleName = schema.new({
            id = id.from(_N, "UpdateArchiveRuleInput", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "UpdateArchiveRuleInput", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateArchiveRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateArchiveRuleOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.InlineArchiveRule = schema.new({
    id = id.from(_N, "InlineArchiveRule"),
    type = "structure",
    members = {
        ruleName = schema.new({
            id = id.from(_N, "InlineArchiveRule", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "InlineArchiveRule", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalAccessAnalysisRuleCriteria = schema.new({
    id = id.from(_N, "InternalAccessAnalysisRuleCriteria"),
    type = "structure",
    members = {
        accountIds = schema.new({
            id = id.from(_N, "InternalAccessAnalysisRuleCriteria", "accountIds"),
            type = "list",
            name = "accountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTypes = schema.new({
            id = id.from(_N, "InternalAccessAnalysisRuleCriteria", "resourceTypes"),
            type = "list",
            name = "resourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceArns = schema.new({
            id = id.from(_N, "InternalAccessAnalysisRuleCriteria", "resourceArns"),
            type = "list",
            name = "resourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InternalAccessAnalysisRule = schema.new({
    id = id.from(_N, "InternalAccessAnalysisRule"),
    type = "structure",
    members = {
        inclusions = schema.new({
            id = id.from(_N, "InternalAccessAnalysisRule", "inclusions"),
            type = "list",
            name = "inclusions",
            target_id = prelude.Document.id,
            list_member = M.InternalAccessAnalysisRuleCriteria,
        }),
    },
})

M.InternalAccessConfiguration = schema.new({
    id = id.from(_N, "InternalAccessConfiguration"),
    type = "structure",
    members = {
        analysisRule = schema.new({
            id = id.from(_N, "InternalAccessConfiguration", "analysisRule"),
            type = "structure",
            name = "analysisRule",
            target_id = id.from(_N, "InternalAccessAnalysisRule"),
            target = M.InternalAccessAnalysisRule,
        }),
    },
})

M.AnalysisRuleCriteria = schema.new({
    id = id.from(_N, "AnalysisRuleCriteria"),
    type = "structure",
    members = {
        accountIds = schema.new({
            id = id.from(_N, "AnalysisRuleCriteria", "accountIds"),
            type = "list",
            name = "accountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceTags = schema.new({
            id = id.from(_N, "AnalysisRuleCriteria", "resourceTags"),
            type = "list",
            name = "resourceTags",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
    },
})

M.AnalysisRule = schema.new({
    id = id.from(_N, "AnalysisRule"),
    type = "structure",
    members = {
        exclusions = schema.new({
            id = id.from(_N, "AnalysisRule", "exclusions"),
            type = "list",
            name = "exclusions",
            target_id = prelude.Document.id,
            list_member = M.AnalysisRuleCriteria,
        }),
    },
})

M.UnusedAccessConfiguration = schema.new({
    id = id.from(_N, "UnusedAccessConfiguration"),
    type = "structure",
    members = {
        unusedAccessAge = schema.new({
            id = id.from(_N, "UnusedAccessConfiguration", "unusedAccessAge"),
            type = "integer",
            name = "unusedAccessAge",
            target_id = prelude.Integer.id,
        }),
        analysisRule = schema.new({
            id = id.from(_N, "UnusedAccessConfiguration", "analysisRule"),
            type = "structure",
            name = "analysisRule",
            target_id = id.from(_N, "AnalysisRule"),
            target = M.AnalysisRule,
        }),
    },
})

M.AnalyzerConfiguration = schema.new({
    id = id.from(_N, "AnalyzerConfiguration"),
    type = "union",
    members = {
        unusedAccess = schema.new({
            id = id.from(_N, "AnalyzerConfiguration", "unusedAccess"),
            type = "structure",
            name = "unusedAccess",
            target_id = id.from(_N, "UnusedAccessConfiguration"),
            target = M.UnusedAccessConfiguration,
        }),
        internalAccess = schema.new({
            id = id.from(_N, "AnalyzerConfiguration", "internalAccess"),
            type = "structure",
            name = "internalAccess",
            target_id = id.from(_N, "InternalAccessConfiguration"),
            target = M.InternalAccessConfiguration,
        }),
    },
})

M.CreateAnalyzerInput = schema.new({
    id = id.from(_N, "CreateAnalyzerRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        archiveRules = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "archiveRules"),
            type = "list",
            name = "archiveRules",
            target_id = prelude.Document.id,
            list_member = M.InlineArchiveRule,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateAnalyzerInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "AnalyzerConfiguration"),
            target = M.AnalyzerConfiguration,
        }),
    },
})

M.CreateAnalyzerOutput = schema.new({
    id = id.from(_N, "CreateAnalyzerResponse"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateAnalyzerOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteAnalyzerInput = schema.new({
    id = id.from(_N, "DeleteAnalyzerRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "DeleteAnalyzerInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAnalyzerInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAnalyzerOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetAnalyzerInput = schema.new({
    id = id.from(_N, "GetAnalyzerRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "GetAnalyzerInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StatusReason = schema.new({
    id = id.from(_N, "StatusReason"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "StatusReason", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AnalyzerSummary = schema.new({
    id = id.from(_N, "AnalyzerSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AnalyzerSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AnalyzerSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "AnalyzerSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AnalyzerSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastResourceAnalyzed = schema.new({
            id = id.from(_N, "AnalyzerSummary", "lastResourceAnalyzed"),
            type = "string",
            name = "lastResourceAnalyzed",
            target_id = prelude.String.id,
        }),
        lastResourceAnalyzedAt = schema.new({
            id = id.from(_N, "AnalyzerSummary", "lastResourceAnalyzedAt"),
            type = "timestamp",
            name = "lastResourceAnalyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "AnalyzerSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "AnalyzerSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "AnalyzerSummary", "statusReason"),
            type = "structure",
            name = "statusReason",
            target_id = id.from(_N, "StatusReason"),
            target = M.StatusReason,
        }),
        configuration = schema.new({
            id = id.from(_N, "AnalyzerSummary", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "AnalyzerConfiguration"),
            target = M.AnalyzerConfiguration,
        }),
    },
})

M.GetAnalyzerOutput = schema.new({
    id = id.from(_N, "GetAnalyzerResponse"),
    type = "structure",
    members = {
        analyzer = schema.new({
            id = id.from(_N, "GetAnalyzerOutput", "analyzer"),
            type = "structure",
            name = "analyzer",
            target_id = id.from(_N, "AnalyzerSummary"),
            target = M.AnalyzerSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnalyzersInput = schema.new({
    id = id.from(_N, "ListAnalyzersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAnalyzersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListAnalyzersInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.ListAnalyzersOutput = schema.new({
    id = id.from(_N, "ListAnalyzersResponse"),
    type = "structure",
    members = {
        analyzers = schema.new({
            id = id.from(_N, "ListAnalyzersOutput", "analyzers"),
            type = "list",
            name = "analyzers",
            target_id = prelude.Document.id,
            list_member = M.AnalyzerSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAnalyzerInput = schema.new({
    id = id.from(_N, "UpdateAnalyzerRequest"),
    type = "structure",
    members = {
        analyzerName = schema.new({
            id = id.from(_N, "UpdateAnalyzerInput", "analyzerName"),
            type = "string",
            name = "analyzerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateAnalyzerInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "AnalyzerConfiguration"),
            target = M.AnalyzerConfiguration,
        }),
    },
})

M.UpdateAnalyzerOutput = schema.new({
    id = id.from(_N, "UpdateAnalyzerResponse"),
    type = "structure",
    members = {
        configuration = schema.new({
            id = id.from(_N, "UpdateAnalyzerOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "AnalyzerConfiguration"),
            target = M.AnalyzerConfiguration,
        }),
    },
})

M.ApplyArchiveRuleInput = schema.new({
    id = id.from(_N, "ApplyArchiveRuleRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "ApplyArchiveRuleInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ruleName = schema.new({
            id = id.from(_N, "ApplyArchiveRuleInput", "ruleName"),
            type = "string",
            name = "ruleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "ApplyArchiveRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ApplyArchiveRuleOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.CancelPolicyGenerationInput = schema.new({
    id = id.from(_N, "CancelPolicyGenerationRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "CancelPolicyGenerationInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelPolicyGenerationOutput = schema.new({
    id = id.from(_N, "CancelPolicyGenerationResponse"),
    type = "structure",
})

M.CheckAccessNotGrantedInput = schema.new({
    id = id.from(_N, "CheckAccessNotGrantedRequest"),
    type = "structure",
    members = {
        policyDocument = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedInput", "policyDocument"),
            type = "string",
            name = "policyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        access = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedInput", "access"),
            type = "list",
            name = "access",
            target_id = prelude.Document.id,
            list_member = M.Access,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedInput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReasonSummary = schema.new({
    id = id.from(_N, "ReasonSummary"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "ReasonSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statementIndex = schema.new({
            id = id.from(_N, "ReasonSummary", "statementIndex"),
            type = "integer",
            name = "statementIndex",
            target_id = prelude.Integer.id,
        }),
        statementId = schema.new({
            id = id.from(_N, "ReasonSummary", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
        }),
    },
})

M.CheckAccessNotGrantedOutput = schema.new({
    id = id.from(_N, "CheckAccessNotGrantedResponse"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedOutput", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reasons = schema.new({
            id = id.from(_N, "CheckAccessNotGrantedOutput", "reasons"),
            type = "list",
            name = "reasons",
            target_id = prelude.Document.id,
            list_member = M.ReasonSummary,
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnprocessableEntityException = schema.new({
    id = id.from(_N, "UnprocessableEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnprocessableEntityException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CheckNoNewAccessInput = schema.new({
    id = id.from(_N, "CheckNoNewAccessRequest"),
    type = "structure",
    members = {
        newPolicyDocument = schema.new({
            id = id.from(_N, "CheckNoNewAccessInput", "newPolicyDocument"),
            type = "string",
            name = "newPolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        existingPolicyDocument = schema.new({
            id = id.from(_N, "CheckNoNewAccessInput", "existingPolicyDocument"),
            type = "string",
            name = "existingPolicyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "CheckNoNewAccessInput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CheckNoNewAccessOutput = schema.new({
    id = id.from(_N, "CheckNoNewAccessResponse"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "CheckNoNewAccessOutput", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "CheckNoNewAccessOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reasons = schema.new({
            id = id.from(_N, "CheckNoNewAccessOutput", "reasons"),
            type = "list",
            name = "reasons",
            target_id = prelude.Document.id,
            list_member = M.ReasonSummary,
        }),
    },
})

M.CheckNoPublicAccessInput = schema.new({
    id = id.from(_N, "CheckNoPublicAccessRequest"),
    type = "structure",
    members = {
        policyDocument = schema.new({
            id = id.from(_N, "CheckNoPublicAccessInput", "policyDocument"),
            type = "string",
            name = "policyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "CheckNoPublicAccessInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CheckNoPublicAccessOutput = schema.new({
    id = id.from(_N, "CheckNoPublicAccessResponse"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "CheckNoPublicAccessOutput", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "CheckNoPublicAccessOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        reasons = schema.new({
            id = id.from(_N, "CheckNoPublicAccessOutput", "reasons"),
            type = "list",
            name = "reasons",
            target_id = prelude.Document.id,
            list_member = M.ReasonSummary,
        }),
    },
})

M.DynamodbStreamConfiguration = schema.new({
    id = id.from(_N, "DynamodbStreamConfiguration"),
    type = "structure",
    members = {
        streamPolicy = schema.new({
            id = id.from(_N, "DynamodbStreamConfiguration", "streamPolicy"),
            type = "string",
            name = "streamPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.DynamodbTableConfiguration = schema.new({
    id = id.from(_N, "DynamodbTableConfiguration"),
    type = "structure",
    members = {
        tablePolicy = schema.new({
            id = id.from(_N, "DynamodbTableConfiguration", "tablePolicy"),
            type = "string",
            name = "tablePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.EbsSnapshotConfiguration = schema.new({
    id = id.from(_N, "EbsSnapshotConfiguration"),
    type = "structure",
    members = {
        userIds = schema.new({
            id = id.from(_N, "EbsSnapshotConfiguration", "userIds"),
            type = "list",
            name = "userIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        groups = schema.new({
            id = id.from(_N, "EbsSnapshotConfiguration", "groups"),
            type = "list",
            name = "groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "EbsSnapshotConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.EcrRepositoryConfiguration = schema.new({
    id = id.from(_N, "EcrRepositoryConfiguration"),
    type = "structure",
    members = {
        repositoryPolicy = schema.new({
            id = id.from(_N, "EcrRepositoryConfiguration", "repositoryPolicy"),
            type = "string",
            name = "repositoryPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.EfsFileSystemConfiguration = schema.new({
    id = id.from(_N, "EfsFileSystemConfiguration"),
    type = "structure",
    members = {
        fileSystemPolicy = schema.new({
            id = id.from(_N, "EfsFileSystemConfiguration", "fileSystemPolicy"),
            type = "string",
            name = "fileSystemPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.IamRoleConfiguration = schema.new({
    id = id.from(_N, "IamRoleConfiguration"),
    type = "structure",
    members = {
        trustPolicy = schema.new({
            id = id.from(_N, "IamRoleConfiguration", "trustPolicy"),
            type = "string",
            name = "trustPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.KmsGrantConstraints = schema.new({
    id = id.from(_N, "KmsGrantConstraints"),
    type = "structure",
    members = {
        encryptionContextEquals = schema.new({
            id = id.from(_N, "KmsGrantConstraints", "encryptionContextEquals"),
            type = "map",
            name = "encryptionContextEquals",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        encryptionContextSubset = schema.new({
            id = id.from(_N, "KmsGrantConstraints", "encryptionContextSubset"),
            type = "map",
            name = "encryptionContextSubset",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.KmsGrantConfiguration = schema.new({
    id = id.from(_N, "KmsGrantConfiguration"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "KmsGrantConfiguration", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        granteePrincipal = schema.new({
            id = id.from(_N, "KmsGrantConfiguration", "granteePrincipal"),
            type = "string",
            name = "granteePrincipal",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        retiringPrincipal = schema.new({
            id = id.from(_N, "KmsGrantConfiguration", "retiringPrincipal"),
            type = "string",
            name = "retiringPrincipal",
            target_id = prelude.String.id,
        }),
        constraints = schema.new({
            id = id.from(_N, "KmsGrantConfiguration", "constraints"),
            type = "structure",
            name = "constraints",
            target_id = id.from(_N, "KmsGrantConstraints"),
            target = M.KmsGrantConstraints,
        }),
        issuingAccount = schema.new({
            id = id.from(_N, "KmsGrantConfiguration", "issuingAccount"),
            type = "string",
            name = "issuingAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KmsKeyConfiguration = schema.new({
    id = id.from(_N, "KmsKeyConfiguration"),
    type = "structure",
    members = {
        keyPolicies = schema.new({
            id = id.from(_N, "KmsKeyConfiguration", "keyPolicies"),
            type = "map",
            name = "keyPolicies",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        grants = schema.new({
            id = id.from(_N, "KmsKeyConfiguration", "grants"),
            type = "list",
            name = "grants",
            target_id = prelude.Document.id,
            list_member = M.KmsGrantConfiguration,
        }),
    },
})

M.RdsDbClusterSnapshotAttributeValue = schema.new({
    id = id.from(_N, "RdsDbClusterSnapshotAttributeValue"),
    type = "union",
    members = {
        accountIds = schema.new({
            id = id.from(_N, "RdsDbClusterSnapshotAttributeValue", "accountIds"),
            type = "list",
            name = "accountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RdsDbClusterSnapshotConfiguration = schema.new({
    id = id.from(_N, "RdsDbClusterSnapshotConfiguration"),
    type = "structure",
    members = {
        attributes = schema.new({
            id = id.from(_N, "RdsDbClusterSnapshotConfiguration", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.RdsDbClusterSnapshotAttributeValue,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "RdsDbClusterSnapshotConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.RdsDbSnapshotAttributeValue = schema.new({
    id = id.from(_N, "RdsDbSnapshotAttributeValue"),
    type = "union",
    members = {
        accountIds = schema.new({
            id = id.from(_N, "RdsDbSnapshotAttributeValue", "accountIds"),
            type = "list",
            name = "accountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RdsDbSnapshotConfiguration = schema.new({
    id = id.from(_N, "RdsDbSnapshotConfiguration"),
    type = "structure",
    members = {
        attributes = schema.new({
            id = id.from(_N, "RdsDbSnapshotConfiguration", "attributes"),
            type = "map",
            name = "attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.RdsDbSnapshotAttributeValue,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "RdsDbSnapshotConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.InternetConfiguration = schema.new({
    id = id.from(_N, "InternetConfiguration"),
    type = "structure",
})

M.VpcConfiguration = schema.new({
    id = id.from(_N, "VpcConfiguration"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "VpcConfiguration", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkOriginConfiguration = schema.new({
    id = id.from(_N, "NetworkOriginConfiguration"),
    type = "union",
    members = {
        vpcConfiguration = schema.new({
            id = id.from(_N, "NetworkOriginConfiguration", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
        internetConfiguration = schema.new({
            id = id.from(_N, "NetworkOriginConfiguration", "internetConfiguration"),
            type = "structure",
            name = "internetConfiguration",
            target_id = id.from(_N, "InternetConfiguration"),
            target = M.InternetConfiguration,
        }),
    },
})

M.S3PublicAccessBlockConfiguration = schema.new({
    id = id.from(_N, "S3PublicAccessBlockConfiguration"),
    type = "structure",
    members = {
        ignorePublicAcls = schema.new({
            id = id.from(_N, "S3PublicAccessBlockConfiguration", "ignorePublicAcls"),
            type = "boolean",
            name = "ignorePublicAcls",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        restrictPublicBuckets = schema.new({
            id = id.from(_N, "S3PublicAccessBlockConfiguration", "restrictPublicBuckets"),
            type = "boolean",
            name = "restrictPublicBuckets",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3AccessPointConfiguration = schema.new({
    id = id.from(_N, "S3AccessPointConfiguration"),
    type = "structure",
    members = {
        accessPointPolicy = schema.new({
            id = id.from(_N, "S3AccessPointConfiguration", "accessPointPolicy"),
            type = "string",
            name = "accessPointPolicy",
            target_id = prelude.String.id,
        }),
        publicAccessBlock = schema.new({
            id = id.from(_N, "S3AccessPointConfiguration", "publicAccessBlock"),
            type = "structure",
            name = "publicAccessBlock",
            target_id = id.from(_N, "S3PublicAccessBlockConfiguration"),
            target = M.S3PublicAccessBlockConfiguration,
        }),
        networkOrigin = schema.new({
            id = id.from(_N, "S3AccessPointConfiguration", "networkOrigin"),
            type = "union",
            name = "networkOrigin",
            target_id = id.from(_N, "NetworkOriginConfiguration"),
            target = M.NetworkOriginConfiguration,
        }),
    },
})

M.AclGrantee = schema.new({
    id = id.from(_N, "AclGrantee"),
    type = "union",
    members = {
        id = schema.new({
            id = id.from(_N, "AclGrantee", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "AclGrantee", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
    },
})

M.S3BucketAclGrantConfiguration = schema.new({
    id = id.from(_N, "S3BucketAclGrantConfiguration"),
    type = "structure",
    members = {
        permission = schema.new({
            id = id.from(_N, "S3BucketAclGrantConfiguration", "permission"),
            type = "string",
            name = "permission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        grantee = schema.new({
            id = id.from(_N, "S3BucketAclGrantConfiguration", "grantee"),
            type = "union",
            name = "grantee",
            target_id = id.from(_N, "AclGrantee"),
            target = M.AclGrantee,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3BucketConfiguration = schema.new({
    id = id.from(_N, "S3BucketConfiguration"),
    type = "structure",
    members = {
        bucketPolicy = schema.new({
            id = id.from(_N, "S3BucketConfiguration", "bucketPolicy"),
            type = "string",
            name = "bucketPolicy",
            target_id = prelude.String.id,
        }),
        bucketAclGrants = schema.new({
            id = id.from(_N, "S3BucketConfiguration", "bucketAclGrants"),
            type = "list",
            name = "bucketAclGrants",
            target_id = prelude.Document.id,
            list_member = M.S3BucketAclGrantConfiguration,
        }),
        bucketPublicAccessBlock = schema.new({
            id = id.from(_N, "S3BucketConfiguration", "bucketPublicAccessBlock"),
            type = "structure",
            name = "bucketPublicAccessBlock",
            target_id = id.from(_N, "S3PublicAccessBlockConfiguration"),
            target = M.S3PublicAccessBlockConfiguration,
        }),
        accessPoints = schema.new({
            id = id.from(_N, "S3BucketConfiguration", "accessPoints"),
            type = "map",
            name = "accessPoints",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.S3AccessPointConfiguration,
        }),
    },
})

M.S3ExpressDirectoryAccessPointConfiguration = schema.new({
    id = id.from(_N, "S3ExpressDirectoryAccessPointConfiguration"),
    type = "structure",
    members = {
        accessPointPolicy = schema.new({
            id = id.from(_N, "S3ExpressDirectoryAccessPointConfiguration", "accessPointPolicy"),
            type = "string",
            name = "accessPointPolicy",
            target_id = prelude.String.id,
        }),
        networkOrigin = schema.new({
            id = id.from(_N, "S3ExpressDirectoryAccessPointConfiguration", "networkOrigin"),
            type = "union",
            name = "networkOrigin",
            target_id = id.from(_N, "NetworkOriginConfiguration"),
            target = M.NetworkOriginConfiguration,
        }),
    },
})

M.S3ExpressDirectoryBucketConfiguration = schema.new({
    id = id.from(_N, "S3ExpressDirectoryBucketConfiguration"),
    type = "structure",
    members = {
        bucketPolicy = schema.new({
            id = id.from(_N, "S3ExpressDirectoryBucketConfiguration", "bucketPolicy"),
            type = "string",
            name = "bucketPolicy",
            target_id = prelude.String.id,
        }),
        accessPoints = schema.new({
            id = id.from(_N, "S3ExpressDirectoryBucketConfiguration", "accessPoints"),
            type = "map",
            name = "accessPoints",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.S3ExpressDirectoryAccessPointConfiguration,
        }),
    },
})

M.SecretsManagerSecretConfiguration = schema.new({
    id = id.from(_N, "SecretsManagerSecretConfiguration"),
    type = "structure",
    members = {
        kmsKeyId = schema.new({
            id = id.from(_N, "SecretsManagerSecretConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        secretPolicy = schema.new({
            id = id.from(_N, "SecretsManagerSecretConfiguration", "secretPolicy"),
            type = "string",
            name = "secretPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.SnsTopicConfiguration = schema.new({
    id = id.from(_N, "SnsTopicConfiguration"),
    type = "structure",
    members = {
        topicPolicy = schema.new({
            id = id.from(_N, "SnsTopicConfiguration", "topicPolicy"),
            type = "string",
            name = "topicPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.SqsQueueConfiguration = schema.new({
    id = id.from(_N, "SqsQueueConfiguration"),
    type = "structure",
    members = {
        queuePolicy = schema.new({
            id = id.from(_N, "SqsQueueConfiguration", "queuePolicy"),
            type = "string",
            name = "queuePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.Configuration = schema.new({
    id = id.from(_N, "Configuration"),
    type = "union",
    members = {
        ebsSnapshot = schema.new({
            id = id.from(_N, "Configuration", "ebsSnapshot"),
            type = "structure",
            name = "ebsSnapshot",
            target_id = id.from(_N, "EbsSnapshotConfiguration"),
            target = M.EbsSnapshotConfiguration,
        }),
        ecrRepository = schema.new({
            id = id.from(_N, "Configuration", "ecrRepository"),
            type = "structure",
            name = "ecrRepository",
            target_id = id.from(_N, "EcrRepositoryConfiguration"),
            target = M.EcrRepositoryConfiguration,
        }),
        iamRole = schema.new({
            id = id.from(_N, "Configuration", "iamRole"),
            type = "structure",
            name = "iamRole",
            target_id = id.from(_N, "IamRoleConfiguration"),
            target = M.IamRoleConfiguration,
        }),
        efsFileSystem = schema.new({
            id = id.from(_N, "Configuration", "efsFileSystem"),
            type = "structure",
            name = "efsFileSystem",
            target_id = id.from(_N, "EfsFileSystemConfiguration"),
            target = M.EfsFileSystemConfiguration,
        }),
        kmsKey = schema.new({
            id = id.from(_N, "Configuration", "kmsKey"),
            type = "structure",
            name = "kmsKey",
            target_id = id.from(_N, "KmsKeyConfiguration"),
            target = M.KmsKeyConfiguration,
        }),
        rdsDbClusterSnapshot = schema.new({
            id = id.from(_N, "Configuration", "rdsDbClusterSnapshot"),
            type = "structure",
            name = "rdsDbClusterSnapshot",
            target_id = id.from(_N, "RdsDbClusterSnapshotConfiguration"),
            target = M.RdsDbClusterSnapshotConfiguration,
        }),
        rdsDbSnapshot = schema.new({
            id = id.from(_N, "Configuration", "rdsDbSnapshot"),
            type = "structure",
            name = "rdsDbSnapshot",
            target_id = id.from(_N, "RdsDbSnapshotConfiguration"),
            target = M.RdsDbSnapshotConfiguration,
        }),
        secretsManagerSecret = schema.new({
            id = id.from(_N, "Configuration", "secretsManagerSecret"),
            type = "structure",
            name = "secretsManagerSecret",
            target_id = id.from(_N, "SecretsManagerSecretConfiguration"),
            target = M.SecretsManagerSecretConfiguration,
        }),
        s3Bucket = schema.new({
            id = id.from(_N, "Configuration", "s3Bucket"),
            type = "structure",
            name = "s3Bucket",
            target_id = id.from(_N, "S3BucketConfiguration"),
            target = M.S3BucketConfiguration,
        }),
        snsTopic = schema.new({
            id = id.from(_N, "Configuration", "snsTopic"),
            type = "structure",
            name = "snsTopic",
            target_id = id.from(_N, "SnsTopicConfiguration"),
            target = M.SnsTopicConfiguration,
        }),
        sqsQueue = schema.new({
            id = id.from(_N, "Configuration", "sqsQueue"),
            type = "structure",
            name = "sqsQueue",
            target_id = id.from(_N, "SqsQueueConfiguration"),
            target = M.SqsQueueConfiguration,
        }),
        s3ExpressDirectoryBucket = schema.new({
            id = id.from(_N, "Configuration", "s3ExpressDirectoryBucket"),
            type = "structure",
            name = "s3ExpressDirectoryBucket",
            target_id = id.from(_N, "S3ExpressDirectoryBucketConfiguration"),
            target = M.S3ExpressDirectoryBucketConfiguration,
        }),
        dynamodbStream = schema.new({
            id = id.from(_N, "Configuration", "dynamodbStream"),
            type = "structure",
            name = "dynamodbStream",
            target_id = id.from(_N, "DynamodbStreamConfiguration"),
            target = M.DynamodbStreamConfiguration,
        }),
        dynamodbTable = schema.new({
            id = id.from(_N, "Configuration", "dynamodbTable"),
            type = "structure",
            name = "dynamodbTable",
            target_id = id.from(_N, "DynamodbTableConfiguration"),
            target = M.DynamodbTableConfiguration,
        }),
    },
})

M.CreateAccessPreviewInput = schema.new({
    id = id.from(_N, "CreateAccessPreviewRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "CreateAccessPreviewInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configurations = schema.new({
            id = id.from(_N, "CreateAccessPreviewInput", "configurations"),
            type = "map",
            name = "configurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessPreviewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateAccessPreviewOutput = schema.new({
    id = id.from(_N, "CreateAccessPreviewResponse"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAccessPreviewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GenerateFindingRecommendationInput = schema.new({
    id = id.from(_N, "GenerateFindingRecommendationRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GenerateFindingRecommendationInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "GenerateFindingRecommendationInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GenerateFindingRecommendationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetAccessPreviewInput = schema.new({
    id = id.from(_N, "GetAccessPreviewRequest"),
    type = "structure",
    members = {
        accessPreviewId = schema.new({
            id = id.from(_N, "GetAccessPreviewInput", "accessPreviewId"),
            type = "string",
            name = "accessPreviewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        analyzerArn = schema.new({
            id = id.from(_N, "GetAccessPreviewInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
    },
})

M.AccessPreviewStatusReason = schema.new({
    id = id.from(_N, "AccessPreviewStatusReason"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "AccessPreviewStatusReason", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccessPreview = schema.new({
    id = id.from(_N, "AccessPreview"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessPreview", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        analyzerArn = schema.new({
            id = id.from(_N, "AccessPreview", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configurations = schema.new({
            id = id.from(_N, "AccessPreview", "configurations"),
            type = "map",
            name = "configurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessPreview", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AccessPreview", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "AccessPreview", "statusReason"),
            type = "structure",
            name = "statusReason",
            target_id = id.from(_N, "AccessPreviewStatusReason"),
            target = M.AccessPreviewStatusReason,
        }),
    },
})

M.GetAccessPreviewOutput = schema.new({
    id = id.from(_N, "GetAccessPreviewResponse"),
    type = "structure",
    members = {
        accessPreview = schema.new({
            id = id.from(_N, "GetAccessPreviewOutput", "accessPreview"),
            type = "structure",
            name = "accessPreview",
            target_id = id.from(_N, "AccessPreview"),
            target = M.AccessPreview,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAnalyzedResourceInput = schema.new({
    id = id.from(_N, "GetAnalyzedResourceRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GetAnalyzedResourceInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetAnalyzedResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.AnalyzedResource = schema.new({
    id = id.from(_N, "AnalyzedResource"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "AnalyzedResource", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "AnalyzedResource", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AnalyzedResource", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        analyzedAt = schema.new({
            id = id.from(_N, "AnalyzedResource", "analyzedAt"),
            type = "timestamp",
            name = "analyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AnalyzedResource", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isPublic = schema.new({
            id = id.from(_N, "AnalyzedResource", "isPublic"),
            type = "boolean",
            name = "isPublic",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actions = schema.new({
            id = id.from(_N, "AnalyzedResource", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        sharedVia = schema.new({
            id = id.from(_N, "AnalyzedResource", "sharedVia"),
            type = "list",
            name = "sharedVia",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "AnalyzedResource", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "AnalyzedResource", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "AnalyzedResource", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAnalyzedResourceOutput = schema.new({
    id = id.from(_N, "GetAnalyzedResourceResponse"),
    type = "structure",
    members = {
        resource = schema.new({
            id = id.from(_N, "GetAnalyzedResourceOutput", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "AnalyzedResource"),
            target = M.AnalyzedResource,
        }),
    },
})

M.GetFindingInput = schema.new({
    id = id.from(_N, "GetFindingRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GetFindingInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetFindingInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.FindingSourceDetail = schema.new({
    id = id.from(_N, "FindingSourceDetail"),
    type = "structure",
    members = {
        accessPointArn = schema.new({
            id = id.from(_N, "FindingSourceDetail", "accessPointArn"),
            type = "string",
            name = "accessPointArn",
            target_id = prelude.String.id,
        }),
        accessPointAccount = schema.new({
            id = id.from(_N, "FindingSourceDetail", "accessPointAccount"),
            type = "string",
            name = "accessPointAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.FindingSource = schema.new({
    id = id.from(_N, "FindingSource"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "FindingSource", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        detail = schema.new({
            id = id.from(_N, "FindingSource", "detail"),
            type = "structure",
            name = "detail",
            target_id = id.from(_N, "FindingSourceDetail"),
            target = M.FindingSourceDetail,
        }),
    },
})

M.Finding = schema.new({
    id = id.from(_N, "Finding"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Finding", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "Finding", "principal"),
            type = "map",
            name = "principal",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        action = schema.new({
            id = id.from(_N, "Finding", "action"),
            type = "list",
            name = "action",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resource = schema.new({
            id = id.from(_N, "Finding", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        isPublic = schema.new({
            id = id.from(_N, "Finding", "isPublic"),
            type = "boolean",
            name = "isPublic",
            target_id = prelude.Boolean.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Finding", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        condition = schema.new({
            id = id.from(_N, "Finding", "condition"),
            type = "map",
            name = "condition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "Finding", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        analyzedAt = schema.new({
            id = id.from(_N, "Finding", "analyzedAt"),
            type = "timestamp",
            name = "analyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Finding", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Finding", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "Finding", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "Finding", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "Finding", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.FindingSource,
        }),
        resourceControlPolicyRestriction = schema.new({
            id = id.from(_N, "Finding", "resourceControlPolicyRestriction"),
            type = "string",
            name = "resourceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFindingOutput = schema.new({
    id = id.from(_N, "GetFindingResponse"),
    type = "structure",
    members = {
        finding = schema.new({
            id = id.from(_N, "GetFindingOutput", "finding"),
            type = "structure",
            name = "finding",
            target_id = id.from(_N, "Finding"),
            target = M.Finding,
        }),
    },
})

M.GetFindingRecommendationInput = schema.new({
    id = id.from(_N, "GetFindingRecommendationRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GetFindingRecommendationInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetFindingRecommendationInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetFindingRecommendationInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetFindingRecommendationInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.RecommendationError = schema.new({
    id = id.from(_N, "RecommendationError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "RecommendationError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "RecommendationError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnusedPermissionsRecommendedStep = schema.new({
    id = id.from(_N, "UnusedPermissionsRecommendedStep"),
    type = "structure",
    members = {
        policyUpdatedAt = schema.new({
            id = id.from(_N, "UnusedPermissionsRecommendedStep", "policyUpdatedAt"),
            type = "timestamp",
            name = "policyUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        recommendedAction = schema.new({
            id = id.from(_N, "UnusedPermissionsRecommendedStep", "recommendedAction"),
            type = "string",
            name = "recommendedAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendedPolicy = schema.new({
            id = id.from(_N, "UnusedPermissionsRecommendedStep", "recommendedPolicy"),
            type = "string",
            name = "recommendedPolicy",
            target_id = prelude.String.id,
        }),
        existingPolicyId = schema.new({
            id = id.from(_N, "UnusedPermissionsRecommendedStep", "existingPolicyId"),
            type = "string",
            name = "existingPolicyId",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendedStep = schema.new({
    id = id.from(_N, "RecommendedStep"),
    type = "union",
    members = {
        unusedPermissionsRecommendedStep = schema.new({
            id = id.from(_N, "RecommendedStep", "unusedPermissionsRecommendedStep"),
            type = "structure",
            name = "unusedPermissionsRecommendedStep",
            target_id = id.from(_N, "UnusedPermissionsRecommendedStep"),
            target = M.UnusedPermissionsRecommendedStep,
        }),
    },
})

M.GetFindingRecommendationOutput = schema.new({
    id = id.from(_N, "GetFindingRecommendationResponse"),
    type = "structure",
    members = {
        startedAt = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "startedAt"),
            type = "timestamp",
            name = "startedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completedAt = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "completedAt"),
            type = "timestamp",
            name = "completedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "RecommendationError"),
            target = M.RecommendationError,
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendedSteps = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "recommendedSteps"),
            type = "list",
            name = "recommendedSteps",
            target_id = prelude.Document.id,
            list_member = M.RecommendedStep,
        }),
        recommendationType = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "recommendationType"),
            type = "string",
            name = "recommendationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetFindingRecommendationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFindingsStatisticsInput = schema.new({
    id = id.from(_N, "GetFindingsStatisticsRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GetFindingsStatisticsInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceTypeDetails = schema.new({
    id = id.from(_N, "ResourceTypeDetails"),
    type = "structure",
    members = {
        totalActivePublic = schema.new({
            id = id.from(_N, "ResourceTypeDetails", "totalActivePublic"),
            type = "integer",
            name = "totalActivePublic",
            target_id = prelude.Integer.id,
        }),
        totalActiveCrossAccount = schema.new({
            id = id.from(_N, "ResourceTypeDetails", "totalActiveCrossAccount"),
            type = "integer",
            name = "totalActiveCrossAccount",
            target_id = prelude.Integer.id,
        }),
        totalActiveErrors = schema.new({
            id = id.from(_N, "ResourceTypeDetails", "totalActiveErrors"),
            type = "integer",
            name = "totalActiveErrors",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ExternalAccessFindingsStatistics = schema.new({
    id = id.from(_N, "ExternalAccessFindingsStatistics"),
    type = "structure",
    members = {
        resourceTypeStatistics = schema.new({
            id = id.from(_N, "ExternalAccessFindingsStatistics", "resourceTypeStatistics"),
            type = "map",
            name = "resourceTypeStatistics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ResourceTypeDetails,
        }),
        totalActiveFindings = schema.new({
            id = id.from(_N, "ExternalAccessFindingsStatistics", "totalActiveFindings"),
            type = "integer",
            name = "totalActiveFindings",
            target_id = prelude.Integer.id,
        }),
        totalArchivedFindings = schema.new({
            id = id.from(_N, "ExternalAccessFindingsStatistics", "totalArchivedFindings"),
            type = "integer",
            name = "totalArchivedFindings",
            target_id = prelude.Integer.id,
        }),
        totalResolvedFindings = schema.new({
            id = id.from(_N, "ExternalAccessFindingsStatistics", "totalResolvedFindings"),
            type = "integer",
            name = "totalResolvedFindings",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InternalAccessResourceTypeDetails = schema.new({
    id = id.from(_N, "InternalAccessResourceTypeDetails"),
    type = "structure",
    members = {
        totalActiveFindings = schema.new({
            id = id.from(_N, "InternalAccessResourceTypeDetails", "totalActiveFindings"),
            type = "integer",
            name = "totalActiveFindings",
            target_id = prelude.Integer.id,
        }),
        totalResolvedFindings = schema.new({
            id = id.from(_N, "InternalAccessResourceTypeDetails", "totalResolvedFindings"),
            type = "integer",
            name = "totalResolvedFindings",
            target_id = prelude.Integer.id,
        }),
        totalArchivedFindings = schema.new({
            id = id.from(_N, "InternalAccessResourceTypeDetails", "totalArchivedFindings"),
            type = "integer",
            name = "totalArchivedFindings",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InternalAccessFindingsStatistics = schema.new({
    id = id.from(_N, "InternalAccessFindingsStatistics"),
    type = "structure",
    members = {
        resourceTypeStatistics = schema.new({
            id = id.from(_N, "InternalAccessFindingsStatistics", "resourceTypeStatistics"),
            type = "map",
            name = "resourceTypeStatistics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.InternalAccessResourceTypeDetails,
        }),
        totalActiveFindings = schema.new({
            id = id.from(_N, "InternalAccessFindingsStatistics", "totalActiveFindings"),
            type = "integer",
            name = "totalActiveFindings",
            target_id = prelude.Integer.id,
        }),
        totalArchivedFindings = schema.new({
            id = id.from(_N, "InternalAccessFindingsStatistics", "totalArchivedFindings"),
            type = "integer",
            name = "totalArchivedFindings",
            target_id = prelude.Integer.id,
        }),
        totalResolvedFindings = schema.new({
            id = id.from(_N, "InternalAccessFindingsStatistics", "totalResolvedFindings"),
            type = "integer",
            name = "totalResolvedFindings",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FindingAggregationAccountDetails = schema.new({
    id = id.from(_N, "FindingAggregationAccountDetails"),
    type = "structure",
    members = {
        account = schema.new({
            id = id.from(_N, "FindingAggregationAccountDetails", "account"),
            type = "string",
            name = "account",
            target_id = prelude.String.id,
        }),
        numberOfActiveFindings = schema.new({
            id = id.from(_N, "FindingAggregationAccountDetails", "numberOfActiveFindings"),
            type = "integer",
            name = "numberOfActiveFindings",
            target_id = prelude.Integer.id,
        }),
        details = schema.new({
            id = id.from(_N, "FindingAggregationAccountDetails", "details"),
            type = "map",
            name = "details",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
    },
})

M.UnusedAccessTypeStatistics = schema.new({
    id = id.from(_N, "UnusedAccessTypeStatistics"),
    type = "structure",
    members = {
        unusedAccessType = schema.new({
            id = id.from(_N, "UnusedAccessTypeStatistics", "unusedAccessType"),
            type = "string",
            name = "unusedAccessType",
            target_id = prelude.String.id,
        }),
        total = schema.new({
            id = id.from(_N, "UnusedAccessTypeStatistics", "total"),
            type = "integer",
            name = "total",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UnusedAccessFindingsStatistics = schema.new({
    id = id.from(_N, "UnusedAccessFindingsStatistics"),
    type = "structure",
    members = {
        unusedAccessTypeStatistics = schema.new({
            id = id.from(_N, "UnusedAccessFindingsStatistics", "unusedAccessTypeStatistics"),
            type = "list",
            name = "unusedAccessTypeStatistics",
            target_id = prelude.Document.id,
            list_member = M.UnusedAccessTypeStatistics,
        }),
        topAccounts = schema.new({
            id = id.from(_N, "UnusedAccessFindingsStatistics", "topAccounts"),
            type = "list",
            name = "topAccounts",
            target_id = prelude.Document.id,
            list_member = M.FindingAggregationAccountDetails,
        }),
        totalActiveFindings = schema.new({
            id = id.from(_N, "UnusedAccessFindingsStatistics", "totalActiveFindings"),
            type = "integer",
            name = "totalActiveFindings",
            target_id = prelude.Integer.id,
        }),
        totalArchivedFindings = schema.new({
            id = id.from(_N, "UnusedAccessFindingsStatistics", "totalArchivedFindings"),
            type = "integer",
            name = "totalArchivedFindings",
            target_id = prelude.Integer.id,
        }),
        totalResolvedFindings = schema.new({
            id = id.from(_N, "UnusedAccessFindingsStatistics", "totalResolvedFindings"),
            type = "integer",
            name = "totalResolvedFindings",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FindingsStatistics = schema.new({
    id = id.from(_N, "FindingsStatistics"),
    type = "union",
    members = {
        externalAccessFindingsStatistics = schema.new({
            id = id.from(_N, "FindingsStatistics", "externalAccessFindingsStatistics"),
            type = "structure",
            name = "externalAccessFindingsStatistics",
            target_id = id.from(_N, "ExternalAccessFindingsStatistics"),
            target = M.ExternalAccessFindingsStatistics,
        }),
        internalAccessFindingsStatistics = schema.new({
            id = id.from(_N, "FindingsStatistics", "internalAccessFindingsStatistics"),
            type = "structure",
            name = "internalAccessFindingsStatistics",
            target_id = id.from(_N, "InternalAccessFindingsStatistics"),
            target = M.InternalAccessFindingsStatistics,
        }),
        unusedAccessFindingsStatistics = schema.new({
            id = id.from(_N, "FindingsStatistics", "unusedAccessFindingsStatistics"),
            type = "structure",
            name = "unusedAccessFindingsStatistics",
            target_id = id.from(_N, "UnusedAccessFindingsStatistics"),
            target = M.UnusedAccessFindingsStatistics,
        }),
    },
})

M.GetFindingsStatisticsOutput = schema.new({
    id = id.from(_N, "GetFindingsStatisticsResponse"),
    type = "structure",
    members = {
        findingsStatistics = schema.new({
            id = id.from(_N, "GetFindingsStatisticsOutput", "findingsStatistics"),
            type = "list",
            name = "findingsStatistics",
            target_id = prelude.Document.id,
            list_member = M.FindingsStatistics,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetFindingsStatisticsOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetFindingV2Input = schema.new({
    id = id.from(_N, "GetFindingV2Request"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "GetFindingV2Input", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetFindingV2Input", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetFindingV2Input", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetFindingV2Input", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ExternalAccessDetails = schema.new({
    id = id.from(_N, "ExternalAccessDetails"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "action"),
            type = "list",
            name = "action",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        condition = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "condition"),
            type = "map",
            name = "condition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isPublic = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "isPublic"),
            type = "boolean",
            name = "isPublic",
            target_id = prelude.Boolean.id,
        }),
        principal = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "principal"),
            type = "map",
            name = "principal",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        sources = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.FindingSource,
        }),
        resourceControlPolicyRestriction = schema.new({
            id = id.from(_N, "ExternalAccessDetails", "resourceControlPolicyRestriction"),
            type = "string",
            name = "resourceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalAccessDetails = schema.new({
    id = id.from(_N, "InternalAccessDetails"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "InternalAccessDetails", "action"),
            type = "list",
            name = "action",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        condition = schema.new({
            id = id.from(_N, "InternalAccessDetails", "condition"),
            type = "map",
            name = "condition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        principal = schema.new({
            id = id.from(_N, "InternalAccessDetails", "principal"),
            type = "map",
            name = "principal",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        principalOwnerAccount = schema.new({
            id = id.from(_N, "InternalAccessDetails", "principalOwnerAccount"),
            type = "string",
            name = "principalOwnerAccount",
            target_id = prelude.String.id,
        }),
        accessType = schema.new({
            id = id.from(_N, "InternalAccessDetails", "accessType"),
            type = "string",
            name = "accessType",
            target_id = prelude.String.id,
        }),
        principalType = schema.new({
            id = id.from(_N, "InternalAccessDetails", "principalType"),
            type = "string",
            name = "principalType",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "InternalAccessDetails", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.FindingSource,
        }),
        resourceControlPolicyRestriction = schema.new({
            id = id.from(_N, "InternalAccessDetails", "resourceControlPolicyRestriction"),
            type = "string",
            name = "resourceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
        serviceControlPolicyRestriction = schema.new({
            id = id.from(_N, "InternalAccessDetails", "serviceControlPolicyRestriction"),
            type = "string",
            name = "serviceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
    },
})

M.UnusedIamRoleDetails = schema.new({
    id = id.from(_N, "UnusedIamRoleDetails"),
    type = "structure",
    members = {
        lastAccessed = schema.new({
            id = id.from(_N, "UnusedIamRoleDetails", "lastAccessed"),
            type = "timestamp",
            name = "lastAccessed",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UnusedIamUserAccessKeyDetails = schema.new({
    id = id.from(_N, "UnusedIamUserAccessKeyDetails"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "UnusedIamUserAccessKeyDetails", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastAccessed = schema.new({
            id = id.from(_N, "UnusedIamUserAccessKeyDetails", "lastAccessed"),
            type = "timestamp",
            name = "lastAccessed",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UnusedIamUserPasswordDetails = schema.new({
    id = id.from(_N, "UnusedIamUserPasswordDetails"),
    type = "structure",
    members = {
        lastAccessed = schema.new({
            id = id.from(_N, "UnusedIamUserPasswordDetails", "lastAccessed"),
            type = "timestamp",
            name = "lastAccessed",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UnusedAction = schema.new({
    id = id.from(_N, "UnusedAction"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "UnusedAction", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastAccessed = schema.new({
            id = id.from(_N, "UnusedAction", "lastAccessed"),
            type = "timestamp",
            name = "lastAccessed",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UnusedPermissionDetails = schema.new({
    id = id.from(_N, "UnusedPermissionDetails"),
    type = "structure",
    members = {
        actions = schema.new({
            id = id.from(_N, "UnusedPermissionDetails", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.UnusedAction,
        }),
        serviceNamespace = schema.new({
            id = id.from(_N, "UnusedPermissionDetails", "serviceNamespace"),
            type = "string",
            name = "serviceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastAccessed = schema.new({
            id = id.from(_N, "UnusedPermissionDetails", "lastAccessed"),
            type = "timestamp",
            name = "lastAccessed",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.FindingDetails = schema.new({
    id = id.from(_N, "FindingDetails"),
    type = "union",
    members = {
        internalAccessDetails = schema.new({
            id = id.from(_N, "FindingDetails", "internalAccessDetails"),
            type = "structure",
            name = "internalAccessDetails",
            target_id = id.from(_N, "InternalAccessDetails"),
            target = M.InternalAccessDetails,
        }),
        externalAccessDetails = schema.new({
            id = id.from(_N, "FindingDetails", "externalAccessDetails"),
            type = "structure",
            name = "externalAccessDetails",
            target_id = id.from(_N, "ExternalAccessDetails"),
            target = M.ExternalAccessDetails,
        }),
        unusedPermissionDetails = schema.new({
            id = id.from(_N, "FindingDetails", "unusedPermissionDetails"),
            type = "structure",
            name = "unusedPermissionDetails",
            target_id = id.from(_N, "UnusedPermissionDetails"),
            target = M.UnusedPermissionDetails,
        }),
        unusedIamUserAccessKeyDetails = schema.new({
            id = id.from(_N, "FindingDetails", "unusedIamUserAccessKeyDetails"),
            type = "structure",
            name = "unusedIamUserAccessKeyDetails",
            target_id = id.from(_N, "UnusedIamUserAccessKeyDetails"),
            target = M.UnusedIamUserAccessKeyDetails,
        }),
        unusedIamRoleDetails = schema.new({
            id = id.from(_N, "FindingDetails", "unusedIamRoleDetails"),
            type = "structure",
            name = "unusedIamRoleDetails",
            target_id = id.from(_N, "UnusedIamRoleDetails"),
            target = M.UnusedIamRoleDetails,
        }),
        unusedIamUserPasswordDetails = schema.new({
            id = id.from(_N, "FindingDetails", "unusedIamUserPasswordDetails"),
            type = "structure",
            name = "unusedIamUserPasswordDetails",
            target_id = id.from(_N, "UnusedIamUserPasswordDetails"),
            target = M.UnusedIamUserPasswordDetails,
        }),
    },
})

M.GetFindingV2Output = schema.new({
    id = id.from(_N, "GetFindingV2Response"),
    type = "structure",
    members = {
        analyzedAt = schema.new({
            id = id.from(_N, "GetFindingV2Output", "analyzedAt"),
            type = "timestamp",
            name = "analyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetFindingV2Output", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "GetFindingV2Output", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetFindingV2Output", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetFindingV2Output", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        resource = schema.new({
            id = id.from(_N, "GetFindingV2Output", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "GetFindingV2Output", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "GetFindingV2Output", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetFindingV2Output", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetFindingV2Output", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findingDetails = schema.new({
            id = id.from(_N, "GetFindingV2Output", "findingDetails"),
            type = "list",
            name = "findingDetails",
            target_id = prelude.Document.id,
            list_member = M.FindingDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findingType = schema.new({
            id = id.from(_N, "GetFindingV2Output", "findingType"),
            type = "string",
            name = "findingType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGeneratedPolicyInput = schema.new({
    id = id.from(_N, "GetGeneratedPolicyRequest"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "GetGeneratedPolicyInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        includeResourcePlaceholders = schema.new({
            id = id.from(_N, "GetGeneratedPolicyInput", "includeResourcePlaceholders"),
            type = "boolean",
            name = "includeResourcePlaceholders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeResourcePlaceholders" },
            },
        }),
        includeServiceLevelTemplate = schema.new({
            id = id.from(_N, "GetGeneratedPolicyInput", "includeServiceLevelTemplate"),
            type = "boolean",
            name = "includeServiceLevelTemplate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includeServiceLevelTemplate" },
            },
        }),
    },
})

M.GeneratedPolicy = schema.new({
    id = id.from(_N, "GeneratedPolicy"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "GeneratedPolicy", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrailProperties = schema.new({
    id = id.from(_N, "TrailProperties"),
    type = "structure",
    members = {
        cloudTrailArn = schema.new({
            id = id.from(_N, "TrailProperties", "cloudTrailArn"),
            type = "string",
            name = "cloudTrailArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        regions = schema.new({
            id = id.from(_N, "TrailProperties", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allRegions = schema.new({
            id = id.from(_N, "TrailProperties", "allRegions"),
            type = "boolean",
            name = "allRegions",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CloudTrailProperties = schema.new({
    id = id.from(_N, "CloudTrailProperties"),
    type = "structure",
    members = {
        trailProperties = schema.new({
            id = id.from(_N, "CloudTrailProperties", "trailProperties"),
            type = "list",
            name = "trailProperties",
            target_id = prelude.Document.id,
            list_member = M.TrailProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "CloudTrailProperties", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "CloudTrailProperties", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeneratedPolicyProperties = schema.new({
    id = id.from(_N, "GeneratedPolicyProperties"),
    type = "structure",
    members = {
        isComplete = schema.new({
            id = id.from(_N, "GeneratedPolicyProperties", "isComplete"),
            type = "boolean",
            name = "isComplete",
            target_id = prelude.Boolean.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "GeneratedPolicyProperties", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cloudTrailProperties = schema.new({
            id = id.from(_N, "GeneratedPolicyProperties", "cloudTrailProperties"),
            type = "structure",
            name = "cloudTrailProperties",
            target_id = id.from(_N, "CloudTrailProperties"),
            target = M.CloudTrailProperties,
        }),
    },
})

M.GeneratedPolicyResult = schema.new({
    id = id.from(_N, "GeneratedPolicyResult"),
    type = "structure",
    members = {
        properties = schema.new({
            id = id.from(_N, "GeneratedPolicyResult", "properties"),
            type = "structure",
            name = "properties",
            target_id = id.from(_N, "GeneratedPolicyProperties"),
            target = M.GeneratedPolicyProperties,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedPolicies = schema.new({
            id = id.from(_N, "GeneratedPolicyResult", "generatedPolicies"),
            type = "list",
            name = "generatedPolicies",
            target_id = prelude.Document.id,
            list_member = M.GeneratedPolicy,
        }),
    },
})

M.JobError = schema.new({
    id = id.from(_N, "JobError"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "JobError", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "JobError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JobDetails = schema.new({
    id = id.from(_N, "JobDetails"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "JobDetails", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "JobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startedOn = schema.new({
            id = id.from(_N, "JobDetails", "startedOn"),
            type = "timestamp",
            name = "startedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completedOn = schema.new({
            id = id.from(_N, "JobDetails", "completedOn"),
            type = "timestamp",
            name = "completedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        jobError = schema.new({
            id = id.from(_N, "JobDetails", "jobError"),
            type = "structure",
            name = "jobError",
            target_id = id.from(_N, "JobError"),
            target = M.JobError,
        }),
    },
})

M.GetGeneratedPolicyOutput = schema.new({
    id = id.from(_N, "GetGeneratedPolicyResponse"),
    type = "structure",
    members = {
        jobDetails = schema.new({
            id = id.from(_N, "GetGeneratedPolicyOutput", "jobDetails"),
            type = "structure",
            name = "jobDetails",
            target_id = id.from(_N, "JobDetails"),
            target = M.JobDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generatedPolicyResult = schema.new({
            id = id.from(_N, "GetGeneratedPolicyOutput", "generatedPolicyResult"),
            type = "structure",
            name = "generatedPolicyResult",
            target_id = id.from(_N, "GeneratedPolicyResult"),
            target = M.GeneratedPolicyResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAccessPreviewFindingsInput = schema.new({
    id = id.from(_N, "ListAccessPreviewFindingsRequest"),
    type = "structure",
    members = {
        accessPreviewId = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsInput", "accessPreviewId"),
            type = "string",
            name = "accessPreviewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        analyzerArn = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsInput", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AccessPreviewFinding = schema.new({
    id = id.from(_N, "AccessPreviewFinding"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        existingFindingId = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "existingFindingId"),
            type = "string",
            name = "existingFindingId",
            target_id = prelude.String.id,
        }),
        existingFindingStatus = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "existingFindingStatus"),
            type = "string",
            name = "existingFindingStatus",
            target_id = prelude.String.id,
        }),
        principal = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "principal"),
            type = "map",
            name = "principal",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        action = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "action"),
            type = "list",
            name = "action",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        condition = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "condition"),
            type = "map",
            name = "condition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        resource = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        isPublic = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "isPublic"),
            type = "boolean",
            name = "isPublic",
            target_id = prelude.Boolean.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        changeType = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.FindingSource,
        }),
        resourceControlPolicyRestriction = schema.new({
            id = id.from(_N, "AccessPreviewFinding", "resourceControlPolicyRestriction"),
            type = "string",
            name = "resourceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccessPreviewFindingsOutput = schema.new({
    id = id.from(_N, "ListAccessPreviewFindingsResponse"),
    type = "structure",
    members = {
        findings = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsOutput", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.AccessPreviewFinding,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPreviewFindingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAccessPreviewsInput = schema.new({
    id = id.from(_N, "ListAccessPreviewsRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "ListAccessPreviewsInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "analyzerArn" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPreviewsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAccessPreviewsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.AccessPreviewSummary = schema.new({
    id = id.from(_N, "AccessPreviewSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessPreviewSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        analyzerArn = schema.new({
            id = id.from(_N, "AccessPreviewSummary", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessPreviewSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AccessPreviewSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "AccessPreviewSummary", "statusReason"),
            type = "structure",
            name = "statusReason",
            target_id = id.from(_N, "AccessPreviewStatusReason"),
            target = M.AccessPreviewStatusReason,
        }),
    },
})

M.ListAccessPreviewsOutput = schema.new({
    id = id.from(_N, "ListAccessPreviewsResponse"),
    type = "structure",
    members = {
        accessPreviews = schema.new({
            id = id.from(_N, "ListAccessPreviewsOutput", "accessPreviews"),
            type = "list",
            name = "accessPreviews",
            target_id = prelude.Document.id,
            list_member = M.AccessPreviewSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessPreviewsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnalyzedResourcesInput = schema.new({
    id = id.from(_N, "ListAnalyzedResourcesRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AnalyzedResourceSummary = schema.new({
    id = id.from(_N, "AnalyzedResourceSummary"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "AnalyzedResourceSummary", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "AnalyzedResourceSummary", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "AnalyzedResourceSummary", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAnalyzedResourcesOutput = schema.new({
    id = id.from(_N, "ListAnalyzedResourcesResponse"),
    type = "structure",
    members = {
        analyzedResources = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesOutput", "analyzedResources"),
            type = "list",
            name = "analyzedResources",
            target_id = prelude.Document.id,
            list_member = M.AnalyzedResourceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAnalyzedResourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SortCriteria = schema.new({
    id = id.from(_N, "SortCriteria"),
    type = "structure",
    members = {
        attributeName = schema.new({
            id = id.from(_N, "SortCriteria", "attributeName"),
            type = "string",
            name = "attributeName",
            target_id = prelude.String.id,
        }),
        orderBy = schema.new({
            id = id.from(_N, "SortCriteria", "orderBy"),
            type = "string",
            name = "orderBy",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsInput = schema.new({
    id = id.from(_N, "ListFindingsRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "ListFindingsInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListFindingsInput", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
        }),
        sort = schema.new({
            id = id.from(_N, "ListFindingsInput", "sort"),
            type = "structure",
            name = "sort",
            target_id = id.from(_N, "SortCriteria"),
            target = M.SortCriteria,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFindingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FindingSummary = schema.new({
    id = id.from(_N, "FindingSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "FindingSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "FindingSummary", "principal"),
            type = "map",
            name = "principal",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        action = schema.new({
            id = id.from(_N, "FindingSummary", "action"),
            type = "list",
            name = "action",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resource = schema.new({
            id = id.from(_N, "FindingSummary", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        isPublic = schema.new({
            id = id.from(_N, "FindingSummary", "isPublic"),
            type = "boolean",
            name = "isPublic",
            target_id = prelude.Boolean.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "FindingSummary", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        condition = schema.new({
            id = id.from(_N, "FindingSummary", "condition"),
            type = "map",
            name = "condition",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "FindingSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        analyzedAt = schema.new({
            id = id.from(_N, "FindingSummary", "analyzedAt"),
            type = "timestamp",
            name = "analyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "FindingSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "FindingSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "FindingSummary", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "FindingSummary", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        sources = schema.new({
            id = id.from(_N, "FindingSummary", "sources"),
            type = "list",
            name = "sources",
            target_id = prelude.Document.id,
            list_member = M.FindingSource,
        }),
        resourceControlPolicyRestriction = schema.new({
            id = id.from(_N, "FindingSummary", "resourceControlPolicyRestriction"),
            type = "string",
            name = "resourceControlPolicyRestriction",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsOutput = schema.new({
    id = id.from(_N, "ListFindingsResponse"),
    type = "structure",
    members = {
        findings = schema.new({
            id = id.from(_N, "ListFindingsOutput", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.FindingSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsV2Input = schema.new({
    id = id.from(_N, "ListFindingsV2Request"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "ListFindingsV2Input", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListFindingsV2Input", "filter"),
            type = "map",
            name = "filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Criterion,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFindingsV2Input", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsV2Input", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        sort = schema.new({
            id = id.from(_N, "ListFindingsV2Input", "sort"),
            type = "structure",
            name = "sort",
            target_id = id.from(_N, "SortCriteria"),
            target = M.SortCriteria,
        }),
    },
})

M.FindingSummaryV2 = schema.new({
    id = id.from(_N, "FindingSummaryV2"),
    type = "structure",
    members = {
        analyzedAt = schema.new({
            id = id.from(_N, "FindingSummaryV2", "analyzedAt"),
            type = "timestamp",
            name = "analyzedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "FindingSummaryV2", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "FindingSummaryV2", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "FindingSummaryV2", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "FindingSummaryV2", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "FindingSummaryV2", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "FindingSummaryV2", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "FindingSummaryV2", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "FindingSummaryV2", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findingType = schema.new({
            id = id.from(_N, "FindingSummaryV2", "findingType"),
            type = "string",
            name = "findingType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsV2Output = schema.new({
    id = id.from(_N, "ListFindingsV2Response"),
    type = "structure",
    members = {
        findings = schema.new({
            id = id.from(_N, "ListFindingsV2Output", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.FindingSummaryV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsV2Output", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyGenerationsInput = schema.new({
    id = id.from(_N, "ListPolicyGenerationsRequest"),
    type = "structure",
    members = {
        principalArn = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "principalArn" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.PolicyGeneration = schema.new({
    id = id.from(_N, "PolicyGeneration"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "PolicyGeneration", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principalArn = schema.new({
            id = id.from(_N, "PolicyGeneration", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "PolicyGeneration", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startedOn = schema.new({
            id = id.from(_N, "PolicyGeneration", "startedOn"),
            type = "timestamp",
            name = "startedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        completedOn = schema.new({
            id = id.from(_N, "PolicyGeneration", "completedOn"),
            type = "timestamp",
            name = "completedOn",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPolicyGenerationsOutput = schema.new({
    id = id.from(_N, "ListPolicyGenerationsResponse"),
    type = "structure",
    members = {
        policyGenerations = schema.new({
            id = id.from(_N, "ListPolicyGenerationsOutput", "policyGenerations"),
            type = "list",
            name = "policyGenerations",
            target_id = prelude.Document.id,
            list_member = M.PolicyGeneration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationsOutput", "nextToken"),
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

M.Trail = schema.new({
    id = id.from(_N, "Trail"),
    type = "structure",
    members = {
        cloudTrailArn = schema.new({
            id = id.from(_N, "Trail", "cloudTrailArn"),
            type = "string",
            name = "cloudTrailArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        regions = schema.new({
            id = id.from(_N, "Trail", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allRegions = schema.new({
            id = id.from(_N, "Trail", "allRegions"),
            type = "boolean",
            name = "allRegions",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CloudTrailDetails = schema.new({
    id = id.from(_N, "CloudTrailDetails"),
    type = "structure",
    members = {
        trails = schema.new({
            id = id.from(_N, "CloudTrailDetails", "trails"),
            type = "list",
            name = "trails",
            target_id = prelude.Document.id,
            list_member = M.Trail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessRole = schema.new({
            id = id.from(_N, "CloudTrailDetails", "accessRole"),
            type = "string",
            name = "accessRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "CloudTrailDetails", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "CloudTrailDetails", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.PolicyGenerationDetails = schema.new({
    id = id.from(_N, "PolicyGenerationDetails"),
    type = "structure",
    members = {
        principalArn = schema.new({
            id = id.from(_N, "PolicyGenerationDetails", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartPolicyGenerationInput = schema.new({
    id = id.from(_N, "StartPolicyGenerationRequest"),
    type = "structure",
    members = {
        policyGenerationDetails = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "policyGenerationDetails"),
            type = "structure",
            name = "policyGenerationDetails",
            target_id = id.from(_N, "PolicyGenerationDetails"),
            target = M.PolicyGenerationDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cloudTrailDetails = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "cloudTrailDetails"),
            type = "structure",
            name = "cloudTrailDetails",
            target_id = id.from(_N, "CloudTrailDetails"),
            target = M.CloudTrailDetails,
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartPolicyGenerationOutput = schema.new({
    id = id.from(_N, "StartPolicyGenerationResponse"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartResourceScanInput = schema.new({
    id = id.from(_N, "StartResourceScanRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "StartResourceScanInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "StartResourceScanInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceOwnerAccount = schema.new({
            id = id.from(_N, "StartResourceScanInput", "resourceOwnerAccount"),
            type = "string",
            name = "resourceOwnerAccount",
            target_id = prelude.String.id,
        }),
    },
})

M.StartResourceScanOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
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

M.UpdateFindingsInput = schema.new({
    id = id.from(_N, "UpdateFindingsRequest"),
    type = "structure",
    members = {
        analyzerArn = schema.new({
            id = id.from(_N, "UpdateFindingsInput", "analyzerArn"),
            type = "string",
            name = "analyzerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateFindingsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ids = schema.new({
            id = id.from(_N, "UpdateFindingsInput", "ids"),
            type = "list",
            name = "ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourceArn = schema.new({
            id = id.from(_N, "UpdateFindingsInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateFindingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateFindingsOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ValidatePolicyInput = schema.new({
    id = id.from(_N, "ValidatePolicyRequest"),
    type = "structure",
    members = {
        locale = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "locale"),
            type = "string",
            name = "locale",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        policyDocument = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "policyDocument"),
            type = "string",
            name = "policyDocument",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyType = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "policyType"),
            type = "string",
            name = "policyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        validatePolicyResourceType = schema.new({
            id = id.from(_N, "ValidatePolicyInput", "validatePolicyResourceType"),
            type = "string",
            name = "validatePolicyResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.Substring = schema.new({
    id = id.from(_N, "Substring"),
    type = "structure",
    members = {
        start = schema.new({
            id = id.from(_N, "Substring", "start"),
            type = "integer",
            name = "start",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        length = schema.new({
            id = id.from(_N, "Substring", "length"),
            type = "integer",
            name = "length",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PathElement = schema.new({
    id = id.from(_N, "PathElement"),
    type = "union",
    members = {
        index = schema.new({
            id = id.from(_N, "PathElement", "index"),
            type = "integer",
            name = "index",
            target_id = prelude.Integer.id,
        }),
        key = schema.new({
            id = id.from(_N, "PathElement", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        substring = schema.new({
            id = id.from(_N, "PathElement", "substring"),
            type = "structure",
            name = "substring",
            target_id = id.from(_N, "Substring"),
            target = M.Substring,
        }),
        value = schema.new({
            id = id.from(_N, "PathElement", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.Position = schema.new({
    id = id.from(_N, "Position"),
    type = "structure",
    members = {
        line = schema.new({
            id = id.from(_N, "Position", "line"),
            type = "integer",
            name = "line",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        column = schema.new({
            id = id.from(_N, "Position", "column"),
            type = "integer",
            name = "column",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        offset = schema.new({
            id = id.from(_N, "Position", "offset"),
            type = "integer",
            name = "offset",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Span = schema.new({
    id = id.from(_N, "Span"),
    type = "structure",
    members = {
        start = schema.new({
            id = id.from(_N, "Span", "start"),
            type = "structure",
            name = "start",
            target_id = id.from(_N, "Position"),
            target = M.Position,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        end = schema.new({
            id = id.from(_N, "Span", "end"),
            type = "structure",
            name = "end",
            target_id = id.from(_N, "Position"),
            target = M.Position,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "Location", "path"),
            type = "list",
            name = "path",
            target_id = prelude.Document.id,
            list_member = M.PathElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        span = schema.new({
            id = id.from(_N, "Location", "span"),
            type = "structure",
            name = "span",
            target_id = id.from(_N, "Span"),
            target = M.Span,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidatePolicyFinding = schema.new({
    id = id.from(_N, "ValidatePolicyFinding"),
    type = "structure",
    members = {
        findingDetails = schema.new({
            id = id.from(_N, "ValidatePolicyFinding", "findingDetails"),
            type = "string",
            name = "findingDetails",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findingType = schema.new({
            id = id.from(_N, "ValidatePolicyFinding", "findingType"),
            type = "string",
            name = "findingType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        issueCode = schema.new({
            id = id.from(_N, "ValidatePolicyFinding", "issueCode"),
            type = "string",
            name = "issueCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        learnMoreLink = schema.new({
            id = id.from(_N, "ValidatePolicyFinding", "learnMoreLink"),
            type = "string",
            name = "learnMoreLink",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        locations = schema.new({
            id = id.from(_N, "ValidatePolicyFinding", "locations"),
            type = "list",
            name = "locations",
            target_id = prelude.Document.id,
            list_member = M.Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidatePolicyOutput = schema.new({
    id = id.from(_N, "ValidatePolicyResponse"),
    type = "structure",
    members = {
        findings = schema.new({
            id = id.from(_N, "ValidatePolicyOutput", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.ValidatePolicyFinding,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ValidatePolicyOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
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
