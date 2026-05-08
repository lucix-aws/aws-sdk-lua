



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrockagentcore.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrockagentcore.schemas")
local traits = require("smithy.traits")
local types = require("bedrockagentcore.types")
local sdk_defaults = require("aws.sdk_defaults")




























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockAgentCore"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock-agentcore", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:batchCreateMemoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateMemoryRecords, input, options)
end

function C:batchDeleteMemoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteMemoryRecords, input, options)
end

function C:batchUpdateMemoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateMemoryRecords, input, options)
end

function C:completeResourceTokenAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteResourceTokenAuth, input, options)
end

function C:createABTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateABTest, input, options)
end

function C:createEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEvent, input, options)
end

function C:deleteABTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteABTest, input, options)
end

function C:deleteBatchEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBatchEvaluation, input, options)
end

function C:deleteEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvent, input, options)
end

function C:deleteMemoryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMemoryRecord, input, options)
end

function C:deleteRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommendation, input, options)
end

function C:evaluate(input, options)
   return self:invokeOperation(schemas.Service, schemas.Evaluate, input, options)
end

function C:getABTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetABTest, input, options)
end

function C:getAgentCard(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentCard, input, options)
end

function C:getBatchEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatchEvaluation, input, options)
end

function C:getBrowserSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBrowserSession, input, options)
end

function C:getCodeInterpreterSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeInterpreterSession, input, options)
end

function C:getEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvent, input, options)
end

function C:getMemoryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMemoryRecord, input, options)
end

function C:getRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendation, input, options)
end

function C:getResourceApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceApiKey, input, options)
end

function C:getResourceOauth2Token(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceOauth2Token, input, options)
end

function C:getWorkloadAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadAccessToken, input, options)
end

function C:getWorkloadAccessTokenForJWT(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadAccessTokenForJWT, input, options)
end

function C:getWorkloadAccessTokenForUserId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadAccessTokenForUserId, input, options)
end

function C:invokeAgentRuntime(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeAgentRuntime, input, options)
end

function C:invokeAgentRuntimeCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeAgentRuntimeCommand, input, options)
end

function C:invokeBrowser(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeBrowser, input, options)
end

function C:invokeCodeInterpreter(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeCodeInterpreter, input, options)
end

function C:invokeHarness(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeHarness, input, options)
end

function C:listABTests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListABTests, input, options)
end

function C:listActors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActors, input, options)
end

function C:listBatchEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchEvaluations, input, options)
end

function C:listBrowserSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrowserSessions, input, options)
end

function C:listCodeInterpreterSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeInterpreterSessions, input, options)
end

function C:listEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvents, input, options)
end

function C:listMemoryExtractionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemoryExtractionJobs, input, options)
end

function C:listMemoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemoryRecords, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:retrieveMemoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveMemoryRecords, input, options)
end

function C:saveBrowserSessionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.SaveBrowserSessionProfile, input, options)
end

function C:searchRegistryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchRegistryRecords, input, options)
end

function C:startBatchEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBatchEvaluation, input, options)
end

function C:startBrowserSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBrowserSession, input, options)
end

function C:startCodeInterpreterSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCodeInterpreterSession, input, options)
end

function C:startMemoryExtractionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMemoryExtractionJob, input, options)
end

function C:startRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecommendation, input, options)
end

function C:stopBatchEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBatchEvaluation, input, options)
end

function C:stopBrowserSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBrowserSession, input, options)
end

function C:stopCodeInterpreterSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCodeInterpreterSession, input, options)
end

function C:stopRuntimeSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRuntimeSession, input, options)
end

function C:updateABTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateABTest, input, options)
end

function C:updateBrowserStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrowserStream, input, options)
end

return M
