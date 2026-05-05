local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockagentruntime.types")

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
        input_schema = types.CreateInvocationInput,
        output_schema = types.CreateInvocationOutput,
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
        input_schema = types.CreateSessionInput,
        output_schema = types.CreateSessionOutput,
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
        input_schema = types.DeleteAgentMemoryInput,
        output_schema = types.DeleteAgentMemoryOutput,
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
        input_schema = types.DeleteSessionInput,
        output_schema = types.DeleteSessionOutput,
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
        input_schema = types.EndSessionInput,
        output_schema = types.EndSessionOutput,
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
        input_schema = types.GenerateQueryInput,
        output_schema = types.GenerateQueryOutput,
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
        input_schema = types.GetAgentMemoryInput,
        output_schema = types.GetAgentMemoryOutput,
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
        input_schema = types.GetExecutionFlowSnapshotInput,
        output_schema = types.GetExecutionFlowSnapshotOutput,
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
        input_schema = types.GetFlowExecutionInput,
        output_schema = types.GetFlowExecutionOutput,
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
        input_schema = types.GetInvocationStepInput,
        output_schema = types.GetInvocationStepOutput,
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
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
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
        input_schema = types.InvokeAgentInput,
        output_schema = types.InvokeAgentOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text",
        event_stream = types.ResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeFlow(input, options)
    return self:invokeOperation(input, {
        name = "InvokeFlow",
        input_schema = types.InvokeFlowInput,
        output_schema = types.InvokeFlowOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}",
        event_stream = types.FlowResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeInlineAgent(input, options)
    return self:invokeOperation(input, {
        name = "InvokeInlineAgent",
        input_schema = types.InvokeInlineAgentInput,
        output_schema = types.InvokeInlineAgentOutput,
        http_method = "POST",
        http_path = "/agents/{sessionId}",
        event_stream = types.InlineAgentResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowExecutionEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowExecutionEvents",
        input_schema = types.ListFlowExecutionEventsInput,
        output_schema = types.ListFlowExecutionEventsOutput,
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
        input_schema = types.ListFlowExecutionsInput,
        output_schema = types.ListFlowExecutionsOutput,
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
        input_schema = types.ListInvocationsInput,
        output_schema = types.ListInvocationsOutput,
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
        input_schema = types.ListInvocationStepsInput,
        output_schema = types.ListInvocationStepsOutput,
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
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.OptimizePromptInput,
        output_schema = types.OptimizePromptOutput,
        http_method = "POST",
        http_path = "/optimize-prompt",
        event_stream = types.OptimizedPromptStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInvocationStep(input, options)
    return self:invokeOperation(input, {
        name = "PutInvocationStep",
        input_schema = types.PutInvocationStepInput,
        output_schema = types.PutInvocationStepOutput,
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
        input_schema = types.RerankInput,
        output_schema = types.RerankOutput,
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
        input_schema = types.RetrieveInput,
        output_schema = types.RetrieveOutput,
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
        input_schema = types.RetrieveAndGenerateOperationInput,
        output_schema = types.RetrieveAndGenerateOperationOutput,
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
        input_schema = types.RetrieveAndGenerateStreamInput,
        output_schema = types.RetrieveAndGenerateStreamOutput,
        http_method = "POST",
        http_path = "/retrieveAndGenerateStream",
        event_stream = types.RetrieveAndGenerateStreamResponseOutput,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFlowExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowExecution",
        input_schema = types.StartFlowExecutionInput,
        output_schema = types.StartFlowExecutionOutput,
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
        input_schema = types.StopFlowExecutionInput,
        output_schema = types.StopFlowExecutionOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateSessionInput,
        output_schema = types.UpdateSessionOutput,
        http_method = "PUT",
        http_path = "/sessions/{sessionIdentifier}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
