local M = {}

M.DeleteHumanLoopInput = {
    type = "structure",
    id = "DeleteHumanLoopInput",
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
    id = "DeleteHumanLoopOutput",
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

M.DescribeHumanLoopInput = {
    type = "structure",
    id = "DescribeHumanLoopInput",
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
    id = "HumanLoopOutput",
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
    id = "DescribeHumanLoopOutput",
    members = {
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "ListHumanLoopsInput",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
            traits = {
                http_query = "CreationTimeAfter",
                timestamp_format = "date-time",
            },
        },
        CreationTimeBefore = {
            type = "timestamp",
            traits = {
                http_query = "CreationTimeBefore",
                timestamp_format = "date-time",
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
    id = "HumanLoopSummary",
    members = {
        HumanLoopName = {
            type = "string",
        },
        HumanLoopStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListHumanLoopsOutput",
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
    id = "ConflictException",
    error = "client",
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

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.HumanLoopDataAttributes = {
    type = "structure",
    id = "HumanLoopDataAttributes",
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
    id = "HumanLoopInput",
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
    id = "StartHumanLoopInput",
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
    id = "StartHumanLoopOutput",
    members = {
        HumanLoopArn = {
            type = "string",
        },
    },
}

M.StopHumanLoopInput = {
    type = "structure",
    id = "StopHumanLoopInput",
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
    id = "StopHumanLoopOutput",
}

return M
