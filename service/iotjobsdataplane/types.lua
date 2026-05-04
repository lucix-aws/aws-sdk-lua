local M = {}

M.CertificateValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommandParameterValue = {
    type = "structure",
    members = {
        S = {
            type = "string",
        },
        B = {
            type = "boolean",
        },
        I = {
            type = "number",
        },
        L = {
            type = "number",
        },
        D = {
            type = "number",
        },
        BIN = {
            type = "blob",
        },
        UL = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
    },
}

M.DescribeJobExecutionInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includeJobDocument = {
            type = "boolean",
            traits = {
                http_query = "includeJobDocument",
            },
        },
        executionNumber = {
            type = "number",
            traits = {
                http_query = "executionNumber",
            },
        },
    },
}

M.JobExecutionStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    REJECTED = "REJECTED",
    REMOVED = "REMOVED",
    CANCELED = "CANCELED",
}

M.JobExecution = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        thingName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        queuedAt = {
            type = "number",
        },
        startedAt = {
            type = "number",
        },
        lastUpdatedAt = {
            type = "number",
        },
        approximateSecondsBeforeTimedOut = {
            type = "number",
        },
        versionNumber = {
            type = "number",
        },
        executionNumber = {
            type = "number",
        },
        jobDocument = {
            type = "string",
        },
    },
}

M.DescribeJobExecutionOutput = {
    type = "structure",
    members = {
        execution = {
            type = "structure",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TerminalStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        payload = {
            type = "blob",
        },
    },
}

M.GetPendingJobExecutionsInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobExecutionSummary = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        queuedAt = {
            type = "number",
        },
        startedAt = {
            type = "number",
        },
        lastUpdatedAt = {
            type = "number",
        },
        versionNumber = {
            type = "number",
        },
        executionNumber = {
            type = "number",
        },
    },
}

M.GetPendingJobExecutionsOutput = {
    type = "structure",
    members = {
        inProgressJobs = {
            type = "list",
            member_type = "structure",
        },
        queuedJobs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStateTransitionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartCommandExecutionInput = {
    type = "structure",
    members = {
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commandArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        executionTimeoutSeconds = {
            type = "number",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartCommandExecutionOutput = {
    type = "structure",
    members = {
        executionId = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartNextPendingJobExecutionInput = {
    type = "structure",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        stepTimeoutInMinutes = {
            type = "number",
        },
    },
}

M.StartNextPendingJobExecutionOutput = {
    type = "structure",
    members = {
        execution = {
            type = "structure",
        },
    },
}

M.UpdateJobExecutionInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        thingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        stepTimeoutInMinutes = {
            type = "number",
        },
        expectedVersion = {
            type = "number",
        },
        includeJobExecutionState = {
            type = "boolean",
        },
        includeJobDocument = {
            type = "boolean",
        },
        executionNumber = {
            type = "number",
        },
    },
}

M.JobExecutionState = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        versionNumber = {
            type = "number",
        },
    },
}

M.UpdateJobExecutionOutput = {
    type = "structure",
    members = {
        executionState = {
            type = "structure",
        },
        jobDocument = {
            type = "string",
        },
    },
}

return M
