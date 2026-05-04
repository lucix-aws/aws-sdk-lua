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

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityUnitsConfiguration = {
    type = "structure",
    id = "CapacityUnitsConfiguration",
    members = {
        RescoreCapacityUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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

M.CreateRescoreExecutionPlanInput = {
    type = "structure",
    id = "CreateRescoreExecutionPlanInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CapacityUnits = M.CapacityUnitsConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateRescoreExecutionPlanOutput = {
    type = "structure",
    id = "CreateRescoreExecutionPlanOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
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
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.DeleteRescoreExecutionPlanInput = {
    type = "structure",
    id = "DeleteRescoreExecutionPlanInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRescoreExecutionPlanOutput = {
    type = "structure",
    id = "DeleteRescoreExecutionPlanOutput",
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

M.DescribeRescoreExecutionPlanInput = {
    type = "structure",
    id = "DescribeRescoreExecutionPlanInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RescoreExecutionPlanStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DescribeRescoreExecutionPlanOutput = {
    type = "structure",
    id = "DescribeRescoreExecutionPlanOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CapacityUnits = M.CapacityUnitsConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ListRescoreExecutionPlansInput = {
    type = "structure",
    id = "ListRescoreExecutionPlansInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RescoreExecutionPlanSummary = {
    type = "structure",
    id = "RescoreExecutionPlanSummary",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListRescoreExecutionPlansOutput = {
    type = "structure",
    id = "ListRescoreExecutionPlansOutput",
    members = {
        SummaryItems = {
            type = "list",
            member = M.RescoreExecutionPlanSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceARN = {
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    id = "ResourceUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Document = {
    type = "structure",
    id = "Document",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        TokenizedTitle = {
            type = "list",
            member = { type = "string" },
        },
        TokenizedBody = {
            type = "list",
            member = { type = "string" },
        },
        OriginalScore = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.RescoreInput = {
    type = "structure",
    id = "RescoreInput",
    members = {
        RescoreExecutionPlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SearchQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Documents = {
            type = "list",
            member = M.Document,
            traits = {
                required = true,
            },
        },
    },
}

M.RescoreResultItem = {
    type = "structure",
    id = "RescoreResultItem",
    members = {
        DocumentId = {
            type = "string",
        },
        Score = {
            type = "float",
        },
    },
}

M.RescoreOutput = {
    type = "structure",
    id = "RescoreOutput",
    members = {
        RescoreId = {
            type = "string",
        },
        ResultItems = {
            type = "list",
            member = M.RescoreResultItem,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateRescoreExecutionPlanInput = {
    type = "structure",
    id = "UpdateRescoreExecutionPlanInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CapacityUnits = M.CapacityUnitsConfiguration,
    },
}

M.UpdateRescoreExecutionPlanOutput = {
    type = "structure",
    id = "UpdateRescoreExecutionPlanOutput",
}

return M
