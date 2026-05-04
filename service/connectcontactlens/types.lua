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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndOffsetMillis = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MatchedDetails = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndOffsetChar = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IssueDetected = {
    type = "structure",
    members = {
        CharacterOffsets = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndOffsetMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Sentiment = {
            type = "string",
        },
        IssuesDetected = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RealtimeContactAnalysisSegment = {
    type = "structure",
    members = {
        Transcript = {
            type = "structure",
        },
        Categories = {
            type = "structure",
        },
        PostContactSummary = {
            type = "structure",
        },
    },
}

M.ListRealtimeContactAnalysisSegmentsOutput = {
    type = "structure",
    members = {
        Segments = {
            type = "list",
            member_type = "structure",
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
