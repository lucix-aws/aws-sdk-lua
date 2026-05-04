local M = {}

M.ResourceTag = {
    type = "structure",
    members = {
        ResourceTagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagValue = {
            type = "string",
        },
    },
}

M.UnlockDelayUnit = {
    DAYS = "DAYS",
}

M.UnlockDelay = {
    type = "structure",
    members = {
        UnlockDelayValue = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        UnlockDelayUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LockConfiguration = {
    type = "structure",
    members = {
        UnlockDelay = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UnlockDelay }),
    },
}

M.ResourceType = {
    EBS_SNAPSHOT = "EBS_SNAPSHOT",
    EC2_IMAGE = "EC2_IMAGE",
    EBS_VOLUME = "EBS_VOLUME",
}

M.RetentionPeriodUnit = {
    DAYS = "DAYS",
}

M.RetentionPeriod = {
    type = "structure",
    members = {
        RetentionPeriodValue = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RetentionPeriodUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
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

M.CreateRuleInput = {
    type = "structure",
    members = {
        RetentionPeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionPeriod }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        LockConfiguration = M.LockConfiguration,
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.LockState = {
    LOCKED = "locked",
    PENDING_UNLOCK = "pending_unlock",
    UNLOCKED = "unlocked",
}

M.RuleStatus = {
    PENDING = "pending",
    AVAILABLE = "available",
}

M.CreateRuleOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ResourceType = {
            type = "string",
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        Status = {
            type = "string",
        },
        LockConfiguration = M.LockConfiguration,
        LockState = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededExceptionReason = {
    SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    INVALID_PAGE_TOKEN = "INVALID_PAGE_TOKEN",
    INVALID_PARAMETER_VALUE = "INVALID_PARAMETER_VALUE",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ConflictExceptionReason = {
    INVALID_RULE_STATE = "INVALID_RULE_STATE",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
}

M.ResourceNotFoundExceptionReason = {
    RULE_NOT_FOUND = "RULE_NOT_FOUND",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.GetRuleInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRuleOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        Status = {
            type = "string",
        },
        LockConfiguration = M.LockConfiguration,
        LockState = {
            type = "string",
        },
        LockEndTime = {
            type = "timestamp",
        },
        RuleArn = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        LockState = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.RuleSummary = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        LockState = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member = M.RuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.LockRuleInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LockConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LockConfiguration }),
    },
}

M.LockRuleOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        Status = {
            type = "string",
        },
        LockConfiguration = M.LockConfiguration,
        LockState = {
            type = "string",
        },
        RuleArn = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
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
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UnlockRuleInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UnlockRuleOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        Status = {
            type = "string",
        },
        LockConfiguration = M.LockConfiguration,
        LockState = {
            type = "string",
        },
        LockEndTime = {
            type = "timestamp",
        },
        RuleArn = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
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

M.UpdateRuleInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RetentionPeriod = M.RetentionPeriod,
        Description = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        RetentionPeriod = M.RetentionPeriod,
        Description = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
        Status = {
            type = "string",
        },
        LockState = {
            type = "string",
        },
        LockEndTime = {
            type = "timestamp",
        },
        RuleArn = {
            type = "string",
        },
        ExcludeResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

return M
