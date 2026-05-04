local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConfigurationException = {
    type = "structure",
    id = "ConfigurationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetailType = {
    BASIC = "BASIC",
    FULL = "FULL",
}

M.NotificationRuleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        TargetType = {
            type = "string",
        },
        TargetAddress = {
            type = "string",
        },
    },
}

M.CreateNotificationRuleInput = {
    type = "structure",
    id = "CreateNotificationRuleInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventTypeIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
        DetailType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
    },
}

M.CreateNotificationRuleOutput = {
    type = "structure",
    id = "CreateNotificationRuleOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.DeleteNotificationRuleInput = {
    type = "structure",
    id = "DeleteNotificationRuleInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotificationRuleOutput = {
    type = "structure",
    id = "DeleteNotificationRuleOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteTargetInput = {
    type = "structure",
    id = "DeleteTargetInput",
    members = {
        TargetAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceUnsubscribeAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteTargetOutput = {
    type = "structure",
    id = "DeleteTargetOutput",
}

M.DescribeNotificationRuleInput = {
    type = "structure",
    id = "DescribeNotificationRuleInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventTypeSummary = {
    type = "structure",
    id = "EventTypeSummary",
    members = {
        EventTypeId = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        EventTypeName = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.TargetStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    UNREACHABLE = "UNREACHABLE",
    INACTIVE = "INACTIVE",
    DEACTIVATED = "DEACTIVATED",
}

M.TargetSummary = {
    type = "structure",
    id = "TargetSummary",
    members = {
        TargetAddress = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
    },
}

M.DescribeNotificationRuleOutput = {
    type = "structure",
    id = "DescribeNotificationRuleOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        EventTypes = {
            type = "list",
            member = M.EventTypeSummary,
        },
        Resource = {
            type = "string",
        },
        Targets = {
            type = "list",
            member = M.TargetSummary,
        },
        DetailType = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastModifiedTimestamp = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListEventTypesFilterName = {
    RESOURCE_TYPE = "RESOURCE_TYPE",
    SERVICE_NAME = "SERVICE_NAME",
}

M.ListEventTypesFilter = {
    type = "structure",
    id = "ListEventTypesFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventTypesInput = {
    type = "structure",
    id = "ListEventTypesInput",
    members = {
        Filters = {
            type = "list",
            member = M.ListEventTypesFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEventTypesOutput = {
    type = "structure",
    id = "ListEventTypesOutput",
    members = {
        EventTypes = {
            type = "list",
            member = M.EventTypeSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNotificationRulesFilterName = {
    EVENT_TYPE_ID = "EVENT_TYPE_ID",
    CREATED_BY = "CREATED_BY",
    RESOURCE = "RESOURCE",
    TARGET_ADDRESS = "TARGET_ADDRESS",
}

M.ListNotificationRulesFilter = {
    type = "structure",
    id = "ListNotificationRulesFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListNotificationRulesInput = {
    type = "structure",
    id = "ListNotificationRulesInput",
    members = {
        Filters = {
            type = "list",
            member = M.ListNotificationRulesFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.NotificationRuleSummary = {
    type = "structure",
    id = "NotificationRuleSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListNotificationRulesOutput = {
    type = "structure",
    id = "ListNotificationRulesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        NotificationRules = {
            type = "list",
            member = M.NotificationRuleSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListTargetsFilterName = {
    TARGET_TYPE = "TARGET_TYPE",
    TARGET_ADDRESS = "TARGET_ADDRESS",
    TARGET_STATUS = "TARGET_STATUS",
}

M.ListTargetsFilter = {
    type = "structure",
    id = "ListTargetsFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTargetsInput = {
    type = "structure",
    id = "ListTargetsInput",
    members = {
        Filters = {
            type = "list",
            member = M.ListTargetsFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTargetsOutput = {
    type = "structure",
    id = "ListTargetsOutput",
    members = {
        Targets = {
            type = "list",
            member = M.TargetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SubscribeInput = {
    type = "structure",
    id = "SubscribeInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Target }),
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.SubscribeOutput = {
    type = "structure",
    id = "SubscribeOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UnsubscribeInput = {
    type = "structure",
    id = "UnsubscribeInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsubscribeOutput = {
    type = "structure",
    id = "UnsubscribeOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        Arn = {
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

M.UpdateNotificationRuleInput = {
    type = "structure",
    id = "UpdateNotificationRuleInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EventTypeIds = {
            type = "list",
            member = { type = "string" },
        },
        Targets = {
            type = "list",
            member = M.Target,
        },
        DetailType = {
            type = "string",
        },
    },
}

M.UpdateNotificationRuleOutput = {
    type = "structure",
    id = "UpdateNotificationRuleOutput",
}

return M
