local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActError = {
    type = "structure",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolInputSchema = {
    type = "union",
    members = {
        json = {
            type = "document",
        },
    },
}

M.ToolSpec = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolInputSchema }),
    },
}

M.CreateActInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        task = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolSpecs = {
            type = "list",
            member = M.ToolSpec,
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ActStatus = {
    RUNNING = "RUNNING",
    PENDING_CLIENT_ACTION = "PENDING_CLIENT_ACTION",
    PENDING_HUMAN_ACTION = "PENDING_HUMAN_ACTION",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.CreateActOutput = {
    type = "structure",
    members = {
        actId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerExceptionReason = {
    INVALID_MODEL_GENERATION = "InvalidModelGeneration",
    TOKEN_LIMIT_EXCEEDED = "RequestTokenLimitExceeded",
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
        reason = {
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    INVALID_STATUS = "InvalidStatus",
    GUARDRAIL_INTERVENED = "GuardrailIntervened",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.CallResultContent = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CallResult = {
    type = "structure",
    members = {
        callId = {
            type = "string",
        },
        content = {
            type = "list",
            member = M.CallResultContent,
            traits = {
                required = true,
            },
        },
    },
}

M.InvokeActStepInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        callResults = {
            type = "list",
            member = M.CallResult,
            traits = {
                required = true,
            },
        },
        previousStepId = {
            type = "string",
        },
    },
}

M.Call = {
    type = "structure",
    members = {
        callId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "document",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvokeActStepOutput = {
    type = "structure",
    members = {
        calls = {
            type = "list",
            member = M.Call,
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SortOrder = {
    ASC = "Ascending",
    DESC = "Descending",
}

M.ListActsInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_query = "workflowRunId",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.TraceLocationType = {
    S3 = "S3",
}

M.TraceLocation = {
    type = "structure",
    members = {
        locationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActSummary = {
    type = "structure",
    members = {
        workflowRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        traceLocation = M.TraceLocation,
    },
}

M.ListActsOutput = {
    type = "structure",
    members = {
        actSummaries = {
            type = "list",
            member = M.ActSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateActInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actId = {
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
        error = M.ActError,
    },
}

M.UpdateActOutput = {
    type = "structure",
}

M.ListModelsInput = {
    type = "structure",
    members = {
        clientCompatibilityVersion = {
            type = "integer",
            traits = {
                http_query = "clientCompatibilityVersion",
                required = true,
            },
        },
    },
}

M.CompatibilityInformation = {
    type = "structure",
    members = {
        clientCompatibilityVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        supportedModelIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ModelAlias = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        latestModelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolvedModelId = {
            type = "string",
        },
    },
}

M.ModelStatus = {
    ACTIVE = "ACTIVE",
    LEGACY = "LEGACY",
    DEPRECATED = "DEPRECATED",
    PREVIEW = "PREVIEW",
}

M.ModelLifecycle = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelSummary = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelLifecycle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ModelLifecycle }),
        minimumCompatibilityVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelsOutput = {
    type = "structure",
    members = {
        modelSummaries = {
            type = "list",
            member = M.ModelSummary,
            traits = {
                required = true,
            },
        },
        modelAliases = {
            type = "list",
            member = M.ModelAlias,
            traits = {
                required = true,
            },
        },
        compatibilityInformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CompatibilityInformation }),
    },
}

M.CreateSessionInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.SessionSummary = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    members = {
        sessionSummaries = {
            type = "list",
            member = M.SessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WorkflowExportConfig = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3KeyPrefix = {
            type = "string",
        },
    },
}

M.CreateWorkflowDefinitionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        exportConfig = M.WorkflowExportConfig,
        clientToken = {
            type = "string",
        },
    },
}

M.WorkflowDefinitionStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.CreateWorkflowDefinitionOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowDefinitionInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowDefinitionOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkflowDefinitionInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWorkflowDefinitionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        exportConfig = M.WorkflowExportConfig,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowDefinitionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.WorkflowDefinitionSummary = {
    type = "structure",
    members = {
        workflowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowDefinitionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowDefinitionsOutput = {
    type = "structure",
    members = {
        workflowDefinitionSummaries = {
            type = "list",
            member = M.WorkflowDefinitionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ClientInfo = {
    type = "structure",
    members = {
        compatibilityVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        sdkVersion = {
            type = "string",
        },
    },
}

M.CreateWorkflowRunInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        clientInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientInfo }),
    },
}

M.WorkflowRunStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    DELETING = "DELETING",
}

M.CreateWorkflowRunOutput = {
    type = "structure",
    members = {
        workflowRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowRunInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkflowRunOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkflowRunInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWorkflowRunOutput = {
    type = "structure",
    members = {
        workflowRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
        },
    },
}

M.ListWorkflowRunsInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.WorkflowRunSummary = {
    type = "structure",
    members = {
        workflowRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        traceLocation = M.TraceLocation,
    },
}

M.ListWorkflowRunsOutput = {
    type = "structure",
    members = {
        workflowRunSummaries = {
            type = "list",
            member = M.WorkflowRunSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateWorkflowRunInput = {
    type = "structure",
    members = {
        workflowDefinitionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workflowRunId = {
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
    },
}

M.UpdateWorkflowRunOutput = {
    type = "structure",
}

return M
