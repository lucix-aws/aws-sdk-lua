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
    members = {
        execution = M.JobExecution,
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
            key = { type = "string" },
            value = M.CommandParameterValue,
        },
        executionTimeoutSeconds = {
            type = "long",
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
    members = {
        execution = M.JobExecution,
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
    members = {
        executionState = M.JobExecutionState,
        jobDocument = {
            type = "string",
        },
    },
}

return M
