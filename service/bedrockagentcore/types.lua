local M = {}

M.AgentCardDefinition = {
    type = "structure",
    id = "AgentCardDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.A2aDescriptor = {
    type = "structure",
    id = "A2aDescriptor",
    members = {
        agentCard = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentCardDefinition }),
    },
}

M.PerVariantOnlineEvaluationConfig = {
    type = "structure",
    id = "PerVariantOnlineEvaluationConfig",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ABTestEvaluationConfig = {
    type = "union",
    id = "ABTestEvaluationConfig",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
        },
        perVariantOnlineEvaluationConfig = {
            type = "list",
            member = M.PerVariantOnlineEvaluationConfig,
        },
    },
}

M.ABTestExecutionStatus = {
    PAUSED = "PAUSED",
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    NOT_STARTED = "NOT_STARTED",
}

M.ControlStats = {
    type = "structure",
    id = "ControlStats",
    members = {
        variantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        mean = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfidenceInterval = {
    type = "structure",
    id = "ConfidenceInterval",
    members = {
        lower = {
            type = "double",
        },
        upper = {
            type = "double",
        },
    },
}

M.VariantResult = {
    type = "structure",
    id = "VariantResult",
    members = {
        variantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        mean = {
            type = "double",
            traits = {
                required = true,
            },
        },
        absoluteChange = {
            type = "double",
        },
        percentChange = {
            type = "double",
        },
        pValue = {
            type = "double",
        },
        confidenceInterval = M.ConfidenceInterval,
        isSignificant = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluatorMetric = {
    type = "structure",
    id = "EvaluatorMetric",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controlStats = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ControlStats }),
        variantResults = {
            type = "list",
            member = M.VariantResult,
            traits = {
                required = true,
            },
        },
    },
}

M.ABTestResults = {
    type = "structure",
    id = "ABTestResults",
    members = {
        analysisTimestamp = {
            type = "timestamp",
        },
        evaluatorMetrics = {
            type = "list",
            member = M.EvaluatorMetric,
            traits = {
                required = true,
            },
        },
    },
}

M.ABTestStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    FAILED = "FAILED",
}

M.ABTestSummary = {
    type = "structure",
    id = "ABTestSummary",
    members = {
        abTestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abTestArn = {
            type = "string",
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        gatewayArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActorSummary = {
    type = "structure",
    id = "ActorSummary",
    members = {
        actorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgentCardInput = {
    type = "structure",
    id = "GetAgentCardInput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
                idempotency_token = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        qualifier = {
            type = "string",
            traits = {
                http_query = "qualifier",
            },
        },
    },
}

M.GetAgentCardOutput = {
    type = "structure",
    id = "GetAgentCardOutput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
            },
        },
        agentCard = {
            type = "document",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
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

M.RuntimeClientError = {
    type = "structure",
    id = "RuntimeClientError",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
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
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION = "IdempotentParameterMismatchException",
    ROOT_EVENT_IN_OTHER_SESSION = "EventInOtherSession",
    RESOURCE_CONFLICT = "ResourceConflict",
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

M.InvokeAgentRuntimeInput = {
    type = "structure",
    id = "InvokeAgentRuntimeInput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        mcpSessionId = {
            type = "string",
            traits = {
                http_header = "Mcp-Session-Id",
            },
        },
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
                idempotency_token = true,
            },
        },
        mcpProtocolVersion = {
            type = "string",
            traits = {
                http_header = "Mcp-Protocol-Version",
            },
        },
        runtimeUserId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-User-Id",
            },
        },
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        traceState = {
            type = "string",
            traits = {
                http_header = "tracestate",
            },
        },
        baggage = {
            type = "string",
            traits = {
                http_header = "baggage",
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        qualifier = {
            type = "string",
            traits = {
                http_query = "qualifier",
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        payload = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.InvokeAgentRuntimeOutput = {
    type = "structure",
    id = "InvokeAgentRuntimeOutput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
            },
        },
        mcpSessionId = {
            type = "string",
            traits = {
                http_header = "Mcp-Session-Id",
            },
        },
        mcpProtocolVersion = {
            type = "string",
            traits = {
                http_header = "Mcp-Protocol-Version",
            },
        },
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        traceState = {
            type = "string",
            traits = {
                http_header = "tracestate",
            },
        },
        baggage = {
            type = "string",
            traits = {
                http_header = "baggage",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        response = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
    },
}

M.InvokeAgentRuntimeCommandRequestBody = {
    type = "structure",
    id = "InvokeAgentRuntimeCommandRequestBody",
    members = {
        command = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeout = {
            type = "integer",
        },
    },
}

M.InvokeAgentRuntimeCommandInput = {
    type = "structure",
    id = "InvokeAgentRuntimeCommandInput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
                idempotency_token = true,
            },
        },
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        traceState = {
            type = "string",
            traits = {
                http_header = "tracestate",
            },
        },
        baggage = {
            type = "string",
            traits = {
                http_header = "baggage",
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        qualifier = {
            type = "string",
            traits = {
                http_query = "qualifier",
            },
        },
        accountId = {
            type = "string",
            traits = {
                http_query = "accountId",
            },
        },
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeAgentRuntimeCommandRequestBody }),
    },
}

M.ContentDeltaEvent = {
    type = "structure",
    id = "ContentDeltaEvent",
    members = {
        stdout = {
            type = "string",
        },
        stderr = {
            type = "string",
        },
    },
}

M.ContentStartEvent = {
    type = "structure",
    id = "ContentStartEvent",
}

M.CommandExecutionStatus = {
    COMPLETED = "COMPLETED",
    TIMED_OUT = "TIMED_OUT",
}

M.ContentStopEvent = {
    type = "structure",
    id = "ContentStopEvent",
    members = {
        exitCode = {
            type = "integer",
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

M.ResponseChunk = {
    type = "structure",
    id = "ResponseChunk",
    members = {
        contentStart = M.ContentStartEvent,
        contentDelta = M.ContentDeltaEvent,
        contentStop = M.ContentStopEvent,
    },
}

M.InvokeAgentRuntimeCommandStreamOutput = {
    type = "union",
    id = "InvokeAgentRuntimeCommandStreamOutput",
    members = {
        chunk = M.ResponseChunk,
        accessDeniedException = M.AccessDeniedException,
        internalServerException = M.InternalServerException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        validationException = M.ValidationException,
        runtimeClientError = M.RuntimeClientError,
    },
}

M.InvokeAgentRuntimeCommandOutput = {
    type = "structure",
    id = "InvokeAgentRuntimeCommandOutput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
            },
        },
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        traceState = {
            type = "string",
            traits = {
                http_header = "tracestate",
            },
        },
        baggage = {
            type = "string",
            traits = {
                http_header = "baggage",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
        stream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeAgentRuntimeCommandStreamOutput }),
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
    },
}

M.StopRuntimeSessionInput = {
    type = "structure",
    id = "StopRuntimeSessionInput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
                required = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        qualifier = {
            type = "string",
            traits = {
                http_query = "qualifier",
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

M.StopRuntimeSessionOutput = {
    type = "structure",
    id = "StopRuntimeSessionOutput",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
            },
        },
        statusCode = {
            type = "integer",
            traits = {
                http_response_code = true,
            },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SkillDefinition = {
    type = "structure",
    id = "SkillDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.SkillMdDefinition = {
    type = "structure",
    id = "SkillMdDefinition",
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.AgentSkillsDescriptor = {
    type = "structure",
    id = "AgentSkillsDescriptor",
    members = {
        skillMd = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SkillMdDefinition }),
        skillDefinition = M.SkillDefinition,
    },
}

M.CloudWatchLogsFilterOperator = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
    GREATER_THAN_OR_EQUAL = "GreaterThanOrEqual",
    LESS_THAN_OR_EQUAL = "LessThanOrEqual",
    CONTAINS = "Contains",
    NOT_CONTAINS = "NotContains",
}

M.FilterValue = {
    type = "union",
    id = "FilterValue",
    members = {
        stringValue = {
            type = "string",
        },
        doubleValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
    },
}

M.CloudWatchLogsFilter = {
    type = "structure",
    id = "CloudWatchLogsFilter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterValue }),
    },
}

M.CloudWatchLogsRule = {
    type = "structure",
    id = "CloudWatchLogsRule",
    members = {
        filters = {
            type = "list",
            member = M.CloudWatchLogsFilter,
        },
    },
}

M.CloudWatchLogsTraceConfig = {
    type = "structure",
    id = "CloudWatchLogsTraceConfig",
    members = {
        logGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        serviceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        rule = M.CloudWatchLogsRule,
    },
}

M.AgentTracesConfig = {
    type = "union",
    id = "AgentTracesConfig",
    members = {
        sessionSpans = {
            type = "list",
            member = { type = "document" },
        },
        cloudwatchLogs = M.CloudWatchLogsTraceConfig,
    },
}

M.SaveBrowserSessionProfileInput = {
    type = "structure",
    id = "SaveBrowserSessionProfileInput",
    members = {
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        profileIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        browserIdentifier = {
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
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.SaveBrowserSessionProfileOutput = {
    type = "structure",
    id = "SaveBrowserSessionProfileOutput",
    members = {
        profileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        browserIdentifier = {
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
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetBrowserSessionInput = {
    type = "structure",
    id = "GetBrowserSessionInput",
    members = {
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
    },
}

M.SecretsManagerLocation = {
    type = "structure",
    id = "SecretsManagerLocation",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateLocation = {
    type = "union",
    id = "CertificateLocation",
    members = {
        secretsManager = M.SecretsManagerLocation,
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateLocation }),
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
        },
    },
}

M.ResourceLocation = {
    type = "union",
    id = "ResourceLocation",
    members = {
        s3 = M.S3Location,
    },
}

M.BrowserEnterprisePolicyType = {
    MANAGED = "MANAGED",
    RECOMMENDED = "RECOMMENDED",
}

M.BrowserEnterprisePolicy = {
    type = "structure",
    id = "BrowserEnterprisePolicy",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
        type = {
            type = "string",
        },
    },
}

M.BrowserExtension = {
    type = "structure",
    id = "BrowserExtension",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
    },
}

M.BrowserProfileConfiguration = {
    type = "structure",
    id = "BrowserProfileConfiguration",
    members = {
        profileIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyBypass = {
    type = "structure",
    id = "ProxyBypass",
    members = {
        domainPatterns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BasicAuth = {
    type = "structure",
    id = "BasicAuth",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyCredentials = {
    type = "union",
    id = "ProxyCredentials",
    members = {
        basicAuth = M.BasicAuth,
    },
}

M.ExternalProxy = {
    type = "structure",
    id = "ExternalProxy",
    members = {
        server = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        domainPatterns = {
            type = "list",
            member = { type = "string" },
        },
        credentials = M.ProxyCredentials,
    },
}

M.Proxy = {
    type = "union",
    id = "Proxy",
    members = {
        externalProxy = M.ExternalProxy,
    },
}

M.ProxyConfiguration = {
    type = "structure",
    id = "ProxyConfiguration",
    members = {
        proxies = {
            type = "list",
            member = M.Proxy,
            traits = {
                required = true,
            },
        },
        bypass = M.ProxyBypass,
    },
}

M.BrowserSessionStatus = {
    READY = "READY",
    TERMINATED = "TERMINATED",
}

M.AutomationStreamStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomationStream = {
    type = "structure",
    id = "AutomationStream",
    members = {
        streamEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        streamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LiveViewStream = {
    type = "structure",
    id = "LiveViewStream",
    members = {
        streamEndpoint = {
            type = "string",
        },
    },
}

M.BrowserSessionStream = {
    type = "structure",
    id = "BrowserSessionStream",
    members = {
        automationStream = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomationStream }),
        liveViewStream = M.LiveViewStream,
    },
}

M.ViewPort = {
    type = "structure",
    id = "ViewPort",
    members = {
        width = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        height = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBrowserSessionOutput = {
    type = "structure",
    id = "GetBrowserSessionOutput",
    members = {
        browserIdentifier = {
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
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        viewPort = M.ViewPort,
        extensions = {
            type = "list",
            member = M.BrowserExtension,
        },
        enterprisePolicies = {
            type = "list",
            member = M.BrowserEnterprisePolicy,
        },
        profileConfiguration = M.BrowserProfileConfiguration,
        sessionTimeoutSeconds = {
            type = "integer",
        },
        status = {
            type = "string",
        },
        streams = M.BrowserSessionStream,
        proxyConfiguration = M.ProxyConfiguration,
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        sessionReplayArtifact = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.KeyPressArguments = {
    type = "structure",
    id = "KeyPressArguments",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presses = {
            type = "integer",
        },
    },
}

M.KeyShortcutArguments = {
    type = "structure",
    id = "KeyShortcutArguments",
    members = {
        keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.KeyTypeArguments = {
    type = "structure",
    id = "KeyTypeArguments",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MouseButton = {
    LEFT = "LEFT",
    RIGHT = "RIGHT",
    MIDDLE = "MIDDLE",
}

M.MouseClickArguments = {
    type = "structure",
    id = "MouseClickArguments",
    members = {
        x = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        y = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        button = {
            type = "string",
        },
        clickCount = {
            type = "integer",
        },
    },
}

M.MouseDragArguments = {
    type = "structure",
    id = "MouseDragArguments",
    members = {
        endX = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        endY = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        startX = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        startY = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        button = {
            type = "string",
        },
    },
}

M.MouseMoveArguments = {
    type = "structure",
    id = "MouseMoveArguments",
    members = {
        x = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        y = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MouseScrollArguments = {
    type = "structure",
    id = "MouseScrollArguments",
    members = {
        x = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        y = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        deltaX = {
            type = "integer",
        },
        deltaY = {
            type = "integer",
        },
    },
}

M.ScreenshotFormat = {
    PNG = "PNG",
}

M.ScreenshotArguments = {
    type = "structure",
    id = "ScreenshotArguments",
    members = {
        format = {
            type = "string",
        },
    },
}

M.BrowserAction = {
    type = "union",
    id = "BrowserAction",
    members = {
        mouseClick = M.MouseClickArguments,
        mouseMove = M.MouseMoveArguments,
        mouseDrag = M.MouseDragArguments,
        mouseScroll = M.MouseScrollArguments,
        keyType = M.KeyTypeArguments,
        keyPress = M.KeyPressArguments,
        keyShortcut = M.KeyShortcutArguments,
        screenshot = M.ScreenshotArguments,
    },
}

M.InvokeBrowserInput = {
    type = "structure",
    id = "InvokeBrowserInput",
    members = {
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-browser-session-id",
                required = true,
            },
        },
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserAction }),
    },
}

M.BrowserActionStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.KeyPressResult = {
    type = "structure",
    id = "KeyPressResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.KeyShortcutResult = {
    type = "structure",
    id = "KeyShortcutResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.KeyTypeResult = {
    type = "structure",
    id = "KeyTypeResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.MouseClickResult = {
    type = "structure",
    id = "MouseClickResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.MouseDragResult = {
    type = "structure",
    id = "MouseDragResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.MouseMoveResult = {
    type = "structure",
    id = "MouseMoveResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.MouseScrollResult = {
    type = "structure",
    id = "MouseScrollResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.ScreenshotResult = {
    type = "structure",
    id = "ScreenshotResult",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        data = {
            type = "blob",
        },
    },
}

M.BrowserActionResult = {
    type = "union",
    id = "BrowserActionResult",
    members = {
        mouseClick = M.MouseClickResult,
        mouseMove = M.MouseMoveResult,
        mouseDrag = M.MouseDragResult,
        mouseScroll = M.MouseScrollResult,
        keyType = M.KeyTypeResult,
        keyPress = M.KeyPressResult,
        keyShortcut = M.KeyShortcutResult,
        screenshot = M.ScreenshotResult,
    },
}

M.InvokeBrowserOutput = {
    type = "structure",
    id = "InvokeBrowserOutput",
    members = {
        result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserActionResult }),
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-browser-session-id",
                required = true,
            },
        },
    },
}

M.ListBrowserSessionsInput = {
    type = "structure",
    id = "ListBrowserSessionsInput",
    members = {
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.BrowserSessionSummary = {
    type = "structure",
    id = "BrowserSessionSummary",
    members = {
        browserIdentifier = {
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
        name = {
            type = "string",
        },
        status = {
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
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListBrowserSessionsOutput = {
    type = "structure",
    id = "ListBrowserSessionsOutput",
    members = {
        items = {
            type = "list",
            member = M.BrowserSessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartBrowserSessionInput = {
    type = "structure",
    id = "StartBrowserSessionInput",
    members = {
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        sessionTimeoutSeconds = {
            type = "integer",
            traits = {
                default = 3600,
            },
        },
        viewPort = M.ViewPort,
        extensions = {
            type = "list",
            member = M.BrowserExtension,
        },
        profileConfiguration = M.BrowserProfileConfiguration,
        proxyConfiguration = M.ProxyConfiguration,
        enterprisePolicies = {
            type = "list",
            member = M.BrowserEnterprisePolicy,
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartBrowserSessionOutput = {
    type = "structure",
    id = "StartBrowserSessionOutput",
    members = {
        browserIdentifier = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        streams = M.BrowserSessionStream,
    },
}

M.StopBrowserSessionInput = {
    type = "structure",
    id = "StopBrowserSessionInput",
    members = {
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
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

M.StopBrowserSessionOutput = {
    type = "structure",
    id = "StopBrowserSessionOutput",
    members = {
        browserIdentifier = {
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
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AutomationStreamUpdate = {
    type = "structure",
    id = "AutomationStreamUpdate",
    members = {
        streamStatus = {
            type = "string",
        },
    },
}

M.StreamUpdate = {
    type = "union",
    id = "StreamUpdate",
    members = {
        automationStreamUpdate = M.AutomationStreamUpdate,
    },
}

M.UpdateBrowserStreamInput = {
    type = "structure",
    id = "UpdateBrowserStreamInput",
    members = {
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
        streamUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamUpdate }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateBrowserStreamOutput = {
    type = "structure",
    id = "UpdateBrowserStreamOutput",
    members = {
        browserIdentifier = {
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
        streams = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserSessionStream }),
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetCodeInterpreterSessionInput = {
    type = "structure",
    id = "GetCodeInterpreterSessionInput",
    members = {
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
                required = true,
            },
        },
    },
}

M.CodeInterpreterSessionStatus = {
    READY = "READY",
    TERMINATED = "TERMINATED",
}

M.GetCodeInterpreterSessionOutput = {
    type = "structure",
    id = "GetCodeInterpreterSessionOutput",
    members = {
        codeInterpreterIdentifier = {
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
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        sessionTimeoutSeconds = {
            type = "integer",
        },
        status = {
            type = "string",
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
    },
}

M.ListCodeInterpreterSessionsInput = {
    type = "structure",
    id = "ListCodeInterpreterSessionsInput",
    members = {
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CodeInterpreterSessionSummary = {
    type = "structure",
    id = "CodeInterpreterSessionSummary",
    members = {
        codeInterpreterIdentifier = {
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
        name = {
            type = "string",
        },
        status = {
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
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCodeInterpreterSessionsOutput = {
    type = "structure",
    id = "ListCodeInterpreterSessionsOutput",
    members = {
        items = {
            type = "list",
            member = M.CodeInterpreterSessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartCodeInterpreterSessionInput = {
    type = "structure",
    id = "StartCodeInterpreterSessionInput",
    members = {
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        sessionTimeoutSeconds = {
            type = "integer",
            traits = {
                default = 900,
            },
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartCodeInterpreterSessionOutput = {
    type = "structure",
    id = "StartCodeInterpreterSessionOutput",
    members = {
        codeInterpreterIdentifier = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StopCodeInterpreterSessionInput = {
    type = "structure",
    id = "StopCodeInterpreterSessionInput",
    members = {
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
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

M.StopCodeInterpreterSessionOutput = {
    type = "structure",
    id = "StopCodeInterpreterSessionOutput",
    members = {
        codeInterpreterIdentifier = {
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
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UserIdentifier = {
    type = "union",
    id = "UserIdentifier",
    members = {
        userToken = {
            type = "string",
        },
        userId = {
            type = "string",
        },
    },
}

M.CompleteResourceTokenAuthInput = {
    type = "structure",
    id = "CompleteResourceTokenAuthInput",
    members = {
        userIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserIdentifier }),
        sessionUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteResourceTokenAuthOutput = {
    type = "structure",
    id = "CompleteResourceTokenAuthOutput",
}

M.GatewayFilter = {
    type = "structure",
    id = "GatewayFilter",
    members = {
        targetPaths = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConfigurationBundleRef = {
    type = "structure",
    id = "ConfigurationBundleRef",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetRef = {
    type = "structure",
    id = "TargetRef",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VariantConfiguration = {
    type = "structure",
    id = "VariantConfiguration",
    members = {
        configurationBundle = M.ConfigurationBundleRef,
        target = M.TargetRef,
    },
}

M.Variant = {
    type = "structure",
    id = "Variant",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        variantConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VariantConfiguration }),
    },
}

M.CreateABTestInput = {
    type = "structure",
    id = "CreateABTestInput",
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
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variants = {
            type = "list",
            member = M.Variant,
            traits = {
                required = true,
            },
        },
        gatewayFilter = M.GatewayFilter,
        evaluationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ABTestEvaluationConfig }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableOnCreate = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateABTestOutput = {
    type = "structure",
    id = "CreateABTestOutput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abTestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
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
    },
}

M.DeleteABTestInput = {
    type = "structure",
    id = "DeleteABTestInput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteABTestOutput = {
    type = "structure",
    id = "DeleteABTestOutput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abTestArn = {
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

M.DeleteBatchEvaluationInput = {
    type = "structure",
    id = "DeleteBatchEvaluationInput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BatchEvaluationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    DELETING = "DELETING",
}

M.DeleteBatchEvaluationOutput = {
    type = "structure",
    id = "DeleteBatchEvaluationOutput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationArn = {
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

M.DeleteRecommendationInput = {
    type = "structure",
    id = "DeleteRecommendationInput",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecommendationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.DeleteRecommendationOutput = {
    type = "structure",
    id = "DeleteRecommendationOutput",
    members = {
        recommendationId = {
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

M.DuplicateIdException = {
    type = "structure",
    id = "DuplicateIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EvaluationInput = {
    type = "union",
    id = "EvaluationInput",
    members = {
        sessionSpans = {
            type = "list",
            member = { type = "document" },
        },
    },
}

M.EvaluationContent = {
    type = "union",
    id = "EvaluationContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.SpanContext = {
    type = "structure",
    id = "SpanContext",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        traceId = {
            type = "string",
        },
        spanId = {
            type = "string",
        },
    },
}

M.Context = {
    type = "union",
    id = "Context",
    members = {
        spanContext = M.SpanContext,
    },
}

M.EvaluationExpectedTrajectory = {
    type = "structure",
    id = "EvaluationExpectedTrajectory",
    members = {
        toolNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluationReferenceInput = {
    type = "structure",
    id = "EvaluationReferenceInput",
    members = {
        context = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Context }),
        expectedResponse = M.EvaluationContent,
        assertions = {
            type = "list",
            member = M.EvaluationContent,
        },
        expectedTrajectory = M.EvaluationExpectedTrajectory,
    },
}

M.EvaluationTarget = {
    type = "union",
    id = "EvaluationTarget",
    members = {
        spanIds = {
            type = "list",
            member = { type = "string" },
        },
        traceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluateInput = {
    type = "structure",
    id = "EvaluateInput",
    members = {
        evaluatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evaluationInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluationInput }),
        evaluationTarget = M.EvaluationTarget,
        evaluationReferenceInputs = {
            type = "list",
            member = M.EvaluationReferenceInput,
        },
    },
}

M.TokenUsage = {
    type = "structure",
    id = "TokenUsage",
    members = {
        inputTokens = {
            type = "integer",
        },
        outputTokens = {
            type = "integer",
        },
        totalTokens = {
            type = "integer",
        },
    },
}

M.EvaluationResultContent = {
    type = "structure",
    id = "EvaluationResultContent",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        explanation = {
            type = "string",
        },
        context = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Context }),
        value = {
            type = "double",
        },
        label = {
            type = "string",
        },
        tokenUsage = M.TokenUsage,
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        ignoredReferenceInputFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluateOutput = {
    type = "structure",
    id = "EvaluateOutput",
    members = {
        evaluationResults = {
            type = "list",
            member = M.EvaluationResultContent,
            traits = {
                required = true,
            },
        },
    },
}

M.GetABTestInput = {
    type = "structure",
    id = "GetABTestInput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetABTestOutput = {
    type = "structure",
    id = "GetABTestOutput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abTestArn = {
            type = "string",
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
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variants = {
            type = "list",
            member = M.Variant,
            traits = {
                required = true,
            },
        },
        gatewayFilter = M.GatewayFilter,
        evaluationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ABTestEvaluationConfig }),
        roleArn = {
            type = "string",
        },
        currentRunId = {
            type = "string",
        },
        errorDetails = {
            type = "list",
            member = { type = "string" },
        },
        startedAt = {
            type = "timestamp",
        },
        stoppedAt = {
            type = "timestamp",
        },
        maxDurationExpiresAt = {
            type = "timestamp",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        results = M.ABTestResults,
    },
}

M.GetBatchEvaluationInput = {
    type = "structure",
    id = "GetBatchEvaluationInput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionFilterConfig = {
    type = "structure",
    id = "SessionFilterConfig",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CloudWatchFilterConfig = {
    type = "structure",
    id = "CloudWatchFilterConfig",
    members = {
        sessionIds = {
            type = "list",
            member = { type = "string" },
        },
        timeRange = M.SessionFilterConfig,
    },
}

M.CloudWatchLogsSource = {
    type = "structure",
    id = "CloudWatchLogsSource",
    members = {
        serviceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        logGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        filterConfig = M.CloudWatchFilterConfig,
    },
}

M.DataSourceConfig = {
    type = "union",
    id = "DataSourceConfig",
    members = {
        cloudWatchLogs = M.CloudWatchLogsSource,
    },
}

M.EvaluatorStatistics = {
    type = "structure",
    id = "EvaluatorStatistics",
    members = {
        averageScore = {
            type = "double",
        },
    },
}

M.EvaluatorSummary = {
    type = "structure",
    id = "EvaluatorSummary",
    members = {
        evaluatorId = {
            type = "string",
        },
        statistics = M.EvaluatorStatistics,
        totalEvaluated = {
            type = "integer",
        },
        totalFailed = {
            type = "integer",
        },
    },
}

M.EvaluationJobResults = {
    type = "structure",
    id = "EvaluationJobResults",
    members = {
        numberOfSessionsCompleted = {
            type = "integer",
        },
        numberOfSessionsInProgress = {
            type = "integer",
        },
        numberOfSessionsFailed = {
            type = "integer",
        },
        totalNumberOfSessions = {
            type = "integer",
        },
        numberOfSessionsIgnored = {
            type = "integer",
        },
        evaluatorSummaries = {
            type = "list",
            member = M.EvaluatorSummary,
        },
    },
}

M.Evaluator = {
    type = "structure",
    id = "Evaluator",
    members = {
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchOutputConfig = {
    type = "structure",
    id = "CloudWatchOutputConfig",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputConfig = {
    type = "union",
    id = "OutputConfig",
    members = {
        cloudWatchConfig = M.CloudWatchOutputConfig,
    },
}

M.GetBatchEvaluationOutput = {
    type = "structure",
    id = "GetBatchEvaluationOutput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        evaluators = {
            type = "list",
            member = M.Evaluator,
        },
        dataSourceConfig = M.DataSourceConfig,
        outputConfig = M.OutputConfig,
        evaluationResults = M.EvaluationJobResults,
        errorDetails = {
            type = "list",
            member = { type = "string" },
        },
        description = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRecommendationInput = {
    type = "structure",
    id = "GetRecommendationInput",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecommendationEvaluatorReference = {
    type = "structure",
    id = "RecommendationEvaluatorReference",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationEvaluationConfig = {
    type = "structure",
    id = "RecommendationEvaluationConfig",
    members = {
        evaluators = {
            type = "list",
            member = M.RecommendationEvaluatorReference,
            traits = {
                required = true,
            },
        },
    },
}

M.SystemPromptConfigurationBundle = {
    type = "structure",
    id = "SystemPromptConfigurationBundle",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        systemPromptJsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemPromptConfig = {
    type = "union",
    id = "SystemPromptConfig",
    members = {
        text = {
            type = "string",
        },
        configurationBundle = M.SystemPromptConfigurationBundle,
    },
}

M.SystemPromptRecommendationConfig = {
    type = "structure",
    id = "SystemPromptRecommendationConfig",
    members = {
        systemPrompt = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SystemPromptConfig }),
        agentTraces = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentTracesConfig }),
        evaluationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationEvaluationConfig }),
    },
}

M.ConfigurationBundleToolEntry = {
    type = "structure",
    id = "ConfigurationBundleToolEntry",
    members = {
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolDescriptionJsonPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionConfigurationBundle = {
    type = "structure",
    id = "ToolDescriptionConfigurationBundle",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tools = {
            type = "list",
            member = M.ConfigurationBundleToolEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionConfig = {
    type = "union",
    id = "ToolDescriptionConfig",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ToolDescriptionInput = {
    type = "structure",
    id = "ToolDescriptionInput",
    members = {
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolDescriptionConfig }),
    },
}

M.ToolDescriptionTextInput = {
    type = "structure",
    id = "ToolDescriptionTextInput",
    members = {
        tools = {
            type = "list",
            member = M.ToolDescriptionInput,
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionSource = {
    type = "union",
    id = "ToolDescriptionSource",
    members = {
        toolDescriptionText = M.ToolDescriptionTextInput,
        configurationBundle = M.ToolDescriptionConfigurationBundle,
    },
}

M.ToolDescriptionRecommendationConfig = {
    type = "structure",
    id = "ToolDescriptionRecommendationConfig",
    members = {
        toolDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolDescriptionSource }),
        agentTraces = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentTracesConfig }),
    },
}

M.RecommendationConfig = {
    type = "union",
    id = "RecommendationConfig",
    members = {
        systemPromptRecommendationConfig = M.SystemPromptRecommendationConfig,
        toolDescriptionRecommendationConfig = M.ToolDescriptionRecommendationConfig,
    },
}

M.RecommendationResultConfigurationBundle = {
    type = "structure",
    id = "RecommendationResultConfigurationBundle",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemPromptRecommendationResult = {
    type = "structure",
    id = "SystemPromptRecommendationResult",
    members = {
        recommendedSystemPrompt = {
            type = "string",
        },
        configurationBundle = M.RecommendationResultConfigurationBundle,
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.ToolDescriptionOutput = {
    type = "structure",
    id = "ToolDescriptionOutput",
    members = {
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedToolDescription = {
            type = "string",
        },
    },
}

M.ToolDescriptionRecommendationResult = {
    type = "structure",
    id = "ToolDescriptionRecommendationResult",
    members = {
        tools = {
            type = "list",
            member = M.ToolDescriptionOutput,
        },
        configurationBundle = M.RecommendationResultConfigurationBundle,
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.RecommendationResult = {
    type = "union",
    id = "RecommendationResult",
    members = {
        systemPromptRecommendationResult = M.SystemPromptRecommendationResult,
        toolDescriptionRecommendationResult = M.ToolDescriptionRecommendationResult,
    },
}

M.RecommendationType = {
    SYSTEM_PROMPT_RECOMMENDATION = "SYSTEM_PROMPT_RECOMMENDATION",
    TOOL_DESCRIPTION_RECOMMENDATION = "TOOL_DESCRIPTION_RECOMMENDATION",
}

M.GetRecommendationOutput = {
    type = "structure",
    id = "GetRecommendationOutput",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationArn = {
            type = "string",
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
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationConfig }),
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        recommendationResult = M.RecommendationResult,
    },
}

M.ListABTestsInput = {
    type = "structure",
    id = "ListABTestsInput",
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
    },
}

M.ListABTestsOutput = {
    type = "structure",
    id = "ListABTestsOutput",
    members = {
        abTests = {
            type = "list",
            member = M.ABTestSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBatchEvaluationsInput = {
    type = "structure",
    id = "ListBatchEvaluationsInput",
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
    },
}

M.BatchEvaluationSummary = {
    type = "structure",
    id = "BatchEvaluationSummary",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationName = {
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
        evaluators = {
            type = "list",
            member = M.Evaluator,
        },
        evaluationResults = M.EvaluationJobResults,
        errorDetails = {
            type = "list",
            member = { type = "string" },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListBatchEvaluationsOutput = {
    type = "structure",
    id = "ListBatchEvaluationsOutput",
    members = {
        batchEvaluations = {
            type = "list",
            member = M.BatchEvaluationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
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
        statusFilter = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.RecommendationSummary = {
    type = "structure",
    id = "RecommendationSummary",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationArn = {
            type = "string",
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
        description = {
            type = "string",
        },
        type = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        recommendationSummaries = {
            type = "list",
            member = M.RecommendationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GroundTruthTurnInput = {
    type = "union",
    id = "GroundTruthTurnInput",
    members = {
        prompt = {
            type = "string",
        },
    },
}

M.GroundTruthTurn = {
    type = "structure",
    id = "GroundTruthTurn",
    members = {
        input = M.GroundTruthTurnInput,
        expectedResponse = M.EvaluationContent,
    },
}

M.InlineGroundTruth = {
    type = "structure",
    id = "InlineGroundTruth",
    members = {
        assertions = {
            type = "list",
            member = M.EvaluationContent,
        },
        expectedTrajectory = M.EvaluationExpectedTrajectory,
        turns = {
            type = "list",
            member = M.GroundTruthTurn,
        },
    },
}

M.GroundTruthSource = {
    type = "union",
    id = "GroundTruthSource",
    members = {
        inline = M.InlineGroundTruth,
    },
}

M.SessionMetadataShape = {
    type = "structure",
    id = "SessionMetadataShape",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testScenarioId = {
            type = "string",
        },
        groundTruth = M.GroundTruthSource,
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EvaluationMetadata = {
    type = "union",
    id = "EvaluationMetadata",
    members = {
        sessionMetadata = {
            type = "list",
            member = M.SessionMetadataShape,
        },
    },
}

M.StartBatchEvaluationInput = {
    type = "structure",
    id = "StartBatchEvaluationInput",
    members = {
        batchEvaluationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluators = {
            type = "list",
            member = M.Evaluator,
        },
        dataSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        evaluationMetadata = M.EvaluationMetadata,
        description = {
            type = "string",
        },
    },
}

M.StartBatchEvaluationOutput = {
    type = "structure",
    id = "StartBatchEvaluationOutput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluators = {
            type = "list",
            member = M.Evaluator,
        },
        status = {
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
        outputConfig = M.OutputConfig,
        description = {
            type = "string",
        },
    },
}

M.StartRecommendationInput = {
    type = "structure",
    id = "StartRecommendationInput",
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartRecommendationOutput = {
    type = "structure",
    id = "StartRecommendationOutput",
    members = {
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationArn = {
            type = "string",
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
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationConfig }),
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.StopBatchEvaluationInput = {
    type = "structure",
    id = "StopBatchEvaluationInput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopBatchEvaluationOutput = {
    type = "structure",
    id = "StopBatchEvaluationOutput",
    members = {
        batchEvaluationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        batchEvaluationArn = {
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
        description = {
            type = "string",
        },
    },
}

M.UpdateABTestInput = {
    type = "structure",
    id = "UpdateABTestInput",
    members = {
        abTestId = {
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
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        variants = {
            type = "list",
            member = M.Variant,
        },
        gatewayFilter = M.GatewayFilter,
        evaluationConfig = M.ABTestEvaluationConfig,
        roleArn = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
    },
}

M.UpdateABTestOutput = {
    type = "structure",
    id = "UpdateABTestOutput",
    members = {
        abTestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        abTestArn = {
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
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceApiKeyInput = {
    type = "structure",
    id = "GetResourceApiKeyInput",
    members = {
        workloadIdentityToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceCredentialProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceApiKeyOutput = {
    type = "structure",
    id = "GetResourceApiKeyOutput",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Oauth2FlowType = {
    USER_FEDERATION = "USER_FEDERATION",
    M2M = "M2M",
    ON_BEHALF_OF_TOKEN_EXCHANGE = "ON_BEHALF_OF_TOKEN_EXCHANGE",
}

M.GetResourceOauth2TokenInput = {
    type = "structure",
    id = "GetResourceOauth2TokenInput",
    members = {
        workloadIdentityToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceCredentialProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        oauth2Flow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionUri = {
            type = "string",
        },
        resourceOauth2ReturnUrl = {
            type = "string",
        },
        forceAuthentication = {
            type = "boolean",
        },
        customParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        customState = {
            type = "string",
        },
        resources = {
            type = "list",
            member = { type = "string" },
        },
        audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SessionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.GetResourceOauth2TokenOutput = {
    type = "structure",
    id = "GetResourceOauth2TokenOutput",
    members = {
        authorizationUrl = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        sessionUri = {
            type = "string",
        },
        sessionStatus = {
            type = "string",
        },
    },
}

M.GetWorkloadAccessTokenInput = {
    type = "structure",
    id = "GetWorkloadAccessTokenInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadAccessTokenOutput = {
    type = "structure",
    id = "GetWorkloadAccessTokenOutput",
    members = {
        workloadAccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadAccessTokenForJWTInput = {
    type = "structure",
    id = "GetWorkloadAccessTokenForJWTInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadAccessTokenForJWTOutput = {
    type = "structure",
    id = "GetWorkloadAccessTokenForJWTOutput",
    members = {
        workloadAccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadAccessTokenForUserIdInput = {
    type = "structure",
    id = "GetWorkloadAccessTokenForUserIdInput",
    members = {
        workloadName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadAccessTokenForUserIdOutput = {
    type = "structure",
    id = "GetWorkloadAccessTokenForUserIdOutput",
    members = {
        workloadAccessToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputContentBlock = {
    type = "structure",
    id = "InputContentBlock",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        text = {
            type = "string",
        },
        blob = {
            type = "blob",
        },
    },
}

M.ProgrammingLanguage = {
    PYTHON = "python",
    JAVASCRIPT = "javascript",
    TYPESCRIPT = "typescript",
}

M.LanguageRuntime = {
    NODEJS = "nodejs",
    DENO = "deno",
    PYTHON = "python",
}

M.ToolArguments = {
    type = "structure",
    id = "ToolArguments",
    members = {
        code = {
            type = "string",
        },
        language = {
            type = "string",
        },
        clearContext = {
            type = "boolean",
        },
        command = {
            type = "string",
        },
        path = {
            type = "string",
        },
        paths = {
            type = "list",
            member = { type = "string" },
        },
        content = {
            type = "list",
            member = M.InputContentBlock,
        },
        directoryPath = {
            type = "string",
        },
        taskId = {
            type = "string",
        },
        runtime = {
            type = "string",
        },
    },
}

M.ToolName = {
    EXECUTE_CODE = "executeCode",
    EXECUTE_COMMAND = "executeCommand",
    READ_FILES = "readFiles",
    LIST_FILES = "listFiles",
    REMOVE_FILES = "removeFiles",
    WRITE_FILES = "writeFiles",
    START_COMMAND_EXECUTION = "startCommandExecution",
    GET_TASK = "getTask",
    STOP_TASK = "stopTask",
}

M.InvokeCodeInterpreterInput = {
    type = "structure",
    id = "InvokeCodeInterpreterInput",
    members = {
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-code-interpreter-session-id",
            },
        },
        traceId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Trace-Id",
            },
        },
        traceParent = {
            type = "string",
            traits = {
                http_header = "traceparent",
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arguments = M.ToolArguments,
    },
}

M.ResourceContentType = {
    TEXT = "text",
    BLOB = "blob",
}

M.ResourceContent = {
    type = "structure",
    id = "ResourceContent",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uri = {
            type = "string",
        },
        mimeType = {
            type = "string",
        },
        text = {
            type = "string",
        },
        blob = {
            type = "blob",
        },
    },
}

M.ContentBlockType = {
    TEXT = "text",
    IMAGE = "image",
    EMBEDDED_RESOURCE = "resource",
    RESOURCE_LINK = "resource_link",
}

M.ContentBlock = {
    type = "structure",
    id = "ContentBlock",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        text = {
            type = "string",
        },
        data = {
            type = "blob",
        },
        mimeType = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        size = {
            type = "long",
        },
        resource = M.ResourceContent,
    },
}

M.TaskStatus = {
    SUBMITTED = "submitted",
    WORKING = "working",
    COMPLETED = "completed",
    CANCELED = "canceled",
    FAILED = "failed",
}

M.ToolResultStructuredContent = {
    type = "structure",
    id = "ToolResultStructuredContent",
    members = {
        taskId = {
            type = "string",
        },
        taskStatus = {
            type = "string",
        },
        stdout = {
            type = "string",
        },
        stderr = {
            type = "string",
        },
        exitCode = {
            type = "integer",
        },
        executionTime = {
            type = "double",
        },
    },
}

M.CodeInterpreterResult = {
    type = "structure",
    id = "CodeInterpreterResult",
    members = {
        content = {
            type = "list",
            member = M.ContentBlock,
            traits = {
                required = true,
            },
        },
        structuredContent = M.ToolResultStructuredContent,
        isError = {
            type = "boolean",
        },
    },
}

M.CodeInterpreterStreamOutput = {
    type = "union",
    id = "CodeInterpreterStreamOutput",
    members = {
        result = M.CodeInterpreterResult,
        accessDeniedException = M.AccessDeniedException,
        conflictException = M.ConflictException,
        internalServerException = M.InternalServerException,
        resourceNotFoundException = M.ResourceNotFoundException,
        serviceQuotaExceededException = M.ServiceQuotaExceededException,
        throttlingException = M.ThrottlingException,
        validationException = M.ValidationException,
    },
}

M.InvokeCodeInterpreterOutput = {
    type = "structure",
    id = "InvokeCodeInterpreterOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-code-interpreter-session-id",
            },
        },
        stream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CodeInterpreterStreamOutput }),
    },
}

M.HarnessReasoningTextBlock = {
    type = "structure",
    id = "HarnessReasoningTextBlock",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signature = {
            type = "string",
        },
    },
}

M.HarnessReasoningContentBlock = {
    type = "union",
    id = "HarnessReasoningContentBlock",
    members = {
        reasoningText = M.HarnessReasoningTextBlock,
        redactedContent = {
            type = "blob",
        },
    },
}

M.HarnessToolResultContentBlock = {
    type = "union",
    id = "HarnessToolResultContentBlock",
    members = {
        text = {
            type = "string",
        },
        json = {
            type = "document",
        },
    },
}

M.HarnessToolUseStatus = {
    SUCCESS = "success",
    ERROR = "error",
}

M.HarnessToolUseType = {
    TOOL_USE = "tool_use",
    SERVER_TOOL_USE = "server_tool_use",
    MCP_TOOL_USE = "mcp_tool_use",
}

M.HarnessToolResultBlock = {
    type = "structure",
    id = "HarnessToolResultBlock",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member = M.HarnessToolResultContentBlock,
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.HarnessToolUseBlock = {
    type = "structure",
    id = "HarnessToolUseBlock",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolUseId = {
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
        type = {
            type = "string",
        },
        serverName = {
            type = "string",
        },
    },
}

M.HarnessContentBlock = {
    type = "union",
    id = "HarnessContentBlock",
    members = {
        text = {
            type = "string",
        },
        toolUse = M.HarnessToolUseBlock,
        toolResult = M.HarnessToolResultBlock,
        reasoningContent = M.HarnessReasoningContentBlock,
    },
}

M.HarnessConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.HarnessMessage = {
    type = "structure",
    id = "HarnessMessage",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member = M.HarnessContentBlock,
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessBedrockModelConfig = {
    type = "structure",
    id = "HarnessBedrockModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
    },
}

M.HarnessGeminiModelConfig = {
    type = "structure",
    id = "HarnessGeminiModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        topK = {
            type = "integer",
        },
    },
}

M.HarnessOpenAiModelConfig = {
    type = "structure",
    id = "HarnessOpenAiModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
    },
}

M.HarnessModelConfiguration = {
    type = "union",
    id = "HarnessModelConfiguration",
    members = {
        bedrockModelConfig = M.HarnessBedrockModelConfig,
        openAiModelConfig = M.HarnessOpenAiModelConfig,
        geminiModelConfig = M.HarnessGeminiModelConfig,
    },
}

M.HarnessSkill = {
    type = "union",
    id = "HarnessSkill",
    members = {
        path = {
            type = "string",
        },
    },
}

M.HarnessSystemContentBlock = {
    type = "union",
    id = "HarnessSystemContentBlock",
    members = {
        text = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreBrowserConfig = {
    type = "structure",
    id = "HarnessAgentCoreBrowserConfig",
    members = {
        browserArn = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreCodeInterpreterConfig = {
    type = "structure",
    id = "HarnessAgentCoreCodeInterpreterConfig",
    members = {
        codeInterpreterArn = {
            type = "string",
        },
    },
}

M.Unit = {
    type = "structure",
    id = "Unit",
}

M.OAuthGrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
}

M.OAuthCredentialProvider = {
    type = "structure",
    id = "OAuthCredentialProvider",
    members = {
        providerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        customParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        grantType = {
            type = "string",
            traits = {
                default = "CLIENT_CREDENTIALS",
            },
        },
        defaultReturnUrl = {
            type = "string",
        },
    },
}

M.HarnessGatewayOutboundAuth = {
    type = "union",
    id = "HarnessGatewayOutboundAuth",
    members = {
        awsIam = M.Unit,
        none = M.Unit,
        oauth = M.OAuthCredentialProvider,
    },
}

M.HarnessAgentCoreGatewayConfig = {
    type = "structure",
    id = "HarnessAgentCoreGatewayConfig",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outboundAuth = M.HarnessGatewayOutboundAuth,
    },
}

M.HarnessInlineFunctionConfig = {
    type = "structure",
    id = "HarnessInlineFunctionConfig",
    members = {
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputSchema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessRemoteMcpConfig = {
    type = "structure",
    id = "HarnessRemoteMcpConfig",
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HarnessToolConfiguration = {
    type = "union",
    id = "HarnessToolConfiguration",
    members = {
        remoteMcp = M.HarnessRemoteMcpConfig,
        agentCoreBrowser = M.HarnessAgentCoreBrowserConfig,
        agentCoreGateway = M.HarnessAgentCoreGatewayConfig,
        inlineFunction = M.HarnessInlineFunctionConfig,
        agentCoreCodeInterpreter = M.HarnessAgentCoreCodeInterpreterConfig,
    },
}

M.HarnessToolType = {
    REMOTE_MCP = "remote_mcp",
    AGENTCORE_BROWSER = "agentcore_browser",
    AGENTCORE_GATEWAY = "agentcore_gateway",
    INLINE_FUNCTION = "inline_function",
    AGENTCORE_CODE_INTERPRETER = "agentcore_code_interpreter",
}

M.HarnessTool = {
    type = "structure",
    id = "HarnessTool",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        config = M.HarnessToolConfiguration,
    },
}

M.InvokeHarnessInput = {
    type = "structure",
    id = "InvokeHarnessInput",
    members = {
        harnessArn = {
            type = "string",
            traits = {
                http_query = "harnessArn",
                required = true,
            },
        },
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
                required = true,
            },
        },
        messages = {
            type = "list",
            member = M.HarnessMessage,
            traits = {
                required = true,
            },
        },
        model = M.HarnessModelConfiguration,
        systemPrompt = {
            type = "list",
            member = M.HarnessSystemContentBlock,
        },
        tools = {
            type = "list",
            member = M.HarnessTool,
        },
        skills = {
            type = "list",
            member = M.HarnessSkill,
        },
        allowedTools = {
            type = "list",
            member = { type = "string" },
        },
        maxIterations = {
            type = "integer",
        },
        maxTokens = {
            type = "integer",
        },
        timeoutSeconds = {
            type = "integer",
        },
        actorId = {
            type = "string",
        },
    },
}

M.HarnessReasoningContentBlockDelta = {
    type = "union",
    id = "HarnessReasoningContentBlockDelta",
    members = {
        text = {
            type = "string",
        },
        redactedContent = {
            type = "blob",
        },
        signature = {
            type = "string",
        },
    },
}

M.HarnessToolResultBlockDelta = {
    type = "union",
    id = "HarnessToolResultBlockDelta",
    members = {
        text = {
            type = "string",
        },
        json = {
            type = "document",
        },
    },
}

M.HarnessToolUseBlockDelta = {
    type = "structure",
    id = "HarnessToolUseBlockDelta",
    members = {
        input = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessContentBlockDelta = {
    type = "union",
    id = "HarnessContentBlockDelta",
    members = {
        text = {
            type = "string",
        },
        toolUse = M.HarnessToolUseBlockDelta,
        toolResult = {
            type = "list",
            member = M.HarnessToolResultBlockDelta,
        },
        reasoningContent = M.HarnessReasoningContentBlockDelta,
    },
}

M.HarnessContentBlockDeltaEvent = {
    type = "structure",
    id = "HarnessContentBlockDeltaEvent",
    members = {
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        delta = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessContentBlockDelta }),
    },
}

M.HarnessToolResultBlockStart = {
    type = "structure",
    id = "HarnessToolResultBlockStart",
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.HarnessToolUseBlockStart = {
    type = "structure",
    id = "HarnessToolUseBlockStart",
    members = {
        toolUseId = {
            type = "string",
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
        type = {
            type = "string",
        },
        serverName = {
            type = "string",
        },
    },
}

M.HarnessContentBlockStart = {
    type = "union",
    id = "HarnessContentBlockStart",
    members = {
        toolUse = M.HarnessToolUseBlockStart,
        toolResult = M.HarnessToolResultBlockStart,
    },
}

M.HarnessContentBlockStartEvent = {
    type = "structure",
    id = "HarnessContentBlockStartEvent",
    members = {
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        start = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessContentBlockStart }),
    },
}

M.HarnessContentBlockStopEvent = {
    type = "structure",
    id = "HarnessContentBlockStopEvent",
    members = {
        contentBlockIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessMessageStartEvent = {
    type = "structure",
    id = "HarnessMessageStartEvent",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessStopReason = {
    END_TURN = "end_turn",
    TOOL_USE = "tool_use",
    TOOL_RESULT = "tool_result",
    MAX_TOKENS = "max_tokens",
    STOP_SEQUENCE = "stop_sequence",
    CONTENT_FILTERED = "content_filtered",
    MALFORMED_MODEL_OUTPUT = "malformed_model_output",
    MALFORMED_TOOL_USE = "malformed_tool_use",
    INTERRUPTED = "interrupted",
    PARTIAL_TURN = "partial_turn",
    MODEL_CONTEXT_WINDOW_EXCEEDED = "model_context_window_exceeded",
    MAX_ITERATIONS_EXCEEDED = "max_iterations_exceeded",
    MAX_OUTPUT_TOKENS_EXCEEDED = "max_output_tokens_exceeded",
    TIMEOUT_EXCEEDED = "timeout_exceeded",
}

M.HarnessMessageStopEvent = {
    type = "structure",
    id = "HarnessMessageStopEvent",
    members = {
        stopReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessStreamMetrics = {
    type = "structure",
    id = "HarnessStreamMetrics",
    members = {
        latencyMs = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessTokenUsage = {
    type = "structure",
    id = "HarnessTokenUsage",
    members = {
        inputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        outputTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        totalTokens = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        cacheReadInputTokens = {
            type = "integer",
        },
        cacheWriteInputTokens = {
            type = "integer",
        },
    },
}

M.HarnessMetadataEvent = {
    type = "structure",
    id = "HarnessMetadataEvent",
    members = {
        usage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessTokenUsage }),
        metrics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessStreamMetrics }),
    },
}

M.InvokeHarnessStreamOutput = {
    type = "union",
    id = "InvokeHarnessStreamOutput",
    members = {
        messageStart = M.HarnessMessageStartEvent,
        contentBlockStart = M.HarnessContentBlockStartEvent,
        contentBlockDelta = M.HarnessContentBlockDeltaEvent,
        contentBlockStop = M.HarnessContentBlockStopEvent,
        messageStop = M.HarnessMessageStopEvent,
        metadata = M.HarnessMetadataEvent,
        internalServerException = M.InternalServerException,
        validationException = M.ValidationException,
        runtimeClientError = M.RuntimeClientError,
    },
}

M.InvokeHarnessOutput = {
    type = "structure",
    id = "InvokeHarnessOutput",
    members = {
        stream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeHarnessStreamOutput }),
    },
}

M.MemoryContent = {
    type = "union",
    id = "MemoryContent",
    members = {
        text = {
            type = "string",
        },
    },
}

M.MemoryRecordMetadataValue = {
    type = "union",
    id = "MemoryRecordMetadataValue",
    members = {
        stringValue = {
            type = "string",
        },
        stringListValue = {
            type = "list",
            member = { type = "string" },
        },
        numberValue = {
            type = "double",
        },
        dateTimeValue = {
            type = "timestamp",
        },
    },
}

M.MemoryRecordCreateInput = {
    type = "structure",
    id = "MemoryRecordCreateInput",
    members = {
        requestIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryContent }),
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        memoryStrategyId = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MemoryRecordMetadataValue,
        },
    },
}

M.BatchCreateMemoryRecordsInput = {
    type = "structure",
    id = "BatchCreateMemoryRecordsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.MemoryRecordCreateInput,
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
    },
}

M.MemoryRecordStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.MemoryRecordOutput = {
    type = "structure",
    id = "MemoryRecordOutput",
    members = {
        memoryRecordId = {
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
        requestIdentifier = {
            type = "string",
        },
        errorCode = {
            type = "integer",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchCreateMemoryRecordsOutput = {
    type = "structure",
    id = "BatchCreateMemoryRecordsOutput",
    members = {
        successfulRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
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

M.MemoryRecordDeleteInput = {
    type = "structure",
    id = "MemoryRecordDeleteInput",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteMemoryRecordsInput = {
    type = "structure",
    id = "BatchDeleteMemoryRecordsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.MemoryRecordDeleteInput,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteMemoryRecordsOutput = {
    type = "structure",
    id = "BatchDeleteMemoryRecordsOutput",
    members = {
        successfulRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
    },
}

M.MemoryRecordUpdateInput = {
    type = "structure",
    id = "MemoryRecordUpdateInput",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = M.MemoryContent,
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        memoryStrategyId = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MemoryRecordMetadataValue,
        },
    },
}

M.BatchUpdateMemoryRecordsInput = {
    type = "structure",
    id = "BatchUpdateMemoryRecordsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        records = {
            type = "list",
            member = M.MemoryRecordUpdateInput,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateMemoryRecordsOutput = {
    type = "structure",
    id = "BatchUpdateMemoryRecordsOutput",
    members = {
        successfulRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member = M.MemoryRecordOutput,
            traits = {
                required = true,
            },
        },
    },
}

M.Branch = {
    type = "structure",
    id = "Branch",
    members = {
        rootEventId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataValue = {
    type = "union",
    id = "MetadataValue",
    members = {
        stringValue = {
            type = "string",
        },
    },
}

M.Content = {
    type = "union",
    id = "Content",
    members = {
        text = {
            type = "string",
        },
    },
}

M.Role = {
    ASSISTANT = "ASSISTANT",
    USER = "USER",
    TOOL = "TOOL",
    OTHER = "OTHER",
}

M.Conversational = {
    type = "structure",
    id = "Conversational",
    members = {
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Content }),
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PayloadType = {
    type = "union",
    id = "PayloadType",
    members = {
        conversational = M.Conversational,
        blob = {
            type = "document",
        },
    },
}

M.CreateEventInput = {
    type = "structure",
    id = "CreateEventInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
        },
        eventTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "list",
            member = M.PayloadType,
            traits = {
                required = true,
            },
        },
        branch = M.Branch,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataValue,
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        memoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actorId = {
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
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "list",
            member = M.PayloadType,
            traits = {
                required = true,
            },
        },
        branch = M.Branch,
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MetadataValue,
        },
    },
}

M.CreateEventOutput = {
    type = "structure",
    id = "CreateEventOutput",
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
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

M.RetryableConflictException = {
    type = "structure",
    id = "RetryableConflictException",
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

M.DeleteEventInput = {
    type = "structure",
    id = "DeleteEventInput",
    members = {
        memoryId = {
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
        eventId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventOutput = {
    type = "structure",
    id = "DeleteEventOutput",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMemoryRecordInput = {
    type = "structure",
    id = "DeleteMemoryRecordInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        memoryRecordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMemoryRecordOutput = {
    type = "structure",
    id = "DeleteMemoryRecordOutput",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEventInput = {
    type = "structure",
    id = "GetEventInput",
    members = {
        memoryId = {
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
        actorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventOutput = {
    type = "structure",
    id = "GetEventOutput",
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
    },
}

M.GetMemoryRecordInput = {
    type = "structure",
    id = "GetMemoryRecordInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        memoryRecordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MemoryRecord = {
    type = "structure",
    id = "MemoryRecord",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryContent }),
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
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
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MemoryRecordMetadataValue,
        },
    },
}

M.GetMemoryRecordOutput = {
    type = "structure",
    id = "GetMemoryRecordOutput",
    members = {
        memoryRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryRecord }),
    },
}

M.ListActorsInput = {
    type = "structure",
    id = "ListActorsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActorsOutput = {
    type = "structure",
    id = "ListActorsOutput",
    members = {
        actorSummaries = {
            type = "list",
            member = M.ActorSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BranchFilter = {
    type = "structure",
    id = "BranchFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeParentBranches = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.LeftExpression = {
    type = "union",
    id = "LeftExpression",
    members = {
        metadataKey = {
            type = "string",
        },
    },
}

M.OperatorType = {
    EQUALS_TO = "EQUALS_TO",
    EXISTS = "EXISTS",
    NOT_EXISTS = "NOT_EXISTS",
}

M.RightExpression = {
    type = "union",
    id = "RightExpression",
    members = {
        metadataValue = M.MetadataValue,
    },
}

M.EventMetadataFilterExpression = {
    type = "structure",
    id = "EventMetadataFilterExpression",
    members = {
        left = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeftExpression }),
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        right = M.RightExpression,
    },
}

M.FilterInput = {
    type = "structure",
    id = "FilterInput",
    members = {
        branch = M.BranchFilter,
        eventMetadata = {
            type = "list",
            member = M.EventMetadataFilterExpression,
        },
    },
}

M.ListEventsInput = {
    type = "structure",
    id = "ListEventsInput",
    members = {
        memoryId = {
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
        actorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includePayloads = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
        filter = M.FilterInput,
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEventsOutput = {
    type = "structure",
    id = "ListEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.Event,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExtractionJobStatus = {
    FAILED = "FAILED",
}

M.ExtractionJobFilterInput = {
    type = "structure",
    id = "ExtractionJobFilterInput",
    members = {
        strategyId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        actorId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListMemoryExtractionJobsInput = {
    type = "structure",
    id = "ListMemoryExtractionJobsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        filter = M.ExtractionJobFilterInput,
        nextToken = {
            type = "string",
        },
    },
}

M.MessageMetadata = {
    type = "structure",
    id = "MessageMetadata",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ExtractionJobMessages = {
    type = "union",
    id = "ExtractionJobMessages",
    members = {
        messagesList = {
            type = "list",
            member = M.MessageMetadata,
        },
    },
}

M.ExtractionJobMetadata = {
    type = "structure",
    id = "ExtractionJobMetadata",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messages = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractionJobMessages }),
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        strategyId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        actorId = {
            type = "string",
        },
    },
}

M.ListMemoryExtractionJobsOutput = {
    type = "structure",
    id = "ListMemoryExtractionJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.ExtractionJobMetadata,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MemoryRecordLeftExpression = {
    type = "union",
    id = "MemoryRecordLeftExpression",
    members = {
        metadataKey = {
            type = "string",
        },
    },
}

M.MemoryRecordOperatorType = {
    EQUALS_TO = "EQUALS_TO",
    EXISTS = "EXISTS",
    NOT_EXISTS = "NOT_EXISTS",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    CONTAINS = "CONTAINS",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUALS = "GREATER_THAN_OR_EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUALS = "LESS_THAN_OR_EQUALS",
}

M.MemoryRecordRightExpression = {
    type = "union",
    id = "MemoryRecordRightExpression",
    members = {
        metadataValue = M.MemoryRecordMetadataValue,
    },
}

M.MemoryMetadataFilterExpression = {
    type = "structure",
    id = "MemoryMetadataFilterExpression",
    members = {
        left = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryRecordLeftExpression }),
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        right = M.MemoryRecordRightExpression,
    },
}

M.ListMemoryRecordsInput = {
    type = "structure",
    id = "ListMemoryRecordsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        namespacePath = {
            type = "string",
        },
        memoryStrategyId = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        metadataFilters = {
            type = "list",
            member = M.MemoryMetadataFilterExpression,
        },
    },
}

M.MemoryRecordSummary = {
    type = "structure",
    id = "MemoryRecordSummary",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryContent }),
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
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
        score = {
            type = "double",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = M.MemoryRecordMetadataValue,
        },
    },
}

M.ListMemoryRecordsOutput = {
    type = "structure",
    id = "ListMemoryRecordsOutput",
    members = {
        memoryRecordSummaries = {
            type = "list",
            member = M.MemoryRecordSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EventFilterCondition = {
    HAS_EVENTS = "HAS_EVENTS",
}

M.SessionFilter = {
    type = "structure",
    id = "SessionFilter",
    members = {
        eventFilter = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    id = "ListSessionsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        filter = M.SessionFilter,
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
        actorId = {
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

M.SearchCriteria = {
    type = "structure",
    id = "SearchCriteria",
    members = {
        searchQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memoryStrategyId = {
            type = "string",
        },
        topK = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        metadataFilters = {
            type = "list",
            member = M.MemoryMetadataFilterExpression,
        },
    },
}

M.RetrieveMemoryRecordsInput = {
    type = "structure",
    id = "RetrieveMemoryRecordsInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        namespace = {
            type = "string",
        },
        namespacePath = {
            type = "string",
        },
        searchCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SearchCriteria }),
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.RetrieveMemoryRecordsOutput = {
    type = "structure",
    id = "RetrieveMemoryRecordsOutput",
    members = {
        memoryRecordSummaries = {
            type = "list",
            member = M.MemoryRecordSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExtractionJob = {
    type = "structure",
    id = "ExtractionJob",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMemoryExtractionJobInput = {
    type = "structure",
    id = "StartMemoryExtractionJobInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        extractionJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractionJob }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartMemoryExtractionJobOutput = {
    type = "structure",
    id = "StartMemoryExtractionJobOutput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchRegistryRecordsInput = {
    type = "structure",
    id = "SearchRegistryRecordsInput",
    members = {
        searchQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        filters = {
            type = "document",
        },
    },
}

M.CustomDescriptor = {
    type = "structure",
    id = "CustomDescriptor",
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.ServerDefinition = {
    type = "structure",
    id = "ServerDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.ToolsDefinition = {
    type = "structure",
    id = "ToolsDefinition",
    members = {
        protocolVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.McpDescriptor = {
    type = "structure",
    id = "McpDescriptor",
    members = {
        server = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerDefinition }),
        tools = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolsDefinition }),
    },
}

M.Descriptors = {
    type = "structure",
    id = "Descriptors",
    members = {
        mcp = M.McpDescriptor,
        a2a = M.A2aDescriptor,
        custom = M.CustomDescriptor,
        agentSkills = M.AgentSkillsDescriptor,
    },
}

M.DescriptorType = {
    MCP = "MCP",
    A2A = "A2A",
    CUSTOM = "CUSTOM",
    AGENT_SKILLS = "AGENT_SKILLS",
}

M.RegistryRecordStatus = {
    DRAFT = "DRAFT",
    PENDING_APPROVAL = "PENDING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    DEPRECATED = "DEPRECATED",
}

M.RegistryRecordSummary = {
    type = "structure",
    id = "RegistryRecordSummary",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
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
        description = {
            type = "string",
        },
        descriptorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        descriptors = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Descriptors }),
        version = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.SearchRegistryRecordsOutput = {
    type = "structure",
    id = "SearchRegistryRecordsOutput",
    members = {
        registryRecords = {
            type = "list",
            member = M.RegistryRecordSummary,
            traits = {
                required = true,
            },
        },
    },
}

return M
