local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConfigurationException = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteNotificationRuleInput = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.DeleteTargetInput = {
    type = "structure",
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
}

M.DescribeNotificationRuleInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UpdateNotificationRuleInput = {
    type = "structure",
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
}

return M
