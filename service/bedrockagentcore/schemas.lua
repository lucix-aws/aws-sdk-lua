local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bedrockagentcore"

local M = {}

M.AgentCardDefinition = schema.new({
    id = id.from(_N, "AgentCardDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "AgentCardDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "AgentCardDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.A2aDescriptor = schema.new({
    id = id.from(_N, "A2aDescriptor"),
    type = "structure",
    members = {
        agentCard = schema.new({
            id = id.from(_N, "A2aDescriptor", "agentCard"),
            type = "structure",
            name = "agentCard",
            target_id = id.from(_N, "AgentCardDefinition"),
            target = M.AgentCardDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PerVariantOnlineEvaluationConfig = schema.new({
    id = id.from(_N, "PerVariantOnlineEvaluationConfig"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "PerVariantOnlineEvaluationConfig", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "PerVariantOnlineEvaluationConfig", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ABTestEvaluationConfig = schema.new({
    id = id.from(_N, "ABTestEvaluationConfig"),
    type = "union",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "ABTestEvaluationConfig", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
        }),
        perVariantOnlineEvaluationConfig = schema.new({
            id = id.from(_N, "ABTestEvaluationConfig", "perVariantOnlineEvaluationConfig"),
            type = "list",
            name = "perVariantOnlineEvaluationConfig",
            target_id = prelude.Document.id,
            list_member = M.PerVariantOnlineEvaluationConfig,
        }),
    },
})

M.ControlStats = schema.new({
    id = id.from(_N, "ControlStats"),
    type = "structure",
    members = {
        variantName = schema.new({
            id = id.from(_N, "ControlStats", "variantName"),
            type = "string",
            name = "variantName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleSize = schema.new({
            id = id.from(_N, "ControlStats", "sampleSize"),
            type = "integer",
            name = "sampleSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mean = schema.new({
            id = id.from(_N, "ControlStats", "mean"),
            type = "double",
            name = "mean",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfidenceInterval = schema.new({
    id = id.from(_N, "ConfidenceInterval"),
    type = "structure",
    members = {
        lower = schema.new({
            id = id.from(_N, "ConfidenceInterval", "lower"),
            type = "double",
            name = "lower",
            target_id = prelude.Double.id,
        }),
        upper = schema.new({
            id = id.from(_N, "ConfidenceInterval", "upper"),
            type = "double",
            name = "upper",
            target_id = prelude.Double.id,
        }),
    },
})

M.VariantResult = schema.new({
    id = id.from(_N, "VariantResult"),
    type = "structure",
    members = {
        variantName = schema.new({
            id = id.from(_N, "VariantResult", "variantName"),
            type = "string",
            name = "variantName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sampleSize = schema.new({
            id = id.from(_N, "VariantResult", "sampleSize"),
            type = "integer",
            name = "sampleSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mean = schema.new({
            id = id.from(_N, "VariantResult", "mean"),
            type = "double",
            name = "mean",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        absoluteChange = schema.new({
            id = id.from(_N, "VariantResult", "absoluteChange"),
            type = "double",
            name = "absoluteChange",
            target_id = prelude.Double.id,
        }),
        percentChange = schema.new({
            id = id.from(_N, "VariantResult", "percentChange"),
            type = "double",
            name = "percentChange",
            target_id = prelude.Double.id,
        }),
        pValue = schema.new({
            id = id.from(_N, "VariantResult", "pValue"),
            type = "double",
            name = "pValue",
            target_id = prelude.Double.id,
        }),
        confidenceInterval = schema.new({
            id = id.from(_N, "VariantResult", "confidenceInterval"),
            type = "structure",
            name = "confidenceInterval",
            target_id = id.from(_N, "ConfidenceInterval"),
            target = M.ConfidenceInterval,
        }),
        isSignificant = schema.new({
            id = id.from(_N, "VariantResult", "isSignificant"),
            type = "boolean",
            name = "isSignificant",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EvaluatorMetric = schema.new({
    id = id.from(_N, "EvaluatorMetric"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "EvaluatorMetric", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        controlStats = schema.new({
            id = id.from(_N, "EvaluatorMetric", "controlStats"),
            type = "structure",
            name = "controlStats",
            target_id = id.from(_N, "ControlStats"),
            target = M.ControlStats,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        variantResults = schema.new({
            id = id.from(_N, "EvaluatorMetric", "variantResults"),
            type = "list",
            name = "variantResults",
            target_id = prelude.Document.id,
            list_member = M.VariantResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ABTestResults = schema.new({
    id = id.from(_N, "ABTestResults"),
    type = "structure",
    members = {
        analysisTimestamp = schema.new({
            id = id.from(_N, "ABTestResults", "analysisTimestamp"),
            type = "timestamp",
            name = "analysisTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        evaluatorMetrics = schema.new({
            id = id.from(_N, "ABTestResults", "evaluatorMetrics"),
            type = "list",
            name = "evaluatorMetrics",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorMetric,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ABTestSummary = schema.new({
    id = id.from(_N, "ABTestSummary"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "ABTestSummary", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        abTestArn = schema.new({
            id = id.from(_N, "ABTestSummary", "abTestArn"),
            type = "string",
            name = "abTestArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ABTestSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ABTestSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "ABTestSummary", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ABTestSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "ABTestSummary", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ABTestSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ABTestSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ActorSummary = schema.new({
    id = id.from(_N, "ActorSummary"),
    type = "structure",
    members = {
        actorId = schema.new({
            id = id.from(_N, "ActorSummary", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAgentCardInput = schema.new({
    id = id.from(_N, "GetAgentCardInput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "GetAgentCardInput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "GetAgentCardInput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        qualifier = schema.new({
            id = id.from(_N, "GetAgentCardInput", "qualifier"),
            type = "string",
            name = "qualifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualifier" },
            },
        }),
    },
})

M.GetAgentCardOutput = schema.new({
    id = id.from(_N, "GetAgentCardOutput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "GetAgentCardOutput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        agentCard = schema.new({
            id = id.from(_N, "GetAgentCardOutput", "agentCard"),
            type = "document",
            name = "agentCard",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "GetAgentCardOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RuntimeClientError = schema.new({
    id = id.from(_N, "RuntimeClientError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RuntimeClientError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.InvokeAgentRuntimeInput = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeInput"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        accept = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "accept"),
            type = "string",
            name = "accept",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Accept" },
            },
        }),
        mcpSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "mcpSessionId"),
            type = "string",
            name = "mcpSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Mcp-Session-Id" },
            },
        }),
        runtimeSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        mcpProtocolVersion = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "mcpProtocolVersion"),
            type = "string",
            name = "mcpProtocolVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Mcp-Protocol-Version" },
            },
        }),
        runtimeUserId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "runtimeUserId"),
            type = "string",
            name = "runtimeUserId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-User-Id" },
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        traceState = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "traceState"),
            type = "string",
            name = "traceState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "tracestate" },
            },
        }),
        baggage = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "baggage"),
            type = "string",
            name = "baggage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "baggage" },
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        qualifier = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "qualifier"),
            type = "string",
            name = "qualifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualifier" },
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "accountId" },
            },
        }),
        payload = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeInput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.InvokeAgentRuntimeOutput = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeOutput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        mcpSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "mcpSessionId"),
            type = "string",
            name = "mcpSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Mcp-Session-Id" },
            },
        }),
        mcpProtocolVersion = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "mcpProtocolVersion"),
            type = "string",
            name = "mcpProtocolVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Mcp-Protocol-Version" },
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        traceState = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "traceState"),
            type = "string",
            name = "traceState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "tracestate" },
            },
        }),
        baggage = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "baggage"),
            type = "string",
            name = "baggage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "baggage" },
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        response = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "response"),
            type = "blob",
            name = "response",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.InvokeAgentRuntimeCommandRequestBody = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeCommandRequestBody"),
    type = "structure",
    members = {
        command = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandRequestBody", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeout = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandRequestBody", "timeout"),
            type = "integer",
            name = "timeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InvokeAgentRuntimeCommandInput = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeCommandInput"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        accept = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "accept"),
            type = "string",
            name = "accept",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Accept" },
            },
        }),
        runtimeSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        traceState = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "traceState"),
            type = "string",
            name = "traceState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "tracestate" },
            },
        }),
        baggage = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "baggage"),
            type = "string",
            name = "baggage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "baggage" },
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        qualifier = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "qualifier"),
            type = "string",
            name = "qualifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualifier" },
            },
        }),
        accountId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "accountId" },
            },
        }),
        body = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandInput", "body"),
            type = "structure",
            name = "body",
            target_id = id.from(_N, "InvokeAgentRuntimeCommandRequestBody"),
            target = M.InvokeAgentRuntimeCommandRequestBody,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ContentDeltaEvent = schema.new({
    id = id.from(_N, "ContentDeltaEvent"),
    type = "structure",
    members = {
        stdout = schema.new({
            id = id.from(_N, "ContentDeltaEvent", "stdout"),
            type = "string",
            name = "stdout",
            target_id = prelude.String.id,
        }),
        stderr = schema.new({
            id = id.from(_N, "ContentDeltaEvent", "stderr"),
            type = "string",
            name = "stderr",
            target_id = prelude.String.id,
        }),
    },
})

M.ContentStartEvent = schema.new({
    id = id.from(_N, "ContentStartEvent"),
    type = "structure",
})

M.ContentStopEvent = schema.new({
    id = id.from(_N, "ContentStopEvent"),
    type = "structure",
    members = {
        exitCode = schema.new({
            id = id.from(_N, "ContentStopEvent", "exitCode"),
            type = "integer",
            name = "exitCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ContentStopEvent", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResponseChunk = schema.new({
    id = id.from(_N, "ResponseChunk"),
    type = "structure",
    members = {
        contentStart = schema.new({
            id = id.from(_N, "ResponseChunk", "contentStart"),
            type = "structure",
            name = "contentStart",
            target_id = id.from(_N, "ContentStartEvent"),
            target = M.ContentStartEvent,
        }),
        contentDelta = schema.new({
            id = id.from(_N, "ResponseChunk", "contentDelta"),
            type = "structure",
            name = "contentDelta",
            target_id = id.from(_N, "ContentDeltaEvent"),
            target = M.ContentDeltaEvent,
        }),
        contentStop = schema.new({
            id = id.from(_N, "ResponseChunk", "contentStop"),
            type = "structure",
            name = "contentStop",
            target_id = id.from(_N, "ContentStopEvent"),
            target = M.ContentStopEvent,
        }),
    },
})

M.InvokeAgentRuntimeCommandStreamOutput = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput"),
    type = "union",
    members = {
        chunk = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "chunk"),
            type = "structure",
            name = "chunk",
            target_id = id.from(_N, "ResponseChunk"),
            target = M.ResponseChunk,
        }),
        accessDeniedException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "accessDeniedException"),
            type = "structure",
            name = "accessDeniedException",
            target_id = id.from(_N, "AccessDeniedException"),
            target = M.AccessDeniedException,
        }),
        internalServerException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "internalServerException"),
            type = "structure",
            name = "internalServerException",
            target_id = id.from(_N, "InternalServerException"),
            target = M.InternalServerException,
        }),
        resourceNotFoundException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "resourceNotFoundException"),
            type = "structure",
            name = "resourceNotFoundException",
            target_id = id.from(_N, "ResourceNotFoundException"),
            target = M.ResourceNotFoundException,
        }),
        serviceQuotaExceededException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "serviceQuotaExceededException"),
            type = "structure",
            name = "serviceQuotaExceededException",
            target_id = id.from(_N, "ServiceQuotaExceededException"),
            target = M.ServiceQuotaExceededException,
        }),
        throttlingException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "throttlingException"),
            type = "structure",
            name = "throttlingException",
            target_id = id.from(_N, "ThrottlingException"),
            target = M.ThrottlingException,
        }),
        validationException = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "validationException"),
            type = "structure",
            name = "validationException",
            target_id = id.from(_N, "ValidationException"),
            target = M.ValidationException,
        }),
        runtimeClientError = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput", "runtimeClientError"),
            type = "structure",
            name = "runtimeClientError",
            target_id = id.from(_N, "RuntimeClientError"),
            target = M.RuntimeClientError,
        }),
    },
})

M.InvokeAgentRuntimeCommandOutput = schema.new({
    id = id.from(_N, "InvokeAgentRuntimeCommandOutput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        traceState = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "traceState"),
            type = "string",
            name = "traceState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "tracestate" },
            },
        }),
        baggage = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "baggage"),
            type = "string",
            name = "baggage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "baggage" },
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
        stream = schema.new({
            id = id.from(_N, "InvokeAgentRuntimeCommandOutput", "stream"),
            type = "union",
            name = "stream",
            target_id = id.from(_N, "InvokeAgentRuntimeCommandStreamOutput"),
            target = M.InvokeAgentRuntimeCommandStreamOutput,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StopRuntimeSessionInput = schema.new({
    id = id.from(_N, "StopRuntimeSessionInput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "StopRuntimeSessionInput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "StopRuntimeSessionInput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        qualifier = schema.new({
            id = id.from(_N, "StopRuntimeSessionInput", "qualifier"),
            type = "string",
            name = "qualifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "qualifier" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StopRuntimeSessionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StopRuntimeSessionOutput = schema.new({
    id = id.from(_N, "StopRuntimeSessionOutput"),
    type = "structure",
    members = {
        runtimeSessionId = schema.new({
            id = id.from(_N, "StopRuntimeSessionOutput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        statusCode = schema.new({
            id = id.from(_N, "StopRuntimeSessionOutput", "statusCode"),
            type = "integer",
            name = "statusCode",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_RESPONSE_CODE] = {},
            },
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SkillDefinition = schema.new({
    id = id.from(_N, "SkillDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "SkillDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "SkillDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.SkillMdDefinition = schema.new({
    id = id.from(_N, "SkillMdDefinition"),
    type = "structure",
    members = {
        inlineContent = schema.new({
            id = id.from(_N, "SkillMdDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.AgentSkillsDescriptor = schema.new({
    id = id.from(_N, "AgentSkillsDescriptor"),
    type = "structure",
    members = {
        skillMd = schema.new({
            id = id.from(_N, "AgentSkillsDescriptor", "skillMd"),
            type = "structure",
            name = "skillMd",
            target_id = id.from(_N, "SkillMdDefinition"),
            target = M.SkillMdDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skillDefinition = schema.new({
            id = id.from(_N, "AgentSkillsDescriptor", "skillDefinition"),
            type = "structure",
            name = "skillDefinition",
            target_id = id.from(_N, "SkillDefinition"),
            target = M.SkillDefinition,
        }),
    },
})

M.FilterValue = schema.new({
    id = id.from(_N, "FilterValue"),
    type = "union",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "FilterValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        doubleValue = schema.new({
            id = id.from(_N, "FilterValue", "doubleValue"),
            type = "double",
            name = "doubleValue",
            target_id = prelude.Double.id,
        }),
        booleanValue = schema.new({
            id = id.from(_N, "FilterValue", "booleanValue"),
            type = "boolean",
            name = "booleanValue",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CloudWatchLogsFilter = schema.new({
    id = id.from(_N, "CloudWatchLogsFilter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "CloudWatchLogsFilter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "CloudWatchLogsFilter", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CloudWatchLogsFilter", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "FilterValue"),
            target = M.FilterValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchLogsRule = schema.new({
    id = id.from(_N, "CloudWatchLogsRule"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "CloudWatchLogsRule", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchLogsFilter,
        }),
    },
})

M.CloudWatchLogsTraceConfig = schema.new({
    id = id.from(_N, "CloudWatchLogsTraceConfig"),
    type = "structure",
    members = {
        logGroupArns = schema.new({
            id = id.from(_N, "CloudWatchLogsTraceConfig", "logGroupArns"),
            type = "list",
            name = "logGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceNames = schema.new({
            id = id.from(_N, "CloudWatchLogsTraceConfig", "serviceNames"),
            type = "list",
            name = "serviceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "CloudWatchLogsTraceConfig", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "CloudWatchLogsTraceConfig", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        rule = schema.new({
            id = id.from(_N, "CloudWatchLogsTraceConfig", "rule"),
            type = "structure",
            name = "rule",
            target_id = id.from(_N, "CloudWatchLogsRule"),
            target = M.CloudWatchLogsRule,
        }),
    },
})

M.AgentTracesConfig = schema.new({
    id = id.from(_N, "AgentTracesConfig"),
    type = "union",
    members = {
        sessionSpans = schema.new({
            id = id.from(_N, "AgentTracesConfig", "sessionSpans"),
            type = "list",
            name = "sessionSpans",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        cloudwatchLogs = schema.new({
            id = id.from(_N, "AgentTracesConfig", "cloudwatchLogs"),
            type = "structure",
            name = "cloudwatchLogs",
            target_id = id.from(_N, "CloudWatchLogsTraceConfig"),
            target = M.CloudWatchLogsTraceConfig,
        }),
    },
})

M.SaveBrowserSessionProfileInput = schema.new({
    id = id.from(_N, "SaveBrowserSessionProfileInput"),
    type = "structure",
    members = {
        traceId = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        profileIdentifier = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "profileIdentifier"),
            type = "string",
            name = "profileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        browserIdentifier = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.SaveBrowserSessionProfileOutput = schema.new({
    id = id.from(_N, "SaveBrowserSessionProfileOutput"),
    type = "structure",
    members = {
        profileIdentifier = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileOutput", "profileIdentifier"),
            type = "string",
            name = "profileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        browserIdentifier = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileOutput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "SaveBrowserSessionProfileOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBrowserSessionInput = schema.new({
    id = id.from(_N, "GetBrowserSessionInput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "GetBrowserSessionInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetBrowserSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
    },
})

M.SecretsManagerLocation = schema.new({
    id = id.from(_N, "SecretsManagerLocation"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "SecretsManagerLocation", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CertificateLocation = schema.new({
    id = id.from(_N, "CertificateLocation"),
    type = "union",
    members = {
        secretsManager = schema.new({
            id = id.from(_N, "CertificateLocation", "secretsManager"),
            type = "structure",
            name = "secretsManager",
            target_id = id.from(_N, "SecretsManagerLocation"),
            target = M.SecretsManagerLocation,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "Certificate", "location"),
            type = "union",
            name = "location",
            target_id = id.from(_N, "CertificateLocation"),
            target = M.CertificateLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3Location", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "S3Location", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "S3Location", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceLocation = schema.new({
    id = id.from(_N, "ResourceLocation"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "ResourceLocation", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.BrowserEnterprisePolicy = schema.new({
    id = id.from(_N, "BrowserEnterprisePolicy"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "BrowserEnterprisePolicy", "location"),
            type = "union",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "BrowserEnterprisePolicy", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserExtension = schema.new({
    id = id.from(_N, "BrowserExtension"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "BrowserExtension", "location"),
            type = "union",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BrowserProfileConfiguration = schema.new({
    id = id.from(_N, "BrowserProfileConfiguration"),
    type = "structure",
    members = {
        profileIdentifier = schema.new({
            id = id.from(_N, "BrowserProfileConfiguration", "profileIdentifier"),
            type = "string",
            name = "profileIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProxyBypass = schema.new({
    id = id.from(_N, "ProxyBypass"),
    type = "structure",
    members = {
        domainPatterns = schema.new({
            id = id.from(_N, "ProxyBypass", "domainPatterns"),
            type = "list",
            name = "domainPatterns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BasicAuth = schema.new({
    id = id.from(_N, "BasicAuth"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "BasicAuth", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProxyCredentials = schema.new({
    id = id.from(_N, "ProxyCredentials"),
    type = "union",
    members = {
        basicAuth = schema.new({
            id = id.from(_N, "ProxyCredentials", "basicAuth"),
            type = "structure",
            name = "basicAuth",
            target_id = id.from(_N, "BasicAuth"),
            target = M.BasicAuth,
        }),
    },
})

M.ExternalProxy = schema.new({
    id = id.from(_N, "ExternalProxy"),
    type = "structure",
    members = {
        server = schema.new({
            id = id.from(_N, "ExternalProxy", "server"),
            type = "string",
            name = "server",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        port = schema.new({
            id = id.from(_N, "ExternalProxy", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainPatterns = schema.new({
            id = id.from(_N, "ExternalProxy", "domainPatterns"),
            type = "list",
            name = "domainPatterns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        credentials = schema.new({
            id = id.from(_N, "ExternalProxy", "credentials"),
            type = "union",
            name = "credentials",
            target_id = id.from(_N, "ProxyCredentials"),
            target = M.ProxyCredentials,
        }),
    },
})

M.Proxy = schema.new({
    id = id.from(_N, "Proxy"),
    type = "union",
    members = {
        externalProxy = schema.new({
            id = id.from(_N, "Proxy", "externalProxy"),
            type = "structure",
            name = "externalProxy",
            target_id = id.from(_N, "ExternalProxy"),
            target = M.ExternalProxy,
        }),
    },
})

M.ProxyConfiguration = schema.new({
    id = id.from(_N, "ProxyConfiguration"),
    type = "structure",
    members = {
        proxies = schema.new({
            id = id.from(_N, "ProxyConfiguration", "proxies"),
            type = "list",
            name = "proxies",
            target_id = prelude.Document.id,
            list_member = M.Proxy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bypass = schema.new({
            id = id.from(_N, "ProxyConfiguration", "bypass"),
            type = "structure",
            name = "bypass",
            target_id = id.from(_N, "ProxyBypass"),
            target = M.ProxyBypass,
        }),
    },
})

M.AutomationStream = schema.new({
    id = id.from(_N, "AutomationStream"),
    type = "structure",
    members = {
        streamEndpoint = schema.new({
            id = id.from(_N, "AutomationStream", "streamEndpoint"),
            type = "string",
            name = "streamEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streamStatus = schema.new({
            id = id.from(_N, "AutomationStream", "streamStatus"),
            type = "string",
            name = "streamStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LiveViewStream = schema.new({
    id = id.from(_N, "LiveViewStream"),
    type = "structure",
    members = {
        streamEndpoint = schema.new({
            id = id.from(_N, "LiveViewStream", "streamEndpoint"),
            type = "string",
            name = "streamEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserSessionStream = schema.new({
    id = id.from(_N, "BrowserSessionStream"),
    type = "structure",
    members = {
        automationStream = schema.new({
            id = id.from(_N, "BrowserSessionStream", "automationStream"),
            type = "structure",
            name = "automationStream",
            target_id = id.from(_N, "AutomationStream"),
            target = M.AutomationStream,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        liveViewStream = schema.new({
            id = id.from(_N, "BrowserSessionStream", "liveViewStream"),
            type = "structure",
            name = "liveViewStream",
            target_id = id.from(_N, "LiveViewStream"),
            target = M.LiveViewStream,
        }),
    },
})

M.ViewPort = schema.new({
    id = id.from(_N, "ViewPort"),
    type = "structure",
    members = {
        width = schema.new({
            id = id.from(_N, "ViewPort", "width"),
            type = "integer",
            name = "width",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        height = schema.new({
            id = id.from(_N, "ViewPort", "height"),
            type = "integer",
            name = "height",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBrowserSessionOutput = schema.new({
    id = id.from(_N, "GetBrowserSessionOutput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        viewPort = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "viewPort"),
            type = "structure",
            name = "viewPort",
            target_id = id.from(_N, "ViewPort"),
            target = M.ViewPort,
        }),
        extensions = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "extensions"),
            type = "list",
            name = "extensions",
            target_id = prelude.Document.id,
            list_member = M.BrowserExtension,
        }),
        enterprisePolicies = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "enterprisePolicies"),
            type = "list",
            name = "enterprisePolicies",
            target_id = prelude.Document.id,
            list_member = M.BrowserEnterprisePolicy,
        }),
        profileConfiguration = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "profileConfiguration"),
            type = "structure",
            name = "profileConfiguration",
            target_id = id.from(_N, "BrowserProfileConfiguration"),
            target = M.BrowserProfileConfiguration,
        }),
        sessionTimeoutSeconds = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "sessionTimeoutSeconds"),
            type = "integer",
            name = "sessionTimeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        streams = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "streams"),
            type = "structure",
            name = "streams",
            target_id = id.from(_N, "BrowserSessionStream"),
            target = M.BrowserSessionStream,
        }),
        proxyConfiguration = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "proxyConfiguration"),
            type = "structure",
            name = "proxyConfiguration",
            target_id = id.from(_N, "ProxyConfiguration"),
            target = M.ProxyConfiguration,
        }),
        certificates = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        sessionReplayArtifact = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "sessionReplayArtifact"),
            type = "string",
            name = "sessionReplayArtifact",
            target_id = prelude.String.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetBrowserSessionOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.KeyPressArguments = schema.new({
    id = id.from(_N, "KeyPressArguments"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "KeyPressArguments", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        presses = schema.new({
            id = id.from(_N, "KeyPressArguments", "presses"),
            type = "integer",
            name = "presses",
            target_id = prelude.Integer.id,
        }),
    },
})

M.KeyShortcutArguments = schema.new({
    id = id.from(_N, "KeyShortcutArguments"),
    type = "structure",
    members = {
        keys = schema.new({
            id = id.from(_N, "KeyShortcutArguments", "keys"),
            type = "list",
            name = "keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyTypeArguments = schema.new({
    id = id.from(_N, "KeyTypeArguments"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "KeyTypeArguments", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MouseClickArguments = schema.new({
    id = id.from(_N, "MouseClickArguments"),
    type = "structure",
    members = {
        x = schema.new({
            id = id.from(_N, "MouseClickArguments", "x"),
            type = "integer",
            name = "x",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        y = schema.new({
            id = id.from(_N, "MouseClickArguments", "y"),
            type = "integer",
            name = "y",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        button = schema.new({
            id = id.from(_N, "MouseClickArguments", "button"),
            type = "string",
            name = "button",
            target_id = prelude.String.id,
        }),
        clickCount = schema.new({
            id = id.from(_N, "MouseClickArguments", "clickCount"),
            type = "integer",
            name = "clickCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MouseDragArguments = schema.new({
    id = id.from(_N, "MouseDragArguments"),
    type = "structure",
    members = {
        endX = schema.new({
            id = id.from(_N, "MouseDragArguments", "endX"),
            type = "integer",
            name = "endX",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endY = schema.new({
            id = id.from(_N, "MouseDragArguments", "endY"),
            type = "integer",
            name = "endY",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startX = schema.new({
            id = id.from(_N, "MouseDragArguments", "startX"),
            type = "integer",
            name = "startX",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startY = schema.new({
            id = id.from(_N, "MouseDragArguments", "startY"),
            type = "integer",
            name = "startY",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        button = schema.new({
            id = id.from(_N, "MouseDragArguments", "button"),
            type = "string",
            name = "button",
            target_id = prelude.String.id,
        }),
    },
})

M.MouseMoveArguments = schema.new({
    id = id.from(_N, "MouseMoveArguments"),
    type = "structure",
    members = {
        x = schema.new({
            id = id.from(_N, "MouseMoveArguments", "x"),
            type = "integer",
            name = "x",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        y = schema.new({
            id = id.from(_N, "MouseMoveArguments", "y"),
            type = "integer",
            name = "y",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MouseScrollArguments = schema.new({
    id = id.from(_N, "MouseScrollArguments"),
    type = "structure",
    members = {
        x = schema.new({
            id = id.from(_N, "MouseScrollArguments", "x"),
            type = "integer",
            name = "x",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        y = schema.new({
            id = id.from(_N, "MouseScrollArguments", "y"),
            type = "integer",
            name = "y",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deltaX = schema.new({
            id = id.from(_N, "MouseScrollArguments", "deltaX"),
            type = "integer",
            name = "deltaX",
            target_id = prelude.Integer.id,
        }),
        deltaY = schema.new({
            id = id.from(_N, "MouseScrollArguments", "deltaY"),
            type = "integer",
            name = "deltaY",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ScreenshotArguments = schema.new({
    id = id.from(_N, "ScreenshotArguments"),
    type = "structure",
    members = {
        format = schema.new({
            id = id.from(_N, "ScreenshotArguments", "format"),
            type = "string",
            name = "format",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserAction = schema.new({
    id = id.from(_N, "BrowserAction"),
    type = "union",
    members = {
        mouseClick = schema.new({
            id = id.from(_N, "BrowserAction", "mouseClick"),
            type = "structure",
            name = "mouseClick",
            target_id = id.from(_N, "MouseClickArguments"),
            target = M.MouseClickArguments,
        }),
        mouseMove = schema.new({
            id = id.from(_N, "BrowserAction", "mouseMove"),
            type = "structure",
            name = "mouseMove",
            target_id = id.from(_N, "MouseMoveArguments"),
            target = M.MouseMoveArguments,
        }),
        mouseDrag = schema.new({
            id = id.from(_N, "BrowserAction", "mouseDrag"),
            type = "structure",
            name = "mouseDrag",
            target_id = id.from(_N, "MouseDragArguments"),
            target = M.MouseDragArguments,
        }),
        mouseScroll = schema.new({
            id = id.from(_N, "BrowserAction", "mouseScroll"),
            type = "structure",
            name = "mouseScroll",
            target_id = id.from(_N, "MouseScrollArguments"),
            target = M.MouseScrollArguments,
        }),
        keyType = schema.new({
            id = id.from(_N, "BrowserAction", "keyType"),
            type = "structure",
            name = "keyType",
            target_id = id.from(_N, "KeyTypeArguments"),
            target = M.KeyTypeArguments,
        }),
        keyPress = schema.new({
            id = id.from(_N, "BrowserAction", "keyPress"),
            type = "structure",
            name = "keyPress",
            target_id = id.from(_N, "KeyPressArguments"),
            target = M.KeyPressArguments,
        }),
        keyShortcut = schema.new({
            id = id.from(_N, "BrowserAction", "keyShortcut"),
            type = "structure",
            name = "keyShortcut",
            target_id = id.from(_N, "KeyShortcutArguments"),
            target = M.KeyShortcutArguments,
        }),
        screenshot = schema.new({
            id = id.from(_N, "BrowserAction", "screenshot"),
            type = "structure",
            name = "screenshot",
            target_id = id.from(_N, "ScreenshotArguments"),
            target = M.ScreenshotArguments,
        }),
    },
})

M.InvokeBrowserInput = schema.new({
    id = id.from(_N, "InvokeBrowserInput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "InvokeBrowserInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "InvokeBrowserInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amzn-browser-session-id" },
            },
        }),
        action = schema.new({
            id = id.from(_N, "InvokeBrowserInput", "action"),
            type = "union",
            name = "action",
            target_id = id.from(_N, "BrowserAction"),
            target = M.BrowserAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyPressResult = schema.new({
    id = id.from(_N, "KeyPressResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "KeyPressResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "KeyPressResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyShortcutResult = schema.new({
    id = id.from(_N, "KeyShortcutResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "KeyShortcutResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "KeyShortcutResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyTypeResult = schema.new({
    id = id.from(_N, "KeyTypeResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "KeyTypeResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "KeyTypeResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.MouseClickResult = schema.new({
    id = id.from(_N, "MouseClickResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "MouseClickResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "MouseClickResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.MouseDragResult = schema.new({
    id = id.from(_N, "MouseDragResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "MouseDragResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "MouseDragResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.MouseMoveResult = schema.new({
    id = id.from(_N, "MouseMoveResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "MouseMoveResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "MouseMoveResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.MouseScrollResult = schema.new({
    id = id.from(_N, "MouseScrollResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "MouseScrollResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "MouseScrollResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
    },
})

M.ScreenshotResult = schema.new({
    id = id.from(_N, "ScreenshotResult"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ScreenshotResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "ScreenshotResult", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        data = schema.new({
            id = id.from(_N, "ScreenshotResult", "data"),
            type = "blob",
            name = "data",
            target_id = prelude.Blob.id,
        }),
    },
})

M.BrowserActionResult = schema.new({
    id = id.from(_N, "BrowserActionResult"),
    type = "union",
    members = {
        mouseClick = schema.new({
            id = id.from(_N, "BrowserActionResult", "mouseClick"),
            type = "structure",
            name = "mouseClick",
            target_id = id.from(_N, "MouseClickResult"),
            target = M.MouseClickResult,
        }),
        mouseMove = schema.new({
            id = id.from(_N, "BrowserActionResult", "mouseMove"),
            type = "structure",
            name = "mouseMove",
            target_id = id.from(_N, "MouseMoveResult"),
            target = M.MouseMoveResult,
        }),
        mouseDrag = schema.new({
            id = id.from(_N, "BrowserActionResult", "mouseDrag"),
            type = "structure",
            name = "mouseDrag",
            target_id = id.from(_N, "MouseDragResult"),
            target = M.MouseDragResult,
        }),
        mouseScroll = schema.new({
            id = id.from(_N, "BrowserActionResult", "mouseScroll"),
            type = "structure",
            name = "mouseScroll",
            target_id = id.from(_N, "MouseScrollResult"),
            target = M.MouseScrollResult,
        }),
        keyType = schema.new({
            id = id.from(_N, "BrowserActionResult", "keyType"),
            type = "structure",
            name = "keyType",
            target_id = id.from(_N, "KeyTypeResult"),
            target = M.KeyTypeResult,
        }),
        keyPress = schema.new({
            id = id.from(_N, "BrowserActionResult", "keyPress"),
            type = "structure",
            name = "keyPress",
            target_id = id.from(_N, "KeyPressResult"),
            target = M.KeyPressResult,
        }),
        keyShortcut = schema.new({
            id = id.from(_N, "BrowserActionResult", "keyShortcut"),
            type = "structure",
            name = "keyShortcut",
            target_id = id.from(_N, "KeyShortcutResult"),
            target = M.KeyShortcutResult,
        }),
        screenshot = schema.new({
            id = id.from(_N, "BrowserActionResult", "screenshot"),
            type = "structure",
            name = "screenshot",
            target_id = id.from(_N, "ScreenshotResult"),
            target = M.ScreenshotResult,
        }),
    },
})

M.InvokeBrowserOutput = schema.new({
    id = id.from(_N, "InvokeBrowserOutput"),
    type = "structure",
    members = {
        result = schema.new({
            id = id.from(_N, "InvokeBrowserOutput", "result"),
            type = "union",
            name = "result",
            target_id = id.from(_N, "BrowserActionResult"),
            target = M.BrowserActionResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "InvokeBrowserOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "x-amzn-browser-session-id" },
            },
        }),
    },
})

M.ListBrowserSessionsInput = schema.new({
    id = id.from(_N, "ListBrowserSessionsInput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "ListBrowserSessionsInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBrowserSessionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListBrowserSessionsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserSessionSummary = schema.new({
    id = id.from(_N, "BrowserSessionSummary"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "BrowserSessionSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListBrowserSessionsOutput = schema.new({
    id = id.from(_N, "ListBrowserSessionsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListBrowserSessionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.BrowserSessionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartBrowserSessionInput = schema.new({
    id = id.from(_N, "StartBrowserSessionInput"),
    type = "structure",
    members = {
        traceId = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        browserIdentifier = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        sessionTimeoutSeconds = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "sessionTimeoutSeconds"),
            type = "integer",
            name = "sessionTimeoutSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 3600 },
            },
        }),
        viewPort = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "viewPort"),
            type = "structure",
            name = "viewPort",
            target_id = id.from(_N, "ViewPort"),
            target = M.ViewPort,
        }),
        extensions = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "extensions"),
            type = "list",
            name = "extensions",
            target_id = prelude.Document.id,
            list_member = M.BrowserExtension,
        }),
        profileConfiguration = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "profileConfiguration"),
            type = "structure",
            name = "profileConfiguration",
            target_id = id.from(_N, "BrowserProfileConfiguration"),
            target = M.BrowserProfileConfiguration,
        }),
        proxyConfiguration = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "proxyConfiguration"),
            type = "structure",
            name = "proxyConfiguration",
            target_id = id.from(_N, "ProxyConfiguration"),
            target = M.ProxyConfiguration,
        }),
        enterprisePolicies = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "enterprisePolicies"),
            type = "list",
            name = "enterprisePolicies",
            target_id = prelude.Document.id,
            list_member = M.BrowserEnterprisePolicy,
        }),
        certificates = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartBrowserSessionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartBrowserSessionOutput = schema.new({
    id = id.from(_N, "StartBrowserSessionOutput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "StartBrowserSessionOutput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StartBrowserSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartBrowserSessionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streams = schema.new({
            id = id.from(_N, "StartBrowserSessionOutput", "streams"),
            type = "structure",
            name = "streams",
            target_id = id.from(_N, "BrowserSessionStream"),
            target = M.BrowserSessionStream,
        }),
    },
})

M.StopBrowserSessionInput = schema.new({
    id = id.from(_N, "StopBrowserSessionInput"),
    type = "structure",
    members = {
        traceId = schema.new({
            id = id.from(_N, "StopBrowserSessionInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "StopBrowserSessionInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        browserIdentifier = schema.new({
            id = id.from(_N, "StopBrowserSessionInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopBrowserSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StopBrowserSessionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StopBrowserSessionOutput = schema.new({
    id = id.from(_N, "StopBrowserSessionOutput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "StopBrowserSessionOutput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopBrowserSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "StopBrowserSessionOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutomationStreamUpdate = schema.new({
    id = id.from(_N, "AutomationStreamUpdate"),
    type = "structure",
    members = {
        streamStatus = schema.new({
            id = id.from(_N, "AutomationStreamUpdate", "streamStatus"),
            type = "string",
            name = "streamStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StreamUpdate = schema.new({
    id = id.from(_N, "StreamUpdate"),
    type = "union",
    members = {
        automationStreamUpdate = schema.new({
            id = id.from(_N, "StreamUpdate", "automationStreamUpdate"),
            type = "structure",
            name = "automationStreamUpdate",
            target_id = id.from(_N, "AutomationStreamUpdate"),
            target = M.AutomationStreamUpdate,
        }),
    },
})

M.UpdateBrowserStreamInput = schema.new({
    id = id.from(_N, "UpdateBrowserStreamInput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "UpdateBrowserStreamInput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "UpdateBrowserStreamInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
        streamUpdate = schema.new({
            id = id.from(_N, "UpdateBrowserStreamInput", "streamUpdate"),
            type = "union",
            name = "streamUpdate",
            target_id = id.from(_N, "StreamUpdate"),
            target = M.StreamUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateBrowserStreamInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateBrowserStreamOutput = schema.new({
    id = id.from(_N, "UpdateBrowserStreamOutput"),
    type = "structure",
    members = {
        browserIdentifier = schema.new({
            id = id.from(_N, "UpdateBrowserStreamOutput", "browserIdentifier"),
            type = "string",
            name = "browserIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "UpdateBrowserStreamOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        streams = schema.new({
            id = id.from(_N, "UpdateBrowserStreamOutput", "streams"),
            type = "structure",
            name = "streams",
            target_id = id.from(_N, "BrowserSessionStream"),
            target = M.BrowserSessionStream,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateBrowserStreamOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCodeInterpreterSessionInput = schema.new({
    id = id.from(_N, "GetCodeInterpreterSessionInput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionInput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
    },
})

M.GetCodeInterpreterSessionOutput = schema.new({
    id = id.from(_N, "GetCodeInterpreterSessionOutput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionTimeoutSeconds = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "sessionTimeoutSeconds"),
            type = "integer",
            name = "sessionTimeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        certificates = schema.new({
            id = id.from(_N, "GetCodeInterpreterSessionOutput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
    },
})

M.ListCodeInterpreterSessionsInput = schema.new({
    id = id.from(_N, "ListCodeInterpreterSessionsInput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsInput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.CodeInterpreterSessionSummary = schema.new({
    id = id.from(_N, "CodeInterpreterSessionSummary"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "CodeInterpreterSessionSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListCodeInterpreterSessionsOutput = schema.new({
    id = id.from(_N, "ListCodeInterpreterSessionsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.CodeInterpreterSessionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCodeInterpreterSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCodeInterpreterSessionInput = schema.new({
    id = id.from(_N, "StartCodeInterpreterSessionInput"),
    type = "structure",
    members = {
        traceId = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        sessionTimeoutSeconds = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "sessionTimeoutSeconds"),
            type = "integer",
            name = "sessionTimeoutSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 900 },
            },
        }),
        certificates = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartCodeInterpreterSessionOutput = schema.new({
    id = id.from(_N, "StartCodeInterpreterSessionOutput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionOutput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartCodeInterpreterSessionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopCodeInterpreterSessionInput = schema.new({
    id = id.from(_N, "StopCodeInterpreterSessionInput"),
    type = "structure",
    members = {
        traceId = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionInput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StopCodeInterpreterSessionOutput = schema.new({
    id = id.from(_N, "StopCodeInterpreterSessionOutput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionOutput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "StopCodeInterpreterSessionOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserIdentifier = schema.new({
    id = id.from(_N, "UserIdentifier"),
    type = "union",
    members = {
        userToken = schema.new({
            id = id.from(_N, "UserIdentifier", "userToken"),
            type = "string",
            name = "userToken",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "UserIdentifier", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.CompleteResourceTokenAuthInput = schema.new({
    id = id.from(_N, "CompleteResourceTokenAuthInput"),
    type = "structure",
    members = {
        userIdentifier = schema.new({
            id = id.from(_N, "CompleteResourceTokenAuthInput", "userIdentifier"),
            type = "union",
            name = "userIdentifier",
            target_id = id.from(_N, "UserIdentifier"),
            target = M.UserIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionUri = schema.new({
            id = id.from(_N, "CompleteResourceTokenAuthInput", "sessionUri"),
            type = "string",
            name = "sessionUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CompleteResourceTokenAuthOutput = schema.new({
    id = id.from(_N, "CompleteResourceTokenAuthOutput"),
    type = "structure",
})

M.GatewayFilter = schema.new({
    id = id.from(_N, "GatewayFilter"),
    type = "structure",
    members = {
        targetPaths = schema.new({
            id = id.from(_N, "GatewayFilter", "targetPaths"),
            type = "list",
            name = "targetPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConfigurationBundleRef = schema.new({
    id = id.from(_N, "ConfigurationBundleRef"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "ConfigurationBundleRef", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleVersion = schema.new({
            id = id.from(_N, "ConfigurationBundleRef", "bundleVersion"),
            type = "string",
            name = "bundleVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetRef = schema.new({
    id = id.from(_N, "TargetRef"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "TargetRef", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VariantConfiguration = schema.new({
    id = id.from(_N, "VariantConfiguration"),
    type = "structure",
    members = {
        configurationBundle = schema.new({
            id = id.from(_N, "VariantConfiguration", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "ConfigurationBundleRef"),
            target = M.ConfigurationBundleRef,
        }),
        target = schema.new({
            id = id.from(_N, "VariantConfiguration", "target"),
            type = "structure",
            name = "target",
            target_id = id.from(_N, "TargetRef"),
            target = M.TargetRef,
        }),
    },
})

M.Variant = schema.new({
    id = id.from(_N, "Variant"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Variant", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        weight = schema.new({
            id = id.from(_N, "Variant", "weight"),
            type = "integer",
            name = "weight",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        variantConfiguration = schema.new({
            id = id.from(_N, "Variant", "variantConfiguration"),
            type = "structure",
            name = "variantConfiguration",
            target_id = id.from(_N, "VariantConfiguration"),
            target = M.VariantConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateABTestInput = schema.new({
    id = id.from(_N, "CreateABTestInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateABTestInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateABTestInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "CreateABTestInput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        variants = schema.new({
            id = id.from(_N, "CreateABTestInput", "variants"),
            type = "list",
            name = "variants",
            target_id = prelude.Document.id,
            list_member = M.Variant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayFilter = schema.new({
            id = id.from(_N, "CreateABTestInput", "gatewayFilter"),
            type = "structure",
            name = "gatewayFilter",
            target_id = id.from(_N, "GatewayFilter"),
            target = M.GatewayFilter,
        }),
        evaluationConfig = schema.new({
            id = id.from(_N, "CreateABTestInput", "evaluationConfig"),
            type = "union",
            name = "evaluationConfig",
            target_id = id.from(_N, "ABTestEvaluationConfig"),
            target = M.ABTestEvaluationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateABTestInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enableOnCreate = schema.new({
            id = id.from(_N, "CreateABTestInput", "enableOnCreate"),
            type = "boolean",
            name = "enableOnCreate",
            target_id = prelude.Boolean.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateABTestInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateABTestOutput = schema.new({
    id = id.from(_N, "CreateABTestOutput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "CreateABTestOutput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        abTestArn = schema.new({
            id = id.from(_N, "CreateABTestOutput", "abTestArn"),
            type = "string",
            name = "abTestArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateABTestOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateABTestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "CreateABTestOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateABTestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteABTestInput = schema.new({
    id = id.from(_N, "DeleteABTestInput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "DeleteABTestInput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteABTestOutput = schema.new({
    id = id.from(_N, "DeleteABTestOutput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "DeleteABTestOutput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        abTestArn = schema.new({
            id = id.from(_N, "DeleteABTestOutput", "abTestArn"),
            type = "string",
            name = "abTestArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteABTestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBatchEvaluationInput = schema.new({
    id = id.from(_N, "DeleteBatchEvaluationInput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "DeleteBatchEvaluationInput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteBatchEvaluationOutput = schema.new({
    id = id.from(_N, "DeleteBatchEvaluationOutput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "DeleteBatchEvaluationOutput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationArn = schema.new({
            id = id.from(_N, "DeleteBatchEvaluationOutput", "batchEvaluationArn"),
            type = "string",
            name = "batchEvaluationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteBatchEvaluationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRecommendationInput = schema.new({
    id = id.from(_N, "DeleteRecommendationInput"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "DeleteRecommendationInput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRecommendationOutput = schema.new({
    id = id.from(_N, "DeleteRecommendationOutput"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "DeleteRecommendationOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteRecommendationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DuplicateIdException = schema.new({
    id = id.from(_N, "DuplicateIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EvaluationInput = schema.new({
    id = id.from(_N, "EvaluationInput"),
    type = "union",
    members = {
        sessionSpans = schema.new({
            id = id.from(_N, "EvaluationInput", "sessionSpans"),
            type = "list",
            name = "sessionSpans",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
    },
})

M.EvaluationContent = schema.new({
    id = id.from(_N, "EvaluationContent"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "EvaluationContent", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.SpanContext = schema.new({
    id = id.from(_N, "SpanContext"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "SpanContext", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "SpanContext", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
        }),
        spanId = schema.new({
            id = id.from(_N, "SpanContext", "spanId"),
            type = "string",
            name = "spanId",
            target_id = prelude.String.id,
        }),
    },
})

M.Context = schema.new({
    id = id.from(_N, "Context"),
    type = "union",
    members = {
        spanContext = schema.new({
            id = id.from(_N, "Context", "spanContext"),
            type = "structure",
            name = "spanContext",
            target_id = id.from(_N, "SpanContext"),
            target = M.SpanContext,
        }),
    },
})

M.EvaluationExpectedTrajectory = schema.new({
    id = id.from(_N, "EvaluationExpectedTrajectory"),
    type = "structure",
    members = {
        toolNames = schema.new({
            id = id.from(_N, "EvaluationExpectedTrajectory", "toolNames"),
            type = "list",
            name = "toolNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EvaluationReferenceInput = schema.new({
    id = id.from(_N, "EvaluationReferenceInput"),
    type = "structure",
    members = {
        context = schema.new({
            id = id.from(_N, "EvaluationReferenceInput", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "Context"),
            target = M.Context,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expectedResponse = schema.new({
            id = id.from(_N, "EvaluationReferenceInput", "expectedResponse"),
            type = "union",
            name = "expectedResponse",
            target_id = id.from(_N, "EvaluationContent"),
            target = M.EvaluationContent,
        }),
        assertions = schema.new({
            id = id.from(_N, "EvaluationReferenceInput", "assertions"),
            type = "list",
            name = "assertions",
            target_id = prelude.Document.id,
            list_member = M.EvaluationContent,
        }),
        expectedTrajectory = schema.new({
            id = id.from(_N, "EvaluationReferenceInput", "expectedTrajectory"),
            type = "structure",
            name = "expectedTrajectory",
            target_id = id.from(_N, "EvaluationExpectedTrajectory"),
            target = M.EvaluationExpectedTrajectory,
        }),
    },
})

M.EvaluationTarget = schema.new({
    id = id.from(_N, "EvaluationTarget"),
    type = "union",
    members = {
        spanIds = schema.new({
            id = id.from(_N, "EvaluationTarget", "spanIds"),
            type = "list",
            name = "spanIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        traceIds = schema.new({
            id = id.from(_N, "EvaluationTarget", "traceIds"),
            type = "list",
            name = "traceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EvaluateInput = schema.new({
    id = id.from(_N, "EvaluateInput"),
    type = "structure",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "EvaluateInput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        evaluationInput = schema.new({
            id = id.from(_N, "EvaluateInput", "evaluationInput"),
            type = "union",
            name = "evaluationInput",
            target_id = id.from(_N, "EvaluationInput"),
            target = M.EvaluationInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluationTarget = schema.new({
            id = id.from(_N, "EvaluateInput", "evaluationTarget"),
            type = "union",
            name = "evaluationTarget",
            target_id = id.from(_N, "EvaluationTarget"),
            target = M.EvaluationTarget,
        }),
        evaluationReferenceInputs = schema.new({
            id = id.from(_N, "EvaluateInput", "evaluationReferenceInputs"),
            type = "list",
            name = "evaluationReferenceInputs",
            target_id = prelude.Document.id,
            list_member = M.EvaluationReferenceInput,
        }),
    },
})

M.TokenUsage = schema.new({
    id = id.from(_N, "TokenUsage"),
    type = "structure",
    members = {
        inputTokens = schema.new({
            id = id.from(_N, "TokenUsage", "inputTokens"),
            type = "integer",
            name = "inputTokens",
            target_id = prelude.Integer.id,
        }),
        outputTokens = schema.new({
            id = id.from(_N, "TokenUsage", "outputTokens"),
            type = "integer",
            name = "outputTokens",
            target_id = prelude.Integer.id,
        }),
        totalTokens = schema.new({
            id = id.from(_N, "TokenUsage", "totalTokens"),
            type = "integer",
            name = "totalTokens",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EvaluationResultContent = schema.new({
    id = id.from(_N, "EvaluationResultContent"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "EvaluationResultContent", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "EvaluationResultContent", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorName = schema.new({
            id = id.from(_N, "EvaluationResultContent", "evaluatorName"),
            type = "string",
            name = "evaluatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        explanation = schema.new({
            id = id.from(_N, "EvaluationResultContent", "explanation"),
            type = "string",
            name = "explanation",
            target_id = prelude.String.id,
        }),
        context = schema.new({
            id = id.from(_N, "EvaluationResultContent", "context"),
            type = "union",
            name = "context",
            target_id = id.from(_N, "Context"),
            target = M.Context,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "EvaluationResultContent", "value"),
            type = "double",
            name = "value",
            target_id = prelude.Double.id,
        }),
        label = schema.new({
            id = id.from(_N, "EvaluationResultContent", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
        }),
        tokenUsage = schema.new({
            id = id.from(_N, "EvaluationResultContent", "tokenUsage"),
            type = "structure",
            name = "tokenUsage",
            target_id = id.from(_N, "TokenUsage"),
            target = M.TokenUsage,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "EvaluationResultContent", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "EvaluationResultContent", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        ignoredReferenceInputFields = schema.new({
            id = id.from(_N, "EvaluationResultContent", "ignoredReferenceInputFields"),
            type = "list",
            name = "ignoredReferenceInputFields",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EvaluateOutput = schema.new({
    id = id.from(_N, "EvaluateOutput"),
    type = "structure",
    members = {
        evaluationResults = schema.new({
            id = id.from(_N, "EvaluateOutput", "evaluationResults"),
            type = "list",
            name = "evaluationResults",
            target_id = prelude.Document.id,
            list_member = M.EvaluationResultContent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetABTestInput = schema.new({
    id = id.from(_N, "GetABTestInput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "GetABTestInput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetABTestOutput = schema.new({
    id = id.from(_N, "GetABTestOutput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "GetABTestOutput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        abTestArn = schema.new({
            id = id.from(_N, "GetABTestOutput", "abTestArn"),
            type = "string",
            name = "abTestArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetABTestOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetABTestOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetABTestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "GetABTestOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "GetABTestOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        variants = schema.new({
            id = id.from(_N, "GetABTestOutput", "variants"),
            type = "list",
            name = "variants",
            target_id = prelude.Document.id,
            list_member = M.Variant,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayFilter = schema.new({
            id = id.from(_N, "GetABTestOutput", "gatewayFilter"),
            type = "structure",
            name = "gatewayFilter",
            target_id = id.from(_N, "GatewayFilter"),
            target = M.GatewayFilter,
        }),
        evaluationConfig = schema.new({
            id = id.from(_N, "GetABTestOutput", "evaluationConfig"),
            type = "union",
            name = "evaluationConfig",
            target_id = id.from(_N, "ABTestEvaluationConfig"),
            target = M.ABTestEvaluationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetABTestOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        currentRunId = schema.new({
            id = id.from(_N, "GetABTestOutput", "currentRunId"),
            type = "string",
            name = "currentRunId",
            target_id = prelude.String.id,
        }),
        errorDetails = schema.new({
            id = id.from(_N, "GetABTestOutput", "errorDetails"),
            type = "list",
            name = "errorDetails",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        startedAt = schema.new({
            id = id.from(_N, "GetABTestOutput", "startedAt"),
            type = "timestamp",
            name = "startedAt",
            target_id = prelude.Timestamp.id,
        }),
        stoppedAt = schema.new({
            id = id.from(_N, "GetABTestOutput", "stoppedAt"),
            type = "timestamp",
            name = "stoppedAt",
            target_id = prelude.Timestamp.id,
        }),
        maxDurationExpiresAt = schema.new({
            id = id.from(_N, "GetABTestOutput", "maxDurationExpiresAt"),
            type = "timestamp",
            name = "maxDurationExpiresAt",
            target_id = prelude.Timestamp.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetABTestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetABTestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        results = schema.new({
            id = id.from(_N, "GetABTestOutput", "results"),
            type = "structure",
            name = "results",
            target_id = id.from(_N, "ABTestResults"),
            target = M.ABTestResults,
        }),
    },
})

M.GetBatchEvaluationInput = schema.new({
    id = id.from(_N, "GetBatchEvaluationInput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "GetBatchEvaluationInput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SessionFilterConfig = schema.new({
    id = id.from(_N, "SessionFilterConfig"),
    type = "structure",
    members = {
        startTime = schema.new({
            id = id.from(_N, "SessionFilterConfig", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "SessionFilterConfig", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CloudWatchFilterConfig = schema.new({
    id = id.from(_N, "CloudWatchFilterConfig"),
    type = "structure",
    members = {
        sessionIds = schema.new({
            id = id.from(_N, "CloudWatchFilterConfig", "sessionIds"),
            type = "list",
            name = "sessionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        timeRange = schema.new({
            id = id.from(_N, "CloudWatchFilterConfig", "timeRange"),
            type = "structure",
            name = "timeRange",
            target_id = id.from(_N, "SessionFilterConfig"),
            target = M.SessionFilterConfig,
        }),
    },
})

M.CloudWatchLogsSource = schema.new({
    id = id.from(_N, "CloudWatchLogsSource"),
    type = "structure",
    members = {
        serviceNames = schema.new({
            id = id.from(_N, "CloudWatchLogsSource", "serviceNames"),
            type = "list",
            name = "serviceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logGroupNames = schema.new({
            id = id.from(_N, "CloudWatchLogsSource", "logGroupNames"),
            type = "list",
            name = "logGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterConfig = schema.new({
            id = id.from(_N, "CloudWatchLogsSource", "filterConfig"),
            type = "structure",
            name = "filterConfig",
            target_id = id.from(_N, "CloudWatchFilterConfig"),
            target = M.CloudWatchFilterConfig,
        }),
    },
})

M.DataSourceConfig = schema.new({
    id = id.from(_N, "DataSourceConfig"),
    type = "union",
    members = {
        cloudWatchLogs = schema.new({
            id = id.from(_N, "DataSourceConfig", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsSource"),
            target = M.CloudWatchLogsSource,
        }),
    },
})

M.EvaluatorStatistics = schema.new({
    id = id.from(_N, "EvaluatorStatistics"),
    type = "structure",
    members = {
        averageScore = schema.new({
            id = id.from(_N, "EvaluatorStatistics", "averageScore"),
            type = "double",
            name = "averageScore",
            target_id = prelude.Double.id,
        }),
    },
})

M.EvaluatorSummary = schema.new({
    id = id.from(_N, "EvaluatorSummary"),
    type = "structure",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "EvaluatorSummary", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
        }),
        statistics = schema.new({
            id = id.from(_N, "EvaluatorSummary", "statistics"),
            type = "structure",
            name = "statistics",
            target_id = id.from(_N, "EvaluatorStatistics"),
            target = M.EvaluatorStatistics,
        }),
        totalEvaluated = schema.new({
            id = id.from(_N, "EvaluatorSummary", "totalEvaluated"),
            type = "integer",
            name = "totalEvaluated",
            target_id = prelude.Integer.id,
        }),
        totalFailed = schema.new({
            id = id.from(_N, "EvaluatorSummary", "totalFailed"),
            type = "integer",
            name = "totalFailed",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EvaluationJobResults = schema.new({
    id = id.from(_N, "EvaluationJobResults"),
    type = "structure",
    members = {
        numberOfSessionsCompleted = schema.new({
            id = id.from(_N, "EvaluationJobResults", "numberOfSessionsCompleted"),
            type = "integer",
            name = "numberOfSessionsCompleted",
            target_id = prelude.Integer.id,
        }),
        numberOfSessionsInProgress = schema.new({
            id = id.from(_N, "EvaluationJobResults", "numberOfSessionsInProgress"),
            type = "integer",
            name = "numberOfSessionsInProgress",
            target_id = prelude.Integer.id,
        }),
        numberOfSessionsFailed = schema.new({
            id = id.from(_N, "EvaluationJobResults", "numberOfSessionsFailed"),
            type = "integer",
            name = "numberOfSessionsFailed",
            target_id = prelude.Integer.id,
        }),
        totalNumberOfSessions = schema.new({
            id = id.from(_N, "EvaluationJobResults", "totalNumberOfSessions"),
            type = "integer",
            name = "totalNumberOfSessions",
            target_id = prelude.Integer.id,
        }),
        numberOfSessionsIgnored = schema.new({
            id = id.from(_N, "EvaluationJobResults", "numberOfSessionsIgnored"),
            type = "integer",
            name = "numberOfSessionsIgnored",
            target_id = prelude.Integer.id,
        }),
        evaluatorSummaries = schema.new({
            id = id.from(_N, "EvaluationJobResults", "evaluatorSummaries"),
            type = "list",
            name = "evaluatorSummaries",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorSummary,
        }),
    },
})

M.Evaluator = schema.new({
    id = id.from(_N, "Evaluator"),
    type = "structure",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "Evaluator", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchOutputConfig = schema.new({
    id = id.from(_N, "CloudWatchOutputConfig"),
    type = "structure",
    members = {
        logGroupName = schema.new({
            id = id.from(_N, "CloudWatchOutputConfig", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logStreamName = schema.new({
            id = id.from(_N, "CloudWatchOutputConfig", "logStreamName"),
            type = "string",
            name = "logStreamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OutputConfig = schema.new({
    id = id.from(_N, "OutputConfig"),
    type = "union",
    members = {
        cloudWatchConfig = schema.new({
            id = id.from(_N, "OutputConfig", "cloudWatchConfig"),
            type = "structure",
            name = "cloudWatchConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
        }),
    },
})

M.GetBatchEvaluationOutput = schema.new({
    id = id.from(_N, "GetBatchEvaluationOutput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationArn = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "batchEvaluationArn"),
            type = "string",
            name = "batchEvaluationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationName = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "batchEvaluationName"),
            type = "string",
            name = "batchEvaluationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        evaluators = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.Evaluator,
        }),
        dataSourceConfig = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "dataSourceConfig"),
            type = "union",
            name = "dataSourceConfig",
            target_id = id.from(_N, "DataSourceConfig"),
            target = M.DataSourceConfig,
        }),
        outputConfig = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "outputConfig"),
            type = "union",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
        }),
        evaluationResults = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "evaluationResults"),
            type = "structure",
            name = "evaluationResults",
            target_id = id.from(_N, "EvaluationJobResults"),
            target = M.EvaluationJobResults,
        }),
        errorDetails = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "errorDetails"),
            type = "list",
            name = "errorDetails",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        description = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetBatchEvaluationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetRecommendationInput = schema.new({
    id = id.from(_N, "GetRecommendationInput"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "GetRecommendationInput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RecommendationEvaluatorReference = schema.new({
    id = id.from(_N, "RecommendationEvaluatorReference"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "RecommendationEvaluatorReference", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecommendationEvaluationConfig = schema.new({
    id = id.from(_N, "RecommendationEvaluationConfig"),
    type = "structure",
    members = {
        evaluators = schema.new({
            id = id.from(_N, "RecommendationEvaluationConfig", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.RecommendationEvaluatorReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SystemPromptConfigurationBundle = schema.new({
    id = id.from(_N, "SystemPromptConfigurationBundle"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "SystemPromptConfigurationBundle", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "SystemPromptConfigurationBundle", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        systemPromptJsonPath = schema.new({
            id = id.from(_N, "SystemPromptConfigurationBundle", "systemPromptJsonPath"),
            type = "string",
            name = "systemPromptJsonPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SystemPromptConfig = schema.new({
    id = id.from(_N, "SystemPromptConfig"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "SystemPromptConfig", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        configurationBundle = schema.new({
            id = id.from(_N, "SystemPromptConfig", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "SystemPromptConfigurationBundle"),
            target = M.SystemPromptConfigurationBundle,
        }),
    },
})

M.SystemPromptRecommendationConfig = schema.new({
    id = id.from(_N, "SystemPromptRecommendationConfig"),
    type = "structure",
    members = {
        systemPrompt = schema.new({
            id = id.from(_N, "SystemPromptRecommendationConfig", "systemPrompt"),
            type = "union",
            name = "systemPrompt",
            target_id = id.from(_N, "SystemPromptConfig"),
            target = M.SystemPromptConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentTraces = schema.new({
            id = id.from(_N, "SystemPromptRecommendationConfig", "agentTraces"),
            type = "union",
            name = "agentTraces",
            target_id = id.from(_N, "AgentTracesConfig"),
            target = M.AgentTracesConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluationConfig = schema.new({
            id = id.from(_N, "SystemPromptRecommendationConfig", "evaluationConfig"),
            type = "structure",
            name = "evaluationConfig",
            target_id = id.from(_N, "RecommendationEvaluationConfig"),
            target = M.RecommendationEvaluationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationBundleToolEntry = schema.new({
    id = id.from(_N, "ConfigurationBundleToolEntry"),
    type = "structure",
    members = {
        toolName = schema.new({
            id = id.from(_N, "ConfigurationBundleToolEntry", "toolName"),
            type = "string",
            name = "toolName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        toolDescriptionJsonPath = schema.new({
            id = id.from(_N, "ConfigurationBundleToolEntry", "toolDescriptionJsonPath"),
            type = "string",
            name = "toolDescriptionJsonPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ToolDescriptionConfigurationBundle = schema.new({
    id = id.from(_N, "ToolDescriptionConfigurationBundle"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "ToolDescriptionConfigurationBundle", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "ToolDescriptionConfigurationBundle", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tools = schema.new({
            id = id.from(_N, "ToolDescriptionConfigurationBundle", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationBundleToolEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ToolDescriptionConfig = schema.new({
    id = id.from(_N, "ToolDescriptionConfig"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "ToolDescriptionConfig", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolDescriptionInput = schema.new({
    id = id.from(_N, "ToolDescriptionInput"),
    type = "structure",
    members = {
        toolName = schema.new({
            id = id.from(_N, "ToolDescriptionInput", "toolName"),
            type = "string",
            name = "toolName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        toolDescription = schema.new({
            id = id.from(_N, "ToolDescriptionInput", "toolDescription"),
            type = "union",
            name = "toolDescription",
            target_id = id.from(_N, "ToolDescriptionConfig"),
            target = M.ToolDescriptionConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ToolDescriptionTextInput = schema.new({
    id = id.from(_N, "ToolDescriptionTextInput"),
    type = "structure",
    members = {
        tools = schema.new({
            id = id.from(_N, "ToolDescriptionTextInput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.ToolDescriptionInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ToolDescriptionSource = schema.new({
    id = id.from(_N, "ToolDescriptionSource"),
    type = "union",
    members = {
        toolDescriptionText = schema.new({
            id = id.from(_N, "ToolDescriptionSource", "toolDescriptionText"),
            type = "structure",
            name = "toolDescriptionText",
            target_id = id.from(_N, "ToolDescriptionTextInput"),
            target = M.ToolDescriptionTextInput,
        }),
        configurationBundle = schema.new({
            id = id.from(_N, "ToolDescriptionSource", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "ToolDescriptionConfigurationBundle"),
            target = M.ToolDescriptionConfigurationBundle,
        }),
    },
})

M.ToolDescriptionRecommendationConfig = schema.new({
    id = id.from(_N, "ToolDescriptionRecommendationConfig"),
    type = "structure",
    members = {
        toolDescription = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationConfig", "toolDescription"),
            type = "union",
            name = "toolDescription",
            target_id = id.from(_N, "ToolDescriptionSource"),
            target = M.ToolDescriptionSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentTraces = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationConfig", "agentTraces"),
            type = "union",
            name = "agentTraces",
            target_id = id.from(_N, "AgentTracesConfig"),
            target = M.AgentTracesConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecommendationConfig = schema.new({
    id = id.from(_N, "RecommendationConfig"),
    type = "union",
    members = {
        systemPromptRecommendationConfig = schema.new({
            id = id.from(_N, "RecommendationConfig", "systemPromptRecommendationConfig"),
            type = "structure",
            name = "systemPromptRecommendationConfig",
            target_id = id.from(_N, "SystemPromptRecommendationConfig"),
            target = M.SystemPromptRecommendationConfig,
        }),
        toolDescriptionRecommendationConfig = schema.new({
            id = id.from(_N, "RecommendationConfig", "toolDescriptionRecommendationConfig"),
            type = "structure",
            name = "toolDescriptionRecommendationConfig",
            target_id = id.from(_N, "ToolDescriptionRecommendationConfig"),
            target = M.ToolDescriptionRecommendationConfig,
        }),
    },
})

M.RecommendationResultConfigurationBundle = schema.new({
    id = id.from(_N, "RecommendationResultConfigurationBundle"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "RecommendationResultConfigurationBundle", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "RecommendationResultConfigurationBundle", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SystemPromptRecommendationResult = schema.new({
    id = id.from(_N, "SystemPromptRecommendationResult"),
    type = "structure",
    members = {
        recommendedSystemPrompt = schema.new({
            id = id.from(_N, "SystemPromptRecommendationResult", "recommendedSystemPrompt"),
            type = "string",
            name = "recommendedSystemPrompt",
            target_id = prelude.String.id,
        }),
        configurationBundle = schema.new({
            id = id.from(_N, "SystemPromptRecommendationResult", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "RecommendationResultConfigurationBundle"),
            target = M.RecommendationResultConfigurationBundle,
        }),
        errorCode = schema.new({
            id = id.from(_N, "SystemPromptRecommendationResult", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "SystemPromptRecommendationResult", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolDescriptionOutput = schema.new({
    id = id.from(_N, "ToolDescriptionOutput"),
    type = "structure",
    members = {
        toolName = schema.new({
            id = id.from(_N, "ToolDescriptionOutput", "toolName"),
            type = "string",
            name = "toolName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendedToolDescription = schema.new({
            id = id.from(_N, "ToolDescriptionOutput", "recommendedToolDescription"),
            type = "string",
            name = "recommendedToolDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolDescriptionRecommendationResult = schema.new({
    id = id.from(_N, "ToolDescriptionRecommendationResult"),
    type = "structure",
    members = {
        tools = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationResult", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.ToolDescriptionOutput,
        }),
        configurationBundle = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationResult", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "RecommendationResultConfigurationBundle"),
            target = M.RecommendationResultConfigurationBundle,
        }),
        errorCode = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationResult", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "ToolDescriptionRecommendationResult", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationResult = schema.new({
    id = id.from(_N, "RecommendationResult"),
    type = "union",
    members = {
        systemPromptRecommendationResult = schema.new({
            id = id.from(_N, "RecommendationResult", "systemPromptRecommendationResult"),
            type = "structure",
            name = "systemPromptRecommendationResult",
            target_id = id.from(_N, "SystemPromptRecommendationResult"),
            target = M.SystemPromptRecommendationResult,
        }),
        toolDescriptionRecommendationResult = schema.new({
            id = id.from(_N, "RecommendationResult", "toolDescriptionRecommendationResult"),
            type = "structure",
            name = "toolDescriptionRecommendationResult",
            target_id = id.from(_N, "ToolDescriptionRecommendationResult"),
            target = M.ToolDescriptionRecommendationResult,
        }),
    },
})

M.GetRecommendationOutput = schema.new({
    id = id.from(_N, "GetRecommendationOutput"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationArn = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "recommendationArn"),
            type = "string",
            name = "recommendationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationConfig = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "recommendationConfig"),
            type = "union",
            name = "recommendationConfig",
            target_id = id.from(_N, "RecommendationConfig"),
            target = M.RecommendationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        recommendationResult = schema.new({
            id = id.from(_N, "GetRecommendationOutput", "recommendationResult"),
            type = "union",
            name = "recommendationResult",
            target_id = id.from(_N, "RecommendationResult"),
            target = M.RecommendationResult,
        }),
    },
})

M.ListABTestsInput = schema.new({
    id = id.from(_N, "ListABTestsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListABTestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListABTestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListABTestsOutput = schema.new({
    id = id.from(_N, "ListABTestsOutput"),
    type = "structure",
    members = {
        abTests = schema.new({
            id = id.from(_N, "ListABTestsOutput", "abTests"),
            type = "list",
            name = "abTests",
            target_id = prelude.Document.id,
            list_member = M.ABTestSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListABTestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchEvaluationsInput = schema.new({
    id = id.from(_N, "ListBatchEvaluationsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListBatchEvaluationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchEvaluationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.BatchEvaluationSummary = schema.new({
    id = id.from(_N, "BatchEvaluationSummary"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationArn = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "batchEvaluationArn"),
            type = "string",
            name = "batchEvaluationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationName = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "batchEvaluationName"),
            type = "string",
            name = "batchEvaluationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        evaluators = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.Evaluator,
        }),
        evaluationResults = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "evaluationResults"),
            type = "structure",
            name = "evaluationResults",
            target_id = id.from(_N, "EvaluationJobResults"),
            target = M.EvaluationJobResults,
        }),
        errorDetails = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "errorDetails"),
            type = "list",
            name = "errorDetails",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "BatchEvaluationSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListBatchEvaluationsOutput = schema.new({
    id = id.from(_N, "ListBatchEvaluationsOutput"),
    type = "structure",
    members = {
        batchEvaluations = schema.new({
            id = id.from(_N, "ListBatchEvaluationsOutput", "batchEvaluations"),
            type = "list",
            name = "batchEvaluations",
            target_id = prelude.Document.id,
            list_member = M.BatchEvaluationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchEvaluationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecommendationsInput = schema.new({
    id = id.from(_N, "ListRecommendationsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        statusFilter = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "statusFilter"),
            type = "string",
            name = "statusFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
    },
})

M.RecommendationSummary = schema.new({
    id = id.from(_N, "RecommendationSummary"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "RecommendationSummary", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationArn = schema.new({
            id = id.from(_N, "RecommendationSummary", "recommendationArn"),
            type = "string",
            name = "recommendationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "RecommendationSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "RecommendationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "RecommendationSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "RecommendationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "RecommendationSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RecommendationSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListRecommendationsOutput = schema.new({
    id = id.from(_N, "ListRecommendationsOutput"),
    type = "structure",
    members = {
        recommendationSummaries = schema.new({
            id = id.from(_N, "ListRecommendationsOutput", "recommendationSummaries"),
            type = "list",
            name = "recommendationSummaries",
            target_id = prelude.Document.id,
            list_member = M.RecommendationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecommendationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GroundTruthTurnInput = schema.new({
    id = id.from(_N, "GroundTruthTurnInput"),
    type = "union",
    members = {
        prompt = schema.new({
            id = id.from(_N, "GroundTruthTurnInput", "prompt"),
            type = "string",
            name = "prompt",
            target_id = prelude.String.id,
        }),
    },
})

M.GroundTruthTurn = schema.new({
    id = id.from(_N, "GroundTruthTurn"),
    type = "structure",
    members = {
        input = schema.new({
            id = id.from(_N, "GroundTruthTurn", "input"),
            type = "union",
            name = "input",
            target_id = id.from(_N, "GroundTruthTurnInput"),
            target = M.GroundTruthTurnInput,
        }),
        expectedResponse = schema.new({
            id = id.from(_N, "GroundTruthTurn", "expectedResponse"),
            type = "union",
            name = "expectedResponse",
            target_id = id.from(_N, "EvaluationContent"),
            target = M.EvaluationContent,
        }),
    },
})

M.InlineGroundTruth = schema.new({
    id = id.from(_N, "InlineGroundTruth"),
    type = "structure",
    members = {
        assertions = schema.new({
            id = id.from(_N, "InlineGroundTruth", "assertions"),
            type = "list",
            name = "assertions",
            target_id = prelude.Document.id,
            list_member = M.EvaluationContent,
        }),
        expectedTrajectory = schema.new({
            id = id.from(_N, "InlineGroundTruth", "expectedTrajectory"),
            type = "structure",
            name = "expectedTrajectory",
            target_id = id.from(_N, "EvaluationExpectedTrajectory"),
            target = M.EvaluationExpectedTrajectory,
        }),
        turns = schema.new({
            id = id.from(_N, "InlineGroundTruth", "turns"),
            type = "list",
            name = "turns",
            target_id = prelude.Document.id,
            list_member = M.GroundTruthTurn,
        }),
    },
})

M.GroundTruthSource = schema.new({
    id = id.from(_N, "GroundTruthSource"),
    type = "union",
    members = {
        inline = schema.new({
            id = id.from(_N, "GroundTruthSource", "inline"),
            type = "structure",
            name = "inline",
            target_id = id.from(_N, "InlineGroundTruth"),
            target = M.InlineGroundTruth,
        }),
    },
})

M.SessionMetadataShape = schema.new({
    id = id.from(_N, "SessionMetadataShape"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "SessionMetadataShape", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        testScenarioId = schema.new({
            id = id.from(_N, "SessionMetadataShape", "testScenarioId"),
            type = "string",
            name = "testScenarioId",
            target_id = prelude.String.id,
        }),
        groundTruth = schema.new({
            id = id.from(_N, "SessionMetadataShape", "groundTruth"),
            type = "union",
            name = "groundTruth",
            target_id = id.from(_N, "GroundTruthSource"),
            target = M.GroundTruthSource,
        }),
        metadata = schema.new({
            id = id.from(_N, "SessionMetadataShape", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.EvaluationMetadata = schema.new({
    id = id.from(_N, "EvaluationMetadata"),
    type = "union",
    members = {
        sessionMetadata = schema.new({
            id = id.from(_N, "EvaluationMetadata", "sessionMetadata"),
            type = "list",
            name = "sessionMetadata",
            target_id = prelude.Document.id,
            list_member = M.SessionMetadataShape,
        }),
    },
})

M.StartBatchEvaluationInput = schema.new({
    id = id.from(_N, "StartBatchEvaluationInput"),
    type = "structure",
    members = {
        batchEvaluationName = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "batchEvaluationName"),
            type = "string",
            name = "batchEvaluationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluators = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.Evaluator,
        }),
        dataSourceConfig = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "dataSourceConfig"),
            type = "union",
            name = "dataSourceConfig",
            target_id = id.from(_N, "DataSourceConfig"),
            target = M.DataSourceConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        evaluationMetadata = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "evaluationMetadata"),
            type = "union",
            name = "evaluationMetadata",
            target_id = id.from(_N, "EvaluationMetadata"),
            target = M.EvaluationMetadata,
        }),
        description = schema.new({
            id = id.from(_N, "StartBatchEvaluationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.StartBatchEvaluationOutput = schema.new({
    id = id.from(_N, "StartBatchEvaluationOutput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationArn = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "batchEvaluationArn"),
            type = "string",
            name = "batchEvaluationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationName = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "batchEvaluationName"),
            type = "string",
            name = "batchEvaluationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluators = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.Evaluator,
        }),
        status = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "outputConfig"),
            type = "union",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
        }),
        description = schema.new({
            id = id.from(_N, "StartBatchEvaluationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRecommendationInput = schema.new({
    id = id.from(_N, "StartRecommendationInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "StartRecommendationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "StartRecommendationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "StartRecommendationInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationConfig = schema.new({
            id = id.from(_N, "StartRecommendationInput", "recommendationConfig"),
            type = "union",
            name = "recommendationConfig",
            target_id = id.from(_N, "RecommendationConfig"),
            target = M.RecommendationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartRecommendationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartRecommendationOutput = schema.new({
    id = id.from(_N, "StartRecommendationOutput"),
    type = "structure",
    members = {
        recommendationId = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationArn = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "recommendationArn"),
            type = "string",
            name = "recommendationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationConfig = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "recommendationConfig"),
            type = "union",
            name = "recommendationConfig",
            target_id = id.from(_N, "RecommendationConfig"),
            target = M.RecommendationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "StartRecommendationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StopBatchEvaluationInput = schema.new({
    id = id.from(_N, "StopBatchEvaluationInput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "StopBatchEvaluationInput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopBatchEvaluationOutput = schema.new({
    id = id.from(_N, "StopBatchEvaluationOutput"),
    type = "structure",
    members = {
        batchEvaluationId = schema.new({
            id = id.from(_N, "StopBatchEvaluationOutput", "batchEvaluationId"),
            type = "string",
            name = "batchEvaluationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchEvaluationArn = schema.new({
            id = id.from(_N, "StopBatchEvaluationOutput", "batchEvaluationArn"),
            type = "string",
            name = "batchEvaluationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StopBatchEvaluationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "StopBatchEvaluationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateABTestInput = schema.new({
    id = id.from(_N, "UpdateABTestInput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "UpdateABTestInput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateABTestInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateABTestInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateABTestInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        variants = schema.new({
            id = id.from(_N, "UpdateABTestInput", "variants"),
            type = "list",
            name = "variants",
            target_id = prelude.Document.id,
            list_member = M.Variant,
        }),
        gatewayFilter = schema.new({
            id = id.from(_N, "UpdateABTestInput", "gatewayFilter"),
            type = "structure",
            name = "gatewayFilter",
            target_id = id.from(_N, "GatewayFilter"),
            target = M.GatewayFilter,
        }),
        evaluationConfig = schema.new({
            id = id.from(_N, "UpdateABTestInput", "evaluationConfig"),
            type = "union",
            name = "evaluationConfig",
            target_id = id.from(_N, "ABTestEvaluationConfig"),
            target = M.ABTestEvaluationConfig,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateABTestInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "UpdateABTestInput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateABTestOutput = schema.new({
    id = id.from(_N, "UpdateABTestOutput"),
    type = "structure",
    members = {
        abTestId = schema.new({
            id = id.from(_N, "UpdateABTestOutput", "abTestId"),
            type = "string",
            name = "abTestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        abTestArn = schema.new({
            id = id.from(_N, "UpdateABTestOutput", "abTestArn"),
            type = "string",
            name = "abTestArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateABTestOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "UpdateABTestOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateABTestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourceApiKeyInput = schema.new({
    id = id.from(_N, "GetResourceApiKeyInput"),
    type = "structure",
    members = {
        workloadIdentityToken = schema.new({
            id = id.from(_N, "GetResourceApiKeyInput", "workloadIdentityToken"),
            type = "string",
            name = "workloadIdentityToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceCredentialProviderName = schema.new({
            id = id.from(_N, "GetResourceApiKeyInput", "resourceCredentialProviderName"),
            type = "string",
            name = "resourceCredentialProviderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourceApiKeyOutput = schema.new({
    id = id.from(_N, "GetResourceApiKeyOutput"),
    type = "structure",
    members = {
        apiKey = schema.new({
            id = id.from(_N, "GetResourceApiKeyOutput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourceOauth2TokenInput = schema.new({
    id = id.from(_N, "GetResourceOauth2TokenInput"),
    type = "structure",
    members = {
        workloadIdentityToken = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "workloadIdentityToken"),
            type = "string",
            name = "workloadIdentityToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceCredentialProviderName = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "resourceCredentialProviderName"),
            type = "string",
            name = "resourceCredentialProviderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scopes = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "scopes"),
            type = "list",
            name = "scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oauth2Flow = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "oauth2Flow"),
            type = "string",
            name = "oauth2Flow",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionUri = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "sessionUri"),
            type = "string",
            name = "sessionUri",
            target_id = prelude.String.id,
        }),
        resourceOauth2ReturnUrl = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "resourceOauth2ReturnUrl"),
            type = "string",
            name = "resourceOauth2ReturnUrl",
            target_id = prelude.String.id,
        }),
        forceAuthentication = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "forceAuthentication"),
            type = "boolean",
            name = "forceAuthentication",
            target_id = prelude.Boolean.id,
        }),
        customParameters = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "customParameters"),
            type = "map",
            name = "customParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        customState = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "customState"),
            type = "string",
            name = "customState",
            target_id = prelude.String.id,
        }),
        resources = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        audiences = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenInput", "audiences"),
            type = "list",
            name = "audiences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetResourceOauth2TokenOutput = schema.new({
    id = id.from(_N, "GetResourceOauth2TokenOutput"),
    type = "structure",
    members = {
        authorizationUrl = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenOutput", "authorizationUrl"),
            type = "string",
            name = "authorizationUrl",
            target_id = prelude.String.id,
        }),
        accessToken = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenOutput", "accessToken"),
            type = "string",
            name = "accessToken",
            target_id = prelude.String.id,
        }),
        sessionUri = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenOutput", "sessionUri"),
            type = "string",
            name = "sessionUri",
            target_id = prelude.String.id,
        }),
        sessionStatus = schema.new({
            id = id.from(_N, "GetResourceOauth2TokenOutput", "sessionStatus"),
            type = "string",
            name = "sessionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetWorkloadAccessTokenInput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenInput"),
    type = "structure",
    members = {
        workloadName = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenInput", "workloadName"),
            type = "string",
            name = "workloadName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadAccessTokenOutput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenOutput"),
    type = "structure",
    members = {
        workloadAccessToken = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenOutput", "workloadAccessToken"),
            type = "string",
            name = "workloadAccessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadAccessTokenForJWTInput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenForJWTInput"),
    type = "structure",
    members = {
        workloadName = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForJWTInput", "workloadName"),
            type = "string",
            name = "workloadName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userToken = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForJWTInput", "userToken"),
            type = "string",
            name = "userToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadAccessTokenForJWTOutput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenForJWTOutput"),
    type = "structure",
    members = {
        workloadAccessToken = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForJWTOutput", "workloadAccessToken"),
            type = "string",
            name = "workloadAccessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadAccessTokenForUserIdInput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenForUserIdInput"),
    type = "structure",
    members = {
        workloadName = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForUserIdInput", "workloadName"),
            type = "string",
            name = "workloadName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForUserIdInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadAccessTokenForUserIdOutput = schema.new({
    id = id.from(_N, "GetWorkloadAccessTokenForUserIdOutput"),
    type = "structure",
    members = {
        workloadAccessToken = schema.new({
            id = id.from(_N, "GetWorkloadAccessTokenForUserIdOutput", "workloadAccessToken"),
            type = "string",
            name = "workloadAccessToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputContentBlock = schema.new({
    id = id.from(_N, "InputContentBlock"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "InputContentBlock", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        text = schema.new({
            id = id.from(_N, "InputContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        blob = schema.new({
            id = id.from(_N, "InputContentBlock", "blob"),
            type = "blob",
            name = "blob",
            target_id = prelude.Blob.id,
        }),
    },
})

M.ToolArguments = schema.new({
    id = id.from(_N, "ToolArguments"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ToolArguments", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        language = schema.new({
            id = id.from(_N, "ToolArguments", "language"),
            type = "string",
            name = "language",
            target_id = prelude.String.id,
        }),
        clearContext = schema.new({
            id = id.from(_N, "ToolArguments", "clearContext"),
            type = "boolean",
            name = "clearContext",
            target_id = prelude.Boolean.id,
        }),
        command = schema.new({
            id = id.from(_N, "ToolArguments", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "ToolArguments", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        paths = schema.new({
            id = id.from(_N, "ToolArguments", "paths"),
            type = "list",
            name = "paths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        content = schema.new({
            id = id.from(_N, "ToolArguments", "content"),
            type = "list",
            name = "content",
            target_id = prelude.Document.id,
            list_member = M.InputContentBlock,
        }),
        directoryPath = schema.new({
            id = id.from(_N, "ToolArguments", "directoryPath"),
            type = "string",
            name = "directoryPath",
            target_id = prelude.String.id,
        }),
        taskId = schema.new({
            id = id.from(_N, "ToolArguments", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        runtime = schema.new({
            id = id.from(_N, "ToolArguments", "runtime"),
            type = "string",
            name = "runtime",
            target_id = prelude.String.id,
        }),
    },
})

M.InvokeCodeInterpreterInput = schema.new({
    id = id.from(_N, "InvokeCodeInterpreterInput"),
    type = "structure",
    members = {
        codeInterpreterIdentifier = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "codeInterpreterIdentifier"),
            type = "string",
            name = "codeInterpreterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-code-interpreter-session-id" },
            },
        }),
        traceId = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "traceId"),
            type = "string",
            name = "traceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "X-Amzn-Trace-Id" },
            },
        }),
        traceParent = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "traceParent"),
            type = "string",
            name = "traceParent",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "traceparent" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arguments = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterInput", "arguments"),
            type = "structure",
            name = "arguments",
            target_id = id.from(_N, "ToolArguments"),
            target = M.ToolArguments,
        }),
    },
})

M.ResourceContent = schema.new({
    id = id.from(_N, "ResourceContent"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ResourceContent", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        uri = schema.new({
            id = id.from(_N, "ResourceContent", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        mimeType = schema.new({
            id = id.from(_N, "ResourceContent", "mimeType"),
            type = "string",
            name = "mimeType",
            target_id = prelude.String.id,
        }),
        text = schema.new({
            id = id.from(_N, "ResourceContent", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        blob = schema.new({
            id = id.from(_N, "ResourceContent", "blob"),
            type = "blob",
            name = "blob",
            target_id = prelude.Blob.id,
        }),
    },
})

M.ContentBlock = schema.new({
    id = id.from(_N, "ContentBlock"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ContentBlock", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        text = schema.new({
            id = id.from(_N, "ContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        data = schema.new({
            id = id.from(_N, "ContentBlock", "data"),
            type = "blob",
            name = "data",
            target_id = prelude.Blob.id,
        }),
        mimeType = schema.new({
            id = id.from(_N, "ContentBlock", "mimeType"),
            type = "string",
            name = "mimeType",
            target_id = prelude.String.id,
        }),
        uri = schema.new({
            id = id.from(_N, "ContentBlock", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ContentBlock", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ContentBlock", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        size = schema.new({
            id = id.from(_N, "ContentBlock", "size"),
            type = "long",
            name = "size",
            target_id = prelude.Long.id,
        }),
        resource = schema.new({
            id = id.from(_N, "ContentBlock", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "ResourceContent"),
            target = M.ResourceContent,
        }),
    },
})

M.ToolResultStructuredContent = schema.new({
    id = id.from(_N, "ToolResultStructuredContent"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        taskStatus = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "taskStatus"),
            type = "string",
            name = "taskStatus",
            target_id = prelude.String.id,
        }),
        stdout = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "stdout"),
            type = "string",
            name = "stdout",
            target_id = prelude.String.id,
        }),
        stderr = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "stderr"),
            type = "string",
            name = "stderr",
            target_id = prelude.String.id,
        }),
        exitCode = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "exitCode"),
            type = "integer",
            name = "exitCode",
            target_id = prelude.Integer.id,
        }),
        executionTime = schema.new({
            id = id.from(_N, "ToolResultStructuredContent", "executionTime"),
            type = "double",
            name = "executionTime",
            target_id = prelude.Double.id,
        }),
    },
})

M.CodeInterpreterResult = schema.new({
    id = id.from(_N, "CodeInterpreterResult"),
    type = "structure",
    members = {
        content = schema.new({
            id = id.from(_N, "CodeInterpreterResult", "content"),
            type = "list",
            name = "content",
            target_id = prelude.Document.id,
            list_member = M.ContentBlock,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        structuredContent = schema.new({
            id = id.from(_N, "CodeInterpreterResult", "structuredContent"),
            type = "structure",
            name = "structuredContent",
            target_id = id.from(_N, "ToolResultStructuredContent"),
            target = M.ToolResultStructuredContent,
        }),
        isError = schema.new({
            id = id.from(_N, "CodeInterpreterResult", "isError"),
            type = "boolean",
            name = "isError",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CodeInterpreterStreamOutput = schema.new({
    id = id.from(_N, "CodeInterpreterStreamOutput"),
    type = "union",
    members = {
        result = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "result"),
            type = "structure",
            name = "result",
            target_id = id.from(_N, "CodeInterpreterResult"),
            target = M.CodeInterpreterResult,
        }),
        accessDeniedException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "accessDeniedException"),
            type = "structure",
            name = "accessDeniedException",
            target_id = id.from(_N, "AccessDeniedException"),
            target = M.AccessDeniedException,
        }),
        conflictException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "conflictException"),
            type = "structure",
            name = "conflictException",
            target_id = id.from(_N, "ConflictException"),
            target = M.ConflictException,
        }),
        internalServerException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "internalServerException"),
            type = "structure",
            name = "internalServerException",
            target_id = id.from(_N, "InternalServerException"),
            target = M.InternalServerException,
        }),
        resourceNotFoundException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "resourceNotFoundException"),
            type = "structure",
            name = "resourceNotFoundException",
            target_id = id.from(_N, "ResourceNotFoundException"),
            target = M.ResourceNotFoundException,
        }),
        serviceQuotaExceededException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "serviceQuotaExceededException"),
            type = "structure",
            name = "serviceQuotaExceededException",
            target_id = id.from(_N, "ServiceQuotaExceededException"),
            target = M.ServiceQuotaExceededException,
        }),
        throttlingException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "throttlingException"),
            type = "structure",
            name = "throttlingException",
            target_id = id.from(_N, "ThrottlingException"),
            target = M.ThrottlingException,
        }),
        validationException = schema.new({
            id = id.from(_N, "CodeInterpreterStreamOutput", "validationException"),
            type = "structure",
            name = "validationException",
            target_id = id.from(_N, "ValidationException"),
            target = M.ValidationException,
        }),
    },
})

M.InvokeCodeInterpreterOutput = schema.new({
    id = id.from(_N, "InvokeCodeInterpreterOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amzn-code-interpreter-session-id" },
            },
        }),
        stream = schema.new({
            id = id.from(_N, "InvokeCodeInterpreterOutput", "stream"),
            type = "union",
            name = "stream",
            target_id = id.from(_N, "CodeInterpreterStreamOutput"),
            target = M.CodeInterpreterStreamOutput,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.HarnessReasoningTextBlock = schema.new({
    id = id.from(_N, "HarnessReasoningTextBlock"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessReasoningTextBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        signature = schema.new({
            id = id.from(_N, "HarnessReasoningTextBlock", "signature"),
            type = "string",
            name = "signature",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessReasoningContentBlock = schema.new({
    id = id.from(_N, "HarnessReasoningContentBlock"),
    type = "union",
    members = {
        reasoningText = schema.new({
            id = id.from(_N, "HarnessReasoningContentBlock", "reasoningText"),
            type = "structure",
            name = "reasoningText",
            target_id = id.from(_N, "HarnessReasoningTextBlock"),
            target = M.HarnessReasoningTextBlock,
        }),
        redactedContent = schema.new({
            id = id.from(_N, "HarnessReasoningContentBlock", "redactedContent"),
            type = "blob",
            name = "redactedContent",
            target_id = prelude.Blob.id,
        }),
    },
})

M.HarnessToolResultContentBlock = schema.new({
    id = id.from(_N, "HarnessToolResultContentBlock"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessToolResultContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        json = schema.new({
            id = id.from(_N, "HarnessToolResultContentBlock", "json"),
            type = "document",
            name = "json",
            target_id = prelude.Document.id,
        }),
    },
})

M.HarnessToolResultBlock = schema.new({
    id = id.from(_N, "HarnessToolResultBlock"),
    type = "structure",
    members = {
        toolUseId = schema.new({
            id = id.from(_N, "HarnessToolResultBlock", "toolUseId"),
            type = "string",
            name = "toolUseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "HarnessToolResultBlock", "content"),
            type = "list",
            name = "content",
            target_id = prelude.Document.id,
            list_member = M.HarnessToolResultContentBlock,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "HarnessToolResultBlock", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "HarnessToolResultBlock", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessToolUseBlock = schema.new({
    id = id.from(_N, "HarnessToolUseBlock"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "HarnessToolUseBlock", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        toolUseId = schema.new({
            id = id.from(_N, "HarnessToolUseBlock", "toolUseId"),
            type = "string",
            name = "toolUseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        input = schema.new({
            id = id.from(_N, "HarnessToolUseBlock", "input"),
            type = "document",
            name = "input",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "HarnessToolUseBlock", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        serverName = schema.new({
            id = id.from(_N, "HarnessToolUseBlock", "serverName"),
            type = "string",
            name = "serverName",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessContentBlock = schema.new({
    id = id.from(_N, "HarnessContentBlock"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        toolUse = schema.new({
            id = id.from(_N, "HarnessContentBlock", "toolUse"),
            type = "structure",
            name = "toolUse",
            target_id = id.from(_N, "HarnessToolUseBlock"),
            target = M.HarnessToolUseBlock,
        }),
        toolResult = schema.new({
            id = id.from(_N, "HarnessContentBlock", "toolResult"),
            type = "structure",
            name = "toolResult",
            target_id = id.from(_N, "HarnessToolResultBlock"),
            target = M.HarnessToolResultBlock,
        }),
        reasoningContent = schema.new({
            id = id.from(_N, "HarnessContentBlock", "reasoningContent"),
            type = "union",
            name = "reasoningContent",
            target_id = id.from(_N, "HarnessReasoningContentBlock"),
            target = M.HarnessReasoningContentBlock,
        }),
    },
})

M.HarnessMessage = schema.new({
    id = id.from(_N, "HarnessMessage"),
    type = "structure",
    members = {
        role = schema.new({
            id = id.from(_N, "HarnessMessage", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "HarnessMessage", "content"),
            type = "list",
            name = "content",
            target_id = prelude.Document.id,
            list_member = M.HarnessContentBlock,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessBedrockModelConfig = schema.new({
    id = id.from(_N, "HarnessBedrockModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
    },
})

M.HarnessGeminiModelConfig = schema.new({
    id = id.from(_N, "HarnessGeminiModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKeyArn = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "apiKeyArn"),
            type = "string",
            name = "apiKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
        topK = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "topK"),
            type = "integer",
            name = "topK",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HarnessOpenAiModelConfig = schema.new({
    id = id.from(_N, "HarnessOpenAiModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKeyArn = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "apiKeyArn"),
            type = "string",
            name = "apiKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
    },
})

M.HarnessModelConfiguration = schema.new({
    id = id.from(_N, "HarnessModelConfiguration"),
    type = "union",
    members = {
        bedrockModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "bedrockModelConfig"),
            type = "structure",
            name = "bedrockModelConfig",
            target_id = id.from(_N, "HarnessBedrockModelConfig"),
            target = M.HarnessBedrockModelConfig,
        }),
        openAiModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "openAiModelConfig"),
            type = "structure",
            name = "openAiModelConfig",
            target_id = id.from(_N, "HarnessOpenAiModelConfig"),
            target = M.HarnessOpenAiModelConfig,
        }),
        geminiModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "geminiModelConfig"),
            type = "structure",
            name = "geminiModelConfig",
            target_id = id.from(_N, "HarnessGeminiModelConfig"),
            target = M.HarnessGeminiModelConfig,
        }),
    },
})

M.HarnessSkill = schema.new({
    id = id.from(_N, "HarnessSkill"),
    type = "union",
    members = {
        path = schema.new({
            id = id.from(_N, "HarnessSkill", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessSystemContentBlock = schema.new({
    id = id.from(_N, "HarnessSystemContentBlock"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessSystemContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessAgentCoreBrowserConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreBrowserConfig"),
    type = "structure",
    members = {
        browserArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreBrowserConfig", "browserArn"),
            type = "string",
            name = "browserArn",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessAgentCoreCodeInterpreterConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig"),
    type = "structure",
    members = {
        codeInterpreterArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig", "codeInterpreterArn"),
            type = "string",
            name = "codeInterpreterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Unit = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.OAuthCredentialProvider = schema.new({
    id = id.from(_N, "OAuthCredentialProvider"),
    type = "structure",
    members = {
        providerArn = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "providerArn"),
            type = "string",
            name = "providerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scopes = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "scopes"),
            type = "list",
            name = "scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customParameters = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "customParameters"),
            type = "map",
            name = "customParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        grantType = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "CLIENT_CREDENTIALS" },
            },
        }),
        defaultReturnUrl = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "defaultReturnUrl"),
            type = "string",
            name = "defaultReturnUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessGatewayOutboundAuth = schema.new({
    id = id.from(_N, "HarnessGatewayOutboundAuth"),
    type = "union",
    members = {
        awsIam = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "awsIam"),
            type = "structure",
            name = "awsIam",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
        none = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "none"),
            type = "structure",
            name = "none",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
        oauth = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "oauth"),
            type = "structure",
            name = "oauth",
            target_id = id.from(_N, "OAuthCredentialProvider"),
            target = M.OAuthCredentialProvider,
        }),
    },
})

M.HarnessAgentCoreGatewayConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreGatewayConfig"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreGatewayConfig", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outboundAuth = schema.new({
            id = id.from(_N, "HarnessAgentCoreGatewayConfig", "outboundAuth"),
            type = "union",
            name = "outboundAuth",
            target_id = id.from(_N, "HarnessGatewayOutboundAuth"),
            target = M.HarnessGatewayOutboundAuth,
        }),
    },
})

M.HarnessInlineFunctionConfig = schema.new({
    id = id.from(_N, "HarnessInlineFunctionConfig"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "HarnessInlineFunctionConfig", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputSchema = schema.new({
            id = id.from(_N, "HarnessInlineFunctionConfig", "inputSchema"),
            type = "document",
            name = "inputSchema",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessRemoteMcpConfig = schema.new({
    id = id.from(_N, "HarnessRemoteMcpConfig"),
    type = "structure",
    members = {
        url = schema.new({
            id = id.from(_N, "HarnessRemoteMcpConfig", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        headers = schema.new({
            id = id.from(_N, "HarnessRemoteMcpConfig", "headers"),
            type = "map",
            name = "headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.HarnessToolConfiguration = schema.new({
    id = id.from(_N, "HarnessToolConfiguration"),
    type = "union",
    members = {
        remoteMcp = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "remoteMcp"),
            type = "structure",
            name = "remoteMcp",
            target_id = id.from(_N, "HarnessRemoteMcpConfig"),
            target = M.HarnessRemoteMcpConfig,
        }),
        agentCoreBrowser = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreBrowser"),
            type = "structure",
            name = "agentCoreBrowser",
            target_id = id.from(_N, "HarnessAgentCoreBrowserConfig"),
            target = M.HarnessAgentCoreBrowserConfig,
        }),
        agentCoreGateway = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreGateway"),
            type = "structure",
            name = "agentCoreGateway",
            target_id = id.from(_N, "HarnessAgentCoreGatewayConfig"),
            target = M.HarnessAgentCoreGatewayConfig,
        }),
        inlineFunction = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "inlineFunction"),
            type = "structure",
            name = "inlineFunction",
            target_id = id.from(_N, "HarnessInlineFunctionConfig"),
            target = M.HarnessInlineFunctionConfig,
        }),
        agentCoreCodeInterpreter = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreCodeInterpreter"),
            type = "structure",
            name = "agentCoreCodeInterpreter",
            target_id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig"),
            target = M.HarnessAgentCoreCodeInterpreterConfig,
        }),
    },
})

M.HarnessTool = schema.new({
    id = id.from(_N, "HarnessTool"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "HarnessTool", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "HarnessTool", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        config = schema.new({
            id = id.from(_N, "HarnessTool", "config"),
            type = "union",
            name = "config",
            target_id = id.from(_N, "HarnessToolConfiguration"),
            target = M.HarnessToolConfiguration,
        }),
    },
})

M.InvokeHarnessInput = schema.new({
    id = id.from(_N, "InvokeHarnessInput"),
    type = "structure",
    members = {
        harnessArn = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "harnessArn"),
            type = "string",
            name = "harnessArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "harnessArn" },
            },
        }),
        runtimeSessionId = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "runtimeSessionId"),
            type = "string",
            name = "runtimeSessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id" },
            },
        }),
        messages = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "messages"),
            type = "list",
            name = "messages",
            target_id = prelude.Document.id,
            list_member = M.HarnessMessage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        model = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "model"),
            type = "union",
            name = "model",
            target_id = id.from(_N, "HarnessModelConfiguration"),
            target = M.HarnessModelConfiguration,
        }),
        systemPrompt = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "systemPrompt"),
            type = "list",
            name = "systemPrompt",
            target_id = prelude.Document.id,
            list_member = M.HarnessSystemContentBlock,
        }),
        tools = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.HarnessTool,
        }),
        skills = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "skills"),
            type = "list",
            name = "skills",
            target_id = prelude.Document.id,
            list_member = M.HarnessSkill,
        }),
        allowedTools = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "allowedTools"),
            type = "list",
            name = "allowedTools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxIterations = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "maxIterations"),
            type = "integer",
            name = "maxIterations",
            target_id = prelude.Integer.id,
        }),
        maxTokens = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        actorId = schema.new({
            id = id.from(_N, "InvokeHarnessInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessReasoningContentBlockDelta = schema.new({
    id = id.from(_N, "HarnessReasoningContentBlockDelta"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessReasoningContentBlockDelta", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        redactedContent = schema.new({
            id = id.from(_N, "HarnessReasoningContentBlockDelta", "redactedContent"),
            type = "blob",
            name = "redactedContent",
            target_id = prelude.Blob.id,
        }),
        signature = schema.new({
            id = id.from(_N, "HarnessReasoningContentBlockDelta", "signature"),
            type = "string",
            name = "signature",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessToolResultBlockDelta = schema.new({
    id = id.from(_N, "HarnessToolResultBlockDelta"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessToolResultBlockDelta", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        json = schema.new({
            id = id.from(_N, "HarnessToolResultBlockDelta", "json"),
            type = "document",
            name = "json",
            target_id = prelude.Document.id,
        }),
    },
})

M.HarnessToolUseBlockDelta = schema.new({
    id = id.from(_N, "HarnessToolUseBlockDelta"),
    type = "structure",
    members = {
        input = schema.new({
            id = id.from(_N, "HarnessToolUseBlockDelta", "input"),
            type = "string",
            name = "input",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessContentBlockDelta = schema.new({
    id = id.from(_N, "HarnessContentBlockDelta"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessContentBlockDelta", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
        toolUse = schema.new({
            id = id.from(_N, "HarnessContentBlockDelta", "toolUse"),
            type = "structure",
            name = "toolUse",
            target_id = id.from(_N, "HarnessToolUseBlockDelta"),
            target = M.HarnessToolUseBlockDelta,
        }),
        toolResult = schema.new({
            id = id.from(_N, "HarnessContentBlockDelta", "toolResult"),
            type = "list",
            name = "toolResult",
            target_id = prelude.Document.id,
            list_member = M.HarnessToolResultBlockDelta,
        }),
        reasoningContent = schema.new({
            id = id.from(_N, "HarnessContentBlockDelta", "reasoningContent"),
            type = "union",
            name = "reasoningContent",
            target_id = id.from(_N, "HarnessReasoningContentBlockDelta"),
            target = M.HarnessReasoningContentBlockDelta,
        }),
    },
})

M.HarnessContentBlockDeltaEvent = schema.new({
    id = id.from(_N, "HarnessContentBlockDeltaEvent"),
    type = "structure",
    members = {
        contentBlockIndex = schema.new({
            id = id.from(_N, "HarnessContentBlockDeltaEvent", "contentBlockIndex"),
            type = "integer",
            name = "contentBlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        delta = schema.new({
            id = id.from(_N, "HarnessContentBlockDeltaEvent", "delta"),
            type = "union",
            name = "delta",
            target_id = id.from(_N, "HarnessContentBlockDelta"),
            target = M.HarnessContentBlockDelta,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessToolResultBlockStart = schema.new({
    id = id.from(_N, "HarnessToolResultBlockStart"),
    type = "structure",
    members = {
        toolUseId = schema.new({
            id = id.from(_N, "HarnessToolResultBlockStart", "toolUseId"),
            type = "string",
            name = "toolUseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "HarnessToolResultBlockStart", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessToolUseBlockStart = schema.new({
    id = id.from(_N, "HarnessToolUseBlockStart"),
    type = "structure",
    members = {
        toolUseId = schema.new({
            id = id.from(_N, "HarnessToolUseBlockStart", "toolUseId"),
            type = "string",
            name = "toolUseId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "HarnessToolUseBlockStart", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "HarnessToolUseBlockStart", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        serverName = schema.new({
            id = id.from(_N, "HarnessToolUseBlockStart", "serverName"),
            type = "string",
            name = "serverName",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessContentBlockStart = schema.new({
    id = id.from(_N, "HarnessContentBlockStart"),
    type = "union",
    members = {
        toolUse = schema.new({
            id = id.from(_N, "HarnessContentBlockStart", "toolUse"),
            type = "structure",
            name = "toolUse",
            target_id = id.from(_N, "HarnessToolUseBlockStart"),
            target = M.HarnessToolUseBlockStart,
        }),
        toolResult = schema.new({
            id = id.from(_N, "HarnessContentBlockStart", "toolResult"),
            type = "structure",
            name = "toolResult",
            target_id = id.from(_N, "HarnessToolResultBlockStart"),
            target = M.HarnessToolResultBlockStart,
        }),
    },
})

M.HarnessContentBlockStartEvent = schema.new({
    id = id.from(_N, "HarnessContentBlockStartEvent"),
    type = "structure",
    members = {
        contentBlockIndex = schema.new({
            id = id.from(_N, "HarnessContentBlockStartEvent", "contentBlockIndex"),
            type = "integer",
            name = "contentBlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        start = schema.new({
            id = id.from(_N, "HarnessContentBlockStartEvent", "start"),
            type = "union",
            name = "start",
            target_id = id.from(_N, "HarnessContentBlockStart"),
            target = M.HarnessContentBlockStart,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessContentBlockStopEvent = schema.new({
    id = id.from(_N, "HarnessContentBlockStopEvent"),
    type = "structure",
    members = {
        contentBlockIndex = schema.new({
            id = id.from(_N, "HarnessContentBlockStopEvent", "contentBlockIndex"),
            type = "integer",
            name = "contentBlockIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessMessageStartEvent = schema.new({
    id = id.from(_N, "HarnessMessageStartEvent"),
    type = "structure",
    members = {
        role = schema.new({
            id = id.from(_N, "HarnessMessageStartEvent", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessMessageStopEvent = schema.new({
    id = id.from(_N, "HarnessMessageStopEvent"),
    type = "structure",
    members = {
        stopReason = schema.new({
            id = id.from(_N, "HarnessMessageStopEvent", "stopReason"),
            type = "string",
            name = "stopReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessStreamMetrics = schema.new({
    id = id.from(_N, "HarnessStreamMetrics"),
    type = "structure",
    members = {
        latencyMs = schema.new({
            id = id.from(_N, "HarnessStreamMetrics", "latencyMs"),
            type = "long",
            name = "latencyMs",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessTokenUsage = schema.new({
    id = id.from(_N, "HarnessTokenUsage"),
    type = "structure",
    members = {
        inputTokens = schema.new({
            id = id.from(_N, "HarnessTokenUsage", "inputTokens"),
            type = "integer",
            name = "inputTokens",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputTokens = schema.new({
            id = id.from(_N, "HarnessTokenUsage", "outputTokens"),
            type = "integer",
            name = "outputTokens",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        totalTokens = schema.new({
            id = id.from(_N, "HarnessTokenUsage", "totalTokens"),
            type = "integer",
            name = "totalTokens",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cacheReadInputTokens = schema.new({
            id = id.from(_N, "HarnessTokenUsage", "cacheReadInputTokens"),
            type = "integer",
            name = "cacheReadInputTokens",
            target_id = prelude.Integer.id,
        }),
        cacheWriteInputTokens = schema.new({
            id = id.from(_N, "HarnessTokenUsage", "cacheWriteInputTokens"),
            type = "integer",
            name = "cacheWriteInputTokens",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HarnessMetadataEvent = schema.new({
    id = id.from(_N, "HarnessMetadataEvent"),
    type = "structure",
    members = {
        usage = schema.new({
            id = id.from(_N, "HarnessMetadataEvent", "usage"),
            type = "structure",
            name = "usage",
            target_id = id.from(_N, "HarnessTokenUsage"),
            target = M.HarnessTokenUsage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metrics = schema.new({
            id = id.from(_N, "HarnessMetadataEvent", "metrics"),
            type = "structure",
            name = "metrics",
            target_id = id.from(_N, "HarnessStreamMetrics"),
            target = M.HarnessStreamMetrics,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvokeHarnessStreamOutput = schema.new({
    id = id.from(_N, "InvokeHarnessStreamOutput"),
    type = "union",
    members = {
        messageStart = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "messageStart"),
            type = "structure",
            name = "messageStart",
            target_id = id.from(_N, "HarnessMessageStartEvent"),
            target = M.HarnessMessageStartEvent,
        }),
        contentBlockStart = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "contentBlockStart"),
            type = "structure",
            name = "contentBlockStart",
            target_id = id.from(_N, "HarnessContentBlockStartEvent"),
            target = M.HarnessContentBlockStartEvent,
        }),
        contentBlockDelta = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "contentBlockDelta"),
            type = "structure",
            name = "contentBlockDelta",
            target_id = id.from(_N, "HarnessContentBlockDeltaEvent"),
            target = M.HarnessContentBlockDeltaEvent,
        }),
        contentBlockStop = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "contentBlockStop"),
            type = "structure",
            name = "contentBlockStop",
            target_id = id.from(_N, "HarnessContentBlockStopEvent"),
            target = M.HarnessContentBlockStopEvent,
        }),
        messageStop = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "messageStop"),
            type = "structure",
            name = "messageStop",
            target_id = id.from(_N, "HarnessMessageStopEvent"),
            target = M.HarnessMessageStopEvent,
        }),
        metadata = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "HarnessMetadataEvent"),
            target = M.HarnessMetadataEvent,
        }),
        internalServerException = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "internalServerException"),
            type = "structure",
            name = "internalServerException",
            target_id = id.from(_N, "InternalServerException"),
            target = M.InternalServerException,
        }),
        validationException = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "validationException"),
            type = "structure",
            name = "validationException",
            target_id = id.from(_N, "ValidationException"),
            target = M.ValidationException,
        }),
        runtimeClientError = schema.new({
            id = id.from(_N, "InvokeHarnessStreamOutput", "runtimeClientError"),
            type = "structure",
            name = "runtimeClientError",
            target_id = id.from(_N, "RuntimeClientError"),
            target = M.RuntimeClientError,
        }),
    },
})

M.InvokeHarnessOutput = schema.new({
    id = id.from(_N, "InvokeHarnessOutput"),
    type = "structure",
    members = {
        stream = schema.new({
            id = id.from(_N, "InvokeHarnessOutput", "stream"),
            type = "union",
            name = "stream",
            target_id = id.from(_N, "InvokeHarnessStreamOutput"),
            target = M.InvokeHarnessStreamOutput,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.MemoryContent = schema.new({
    id = id.from(_N, "MemoryContent"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "MemoryContent", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.MemoryRecordMetadataValue = schema.new({
    id = id.from(_N, "MemoryRecordMetadataValue"),
    type = "union",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "MemoryRecordMetadataValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        stringListValue = schema.new({
            id = id.from(_N, "MemoryRecordMetadataValue", "stringListValue"),
            type = "list",
            name = "stringListValue",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        numberValue = schema.new({
            id = id.from(_N, "MemoryRecordMetadataValue", "numberValue"),
            type = "double",
            name = "numberValue",
            target_id = prelude.Double.id,
        }),
        dateTimeValue = schema.new({
            id = id.from(_N, "MemoryRecordMetadataValue", "dateTimeValue"),
            type = "timestamp",
            name = "dateTimeValue",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.MemoryRecordCreateInput = schema.new({
    id = id.from(_N, "MemoryRecordCreateInput"),
    type = "structure",
    members = {
        requestIdentifier = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "requestIdentifier"),
            type = "string",
            name = "requestIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "MemoryContent"),
            target = M.MemoryContent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "MemoryRecordCreateInput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MemoryRecordMetadataValue,
        }),
    },
})

M.BatchCreateMemoryRecordsInput = schema.new({
    id = id.from(_N, "BatchCreateMemoryRecordsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "BatchCreateMemoryRecordsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        records = schema.new({
            id = id.from(_N, "BatchCreateMemoryRecordsInput", "records"),
            type = "list",
            name = "records",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordCreateInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateMemoryRecordsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.MemoryRecordOutput = schema.new({
    id = id.from(_N, "MemoryRecordOutput"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "MemoryRecordOutput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "MemoryRecordOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requestIdentifier = schema.new({
            id = id.from(_N, "MemoryRecordOutput", "requestIdentifier"),
            type = "string",
            name = "requestIdentifier",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "MemoryRecordOutput", "errorCode"),
            type = "integer",
            name = "errorCode",
            target_id = prelude.Integer.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "MemoryRecordOutput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateMemoryRecordsOutput = schema.new({
    id = id.from(_N, "BatchCreateMemoryRecordsOutput"),
    type = "structure",
    members = {
        successfulRecords = schema.new({
            id = id.from(_N, "BatchCreateMemoryRecordsOutput", "successfulRecords"),
            type = "list",
            name = "successfulRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failedRecords = schema.new({
            id = id.from(_N, "BatchCreateMemoryRecordsOutput", "failedRecords"),
            type = "list",
            name = "failedRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceException = schema.new({
    id = id.from(_N, "ServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottledException = schema.new({
    id = id.from(_N, "ThrottledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MemoryRecordDeleteInput = schema.new({
    id = id.from(_N, "MemoryRecordDeleteInput"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "MemoryRecordDeleteInput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteMemoryRecordsInput = schema.new({
    id = id.from(_N, "BatchDeleteMemoryRecordsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "BatchDeleteMemoryRecordsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        records = schema.new({
            id = id.from(_N, "BatchDeleteMemoryRecordsInput", "records"),
            type = "list",
            name = "records",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordDeleteInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteMemoryRecordsOutput = schema.new({
    id = id.from(_N, "BatchDeleteMemoryRecordsOutput"),
    type = "structure",
    members = {
        successfulRecords = schema.new({
            id = id.from(_N, "BatchDeleteMemoryRecordsOutput", "successfulRecords"),
            type = "list",
            name = "successfulRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failedRecords = schema.new({
            id = id.from(_N, "BatchDeleteMemoryRecordsOutput", "failedRecords"),
            type = "list",
            name = "failedRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MemoryRecordUpdateInput = schema.new({
    id = id.from(_N, "MemoryRecordUpdateInput"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "MemoryContent"),
            target = M.MemoryContent,
        }),
        namespaces = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "MemoryRecordUpdateInput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MemoryRecordMetadataValue,
        }),
    },
})

M.BatchUpdateMemoryRecordsInput = schema.new({
    id = id.from(_N, "BatchUpdateMemoryRecordsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "BatchUpdateMemoryRecordsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        records = schema.new({
            id = id.from(_N, "BatchUpdateMemoryRecordsInput", "records"),
            type = "list",
            name = "records",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordUpdateInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateMemoryRecordsOutput = schema.new({
    id = id.from(_N, "BatchUpdateMemoryRecordsOutput"),
    type = "structure",
    members = {
        successfulRecords = schema.new({
            id = id.from(_N, "BatchUpdateMemoryRecordsOutput", "successfulRecords"),
            type = "list",
            name = "successfulRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failedRecords = schema.new({
            id = id.from(_N, "BatchUpdateMemoryRecordsOutput", "failedRecords"),
            type = "list",
            name = "failedRecords",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Branch = schema.new({
    id = id.from(_N, "Branch"),
    type = "structure",
    members = {
        rootEventId = schema.new({
            id = id.from(_N, "Branch", "rootEventId"),
            type = "string",
            name = "rootEventId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Branch", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetadataValue = schema.new({
    id = id.from(_N, "MetadataValue"),
    type = "union",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "MetadataValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
    },
})

M.Content = schema.new({
    id = id.from(_N, "Content"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "Content", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.Conversational = schema.new({
    id = id.from(_N, "Conversational"),
    type = "structure",
    members = {
        content = schema.new({
            id = id.from(_N, "Conversational", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "Content"),
            target = M.Content,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        role = schema.new({
            id = id.from(_N, "Conversational", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PayloadType = schema.new({
    id = id.from(_N, "PayloadType"),
    type = "union",
    members = {
        conversational = schema.new({
            id = id.from(_N, "PayloadType", "conversational"),
            type = "structure",
            name = "conversational",
            target_id = id.from(_N, "Conversational"),
            target = M.Conversational,
        }),
        blob = schema.new({
            id = id.from(_N, "PayloadType", "blob"),
            type = "document",
            name = "blob",
            target_id = prelude.Document.id,
        }),
    },
})

M.CreateEventInput = schema.new({
    id = id.from(_N, "CreateEventInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "CreateEventInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "CreateEventInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "CreateEventInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        eventTimestamp = schema.new({
            id = id.from(_N, "CreateEventInput", "eventTimestamp"),
            type = "timestamp",
            name = "eventTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payload = schema.new({
            id = id.from(_N, "CreateEventInput", "payload"),
            type = "list",
            name = "payload",
            target_id = prelude.Document.id,
            list_member = M.PayloadType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branch = schema.new({
            id = id.from(_N, "CreateEventInput", "branch"),
            type = "structure",
            name = "branch",
            target_id = id.from(_N, "Branch"),
            target = M.Branch,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateEventInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "CreateEventInput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MetadataValue,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "Event", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "Event", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "Event", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventId = schema.new({
            id = id.from(_N, "Event", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventTimestamp = schema.new({
            id = id.from(_N, "Event", "eventTimestamp"),
            type = "timestamp",
            name = "eventTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payload = schema.new({
            id = id.from(_N, "Event", "payload"),
            type = "list",
            name = "payload",
            target_id = prelude.Document.id,
            list_member = M.PayloadType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branch = schema.new({
            id = id.from(_N, "Event", "branch"),
            type = "structure",
            name = "branch",
            target_id = id.from(_N, "Branch"),
            target = M.Branch,
        }),
        metadata = schema.new({
            id = id.from(_N, "Event", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MetadataValue,
        }),
    },
})

M.CreateEventOutput = schema.new({
    id = id.from(_N, "CreateEventOutput"),
    type = "structure",
    members = {
        event = schema.new({
            id = id.from(_N, "CreateEventOutput", "event"),
            type = "structure",
            name = "event",
            target_id = id.from(_N, "Event"),
            target = M.Event,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RetryableConflictException = schema.new({
    id = id.from(_N, "RetryableConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RetryableConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEventInput = schema.new({
    id = id.from(_N, "DeleteEventInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "DeleteEventInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "DeleteEventInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        eventId = schema.new({
            id = id.from(_N, "DeleteEventInput", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "DeleteEventInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEventOutput = schema.new({
    id = id.from(_N, "DeleteEventOutput"),
    type = "structure",
    members = {
        eventId = schema.new({
            id = id.from(_N, "DeleteEventOutput", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMemoryRecordInput = schema.new({
    id = id.from(_N, "DeleteMemoryRecordInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "DeleteMemoryRecordInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        memoryRecordId = schema.new({
            id = id.from(_N, "DeleteMemoryRecordInput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMemoryRecordOutput = schema.new({
    id = id.from(_N, "DeleteMemoryRecordOutput"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "DeleteMemoryRecordOutput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEventInput = schema.new({
    id = id.from(_N, "GetEventInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "GetEventInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetEventInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "GetEventInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        eventId = schema.new({
            id = id.from(_N, "GetEventInput", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetEventOutput = schema.new({
    id = id.from(_N, "GetEventOutput"),
    type = "structure",
    members = {
        event = schema.new({
            id = id.from(_N, "GetEventOutput", "event"),
            type = "structure",
            name = "event",
            target_id = id.from(_N, "Event"),
            target = M.Event,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetMemoryRecordInput = schema.new({
    id = id.from(_N, "GetMemoryRecordInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "GetMemoryRecordInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        memoryRecordId = schema.new({
            id = id.from(_N, "GetMemoryRecordInput", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.MemoryRecord = schema.new({
    id = id.from(_N, "MemoryRecord"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "MemoryRecord", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "MemoryRecord", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "MemoryContent"),
            target = M.MemoryContent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "MemoryRecord", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "MemoryRecord", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "MemoryRecord", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "MemoryRecord", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MemoryRecordMetadataValue,
        }),
    },
})

M.GetMemoryRecordOutput = schema.new({
    id = id.from(_N, "GetMemoryRecordOutput"),
    type = "structure",
    members = {
        memoryRecord = schema.new({
            id = id.from(_N, "GetMemoryRecordOutput", "memoryRecord"),
            type = "structure",
            name = "memoryRecord",
            target_id = id.from(_N, "MemoryRecord"),
            target = M.MemoryRecord,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListActorsInput = schema.new({
    id = id.from(_N, "ListActorsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "ListActorsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListActorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListActorsOutput = schema.new({
    id = id.from(_N, "ListActorsOutput"),
    type = "structure",
    members = {
        actorSummaries = schema.new({
            id = id.from(_N, "ListActorsOutput", "actorSummaries"),
            type = "list",
            name = "actorSummaries",
            target_id = prelude.Document.id,
            list_member = M.ActorSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListActorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchFilter = schema.new({
    id = id.from(_N, "BranchFilter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "BranchFilter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        includeParentBranches = schema.new({
            id = id.from(_N, "BranchFilter", "includeParentBranches"),
            type = "boolean",
            name = "includeParentBranches",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = true },
            },
        }),
    },
})

M.LeftExpression = schema.new({
    id = id.from(_N, "LeftExpression"),
    type = "union",
    members = {
        metadataKey = schema.new({
            id = id.from(_N, "LeftExpression", "metadataKey"),
            type = "string",
            name = "metadataKey",
            target_id = prelude.String.id,
        }),
    },
})

M.RightExpression = schema.new({
    id = id.from(_N, "RightExpression"),
    type = "union",
    members = {
        metadataValue = schema.new({
            id = id.from(_N, "RightExpression", "metadataValue"),
            type = "union",
            name = "metadataValue",
            target_id = id.from(_N, "MetadataValue"),
            target = M.MetadataValue,
        }),
    },
})

M.EventMetadataFilterExpression = schema.new({
    id = id.from(_N, "EventMetadataFilterExpression"),
    type = "structure",
    members = {
        left = schema.new({
            id = id.from(_N, "EventMetadataFilterExpression", "left"),
            type = "union",
            name = "left",
            target_id = id.from(_N, "LeftExpression"),
            target = M.LeftExpression,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "EventMetadataFilterExpression", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        right = schema.new({
            id = id.from(_N, "EventMetadataFilterExpression", "right"),
            type = "union",
            name = "right",
            target_id = id.from(_N, "RightExpression"),
            target = M.RightExpression,
        }),
    },
})

M.FilterInput = schema.new({
    id = id.from(_N, "FilterInput"),
    type = "structure",
    members = {
        branch = schema.new({
            id = id.from(_N, "FilterInput", "branch"),
            type = "structure",
            name = "branch",
            target_id = id.from(_N, "BranchFilter"),
            target = M.BranchFilter,
        }),
        eventMetadata = schema.new({
            id = id.from(_N, "FilterInput", "eventMetadata"),
            type = "list",
            name = "eventMetadata",
            target_id = prelude.Document.id,
            list_member = M.EventMetadataFilterExpression,
        }),
    },
})

M.ListEventsInput = schema.new({
    id = id.from(_N, "ListEventsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "ListEventsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ListEventsInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "ListEventsInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        includePayloads = schema.new({
            id = id.from(_N, "ListEventsInput", "includePayloads"),
            type = "boolean",
            name = "includePayloads",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = true },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListEventsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "FilterInput"),
            target = M.FilterInput,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListEventsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEventsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventsOutput = schema.new({
    id = id.from(_N, "ListEventsOutput"),
    type = "structure",
    members = {
        events = schema.new({
            id = id.from(_N, "ListEventsOutput", "events"),
            type = "list",
            name = "events",
            target_id = prelude.Document.id,
            list_member = M.Event,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEventsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExtractionJobFilterInput = schema.new({
    id = id.from(_N, "ExtractionJobFilterInput"),
    type = "structure",
    members = {
        strategyId = schema.new({
            id = id.from(_N, "ExtractionJobFilterInput", "strategyId"),
            type = "string",
            name = "strategyId",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "ExtractionJobFilterInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        actorId = schema.new({
            id = id.from(_N, "ExtractionJobFilterInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ExtractionJobFilterInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMemoryExtractionJobsInput = schema.new({
    id = id.from(_N, "ListMemoryExtractionJobsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "ExtractionJobFilterInput"),
            target = M.ExtractionJobFilterInput,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MessageMetadata = schema.new({
    id = id.from(_N, "MessageMetadata"),
    type = "structure",
    members = {
        eventId = schema.new({
            id = id.from(_N, "MessageMetadata", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        messageIndex = schema.new({
            id = id.from(_N, "MessageMetadata", "messageIndex"),
            type = "integer",
            name = "messageIndex",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExtractionJobMessages = schema.new({
    id = id.from(_N, "ExtractionJobMessages"),
    type = "union",
    members = {
        messagesList = schema.new({
            id = id.from(_N, "ExtractionJobMessages", "messagesList"),
            type = "list",
            name = "messagesList",
            target_id = prelude.Document.id,
            list_member = M.MessageMetadata,
        }),
    },
})

M.ExtractionJobMetadata = schema.new({
    id = id.from(_N, "ExtractionJobMetadata"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        messages = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "messages"),
            type = "union",
            name = "messages",
            target_id = id.from(_N, "ExtractionJobMessages"),
            target = M.ExtractionJobMessages,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        strategyId = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "strategyId"),
            type = "string",
            name = "strategyId",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        actorId = schema.new({
            id = id.from(_N, "ExtractionJobMetadata", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMemoryExtractionJobsOutput = schema.new({
    id = id.from(_N, "ListMemoryExtractionJobsOutput"),
    type = "structure",
    members = {
        jobs = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsOutput", "jobs"),
            type = "list",
            name = "jobs",
            target_id = prelude.Document.id,
            list_member = M.ExtractionJobMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoryExtractionJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MemoryRecordLeftExpression = schema.new({
    id = id.from(_N, "MemoryRecordLeftExpression"),
    type = "union",
    members = {
        metadataKey = schema.new({
            id = id.from(_N, "MemoryRecordLeftExpression", "metadataKey"),
            type = "string",
            name = "metadataKey",
            target_id = prelude.String.id,
        }),
    },
})

M.MemoryRecordRightExpression = schema.new({
    id = id.from(_N, "MemoryRecordRightExpression"),
    type = "union",
    members = {
        metadataValue = schema.new({
            id = id.from(_N, "MemoryRecordRightExpression", "metadataValue"),
            type = "union",
            name = "metadataValue",
            target_id = id.from(_N, "MemoryRecordMetadataValue"),
            target = M.MemoryRecordMetadataValue,
        }),
    },
})

M.MemoryMetadataFilterExpression = schema.new({
    id = id.from(_N, "MemoryMetadataFilterExpression"),
    type = "structure",
    members = {
        left = schema.new({
            id = id.from(_N, "MemoryMetadataFilterExpression", "left"),
            type = "union",
            name = "left",
            target_id = id.from(_N, "MemoryRecordLeftExpression"),
            target = M.MemoryRecordLeftExpression,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "MemoryMetadataFilterExpression", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        right = schema.new({
            id = id.from(_N, "MemoryMetadataFilterExpression", "right"),
            type = "union",
            name = "right",
            target_id = id.from(_N, "MemoryRecordRightExpression"),
            target = M.MemoryRecordRightExpression,
        }),
    },
})

M.ListMemoryRecordsInput = schema.new({
    id = id.from(_N, "ListMemoryRecordsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        namespace = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        namespacePath = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "namespacePath"),
            type = "string",
            name = "namespacePath",
            target_id = prelude.String.id,
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        metadataFilters = schema.new({
            id = id.from(_N, "ListMemoryRecordsInput", "metadataFilters"),
            type = "list",
            name = "metadataFilters",
            target_id = prelude.Document.id,
            list_member = M.MemoryMetadataFilterExpression,
        }),
    },
})

M.MemoryRecordSummary = schema.new({
    id = id.from(_N, "MemoryRecordSummary"),
    type = "structure",
    members = {
        memoryRecordId = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "memoryRecordId"),
            type = "string",
            name = "memoryRecordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "MemoryContent"),
            target = M.MemoryContent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        score = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "score"),
            type = "double",
            name = "score",
            target_id = prelude.Double.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "MemoryRecordSummary", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.MemoryRecordMetadataValue,
        }),
    },
})

M.ListMemoryRecordsOutput = schema.new({
    id = id.from(_N, "ListMemoryRecordsOutput"),
    type = "structure",
    members = {
        memoryRecordSummaries = schema.new({
            id = id.from(_N, "ListMemoryRecordsOutput", "memoryRecordSummaries"),
            type = "list",
            name = "memoryRecordSummaries",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoryRecordsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SessionFilter = schema.new({
    id = id.from(_N, "SessionFilter"),
    type = "structure",
    members = {
        eventFilter = schema.new({
            id = id.from(_N, "SessionFilter", "eventFilter"),
            type = "string",
            name = "eventFilter",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSessionsInput = schema.new({
    id = id.from(_N, "ListSessionsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "ListSessionsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "ListSessionsInput", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSessionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ListSessionsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "SessionFilter"),
            target = M.SessionFilter,
        }),
    },
})

M.SessionSummary = schema.new({
    id = id.from(_N, "SessionSummary"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "SessionSummary", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "SessionSummary", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "SessionSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSessionsOutput = schema.new({
    id = id.from(_N, "ListSessionsOutput"),
    type = "structure",
    members = {
        sessionSummaries = schema.new({
            id = id.from(_N, "ListSessionsOutput", "sessionSummaries"),
            type = "list",
            name = "sessionSummaries",
            target_id = prelude.Document.id,
            list_member = M.SessionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchCriteria = schema.new({
    id = id.from(_N, "SearchCriteria"),
    type = "structure",
    members = {
        searchQuery = schema.new({
            id = id.from(_N, "SearchCriteria", "searchQuery"),
            type = "string",
            name = "searchQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryStrategyId = schema.new({
            id = id.from(_N, "SearchCriteria", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
        }),
        topK = schema.new({
            id = id.from(_N, "SearchCriteria", "topK"),
            type = "integer",
            name = "topK",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
        metadataFilters = schema.new({
            id = id.from(_N, "SearchCriteria", "metadataFilters"),
            type = "list",
            name = "metadataFilters",
            target_id = prelude.Document.id,
            list_member = M.MemoryMetadataFilterExpression,
        }),
    },
})

M.RetrieveMemoryRecordsInput = schema.new({
    id = id.from(_N, "RetrieveMemoryRecordsInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        namespace = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "namespace"),
            type = "string",
            name = "namespace",
            target_id = prelude.String.id,
        }),
        namespacePath = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "namespacePath"),
            type = "string",
            name = "namespacePath",
            target_id = prelude.String.id,
        }),
        searchCriteria = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "searchCriteria"),
            type = "structure",
            name = "searchCriteria",
            target_id = id.from(_N, "SearchCriteria"),
            target = M.SearchCriteria,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
    },
})

M.RetrieveMemoryRecordsOutput = schema.new({
    id = id.from(_N, "RetrieveMemoryRecordsOutput"),
    type = "structure",
    members = {
        memoryRecordSummaries = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsOutput", "memoryRecordSummaries"),
            type = "list",
            name = "memoryRecordSummaries",
            target_id = prelude.Document.id,
            list_member = M.MemoryRecordSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "RetrieveMemoryRecordsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExtractionJob = schema.new({
    id = id.from(_N, "ExtractionJob"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "ExtractionJob", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMemoryExtractionJobInput = schema.new({
    id = id.from(_N, "StartMemoryExtractionJobInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "StartMemoryExtractionJobInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        extractionJob = schema.new({
            id = id.from(_N, "StartMemoryExtractionJobInput", "extractionJob"),
            type = "structure",
            name = "extractionJob",
            target_id = id.from(_N, "ExtractionJob"),
            target = M.ExtractionJob,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartMemoryExtractionJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartMemoryExtractionJobOutput = schema.new({
    id = id.from(_N, "StartMemoryExtractionJobOutput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "StartMemoryExtractionJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SearchRegistryRecordsInput = schema.new({
    id = id.from(_N, "SearchRegistryRecordsInput"),
    type = "structure",
    members = {
        searchQuery = schema.new({
            id = id.from(_N, "SearchRegistryRecordsInput", "searchQuery"),
            type = "string",
            name = "searchQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        registryIds = schema.new({
            id = id.from(_N, "SearchRegistryRecordsInput", "registryIds"),
            type = "list",
            name = "registryIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "SearchRegistryRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
        filters = schema.new({
            id = id.from(_N, "SearchRegistryRecordsInput", "filters"),
            type = "document",
            name = "filters",
            target_id = prelude.Document.id,
        }),
    },
})

M.CustomDescriptor = schema.new({
    id = id.from(_N, "CustomDescriptor"),
    type = "structure",
    members = {
        inlineContent = schema.new({
            id = id.from(_N, "CustomDescriptor", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerDefinition = schema.new({
    id = id.from(_N, "ServerDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "ServerDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "ServerDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolsDefinition = schema.new({
    id = id.from(_N, "ToolsDefinition"),
    type = "structure",
    members = {
        protocolVersion = schema.new({
            id = id.from(_N, "ToolsDefinition", "protocolVersion"),
            type = "string",
            name = "protocolVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "ToolsDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.McpDescriptor = schema.new({
    id = id.from(_N, "McpDescriptor"),
    type = "structure",
    members = {
        server = schema.new({
            id = id.from(_N, "McpDescriptor", "server"),
            type = "structure",
            name = "server",
            target_id = id.from(_N, "ServerDefinition"),
            target = M.ServerDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tools = schema.new({
            id = id.from(_N, "McpDescriptor", "tools"),
            type = "structure",
            name = "tools",
            target_id = id.from(_N, "ToolsDefinition"),
            target = M.ToolsDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Descriptors = schema.new({
    id = id.from(_N, "Descriptors"),
    type = "structure",
    members = {
        mcp = schema.new({
            id = id.from(_N, "Descriptors", "mcp"),
            type = "structure",
            name = "mcp",
            target_id = id.from(_N, "McpDescriptor"),
            target = M.McpDescriptor,
        }),
        a2a = schema.new({
            id = id.from(_N, "Descriptors", "a2a"),
            type = "structure",
            name = "a2a",
            target_id = id.from(_N, "A2aDescriptor"),
            target = M.A2aDescriptor,
        }),
        custom = schema.new({
            id = id.from(_N, "Descriptors", "custom"),
            type = "structure",
            name = "custom",
            target_id = id.from(_N, "CustomDescriptor"),
            target = M.CustomDescriptor,
        }),
        agentSkills = schema.new({
            id = id.from(_N, "Descriptors", "agentSkills"),
            type = "structure",
            name = "agentSkills",
            target_id = id.from(_N, "AgentSkillsDescriptor"),
            target = M.AgentSkillsDescriptor,
        }),
    },
})

M.RegistryRecordSummary = schema.new({
    id = id.from(_N, "RegistryRecordSummary"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        descriptors = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "descriptors"),
            type = "structure",
            name = "descriptors",
            target_id = id.from(_N, "Descriptors"),
            target = M.Descriptors,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SearchRegistryRecordsOutput = schema.new({
    id = id.from(_N, "SearchRegistryRecordsOutput"),
    type = "structure",
    members = {
        registryRecords = schema.new({
            id = id.from(_N, "SearchRegistryRecordsOutput", "registryRecords"),
            type = "list",
            name = "registryRecords",
            target_id = prelude.Document.id,
            list_member = M.RegistryRecordSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

return M
