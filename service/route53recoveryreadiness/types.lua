local M = {}

M.CellOutput = {
    type = "structure",
    id = "CellOutput",
    members = {
        CellArn = {
            type = "string",
            traits = {
                json_name = "cellArn",
                required = true,
            },
        },
        CellName = {
            type = "string",
            traits = {
                json_name = "cellName",
                required = true,
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
                required = true,
            },
        },
        ParentReadinessScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "parentReadinessScopes",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    id = "ListRulesOutput",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
                required = true,
            },
        },
        RuleDescription = {
            type = "string",
            traits = {
                json_name = "ruleDescription",
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                json_name = "ruleId",
                required = true,
            },
        },
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        MessageText = {
            type = "string",
            traits = {
                json_name = "messageText",
            },
        },
    },
}

M.ReadinessCheckOutput = {
    type = "structure",
    id = "ReadinessCheckOutput",
    members = {
        ReadinessCheckArn = {
            type = "string",
            traits = {
                json_name = "readinessCheckArn",
                required = true,
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
            },
        },
        ResourceSet = {
            type = "string",
            traits = {
                json_name = "resourceSet",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.Readiness = {
    READY = "READY",
    NOT_READY = "NOT_READY",
    UNKNOWN = "UNKNOWN",
    NOT_AUTHORIZED = "NOT_AUTHORIZED",
}

M.ReadinessCheckSummary = {
    type = "structure",
    id = "ReadinessCheckSummary",
    members = {
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
            },
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        RecommendationText = {
            type = "string",
            traits = {
                json_name = "recommendationText",
                required = true,
            },
        },
    },
}

M.RecoveryGroupOutput = {
    type = "structure",
    id = "RecoveryGroupOutput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
                required = true,
            },
        },
        RecoveryGroupArn = {
            type = "string",
            traits = {
                json_name = "recoveryGroupArn",
                required = true,
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                json_name = "recoveryGroupName",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.NLBResource = {
    type = "structure",
    id = "NLBResource",
    members = {
        Arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
    },
}

M.R53ResourceRecord = {
    type = "structure",
    id = "R53ResourceRecord",
    members = {
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        RecordSetId = {
            type = "string",
            traits = {
                json_name = "recordSetId",
            },
        },
    },
}

M.TargetResource = {
    type = "structure",
    id = "TargetResource",
    members = {
        NLBResource = setmetatable({ traits = {
            json_name = "nLBResource",
        } }, { __index = M.NLBResource }),
        R53Resource = setmetatable({ traits = {
            json_name = "r53Resource",
        } }, { __index = M.R53ResourceRecord }),
    },
}

M.DNSTargetResource = {
    type = "structure",
    id = "DNSTargetResource",
    members = {
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        HostedZoneArn = {
            type = "string",
            traits = {
                json_name = "hostedZoneArn",
            },
        },
        RecordSetId = {
            type = "string",
            traits = {
                json_name = "recordSetId",
            },
        },
        RecordType = {
            type = "string",
            traits = {
                json_name = "recordType",
            },
        },
        TargetResource = setmetatable({ traits = {
            json_name = "targetResource",
        } }, { __index = M.TargetResource }),
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        ComponentId = {
            type = "string",
            traits = {
                json_name = "componentId",
            },
        },
        DnsTargetResource = setmetatable({ traits = {
            json_name = "dnsTargetResource",
        } }, { __index = M.DNSTargetResource }),
        ReadinessScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "readinessScopes",
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
            },
        },
    },
}

M.ResourceResult = {
    type = "structure",
    id = "ResourceResult",
    members = {
        ComponentId = {
            type = "string",
            traits = {
                json_name = "componentId",
            },
        },
        LastCheckedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "lastCheckedTimestamp",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                json_name = "resourceArn",
            },
        },
    },
}

M.ResourceSetOutput = {
    type = "structure",
    id = "ResourceSetOutput",
    members = {
        ResourceSetArn = {
            type = "string",
            traits = {
                json_name = "resourceSetArn",
                required = true,
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
                required = true,
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RuleResult = {
    type = "structure",
    id = "RuleResult",
    members = {
        LastCheckedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "lastCheckedTimestamp",
                required = true,
                timestamp_format = "date-time",
            },
        },
        Messages = {
            type = "list",
            member = M.Message,
            traits = {
                json_name = "messages",
                required = true,
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                json_name = "ruleId",
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateCellInput = {
    type = "structure",
    id = "CreateCellInput",
    members = {
        CellName = {
            type = "string",
            traits = {
                json_name = "cellName",
                required = true,
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateCellOutput = {
    type = "structure",
    id = "CreateCellOutput",
    members = {
        CellArn = {
            type = "string",
            traits = {
                json_name = "cellArn",
            },
        },
        CellName = {
            type = "string",
            traits = {
                json_name = "cellName",
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        ParentReadinessScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "parentReadinessScopes",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateCrossAccountAuthorizationInput = {
    type = "structure",
    id = "CreateCrossAccountAuthorizationInput",
    members = {
        CrossAccountAuthorization = {
            type = "string",
            traits = {
                json_name = "crossAccountAuthorization",
                required = true,
            },
        },
    },
}

M.CreateCrossAccountAuthorizationOutput = {
    type = "structure",
    id = "CreateCrossAccountAuthorizationOutput",
    members = {
        CrossAccountAuthorization = {
            type = "string",
            traits = {
                json_name = "crossAccountAuthorization",
            },
        },
    },
}

M.CreateReadinessCheckInput = {
    type = "structure",
    id = "CreateReadinessCheckInput",
    members = {
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
                required = true,
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateReadinessCheckOutput = {
    type = "structure",
    id = "CreateReadinessCheckOutput",
    members = {
        ReadinessCheckArn = {
            type = "string",
            traits = {
                json_name = "readinessCheckArn",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
            },
        },
        ResourceSet = {
            type = "string",
            traits = {
                json_name = "resourceSet",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateRecoveryGroupInput = {
    type = "structure",
    id = "CreateRecoveryGroupInput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                json_name = "recoveryGroupName",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateRecoveryGroupOutput = {
    type = "structure",
    id = "CreateRecoveryGroupOutput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        RecoveryGroupArn = {
            type = "string",
            traits = {
                json_name = "recoveryGroupArn",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                json_name = "recoveryGroupName",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateResourceSetInput = {
    type = "structure",
    id = "CreateResourceSetInput",
    members = {
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
                required = true,
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateResourceSetOutput = {
    type = "structure",
    id = "CreateResourceSetOutput",
    members = {
        ResourceSetArn = {
            type = "string",
            traits = {
                json_name = "resourceSetArn",
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DeleteCellInput = {
    type = "structure",
    id = "DeleteCellInput",
    members = {
        CellName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCellOutput = {
    type = "structure",
    id = "DeleteCellOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.DeleteCrossAccountAuthorizationInput = {
    type = "structure",
    id = "DeleteCrossAccountAuthorizationInput",
    members = {
        CrossAccountAuthorization = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCrossAccountAuthorizationOutput = {
    type = "structure",
    id = "DeleteCrossAccountAuthorizationOutput",
}

M.DeleteReadinessCheckInput = {
    type = "structure",
    id = "DeleteReadinessCheckInput",
    members = {
        ReadinessCheckName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteReadinessCheckOutput = {
    type = "structure",
    id = "DeleteReadinessCheckOutput",
}

M.DeleteRecoveryGroupInput = {
    type = "structure",
    id = "DeleteRecoveryGroupInput",
    members = {
        RecoveryGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecoveryGroupOutput = {
    type = "structure",
    id = "DeleteRecoveryGroupOutput",
}

M.DeleteResourceSetInput = {
    type = "structure",
    id = "DeleteResourceSetInput",
    members = {
        ResourceSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceSetOutput = {
    type = "structure",
    id = "DeleteResourceSetOutput",
}

M.GetArchitectureRecommendationsInput = {
    type = "structure",
    id = "GetArchitectureRecommendationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetArchitectureRecommendationsOutput = {
    type = "structure",
    id = "GetArchitectureRecommendationsOutput",
    members = {
        LastAuditTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "lastAuditTimestamp",
                timestamp_format = "date-time",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Recommendations = {
            type = "list",
            member = M.Recommendation,
            traits = {
                json_name = "recommendations",
            },
        },
    },
}

M.GetCellInput = {
    type = "structure",
    id = "GetCellInput",
    members = {
        CellName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCellOutput = {
    type = "structure",
    id = "GetCellOutput",
    members = {
        CellArn = {
            type = "string",
            traits = {
                json_name = "cellArn",
            },
        },
        CellName = {
            type = "string",
            traits = {
                json_name = "cellName",
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        ParentReadinessScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "parentReadinessScopes",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetCellReadinessSummaryInput = {
    type = "structure",
    id = "GetCellReadinessSummaryInput",
    members = {
        CellName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetCellReadinessSummaryOutput = {
    type = "structure",
    id = "GetCellReadinessSummaryOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
            },
        },
        ReadinessChecks = {
            type = "list",
            member = M.ReadinessCheckSummary,
            traits = {
                json_name = "readinessChecks",
            },
        },
    },
}

M.GetReadinessCheckInput = {
    type = "structure",
    id = "GetReadinessCheckInput",
    members = {
        ReadinessCheckName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReadinessCheckOutput = {
    type = "structure",
    id = "GetReadinessCheckOutput",
    members = {
        ReadinessCheckArn = {
            type = "string",
            traits = {
                json_name = "readinessCheckArn",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
            },
        },
        ResourceSet = {
            type = "string",
            traits = {
                json_name = "resourceSet",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetReadinessCheckResourceStatusInput = {
    type = "structure",
    id = "GetReadinessCheckResourceStatusInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReadinessCheckResourceStatusOutput = {
    type = "structure",
    id = "GetReadinessCheckResourceStatusOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
            },
        },
        Rules = {
            type = "list",
            member = M.RuleResult,
            traits = {
                json_name = "rules",
            },
        },
    },
}

M.GetReadinessCheckStatusInput = {
    type = "structure",
    id = "GetReadinessCheckStatusInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReadinessCheckStatusOutput = {
    type = "structure",
    id = "GetReadinessCheckStatusOutput",
    members = {
        Messages = {
            type = "list",
            member = M.Message,
            traits = {
                json_name = "messages",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
            },
        },
        Resources = {
            type = "list",
            member = M.ResourceResult,
            traits = {
                json_name = "resources",
            },
        },
    },
}

M.GetRecoveryGroupInput = {
    type = "structure",
    id = "GetRecoveryGroupInput",
    members = {
        RecoveryGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRecoveryGroupOutput = {
    type = "structure",
    id = "GetRecoveryGroupOutput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        RecoveryGroupArn = {
            type = "string",
            traits = {
                json_name = "recoveryGroupArn",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                json_name = "recoveryGroupName",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetRecoveryGroupReadinessSummaryInput = {
    type = "structure",
    id = "GetRecoveryGroupReadinessSummaryInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRecoveryGroupReadinessSummaryOutput = {
    type = "structure",
    id = "GetRecoveryGroupReadinessSummaryOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Readiness = {
            type = "string",
            traits = {
                json_name = "readiness",
            },
        },
        ReadinessChecks = {
            type = "list",
            member = M.ReadinessCheckSummary,
            traits = {
                json_name = "readinessChecks",
            },
        },
    },
}

M.GetResourceSetInput = {
    type = "structure",
    id = "GetResourceSetInput",
    members = {
        ResourceSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourceSetOutput = {
    type = "structure",
    id = "GetResourceSetOutput",
    members = {
        ResourceSetArn = {
            type = "string",
            traits = {
                json_name = "resourceSetArn",
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ListCellsInput = {
    type = "structure",
    id = "ListCellsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListCellsOutput = {
    type = "structure",
    id = "ListCellsOutput",
    members = {
        Cells = {
            type = "list",
            member = M.CellOutput,
            traits = {
                json_name = "cells",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListCrossAccountAuthorizationsInput = {
    type = "structure",
    id = "ListCrossAccountAuthorizationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListCrossAccountAuthorizationsOutput = {
    type = "structure",
    id = "ListCrossAccountAuthorizationsOutput",
    members = {
        CrossAccountAuthorizations = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "crossAccountAuthorizations",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListReadinessChecksInput = {
    type = "structure",
    id = "ListReadinessChecksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListReadinessChecksOutput = {
    type = "structure",
    id = "ListReadinessChecksOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        ReadinessChecks = {
            type = "list",
            member = M.ReadinessCheckOutput,
            traits = {
                json_name = "readinessChecks",
            },
        },
    },
}

M.ListRecoveryGroupsInput = {
    type = "structure",
    id = "ListRecoveryGroupsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListRecoveryGroupsOutput = {
    type = "structure",
    id = "ListRecoveryGroupsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        RecoveryGroups = {
            type = "list",
            member = M.RecoveryGroupOutput,
            traits = {
                json_name = "recoveryGroups",
            },
        },
    },
}

M.ListResourceSetsInput = {
    type = "structure",
    id = "ListResourceSetsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListResourceSetsOutput = {
    type = "structure",
    id = "ListResourceSetsOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        ResourceSets = {
            type = "list",
            member = M.ResourceSetOutput,
            traits = {
                json_name = "resourceSets",
            },
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    id = "ListRulesInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
            },
        },
    },
}

M.ListRulesOperationOutput = {
    type = "structure",
    id = "ListRulesOperationOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        Rules = {
            type = "list",
            member = M.ListRulesOutput,
            traits = {
                json_name = "rules",
            },
        },
    },
}

M.ListTagsForResourcesInput = {
    type = "structure",
    id = "ListTagsForResourcesInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourcesOutput = {
    type = "structure",
    id = "ListTagsForResourcesOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateCellInput = {
    type = "structure",
    id = "UpdateCellInput",
    members = {
        CellName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
                required = true,
            },
        },
    },
}

M.UpdateCellOutput = {
    type = "structure",
    id = "UpdateCellOutput",
    members = {
        CellArn = {
            type = "string",
            traits = {
                json_name = "cellArn",
            },
        },
        CellName = {
            type = "string",
            traits = {
                json_name = "cellName",
            },
        },
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        ParentReadinessScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "parentReadinessScopes",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateReadinessCheckInput = {
    type = "structure",
    id = "UpdateReadinessCheckInput",
    members = {
        ReadinessCheckName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
                required = true,
            },
        },
    },
}

M.UpdateReadinessCheckOutput = {
    type = "structure",
    id = "UpdateReadinessCheckOutput",
    members = {
        ReadinessCheckArn = {
            type = "string",
            traits = {
                json_name = "readinessCheckArn",
            },
        },
        ReadinessCheckName = {
            type = "string",
            traits = {
                json_name = "readinessCheckName",
            },
        },
        ResourceSet = {
            type = "string",
            traits = {
                json_name = "resourceSet",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateRecoveryGroupInput = {
    type = "structure",
    id = "UpdateRecoveryGroupInput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
                required = true,
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRecoveryGroupOutput = {
    type = "structure",
    id = "UpdateRecoveryGroupOutput",
    members = {
        Cells = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "cells",
            },
        },
        RecoveryGroupArn = {
            type = "string",
            traits = {
                json_name = "recoveryGroupArn",
            },
        },
        RecoveryGroupName = {
            type = "string",
            traits = {
                json_name = "recoveryGroupName",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateResourceSetInput = {
    type = "structure",
    id = "UpdateResourceSetInput",
    members = {
        ResourceSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
                required = true,
            },
        },
    },
}

M.UpdateResourceSetOutput = {
    type = "structure",
    id = "UpdateResourceSetOutput",
    members = {
        ResourceSetArn = {
            type = "string",
            traits = {
                json_name = "resourceSetArn",
            },
        },
        ResourceSetName = {
            type = "string",
            traits = {
                json_name = "resourceSetName",
            },
        },
        ResourceSetType = {
            type = "string",
            traits = {
                json_name = "resourceSetType",
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "resources",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

return M
