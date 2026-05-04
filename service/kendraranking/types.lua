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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityUnitsConfiguration = {
    type = "structure",
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
        },
    },
}

M.CreateRescoreExecutionPlanOutput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
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

M.DeleteRescoreExecutionPlanInput = {
    type = "structure",
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

M.DescribeRescoreExecutionPlanInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Document = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateRescoreExecutionPlanInput = {
    type = "structure",
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
}

return M
