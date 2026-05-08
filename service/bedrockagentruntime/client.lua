



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrockagentruntime.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrockagentruntime.schemas")
local traits = require("smithy.traits")
local types = require("bedrockagentruntime.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockAgentRunTimeService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = c.region } }
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

function C:createInvocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInvocation, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:deleteAgentMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentMemory, input, options)
end

function C:deleteSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSession, input, options)
end

function C:endSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.EndSession, input, options)
end

function C:generateQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateQuery, input, options)
end

function C:getAgentMemory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentMemory, input, options)
end

function C:getExecutionFlowSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExecutionFlowSnapshot, input, options)
end

function C:getFlowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowExecution, input, options)
end

function C:getInvocationStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvocationStep, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:invokeAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeAgent, input, options)
end

function C:invokeFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeFlow, input, options)
end

function C:invokeInlineAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeInlineAgent, input, options)
end

function C:listFlowExecutionEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowExecutionEvents, input, options)
end

function C:listFlowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowExecutions, input, options)
end

function C:listInvocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvocations, input, options)
end

function C:listInvocationSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvocationSteps, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:optimizePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.OptimizePrompt, input, options)
end

function C:putInvocationStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInvocationStep, input, options)
end

function C:rerank(input, options)
   return self:invokeOperation(schemas.Service, schemas.Rerank, input, options)
end

function C:retrieve(input, options)
   return self:invokeOperation(schemas.Service, schemas.Retrieve, input, options)
end

function C:retrieveAndGenerate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveAndGenerate, input, options)
end

function C:retrieveAndGenerateStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetrieveAndGenerateStream, input, options)
end

function C:startFlowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlowExecution, input, options)
end

function C:stopFlowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopFlowExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSession, input, options)
end

return M
