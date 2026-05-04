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
        agentCard = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentCardDefinition }),
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
            type = "integer",
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
            member = M.ValidationExceptionField,
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
        body = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeAgentRuntimeCommandRequestBody }),
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
    members = {
        contentStart = M.ContentStartEvent,
        contentDelta = M.ContentDeltaEvent,
        contentStop = M.ContentStopEvent,
    },
}

M.InvokeAgentRuntimeCommandStreamOutput = {
    type = "union",
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
            type = "integer",
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
    members = {
        filters = {
            type = "list",
            member = M.CloudWatchLogsFilter,
        },
    },
}

M.CloudWatchLogsTraceConfig = {
    type = "structure",
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
        secretsManager = M.SecretsManagerLocation,
    },
}

M.Certificate = {
    type = "structure",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateLocation }),
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
        s3 = M.S3Location,
    },
}

M.BrowserEnterprisePolicyType = {
    MANAGED = "MANAGED",
    RECOMMENDED = "RECOMMENDED",
}

M.BrowserEnterprisePolicy = {
    type = "structure",
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
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
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
            member = { type = "string" },
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
        basicAuth = M.BasicAuth,
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
    members = {
        externalProxy = M.ExternalProxy,
    },
}

M.ProxyConfiguration = {
    type = "structure",
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
        automationStream = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutomationStream }),
        liveViewStream = M.LiveViewStream,
    },
}

M.ViewPort = {
    type = "structure",
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
            type = "integer",
        },
    },
}

M.KeyShortcutArguments = {
    type = "structure",
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
    members = {
        format = {
            type = "string",
        },
    },
}

M.BrowserAction = {
    type = "union",
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
        streams = M.BrowserSessionStream,
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
        automationStreamUpdate = M.AutomationStreamUpdate,
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
        streamUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamUpdate }),
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
        streams = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserSessionStream }),
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
}

M.GatewayFilter = {
    type = "structure",
    members = {
        targetPaths = {
            type = "list",
            member = { type = "string" },
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
        configurationBundle = M.ConfigurationBundleRef,
        target = M.TargetRef,
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
            member = { type = "document" },
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
        spanContext = M.SpanContext,
    },
}

M.EvaluationExpectedTrajectory = {
    type = "structure",
    members = {
        toolNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluationReferenceInput = {
    type = "structure",
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
            member = { type = "string" },
        },
        timeRange = M.SessionFilterConfig,
    },
}

M.CloudWatchLogsSource = {
    type = "structure",
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
    members = {
        cloudWatchLogs = M.CloudWatchLogsSource,
    },
}

M.EvaluatorStatistics = {
    type = "structure",
    members = {
        averageScore = {
            type = "double",
        },
    },
}

M.EvaluatorSummary = {
    type = "structure",
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
        cloudWatchConfig = M.CloudWatchOutputConfig,
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
            member = M.RecommendationEvaluatorReference,
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
        configurationBundle = M.SystemPromptConfigurationBundle,
    },
}

M.SystemPromptRecommendationConfig = {
    type = "structure",
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
            member = M.ConfigurationBundleToolEntry,
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
        toolDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolDescriptionConfig }),
    },
}

M.ToolDescriptionTextInput = {
    type = "structure",
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
    members = {
        toolDescriptionText = M.ToolDescriptionTextInput,
        configurationBundle = M.ToolDescriptionConfigurationBundle,
    },
}

M.ToolDescriptionRecommendationConfig = {
    type = "structure",
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
    members = {
        systemPromptRecommendationConfig = M.SystemPromptRecommendationConfig,
        toolDescriptionRecommendationConfig = M.ToolDescriptionRecommendationConfig,
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
    members = {
        prompt = {
            type = "string",
        },
    },
}

M.GroundTruthTurn = {
    type = "structure",
    members = {
        input = M.GroundTruthTurnInput,
        expectedResponse = M.EvaluationContent,
    },
}

M.InlineGroundTruth = {
    type = "structure",
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
    members = {
        inline = M.InlineGroundTruth,
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
    members = {
        sessionMetadata = {
            type = "list",
            member = M.SessionMetadataShape,
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
            member = M.Evaluator,
        },
        dataSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfig }),
        clientToken = {
            type = "string",
        },
        evaluationMetadata = M.EvaluationMetadata,
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
        reasoningText = M.HarnessReasoningTextBlock,
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
    members = {
        bedrockModelConfig = M.HarnessBedrockModelConfig,
        openAiModelConfig = M.HarnessOpenAiModelConfig,
        geminiModelConfig = M.HarnessGeminiModelConfig,
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
    members = {
        awsIam = M.Unit,
        none = M.Unit,
        oauth = M.OAuthCredentialProvider,
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
        outboundAuth = M.HarnessGatewayOutboundAuth,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HarnessToolConfiguration = {
    type = "union",
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
        toolUse = M.HarnessToolUseBlockStart,
        toolResult = M.HarnessToolResultBlockStart,
    },
}

M.HarnessContentBlockStartEvent = {
    type = "structure",
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
            type = "long",
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
    members = {
        stream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InvokeHarnessStreamOutput }),
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
            type = "integer",
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
            member = M.MemoryRecordDeleteInput,
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
    members = {
        conversational = M.Conversational,
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
            member = M.PayloadType,
            traits = {
                required = true,
            },
        },
        branch = M.Branch,
        clientToken = {
            type = "string",
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
    members = {
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
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
        event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
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
    members = {
        memoryRecord = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryRecord }),
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
        metadataValue = M.MetadataValue,
    },
}

M.EventMetadataFilterExpression = {
    type = "structure",
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
    members = {
        messagesList = {
            type = "list",
            member = M.MessageMetadata,
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
        metadataValue = M.MemoryRecordMetadataValue,
    },
}

M.MemoryMetadataFilterExpression = {
    type = "structure",
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
        extractionJob = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExtractionJob }),
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
            member = M.RegistryRecordSummary,
            traits = {
                required = true,
            },
        },
    },
}

return M
