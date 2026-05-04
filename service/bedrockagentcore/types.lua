local M = {}

M.AgentCardDefinition = {
    type = "structure",
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
    members = {
        agentCard = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PerVariantOnlineEvaluationConfig = {
    type = "structure",
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
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
        },
        perVariantOnlineEvaluationConfig = {
            type = "list",
            member_type = "structure",
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
    members = {
        variantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mean = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfidenceInterval = {
    type = "structure",
    members = {
        lower = {
            type = "number",
        },
        upper = {
            type = "number",
        },
    },
}

M.VariantResult = {
    type = "structure",
    members = {
        variantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sampleSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mean = {
            type = "number",
            traits = {
                required = true,
            },
        },
        absoluteChange = {
            type = "number",
        },
        percentChange = {
            type = "number",
        },
        pValue = {
            type = "number",
        },
        confidenceInterval = {
            type = "structure",
        },
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
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        controlStats = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        variantResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ABTestResults = {
    type = "structure",
    members = {
        analysisTimestamp = {
            type = "timestamp",
        },
        evaluatorMetrics = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActorSummary = {
    type = "structure",
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
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RuntimeClientError = {
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION = "IdempotentParameterMismatchException",
    ROOT_EVENT_IN_OTHER_SESSION = "EventInOtherSession",
    RESOURCE_CONFLICT = "ResourceConflict",
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
            member_type = "structure",
        },
    },
}

M.InvokeAgentRuntimeInput = {
    type = "structure",
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
                http_payload = true,
            },
        },
        statusCode = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
    },
}

M.InvokeAgentRuntimeCommandRequestBody = {
    type = "structure",
    members = {
        command = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeout = {
            type = "number",
        },
    },
}

M.InvokeAgentRuntimeCommandInput = {
    type = "structure",
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
        body = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ContentDeltaEvent = {
    type = "structure",
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
}

M.CommandExecutionStatus = {
    COMPLETED = "COMPLETED",
    TIMED_OUT = "TIMED_OUT",
}

M.ContentStopEvent = {
    type = "structure",
    members = {
        exitCode = {
            type = "number",
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
    members = {
        contentStart = {
            type = "structure",
        },
        contentDelta = {
            type = "structure",
        },
        contentStop = {
            type = "structure",
        },
    },
}

M.InvokeAgentRuntimeCommandStreamOutput = {
    type = "union",
    members = {
        chunk = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        runtimeClientError = {
            type = "structure",
        },
    },
}

M.InvokeAgentRuntimeCommandOutput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        stream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
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
    },
}

M.StopRuntimeSessionInput = {
    type = "structure",
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
        },
    },
}

M.StopRuntimeSessionOutput = {
    type = "structure",
    members = {
        runtimeSessionId = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id",
            },
        },
        statusCode = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SkillDefinition = {
    type = "structure",
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
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.AgentSkillsDescriptor = {
    type = "structure",
    members = {
        skillMd = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        skillDefinition = {
            type = "structure",
        },
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
    members = {
        stringValue = {
            type = "string",
        },
        doubleValue = {
            type = "number",
        },
        booleanValue = {
            type = "boolean",
        },
    },
}

M.CloudWatchLogsFilter = {
    type = "structure",
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
        value = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchLogsRule = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CloudWatchLogsTraceConfig = {
    type = "structure",
    members = {
        logGroupArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        serviceNames = {
            type = "list",
            member_type = "string",
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
        rule = {
            type = "structure",
        },
    },
}

M.AgentTracesConfig = {
    type = "union",
    members = {
        sessionSpans = {
            type = "list",
            member_type = "document",
        },
        cloudwatchLogs = {
            type = "structure",
        },
    },
}

M.SaveBrowserSessionProfileInput = {
    type = "structure",
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
        },
    },
}

M.SaveBrowserSessionProfileOutput = {
    type = "structure",
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
            },
        },
    },
}

M.GetBrowserSessionInput = {
    type = "structure",
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
    members = {
        secretsManager = {
            type = "structure",
        },
    },
}

M.Certificate = {
    type = "structure",
    members = {
        location = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Location = {
    type = "structure",
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
    members = {
        s3 = {
            type = "structure",
        },
    },
}

M.BrowserEnterprisePolicyType = {
    MANAGED = "MANAGED",
    RECOMMENDED = "RECOMMENDED",
}

M.BrowserEnterprisePolicy = {
    type = "structure",
    members = {
        location = {
            type = "union",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.BrowserExtension = {
    type = "structure",
    members = {
        location = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BrowserProfileConfiguration = {
    type = "structure",
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
    members = {
        domainPatterns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BasicAuth = {
    type = "structure",
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
    members = {
        basicAuth = {
            type = "structure",
        },
    },
}

M.ExternalProxy = {
    type = "structure",
    members = {
        server = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        domainPatterns = {
            type = "list",
            member_type = "string",
        },
        credentials = {
            type = "union",
        },
    },
}

M.Proxy = {
    type = "union",
    members = {
        externalProxy = {
            type = "structure",
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    members = {
        proxies = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        bypass = {
            type = "structure",
        },
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
    members = {
        streamEndpoint = {
            type = "string",
        },
    },
}

M.BrowserSessionStream = {
    type = "structure",
    members = {
        automationStream = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        liveViewStream = {
            type = "structure",
        },
    },
}

M.ViewPort = {
    type = "structure",
    members = {
        width = {
            type = "number",
            traits = {
                required = true,
            },
        },
        height = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBrowserSessionOutput = {
    type = "structure",
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
            },
        },
        viewPort = {
            type = "structure",
        },
        extensions = {
            type = "list",
            member_type = "structure",
        },
        enterprisePolicies = {
            type = "list",
            member_type = "structure",
        },
        profileConfiguration = {
            type = "structure",
        },
        sessionTimeoutSeconds = {
            type = "number",
        },
        status = {
            type = "string",
        },
        streams = {
            type = "structure",
        },
        proxyConfiguration = {
            type = "structure",
        },
        certificates = {
            type = "list",
            member_type = "structure",
        },
        sessionReplayArtifact = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.KeyPressArguments = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        presses = {
            type = "number",
        },
    },
}

M.KeyShortcutArguments = {
    type = "structure",
    members = {
        keys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyTypeArguments = {
    type = "structure",
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
    members = {
        x = {
            type = "number",
            traits = {
                required = true,
            },
        },
        y = {
            type = "number",
            traits = {
                required = true,
            },
        },
        button = {
            type = "string",
        },
        clickCount = {
            type = "number",
        },
    },
}

M.MouseDragArguments = {
    type = "structure",
    members = {
        endX = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endY = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startX = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startY = {
            type = "number",
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
    members = {
        x = {
            type = "number",
            traits = {
                required = true,
            },
        },
        y = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.MouseScrollArguments = {
    type = "structure",
    members = {
        x = {
            type = "number",
            traits = {
                required = true,
            },
        },
        y = {
            type = "number",
            traits = {
                required = true,
            },
        },
        deltaX = {
            type = "number",
        },
        deltaY = {
            type = "number",
        },
    },
}

M.ScreenshotFormat = {
    PNG = "PNG",
}

M.ScreenshotArguments = {
    type = "structure",
    members = {
        format = {
            type = "string",
        },
    },
}

M.BrowserAction = {
    type = "union",
    members = {
        mouseClick = {
            type = "structure",
        },
        mouseMove = {
            type = "structure",
        },
        mouseDrag = {
            type = "structure",
        },
        mouseScroll = {
            type = "structure",
        },
        keyType = {
            type = "structure",
        },
        keyPress = {
            type = "structure",
        },
        keyShortcut = {
            type = "structure",
        },
        screenshot = {
            type = "structure",
        },
    },
}

M.InvokeBrowserInput = {
    type = "structure",
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
        action = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BrowserActionStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.KeyPressResult = {
    type = "structure",
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
    members = {
        mouseClick = {
            type = "structure",
        },
        mouseMove = {
            type = "structure",
        },
        mouseDrag = {
            type = "structure",
        },
        mouseScroll = {
            type = "structure",
        },
        keyType = {
            type = "structure",
        },
        keyPress = {
            type = "structure",
        },
        keyShortcut = {
            type = "structure",
        },
        screenshot = {
            type = "structure",
        },
    },
}

M.InvokeBrowserOutput = {
    type = "structure",
    members = {
        result = {
            type = "union",
            traits = {
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
    },
}

M.ListBrowserSessionsInput = {
    type = "structure",
    members = {
        browserIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListBrowserSessionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        viewPort = {
            type = "structure",
        },
        extensions = {
            type = "list",
            member_type = "structure",
        },
        profileConfiguration = {
            type = "structure",
        },
        proxyConfiguration = {
            type = "structure",
        },
        enterprisePolicies = {
            type = "list",
            member_type = "structure",
        },
        certificates = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartBrowserSessionOutput = {
    type = "structure",
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
            },
        },
        streams = {
            type = "structure",
        },
    },
}

M.StopBrowserSessionInput = {
    type = "structure",
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
        },
    },
}

M.StopBrowserSessionOutput = {
    type = "structure",
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
            },
        },
    },
}

M.AutomationStreamUpdate = {
    type = "structure",
    members = {
        streamStatus = {
            type = "string",
        },
    },
}

M.StreamUpdate = {
    type = "union",
    members = {
        automationStreamUpdate = {
            type = "structure",
        },
    },
}

M.UpdateBrowserStreamInput = {
    type = "structure",
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
        streamUpdate = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateBrowserStreamOutput = {
    type = "structure",
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
        streams = {
            type = "structure",
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

M.GetCodeInterpreterSessionInput = {
    type = "structure",
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
            },
        },
        sessionTimeoutSeconds = {
            type = "number",
        },
        status = {
            type = "string",
        },
        certificates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCodeInterpreterSessionsInput = {
    type = "structure",
    members = {
        codeInterpreterIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListCodeInterpreterSessionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        certificates = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartCodeInterpreterSessionOutput = {
    type = "structure",
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
            },
        },
    },
}

M.StopCodeInterpreterSessionInput = {
    type = "structure",
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
        },
    },
}

M.StopCodeInterpreterSessionOutput = {
    type = "structure",
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
            },
        },
    },
}

M.UserIdentifier = {
    type = "union",
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
    members = {
        userIdentifier = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
}

M.GatewayFilter = {
    type = "structure",
    members = {
        targetPaths = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ConfigurationBundleRef = {
    type = "structure",
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
    members = {
        configurationBundle = {
            type = "structure",
        },
        target = {
            type = "structure",
        },
    },
}

M.Variant = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
            traits = {
                required = true,
            },
        },
        variantConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateABTestInput = {
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
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variants = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        gatewayFilter = {
            type = "structure",
        },
        evaluationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        },
    },
}

M.CreateABTestOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EvaluationInput = {
    type = "union",
    members = {
        sessionSpans = {
            type = "list",
            member_type = "document",
        },
    },
}

M.EvaluationContent = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.SpanContext = {
    type = "structure",
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
    members = {
        spanContext = {
            type = "structure",
        },
    },
}

M.EvaluationExpectedTrajectory = {
    type = "structure",
    members = {
        toolNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluationReferenceInput = {
    type = "structure",
    members = {
        context = {
            type = "union",
            traits = {
                required = true,
            },
        },
        expectedResponse = {
            type = "union",
        },
        assertions = {
            type = "list",
            member_type = "union",
        },
        expectedTrajectory = {
            type = "structure",
        },
    },
}

M.EvaluationTarget = {
    type = "union",
    members = {
        spanIds = {
            type = "list",
            member_type = "string",
        },
        traceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluateInput = {
    type = "structure",
    members = {
        evaluatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evaluationInput = {
            type = "union",
            traits = {
                required = true,
            },
        },
        evaluationTarget = {
            type = "union",
        },
        evaluationReferenceInputs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TokenUsage = {
    type = "structure",
    members = {
        inputTokens = {
            type = "number",
        },
        outputTokens = {
            type = "number",
        },
        totalTokens = {
            type = "number",
        },
    },
}

M.EvaluationResultContent = {
    type = "structure",
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
        context = {
            type = "union",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
        },
        label = {
            type = "string",
        },
        tokenUsage = {
            type = "structure",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        ignoredReferenceInputFields = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluateOutput = {
    type = "structure",
    members = {
        evaluationResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetABTestInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        gatewayFilter = {
            type = "structure",
        },
        evaluationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        currentRunId = {
            type = "string",
        },
        errorDetails = {
            type = "list",
            member_type = "string",
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
        results = {
            type = "structure",
        },
    },
}

M.GetBatchEvaluationInput = {
    type = "structure",
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
    members = {
        sessionIds = {
            type = "list",
            member_type = "string",
        },
        timeRange = {
            type = "structure",
        },
    },
}

M.CloudWatchLogsSource = {
    type = "structure",
    members = {
        serviceNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        logGroupNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        filterConfig = {
            type = "structure",
        },
    },
}

M.DataSourceConfig = {
    type = "union",
    members = {
        cloudWatchLogs = {
            type = "structure",
        },
    },
}

M.EvaluatorStatistics = {
    type = "structure",
    members = {
        averageScore = {
            type = "number",
        },
    },
}

M.EvaluatorSummary = {
    type = "structure",
    members = {
        evaluatorId = {
            type = "string",
        },
        statistics = {
            type = "structure",
        },
        totalEvaluated = {
            type = "number",
        },
        totalFailed = {
            type = "number",
        },
    },
}

M.EvaluationJobResults = {
    type = "structure",
    members = {
        numberOfSessionsCompleted = {
            type = "number",
        },
        numberOfSessionsInProgress = {
            type = "number",
        },
        numberOfSessionsFailed = {
            type = "number",
        },
        totalNumberOfSessions = {
            type = "number",
        },
        numberOfSessionsIgnored = {
            type = "number",
        },
        evaluatorSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Evaluator = {
    type = "structure",
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
    members = {
        cloudWatchConfig = {
            type = "structure",
        },
    },
}

M.GetBatchEvaluationOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        dataSourceConfig = {
            type = "union",
        },
        outputConfig = {
            type = "union",
        },
        evaluationResults = {
            type = "structure",
        },
        errorDetails = {
            type = "list",
            member_type = "string",
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
    members = {
        evaluators = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SystemPromptConfigurationBundle = {
    type = "structure",
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
    members = {
        text = {
            type = "string",
        },
        configurationBundle = {
            type = "structure",
        },
    },
}

M.SystemPromptRecommendationConfig = {
    type = "structure",
    members = {
        systemPrompt = {
            type = "union",
            traits = {
                required = true,
            },
        },
        agentTraces = {
            type = "union",
            traits = {
                required = true,
            },
        },
        evaluationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationBundleToolEntry = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionConfig = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.ToolDescriptionInput = {
    type = "structure",
    members = {
        toolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolDescription = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionTextInput = {
    type = "structure",
    members = {
        tools = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ToolDescriptionSource = {
    type = "union",
    members = {
        toolDescriptionText = {
            type = "structure",
        },
        configurationBundle = {
            type = "structure",
        },
    },
}

M.ToolDescriptionRecommendationConfig = {
    type = "structure",
    members = {
        toolDescription = {
            type = "union",
            traits = {
                required = true,
            },
        },
        agentTraces = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendationConfig = {
    type = "union",
    members = {
        systemPromptRecommendationConfig = {
            type = "structure",
        },
        toolDescriptionRecommendationConfig = {
            type = "structure",
        },
    },
}

M.RecommendationResultConfigurationBundle = {
    type = "structure",
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
    members = {
        recommendedSystemPrompt = {
            type = "string",
        },
        configurationBundle = {
            type = "structure",
        },
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
    members = {
        tools = {
            type = "list",
            member_type = "structure",
        },
        configurationBundle = {
            type = "structure",
        },
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
    members = {
        systemPromptRecommendationResult = {
            type = "structure",
        },
        toolDescriptionRecommendationResult = {
            type = "structure",
        },
    },
}

M.RecommendationType = {
    SYSTEM_PROMPT_RECOMMENDATION = "SYSTEM_PROMPT_RECOMMENDATION",
    TOOL_DESCRIPTION_RECOMMENDATION = "TOOL_DESCRIPTION_RECOMMENDATION",
}

M.GetRecommendationOutput = {
    type = "structure",
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
        recommendationConfig = {
            type = "union",
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
        recommendationResult = {
            type = "union",
        },
    },
}

M.ListABTestsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        abTests = {
            type = "list",
            member_type = "structure",
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
    members = {
        maxResults = {
            type = "number",
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
            member_type = "structure",
        },
        evaluationResults = {
            type = "structure",
        },
        errorDetails = {
            type = "list",
            member_type = "string",
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
    members = {
        batchEvaluations = {
            type = "list",
            member_type = "structure",
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
    members = {
        maxResults = {
            type = "number",
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
    members = {
        recommendationSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        prompt = {
            type = "string",
        },
    },
}

M.GroundTruthTurn = {
    type = "structure",
    members = {
        input = {
            type = "union",
        },
        expectedResponse = {
            type = "union",
        },
    },
}

M.InlineGroundTruth = {
    type = "structure",
    members = {
        assertions = {
            type = "list",
            member_type = "union",
        },
        expectedTrajectory = {
            type = "structure",
        },
        turns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GroundTruthSource = {
    type = "union",
    members = {
        inline = {
            type = "structure",
        },
    },
}

M.SessionMetadataShape = {
    type = "structure",
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
        groundTruth = {
            type = "union",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EvaluationMetadata = {
    type = "union",
    members = {
        sessionMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartBatchEvaluationInput = {
    type = "structure",
    members = {
        batchEvaluationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluators = {
            type = "list",
            member_type = "structure",
        },
        dataSourceConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        evaluationMetadata = {
            type = "union",
        },
        description = {
            type = "string",
        },
    },
}

M.StartBatchEvaluationOutput = {
    type = "structure",
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
            member_type = "structure",
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
        outputConfig = {
            type = "union",
        },
        description = {
            type = "string",
        },
    },
}

M.StartRecommendationInput = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartRecommendationOutput = {
    type = "structure",
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
        recommendationConfig = {
            type = "union",
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

M.StopBatchEvaluationInput = {
    type = "structure",
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
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        variants = {
            type = "list",
            member_type = "structure",
        },
        gatewayFilter = {
            type = "structure",
        },
        evaluationConfig = {
            type = "union",
        },
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        customState = {
            type = "string",
        },
        resources = {
            type = "list",
            member_type = "string",
        },
        audiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SessionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.GetResourceOauth2TokenOutput = {
    type = "structure",
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
            member_type = "string",
        },
        content = {
            type = "list",
            member_type = "structure",
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
        arguments = {
            type = "structure",
        },
    },
}

M.ResourceContentType = {
    TEXT = "text",
    BLOB = "blob",
}

M.ResourceContent = {
    type = "structure",
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
            type = "number",
        },
        resource = {
            type = "structure",
        },
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
            type = "number",
        },
        executionTime = {
            type = "number",
        },
    },
}

M.CodeInterpreterResult = {
    type = "structure",
    members = {
        content = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        structuredContent = {
            type = "structure",
        },
        isError = {
            type = "boolean",
        },
    },
}

M.CodeInterpreterStreamOutput = {
    type = "union",
    members = {
        result = {
            type = "structure",
        },
        accessDeniedException = {
            type = "structure",
        },
        conflictException = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        resourceNotFoundException = {
            type = "structure",
        },
        serviceQuotaExceededException = {
            type = "structure",
        },
        throttlingException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
    },
}

M.InvokeCodeInterpreterOutput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-code-interpreter-session-id",
            },
        },
        stream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.HarnessReasoningTextBlock = {
    type = "structure",
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
    members = {
        reasoningText = {
            type = "structure",
        },
        redactedContent = {
            type = "blob",
        },
    },
}

M.HarnessToolResultContentBlock = {
    type = "union",
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
    members = {
        toolUseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member_type = "union",
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
    members = {
        text = {
            type = "string",
        },
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "structure",
        },
        reasoningContent = {
            type = "union",
        },
    },
}

M.HarnessConversationRole = {
    USER = "user",
    ASSISTANT = "assistant",
}

M.HarnessMessage = {
    type = "structure",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessBedrockModelConfig = {
    type = "structure",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "number",
        },
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
    },
}

M.HarnessGeminiModelConfig = {
    type = "structure",
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
            type = "number",
        },
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
        topK = {
            type = "number",
        },
    },
}

M.HarnessOpenAiModelConfig = {
    type = "structure",
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
            type = "number",
        },
        temperature = {
            type = "number",
        },
        topP = {
            type = "number",
        },
    },
}

M.HarnessModelConfiguration = {
    type = "union",
    members = {
        bedrockModelConfig = {
            type = "structure",
        },
        openAiModelConfig = {
            type = "structure",
        },
        geminiModelConfig = {
            type = "structure",
        },
    },
}

M.HarnessSkill = {
    type = "union",
    members = {
        path = {
            type = "string",
        },
    },
}

M.HarnessSystemContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreBrowserConfig = {
    type = "structure",
    members = {
        browserArn = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreCodeInterpreterConfig = {
    type = "structure",
    members = {
        codeInterpreterArn = {
            type = "string",
        },
    },
}

M.Unit = {
    type = "structure",
}

M.OAuthGrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
}

M.OAuthCredentialProvider = {
    type = "structure",
    members = {
        providerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        customParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        grantType = {
            type = "string",
        },
        defaultReturnUrl = {
            type = "string",
        },
    },
}

M.HarnessGatewayOutboundAuth = {
    type = "union",
    members = {
        awsIam = {
            type = "structure",
        },
        none = {
            type = "structure",
        },
        oauth = {
            type = "structure",
        },
    },
}

M.HarnessAgentCoreGatewayConfig = {
    type = "structure",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outboundAuth = {
            type = "union",
        },
    },
}

M.HarnessInlineFunctionConfig = {
    type = "structure",
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
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        headers = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.HarnessToolConfiguration = {
    type = "union",
    members = {
        remoteMcp = {
            type = "structure",
        },
        agentCoreBrowser = {
            type = "structure",
        },
        agentCoreGateway = {
            type = "structure",
        },
        inlineFunction = {
            type = "structure",
        },
        agentCoreCodeInterpreter = {
            type = "structure",
        },
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
        config = {
            type = "union",
        },
    },
}

M.InvokeHarnessInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        model = {
            type = "union",
        },
        systemPrompt = {
            type = "list",
            member_type = "union",
        },
        tools = {
            type = "list",
            member_type = "structure",
        },
        skills = {
            type = "list",
            member_type = "union",
        },
        allowedTools = {
            type = "list",
            member_type = "string",
        },
        maxIterations = {
            type = "number",
        },
        maxTokens = {
            type = "number",
        },
        timeoutSeconds = {
            type = "number",
        },
        actorId = {
            type = "string",
        },
    },
}

M.HarnessReasoningContentBlockDelta = {
    type = "union",
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
    members = {
        text = {
            type = "string",
        },
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "list",
            member_type = "union",
        },
        reasoningContent = {
            type = "union",
        },
    },
}

M.HarnessContentBlockDeltaEvent = {
    type = "structure",
    members = {
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        delta = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessToolResultBlockStart = {
    type = "structure",
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
    members = {
        toolUse = {
            type = "structure",
        },
        toolResult = {
            type = "structure",
        },
    },
}

M.HarnessContentBlockStartEvent = {
    type = "structure",
    members = {
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        start = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessContentBlockStopEvent = {
    type = "structure",
    members = {
        contentBlockIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessMessageStartEvent = {
    type = "structure",
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
    members = {
        latencyMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessTokenUsage = {
    type = "structure",
    members = {
        inputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        outputTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        totalTokens = {
            type = "number",
            traits = {
                required = true,
            },
        },
        cacheReadInputTokens = {
            type = "number",
        },
        cacheWriteInputTokens = {
            type = "number",
        },
    },
}

M.HarnessMetadataEvent = {
    type = "structure",
    members = {
        usage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvokeHarnessStreamOutput = {
    type = "union",
    members = {
        messageStart = {
            type = "structure",
        },
        contentBlockStart = {
            type = "structure",
        },
        contentBlockDelta = {
            type = "structure",
        },
        contentBlockStop = {
            type = "structure",
        },
        messageStop = {
            type = "structure",
        },
        metadata = {
            type = "structure",
        },
        internalServerException = {
            type = "structure",
        },
        validationException = {
            type = "structure",
        },
        runtimeClientError = {
            type = "structure",
        },
    },
}

M.InvokeHarnessOutput = {
    type = "structure",
    members = {
        stream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.MemoryContent = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.MemoryRecordMetadataValue = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        stringListValue = {
            type = "list",
            member_type = "string",
        },
        numberValue = {
            type = "number",
        },
        dateTimeValue = {
            type = "timestamp",
        },
    },
}

M.MemoryRecordCreateInput = {
    type = "structure",
    members = {
        requestIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "union",
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
        memoryStrategyId = {
            type = "string",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.BatchCreateMemoryRecordsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.MemoryRecordStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.MemoryRecordOutput = {
    type = "structure",
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
            type = "number",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchCreateMemoryRecordsOutput = {
    type = "structure",
    members = {
        successfulRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceException = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteMemoryRecordsOutput = {
    type = "structure",
    members = {
        successfulRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MemoryRecordUpdateInput = {
    type = "structure",
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
        content = {
            type = "union",
        },
        namespaces = {
            type = "list",
            member_type = "string",
        },
        memoryStrategyId = {
            type = "string",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.BatchUpdateMemoryRecordsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateMemoryRecordsOutput = {
    type = "structure",
    members = {
        successfulRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        failedRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Branch = {
    type = "structure",
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
    members = {
        stringValue = {
            type = "string",
        },
    },
}

M.Content = {
    type = "union",
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
    members = {
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        conversational = {
            type = "structure",
        },
        blob = {
            type = "document",
        },
    },
}

M.CreateEventInput = {
    type = "structure",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.Event = {
    type = "structure",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
        branch = {
            type = "structure",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.CreateEventOutput = {
    type = "structure",
    members = {
        event = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidInputException = {
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

M.RetryableConflictException = {
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

M.DeleteEventInput = {
    type = "structure",
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
    members = {
        event = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMemoryRecordInput = {
    type = "structure",
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
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "union",
        },
    },
}

M.GetMemoryRecordOutput = {
    type = "structure",
    members = {
        memoryRecord = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListActorsInput = {
    type = "structure",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActorsOutput = {
    type = "structure",
    members = {
        actorSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includeParentBranches = {
            type = "boolean",
        },
    },
}

M.LeftExpression = {
    type = "union",
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
    members = {
        metadataValue = {
            type = "union",
        },
    },
}

M.EventMetadataFilterExpression = {
    type = "structure",
    members = {
        left = {
            type = "union",
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
        right = {
            type = "union",
        },
    },
}

M.FilterInput = {
    type = "structure",
    members = {
        branch = {
            type = "structure",
        },
        eventMetadata = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEventsInput = {
    type = "structure",
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
        },
        filter = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListEventsOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
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
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MessageMetadata = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExtractionJobMessages = {
    type = "union",
    members = {
        messagesList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExtractionJobMetadata = {
    type = "structure",
    members = {
        jobID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messages = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
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
    members = {
        metadataValue = {
            type = "union",
        },
    },
}

M.MemoryMetadataFilterExpression = {
    type = "structure",
    members = {
        left = {
            type = "union",
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
        right = {
            type = "union",
        },
    },
}

M.ListMemoryRecordsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        metadataFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MemoryRecordSummary = {
    type = "structure",
    members = {
        memoryRecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.ListMemoryRecordsOutput = {
    type = "structure",
    members = {
        memoryRecordSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        eventFilter = {
            type = "string",
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filter = {
            type = "structure",
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
    members = {
        sessionSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        metadataFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RetrieveMemoryRecordsInput = {
    type = "structure",
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
        searchCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.RetrieveMemoryRecordsOutput = {
    type = "structure",
    members = {
        memoryRecordSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        extractionJob = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartMemoryExtractionJobOutput = {
    type = "structure",
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
    members = {
        searchQuery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        filters = {
            type = "document",
        },
    },
}

M.CustomDescriptor = {
    type = "structure",
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.ServerDefinition = {
    type = "structure",
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
    members = {
        server = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tools = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Descriptors = {
    type = "structure",
    members = {
        mcp = {
            type = "structure",
        },
        a2a = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
        agentSkills = {
            type = "structure",
        },
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
        descriptors = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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

M.SearchRegistryRecordsOutput = {
    type = "structure",
    members = {
        registryRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
