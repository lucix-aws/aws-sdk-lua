local M = {}

M.CertificateValidationException = {
    type = "structure",
    id = "CertificateValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommandParameterValue = {
    type = "structure",
    id = "CommandParameterValue",
    members = {
        S = {
            type = "string",
        },
        B = {
            type = "boolean",
        },
        I = {
            type = "integer",
        },
        L = {
            type = "long",
        },
        D = {
            type = "double",
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
    id = "ConflictException",
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
    id = "DescribeJobExecutionInput",
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
            type = "long",
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
    id = "JobExecution",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        queuedAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        startedAt = {
            type = "long",
        },
        lastUpdatedAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        approximateSecondsBeforeTimedOut = {
            type = "long",
        },
        versionNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        executionNumber = {
            type = "long",
        },
        jobDocument = {
            type = "string",
        },
    },
}

M.DescribeJobExecutionOutput = {
    type = "structure",
    id = "DescribeJobExecutionOutput",
    members = {
        execution = M.JobExecution,
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TerminalStateException = {
    type = "structure",
    id = "TerminalStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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
    id = "GetPendingJobExecutionsInput",
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
    id = "JobExecutionSummary",
    members = {
        jobId = {
            type = "string",
        },
        queuedAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        startedAt = {
            type = "long",
        },
        lastUpdatedAt = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        versionNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        executionNumber = {
            type = "long",
        },
    },
}

M.GetPendingJobExecutionsOutput = {
    type = "structure",
    id = "GetPendingJobExecutionsOutput",
    members = {
        inProgressJobs = {
            type = "list",
            member = M.JobExecutionSummary,
        },
        queuedJobs = {
            type = "list",
            member = M.JobExecutionSummary,
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStateTransitionException = {
    type = "structure",
    id = "InvalidStateTransitionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartCommandExecutionInput = {
    type = "structure",
    id = "StartCommandExecutionInput",
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
            key = { type = "string" },
            value = M.CommandParameterValue,
        },
        executionTimeoutSeconds = {
            type = "long",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartCommandExecutionOutput = {
    type = "structure",
    id = "StartCommandExecutionOutput",
    members = {
        executionId = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartNextPendingJobExecutionInput = {
    type = "structure",
    id = "StartNextPendingJobExecutionInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        stepTimeoutInMinutes = {
            type = "long",
        },
    },
}

M.StartNextPendingJobExecutionOutput = {
    type = "structure",
    id = "StartNextPendingJobExecutionOutput",
    members = {
        execution = M.JobExecution,
    },
}

M.UpdateJobExecutionInput = {
    type = "structure",
    id = "UpdateJobExecutionInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        stepTimeoutInMinutes = {
            type = "long",
        },
        expectedVersion = {
            type = "long",
        },
        includeJobExecutionState = {
            type = "boolean",
        },
        includeJobDocument = {
            type = "boolean",
        },
        executionNumber = {
            type = "long",
        },
    },
}

M.JobExecutionState = {
    type = "structure",
    id = "JobExecutionState",
    members = {
        status = {
            type = "string",
        },
        statusDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        versionNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateJobExecutionOutput = {
    type = "structure",
    id = "UpdateJobExecutionOutput",
    members = {
        executionState = M.JobExecutionState,
        jobDocument = {
            type = "string",
        },
    },
}

return M
