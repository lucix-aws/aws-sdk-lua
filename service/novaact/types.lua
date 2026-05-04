local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ActError",
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
    id = "ConflictException",
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
    id = "ToolInputSchema",
    members = {
        json = {
            type = "document",
        },
    },
}

M.ToolSpec = {
    type = "structure",
    id = "ToolSpec",
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
    id = "CreateActInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateActOutput",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "CallResultContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.CallResult = {
    type = "structure",
    id = "CallResult",
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
    id = "InvokeActStepInput",
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
    id = "Call",
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
    id = "InvokeActStepOutput",
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
    id = "ListActsInput",
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
    id = "TraceLocation",
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
    id = "ActSummary",
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
                timestamp_format = "date-time",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        traceLocation = M.TraceLocation,
    },
}

M.ListActsOutput = {
    type = "structure",
    id = "ListActsOutput",
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
    id = "UpdateActInput",
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
    id = "UpdateActOutput",
}

M.ListModelsInput = {
    type = "structure",
    id = "ListModelsInput",
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
    id = "CompatibilityInformation",
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
    id = "ModelAlias",
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
    id = "ModelLifecycle",
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
    id = "ModelSummary",
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
    id = "ListModelsOutput",
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
    id = "CreateSessionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    id = "CreateSessionOutput",
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
    id = "ListSessionsInput",
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
    id = "SessionSummary",
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
    id = "ListSessionsOutput",
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
    id = "WorkflowExportConfig",
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
    id = "CreateWorkflowDefinitionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.WorkflowDefinitionStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.CreateWorkflowDefinitionOutput = {
    type = "structure",
    id = "CreateWorkflowDefinitionOutput",
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
    id = "DeleteWorkflowDefinitionInput",
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
    id = "DeleteWorkflowDefinitionOutput",
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
    id = "GetWorkflowDefinitionInput",
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
    id = "GetWorkflowDefinitionOutput",
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
                timestamp_format = "date-time",
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
    id = "ListWorkflowDefinitionsInput",
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
    id = "WorkflowDefinitionSummary",
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
                timestamp_format = "date-time",
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
    id = "ListWorkflowDefinitionsOutput",
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
    id = "ClientInfo",
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
    id = "CreateWorkflowRunInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateWorkflowRunOutput",
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
    id = "DeleteWorkflowRunInput",
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
    id = "DeleteWorkflowRunOutput",
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
    id = "GetWorkflowRunInput",
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
    id = "GetWorkflowRunOutput",
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
                timestamp_format = "date-time",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListWorkflowRunsInput",
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
    id = "WorkflowRunSummary",
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
                timestamp_format = "date-time",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        traceLocation = M.TraceLocation,
    },
}

M.ListWorkflowRunsOutput = {
    type = "structure",
    id = "ListWorkflowRunsOutput",
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
    id = "UpdateWorkflowRunInput",
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
    id = "UpdateWorkflowRunOutput",
}

return M
