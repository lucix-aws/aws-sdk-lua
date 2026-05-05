local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("bedrockagentruntime.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockAgentRunTimeService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createInvocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvocation",
        input_schema = schemas.CreateInvocationInput,
        output_schema = schemas.CreateInvocationOutput,
        http_method = "PUT",
        http_path = "/sessions/{sessionIdentifier}/invocations/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateSession",
        input_schema = schemas.CreateSessionInput,
        output_schema = schemas.CreateSessionOutput,
        http_method = "PUT",
        http_path = "/sessions/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgentMemory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentMemory",
        input_schema = schemas.DeleteAgentMemoryInput,
        output_schema = schemas.DeleteAgentMemoryOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentAliases/{agentAliasId}/memories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSession",
        input_schema = schemas.DeleteSessionInput,
        output_schema = schemas.DeleteSessionOutput,
        http_method = "DELETE",
        http_path = "/sessions/{sessionIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:endSession(input, options)
    return self:invokeOperation(input, {
        name = "EndSession",
        input_schema = schemas.EndSessionInput,
        output_schema = schemas.EndSessionOutput,
        http_method = "PATCH",
        http_path = "/sessions/{sessionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateQuery(input, options)
    return self:invokeOperation(input, {
        name = "GenerateQuery",
        input_schema = schemas.GenerateQueryInput,
        output_schema = schemas.GenerateQueryOutput,
        http_method = "POST",
        http_path = "/generateQuery",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentMemory(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentMemory",
        input_schema = schemas.GetAgentMemoryInput,
        output_schema = schemas.GetAgentMemoryOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentAliases/{agentAliasId}/memories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExecutionFlowSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetExecutionFlowSnapshot",
        input_schema = schemas.GetExecutionFlowSnapshotInput,
        output_schema = schemas.GetExecutionFlowSnapshotOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/flowsnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowExecution",
        input_schema = schemas.GetFlowExecutionInput,
        output_schema = schemas.GetFlowExecutionOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvocationStep(input, options)
    return self:invokeOperation(input, {
        name = "GetInvocationStep",
        input_schema = schemas.GetInvocationStepInput,
        output_schema = schemas.GetInvocationStepOutput,
        http_method = "POST",
        http_path = "/sessions/{sessionIdentifier}/invocationSteps/{invocationStepId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
        http_method = "GET",
        http_path = "/sessions/{sessionIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeAgent(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAgent",
        input_schema = schemas.InvokeAgentInput,
        output_schema = schemas.InvokeAgentOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text",
        event_stream = schemas.ResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeFlow(input, options)
    return self:invokeOperation(input, {
        name = "InvokeFlow",
        input_schema = schemas.InvokeFlowInput,
        output_schema = schemas.InvokeFlowOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}",
        event_stream = schemas.FlowResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeInlineAgent(input, options)
    return self:invokeOperation(input, {
        name = "InvokeInlineAgent",
        input_schema = schemas.InvokeInlineAgentInput,
        output_schema = schemas.InvokeInlineAgentOutput,
        http_method = "POST",
        http_path = "/agents/{sessionId}",
        event_stream = schemas.InlineAgentResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowExecutionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowExecutionEvents",
        input_schema = schemas.ListFlowExecutionEventsInput,
        output_schema = schemas.ListFlowExecutionEventsOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowExecutions",
        input_schema = schemas.ListFlowExecutionsInput,
        output_schema = schemas.ListFlowExecutionsOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvocations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvocations",
        input_schema = schemas.ListInvocationsInput,
        output_schema = schemas.ListInvocationsOutput,
        http_method = "POST",
        http_path = "/sessions/{sessionIdentifier}/invocations/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvocationSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListInvocationSteps",
        input_schema = schemas.ListInvocationStepsInput,
        output_schema = schemas.ListInvocationStepsOutput,
        http_method = "POST",
        http_path = "/sessions/{sessionIdentifier}/invocationSteps/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = schemas.ListSessionsInput,
        output_schema = schemas.ListSessionsOutput,
        http_method = "POST",
        http_path = "/sessions/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:optimizePrompt(input, options)
    return self:invokeOperation(input, {
        name = "OptimizePrompt",
        input_schema = schemas.OptimizePromptInput,
        output_schema = schemas.OptimizePromptOutput,
        http_method = "POST",
        http_path = "/optimize-prompt",
        event_stream = schemas.OptimizedPromptStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInvocationStep(input, options)
    return self:invokeOperation(input, {
        name = "PutInvocationStep",
        input_schema = schemas.PutInvocationStepInput,
        output_schema = schemas.PutInvocationStepOutput,
        http_method = "PUT",
        http_path = "/sessions/{sessionIdentifier}/invocationSteps/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rerank(input, options)
    return self:invokeOperation(input, {
        name = "Rerank",
        input_schema = schemas.RerankInput,
        output_schema = schemas.RerankOutput,
        http_method = "POST",
        http_path = "/rerank",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieve(input, options)
    return self:invokeOperation(input, {
        name = "Retrieve",
        input_schema = schemas.RetrieveInput,
        output_schema = schemas.RetrieveOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/retrieve",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieveAndGenerate(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveAndGenerate",
        input_schema = schemas.RetrieveAndGenerateOperationInput,
        output_schema = schemas.RetrieveAndGenerateOperationOutput,
        http_method = "POST",
        http_path = "/retrieveAndGenerate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieveAndGenerateStream(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveAndGenerateStream",
        input_schema = schemas.RetrieveAndGenerateStreamInput,
        output_schema = schemas.RetrieveAndGenerateStreamOutput,
        http_method = "POST",
        http_path = "/retrieveAndGenerateStream",
        event_stream = schemas.RetrieveAndGenerateStreamResponseOutput,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFlowExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowExecution",
        input_schema = schemas.StartFlowExecutionInput,
        output_schema = schemas.StartFlowExecutionOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopFlowExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopFlowExecution",
        input_schema = schemas.StopFlowExecutionInput,
        output_schema = schemas.StopFlowExecutionOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSession",
        input_schema = schemas.UpdateSessionInput,
        output_schema = schemas.UpdateSessionOutput,
        http_method = "PUT",
        http_path = "/sessions/{sessionIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
