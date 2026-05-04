local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagentcore.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockagentcore.types")

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
        input_schema = types.BatchCreateMemoryRecordsInput,
        output_schema = types.BatchCreateMemoryRecordsOutput,
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
        input_schema = types.BatchDeleteMemoryRecordsInput,
        output_schema = types.BatchDeleteMemoryRecordsOutput,
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
        input_schema = types.BatchUpdateMemoryRecordsInput,
        output_schema = types.BatchUpdateMemoryRecordsOutput,
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
        input_schema = types.CompleteResourceTokenAuthInput,
        output_schema = types.CompleteResourceTokenAuthOutput,
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
        input_schema = types.CreateABTestInput,
        output_schema = types.CreateABTestOutput,
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
        input_schema = types.CreateEventInput,
        output_schema = types.CreateEventOutput,
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
        input_schema = types.DeleteABTestInput,
        output_schema = types.DeleteABTestOutput,
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
        input_schema = types.DeleteBatchEvaluationInput,
        output_schema = types.DeleteBatchEvaluationOutput,
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
        input_schema = types.DeleteEventInput,
        output_schema = types.DeleteEventOutput,
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
        input_schema = types.DeleteMemoryRecordInput,
        output_schema = types.DeleteMemoryRecordOutput,
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
        input_schema = types.DeleteRecommendationInput,
        output_schema = types.DeleteRecommendationOutput,
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
        input_schema = types.EvaluateInput,
        output_schema = types.EvaluateOutput,
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
        input_schema = types.GetABTestInput,
        output_schema = types.GetABTestOutput,
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
        input_schema = types.GetAgentCardInput,
        output_schema = types.GetAgentCardOutput,
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
        input_schema = types.GetBatchEvaluationInput,
        output_schema = types.GetBatchEvaluationOutput,
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
        input_schema = types.GetBrowserSessionInput,
        output_schema = types.GetBrowserSessionOutput,
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
        input_schema = types.GetCodeInterpreterSessionInput,
        output_schema = types.GetCodeInterpreterSessionOutput,
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
        input_schema = types.GetEventInput,
        output_schema = types.GetEventOutput,
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
        input_schema = types.GetMemoryRecordInput,
        output_schema = types.GetMemoryRecordOutput,
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
        input_schema = types.GetRecommendationInput,
        output_schema = types.GetRecommendationOutput,
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
        input_schema = types.GetResourceApiKeyInput,
        output_schema = types.GetResourceApiKeyOutput,
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
        input_schema = types.GetResourceOauth2TokenInput,
        output_schema = types.GetResourceOauth2TokenOutput,
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
        input_schema = types.GetWorkloadAccessTokenInput,
        output_schema = types.GetWorkloadAccessTokenOutput,
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
        input_schema = types.GetWorkloadAccessTokenForJWTInput,
        output_schema = types.GetWorkloadAccessTokenForJWTOutput,
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
        input_schema = types.GetWorkloadAccessTokenForUserIdInput,
        output_schema = types.GetWorkloadAccessTokenForUserIdOutput,
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
        input_schema = types.InvokeAgentRuntimeInput,
        output_schema = types.InvokeAgentRuntimeOutput,
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
        input_schema = types.InvokeAgentRuntimeCommandInput,
        output_schema = types.InvokeAgentRuntimeCommandOutput,
        http_method = "POST",
        http_path = "/runtimes/{agentRuntimeArn}/commands",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeBrowser(input, options)
    return self:invokeOperation(input, {
        name = "InvokeBrowser",
        input_schema = types.InvokeBrowserInput,
        output_schema = types.InvokeBrowserOutput,
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
        input_schema = types.InvokeCodeInterpreterInput,
        output_schema = types.InvokeCodeInterpreterOutput,
        http_method = "POST",
        http_path = "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeHarness(input, options)
    return self:invokeOperation(input, {
        name = "InvokeHarness",
        input_schema = types.InvokeHarnessInput,
        output_schema = types.InvokeHarnessOutput,
        http_method = "POST",
        http_path = "/harnesses/invoke",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listABTests(input, options)
    return self:invokeOperation(input, {
        name = "ListABTests",
        input_schema = types.ListABTestsInput,
        output_schema = types.ListABTestsOutput,
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
        input_schema = types.ListActorsInput,
        output_schema = types.ListActorsOutput,
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
        input_schema = types.ListBatchEvaluationsInput,
        output_schema = types.ListBatchEvaluationsOutput,
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
        input_schema = types.ListBrowserSessionsInput,
        output_schema = types.ListBrowserSessionsOutput,
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
        input_schema = types.ListCodeInterpreterSessionsInput,
        output_schema = types.ListCodeInterpreterSessionsOutput,
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
        input_schema = types.ListEventsInput,
        output_schema = types.ListEventsOutput,
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
        input_schema = types.ListMemoryExtractionJobsInput,
        output_schema = types.ListMemoryExtractionJobsOutput,
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
        input_schema = types.ListMemoryRecordsInput,
        output_schema = types.ListMemoryRecordsOutput,
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
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
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
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
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
        input_schema = types.RetrieveMemoryRecordsInput,
        output_schema = types.RetrieveMemoryRecordsOutput,
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
        input_schema = types.SaveBrowserSessionProfileInput,
        output_schema = types.SaveBrowserSessionProfileOutput,
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
        input_schema = types.SearchRegistryRecordsInput,
        output_schema = types.SearchRegistryRecordsOutput,
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
        input_schema = types.StartBatchEvaluationInput,
        output_schema = types.StartBatchEvaluationOutput,
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
        input_schema = types.StartBrowserSessionInput,
        output_schema = types.StartBrowserSessionOutput,
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
        input_schema = types.StartCodeInterpreterSessionInput,
        output_schema = types.StartCodeInterpreterSessionOutput,
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
        input_schema = types.StartMemoryExtractionJobInput,
        output_schema = types.StartMemoryExtractionJobOutput,
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
        input_schema = types.StartRecommendationInput,
        output_schema = types.StartRecommendationOutput,
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
        input_schema = types.StopBatchEvaluationInput,
        output_schema = types.StopBatchEvaluationOutput,
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
        input_schema = types.StopBrowserSessionInput,
        output_schema = types.StopBrowserSessionOutput,
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
        input_schema = types.StopCodeInterpreterSessionInput,
        output_schema = types.StopCodeInterpreterSessionOutput,
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
        input_schema = types.StopRuntimeSessionInput,
        output_schema = types.StopRuntimeSessionOutput,
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
        input_schema = types.UpdateABTestInput,
        output_schema = types.UpdateABTestOutput,
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
        input_schema = types.UpdateBrowserStreamInput,
        output_schema = types.UpdateBrowserStreamOutput,
        http_method = "PUT",
        http_path = "/browsers/{browserIdentifier}/sessions/streams/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
