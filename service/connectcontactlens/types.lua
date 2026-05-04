local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListRealtimeContactAnalysisSegmentsInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PointOfInterest = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndOffsetMillis = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CategoryDetails = {
    type = "structure",
    members = {
        PointsOfInterest = {
            type = "list",
            member = M.PointOfInterest,
            traits = {
                required = true,
            },
        },
    },
}

M.Categories = {
    type = "structure",
    members = {
        MatchedCategories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MatchedDetails = {
            type = "map",
            key = { type = "string" },
            value = M.CategoryDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.PostContactSummaryFailureCode = {
    QUOTA_EXCEEDED = "QUOTA_EXCEEDED",
    INSUFFICIENT_CONVERSATION_CONTENT = "INSUFFICIENT_CONVERSATION_CONTENT",
    FAILED_SAFETY_GUIDELINES = "FAILED_SAFETY_GUIDELINES",
    INVALID_ANALYSIS_CONFIGURATION = "INVALID_ANALYSIS_CONFIGURATION",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.PostContactSummaryStatus = {
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.PostContactSummary = {
    type = "structure",
    members = {
        Content = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureCode = {
            type = "string",
        },
    },
}

M.CharacterOffsets = {
    type = "structure",
    members = {
        BeginOffsetChar = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndOffsetChar = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.IssueDetected = {
    type = "structure",
    members = {
        CharacterOffsets = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CharacterOffsets }),
    },
}

M.SentimentValue = {
    POSITIVE = "POSITIVE",
    NEUTRAL = "NEUTRAL",
    NEGATIVE = "NEGATIVE",
}

M.Transcript = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BeginOffsetMillis = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndOffsetMillis = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Sentiment = {
            type = "string",
        },
        IssuesDetected = {
            type = "list",
            member = M.IssueDetected,
        },
    },
}

M.RealtimeContactAnalysisSegment = {
    type = "structure",
    members = {
        Transcript = M.Transcript,
        Categories = M.Categories,
        PostContactSummary = M.PostContactSummary,
    },
}

M.ListRealtimeContactAnalysisSegmentsOutput = {
    type = "structure",
    members = {
        Segments = {
            type = "list",
            member = M.RealtimeContactAnalysisSegment,
            traits = {
                required = true,
            },
        },
        NextToken = {
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
            traits = {
                required = true,
            },
        },
    },
}

return M
