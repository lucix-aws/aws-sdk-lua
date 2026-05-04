local M = {}

M.DeleteHumanLoopInput = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteHumanLoopOutput = {
    type = "structure",
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

M.ResourceNotFoundException = {
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

M.DescribeHumanLoopInput = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HumanLoopOutput = {
    type = "structure",
    members = {
        OutputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HumanLoopStatus = {
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    COMPLETED = "Completed",
    STOPPED = "Stopped",
    STOPPING = "Stopping",
}

M.DescribeHumanLoopOutput = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FailureReason = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        HumanLoopStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopOutput = M.HumanLoopOutput,
    },
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ListHumanLoopsInput = {
    type = "structure",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "CreationTimeAfter",
            },
        },
        CreationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "CreationTimeBefore",
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                http_query = "FlowDefinitionArn",
                required = true,
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                http_query = "SortOrder",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.HumanLoopSummary = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
        },
        HumanLoopStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        FlowDefinitionArn = {
            type = "string",
        },
    },
}

M.ListHumanLoopsOutput = {
    type = "structure",
    members = {
        HumanLoopSummaries = {
            type = "list",
            member = M.HumanLoopSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.HumanLoopDataAttributes = {
    type = "structure",
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.HumanLoopInput = {
    type = "structure",
    members = {
        InputContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartHumanLoopInput = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HumanLoopInput }),
        DataAttributes = M.HumanLoopDataAttributes,
    },
}

M.StartHumanLoopOutput = {
    type = "structure",
    members = {
        HumanLoopArn = {
            type = "string",
        },
    },
}

M.StopHumanLoopInput = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopHumanLoopOutput = {
    type = "structure",
}

return M
