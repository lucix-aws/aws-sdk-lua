local M = {}

M.CellOutput = {
    type = "structure",
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
    members = {
        LastCheckedTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "lastCheckedTimestamp",
                required = true,
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
}

M.ResourceNotFoundException = {
    type = "structure",
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
}

M.DeleteReadinessCheckInput = {
    type = "structure",
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
}

M.DeleteRecoveryGroupInput = {
    type = "structure",
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
}

M.DeleteResourceSetInput = {
    type = "structure",
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
}

M.GetArchitectureRecommendationsInput = {
    type = "structure",
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
    members = {
        LastAuditTimestamp = {
            type = "timestamp",
            traits = {
                json_name = "lastAuditTimestamp",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateCellInput = {
    type = "structure",
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
