local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentcore.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("bedrockagentcore.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockAgentCore"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock-agentcore", signing_region = cfg.region } }
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

function Client:batchCreateMemoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateMemoryRecords",
        input_schema = schemas.BatchCreateMemoryRecordsInput,
        output_schema = schemas.BatchCreateMemoryRecordsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/memoryRecords/batchCreate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteMemoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteMemoryRecords",
        input_schema = schemas.BatchDeleteMemoryRecordsInput,
        output_schema = schemas.BatchDeleteMemoryRecordsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/memoryRecords/batchDelete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateMemoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateMemoryRecords",
        input_schema = schemas.BatchUpdateMemoryRecordsInput,
        output_schema = schemas.BatchUpdateMemoryRecordsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/memoryRecords/batchUpdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:completeResourceTokenAuth(input, options)
    return self:invokeOperation(input, {
        name = "CompleteResourceTokenAuth",
        input_schema = schemas.CompleteResourceTokenAuthInput,
        output_schema = schemas.CompleteResourceTokenAuthOutput,
        http_method = "POST",
        http_path = "/identities/CompleteResourceTokenAuth",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createABTest(input, options)
    return self:invokeOperation(input, {
        name = "CreateABTest",
        input_schema = schemas.CreateABTestInput,
        output_schema = schemas.CreateABTestOutput,
        http_method = "POST",
        http_path = "/ab-tests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEvent(input, options)
    return self:invokeOperation(input, {
        name = "CreateEvent",
        input_schema = schemas.CreateEventInput,
        output_schema = schemas.CreateEventOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteABTest(input, options)
    return self:invokeOperation(input, {
        name = "DeleteABTest",
        input_schema = schemas.DeleteABTestInput,
        output_schema = schemas.DeleteABTestOutput,
        http_method = "DELETE",
        http_path = "/ab-tests/{abTestId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBatchEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchEvaluation",
        input_schema = schemas.DeleteBatchEvaluationInput,
        output_schema = schemas.DeleteBatchEvaluationOutput,
        http_method = "DELETE",
        http_path = "/evaluations/batch-evaluate/{batchEvaluationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvent",
        input_schema = schemas.DeleteEventInput,
        output_schema = schemas.DeleteEventOutput,
        http_method = "DELETE",
        http_path = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMemoryRecord(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMemoryRecord",
        input_schema = schemas.DeleteMemoryRecordInput,
        output_schema = schemas.DeleteMemoryRecordOutput,
        http_method = "DELETE",
        http_path = "/memories/{memoryId}/memoryRecords/{memoryRecordId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommendation",
        input_schema = schemas.DeleteRecommendationInput,
        output_schema = schemas.DeleteRecommendationOutput,
        http_method = "DELETE",
        http_path = "/recommendations/{recommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluate(input, options)
    return self:invokeOperation(input, {
        name = "Evaluate",
        input_schema = schemas.EvaluateInput,
        output_schema = schemas.EvaluateOutput,
        http_method = "POST",
        http_path = "/evaluations/evaluate/{evaluatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getABTest(input, options)
    return self:invokeOperation(input, {
        name = "GetABTest",
        input_schema = schemas.GetABTestInput,
        output_schema = schemas.GetABTestOutput,
        http_method = "GET",
        http_path = "/ab-tests/{abTestId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAgentCard(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentCard",
        input_schema = schemas.GetAgentCardInput,
        output_schema = schemas.GetAgentCardOutput,
        http_method = "GET",
        http_path = "/runtimes/{agentRuntimeArn}/invocations/.well-known/agent-card.json",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBatchEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchEvaluation",
        input_schema = schemas.GetBatchEvaluationInput,
        output_schema = schemas.GetBatchEvaluationOutput,
        http_method = "GET",
        http_path = "/evaluations/batch-evaluate/{batchEvaluationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBrowserSession(input, options)
    return self:invokeOperation(input, {
        name = "GetBrowserSession",
        input_schema = schemas.GetBrowserSessionInput,
        output_schema = schemas.GetBrowserSessionOutput,
        http_method = "GET",
        http_path = "/browsers/{browserIdentifier}/sessions/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCodeInterpreterSession(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeInterpreterSession",
        input_schema = schemas.GetCodeInterpreterSessionInput,
        output_schema = schemas.GetCodeInterpreterSessionOutput,
        http_method = "GET",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/sessions/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetEvent",
        input_schema = schemas.GetEventInput,
        output_schema = schemas.GetEventOutput,
        http_method = "GET",
        http_path = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMemoryRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetMemoryRecord",
        input_schema = schemas.GetMemoryRecordInput,
        output_schema = schemas.GetMemoryRecordOutput,
        http_method = "GET",
        http_path = "/memories/{memoryId}/memoryRecord/{memoryRecordId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendation",
        input_schema = schemas.GetRecommendationInput,
        output_schema = schemas.GetRecommendationOutput,
        http_method = "GET",
        http_path = "/recommendations/{recommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceApiKey(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceApiKey",
        input_schema = schemas.GetResourceApiKeyInput,
        output_schema = schemas.GetResourceApiKeyOutput,
        http_method = "POST",
        http_path = "/identities/api-key",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceOauth2Token(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceOauth2Token",
        input_schema = schemas.GetResourceOauth2TokenInput,
        output_schema = schemas.GetResourceOauth2TokenOutput,
        http_method = "POST",
        http_path = "/identities/oauth2/token",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadAccessToken",
        input_schema = schemas.GetWorkloadAccessTokenInput,
        output_schema = schemas.GetWorkloadAccessTokenOutput,
        http_method = "POST",
        http_path = "/identities/GetWorkloadAccessToken",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadAccessTokenForJWT(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadAccessTokenForJWT",
        input_schema = schemas.GetWorkloadAccessTokenForJWTInput,
        output_schema = schemas.GetWorkloadAccessTokenForJWTOutput,
        http_method = "POST",
        http_path = "/identities/GetWorkloadAccessTokenForJWT",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadAccessTokenForUserId(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadAccessTokenForUserId",
        input_schema = schemas.GetWorkloadAccessTokenForUserIdInput,
        output_schema = schemas.GetWorkloadAccessTokenForUserIdOutput,
        http_method = "POST",
        http_path = "/identities/GetWorkloadAccessTokenForUserId",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeAgentRuntime(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAgentRuntime",
        input_schema = schemas.InvokeAgentRuntimeInput,
        output_schema = schemas.InvokeAgentRuntimeOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeArn}/invocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeAgentRuntimeCommand(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAgentRuntimeCommand",
        input_schema = schemas.InvokeAgentRuntimeCommandInput,
        output_schema = schemas.InvokeAgentRuntimeCommandOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeArn}/commands",
        event_stream = schemas.InvokeAgentRuntimeCommandStreamOutput,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeBrowser(input, options)
    return self:invokeOperation(input, {
        name = "InvokeBrowser",
        input_schema = schemas.InvokeBrowserInput,
        output_schema = schemas.InvokeBrowserOutput,
        http_method = "POST",
        http_path = "/browsers/{browserIdentifier}/sessions/invoke",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeCodeInterpreter(input, options)
    return self:invokeOperation(input, {
        name = "InvokeCodeInterpreter",
        input_schema = schemas.InvokeCodeInterpreterInput,
        output_schema = schemas.InvokeCodeInterpreterOutput,
        http_method = "POST",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke",
        event_stream = schemas.CodeInterpreterStreamOutput,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeHarness(input, options)
    return self:invokeOperation(input, {
        name = "InvokeHarness",
        input_schema = schemas.InvokeHarnessInput,
        output_schema = schemas.InvokeHarnessOutput,
        http_method = "POST",
        http_path = "/harnesses/invoke",
        event_stream = schemas.InvokeHarnessStreamOutput,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listABTests(input, options)
    return self:invokeOperation(input, {
        name = "ListABTests",
        input_schema = schemas.ListABTestsInput,
        output_schema = schemas.ListABTestsOutput,
        http_method = "GET",
        http_path = "/ab-tests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActors(input, options)
    return self:invokeOperation(input, {
        name = "ListActors",
        input_schema = schemas.ListActorsInput,
        output_schema = schemas.ListActorsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/actors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchEvaluations",
        input_schema = schemas.ListBatchEvaluationsInput,
        output_schema = schemas.ListBatchEvaluationsOutput,
        http_method = "GET",
        http_path = "/evaluations/batch-evaluate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrowserSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListBrowserSessions",
        input_schema = schemas.ListBrowserSessionsInput,
        output_schema = schemas.ListBrowserSessionsOutput,
        http_method = "POST",
        http_path = "/browsers/{browserIdentifier}/sessions/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCodeInterpreterSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeInterpreterSessions",
        input_schema = schemas.ListCodeInterpreterSessionsInput,
        output_schema = schemas.ListCodeInterpreterSessionsOutput,
        http_method = "POST",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/sessions/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListEvents",
        input_schema = schemas.ListEventsInput,
        output_schema = schemas.ListEventsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemoryExtractionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMemoryExtractionJobs",
        input_schema = schemas.ListMemoryExtractionJobsInput,
        output_schema = schemas.ListMemoryExtractionJobsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/extractionJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListMemoryRecords",
        input_schema = schemas.ListMemoryRecordsInput,
        output_schema = schemas.ListMemoryRecordsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/memoryRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = schemas.ListRecommendationsInput,
        output_schema = schemas.ListRecommendationsOutput,
        http_method = "GET",
        http_path = "/recommendations",
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
        http_path = "/memories/{memoryId}/actor/{actorId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieveMemoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveMemoryRecords",
        input_schema = schemas.RetrieveMemoryRecordsInput,
        output_schema = schemas.RetrieveMemoryRecordsOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/retrieve",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:saveBrowserSessionProfile(input, options)
    return self:invokeOperation(input, {
        name = "SaveBrowserSessionProfile",
        input_schema = schemas.SaveBrowserSessionProfileInput,
        output_schema = schemas.SaveBrowserSessionProfileOutput,
        http_method = "PUT",
        http_path = "/browser-profiles/{profileIdentifier}/save",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchRegistryRecords(input, options)
    return self:invokeOperation(input, {
        name = "SearchRegistryRecords",
        input_schema = schemas.SearchRegistryRecordsInput,
        output_schema = schemas.SearchRegistryRecordsOutput,
        http_method = "POST",
        http_path = "/registry-records/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBatchEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StartBatchEvaluation",
        input_schema = schemas.StartBatchEvaluationInput,
        output_schema = schemas.StartBatchEvaluationOutput,
        http_method = "POST",
        http_path = "/evaluations/batch-evaluate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBrowserSession(input, options)
    return self:invokeOperation(input, {
        name = "StartBrowserSession",
        input_schema = schemas.StartBrowserSessionInput,
        output_schema = schemas.StartBrowserSessionOutput,
        http_method = "PUT",
        http_path = "/browsers/{browserIdentifier}/sessions/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCodeInterpreterSession(input, options)
    return self:invokeOperation(input, {
        name = "StartCodeInterpreterSession",
        input_schema = schemas.StartCodeInterpreterSessionInput,
        output_schema = schemas.StartCodeInterpreterSessionOutput,
        http_method = "PUT",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/sessions/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMemoryExtractionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMemoryExtractionJob",
        input_schema = schemas.StartMemoryExtractionJobInput,
        output_schema = schemas.StartMemoryExtractionJobOutput,
        http_method = "POST",
        http_path = "/memories/{memoryId}/extractionJobs/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommendation",
        input_schema = schemas.StartRecommendationInput,
        output_schema = schemas.StartRecommendationOutput,
        http_method = "POST",
        http_path = "/recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBatchEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StopBatchEvaluation",
        input_schema = schemas.StopBatchEvaluationInput,
        output_schema = schemas.StopBatchEvaluationOutput,
        http_method = "POST",
        http_path = "/evaluations/batch-evaluate/{batchEvaluationId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBrowserSession(input, options)
    return self:invokeOperation(input, {
        name = "StopBrowserSession",
        input_schema = schemas.StopBrowserSessionInput,
        output_schema = schemas.StopBrowserSessionOutput,
        http_method = "PUT",
        http_path = "/browsers/{browserIdentifier}/sessions/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCodeInterpreterSession(input, options)
    return self:invokeOperation(input, {
        name = "StopCodeInterpreterSession",
        input_schema = schemas.StopCodeInterpreterSessionInput,
        output_schema = schemas.StopCodeInterpreterSessionOutput,
        http_method = "PUT",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRuntimeSession(input, options)
    return self:invokeOperation(input, {
        name = "StopRuntimeSession",
        input_schema = schemas.StopRuntimeSessionInput,
        output_schema = schemas.StopRuntimeSessionOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeArn}/stopruntimesession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateABTest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateABTest",
        input_schema = schemas.UpdateABTestInput,
        output_schema = schemas.UpdateABTestOutput,
        http_method = "PUT",
        http_path = "/ab-tests/{abTestId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrowserStream(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrowserStream",
        input_schema = schemas.UpdateBrowserStreamInput,
        output_schema = schemas.UpdateBrowserStreamOutput,
        http_method = "PUT",
        http_path = "/browsers/{browserIdentifier}/sessions/streams/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
