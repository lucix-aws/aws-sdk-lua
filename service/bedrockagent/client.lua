



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrockagent.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrockagent.schemas")
local traits = require("smithy.traits")
local types = require("bedrockagent.types")
local sdk_defaults = require("aws.sdk_defaults")














































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockAgentBuildTimeLambda"
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

function C:associateAgentCollaborator(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAgentCollaborator, input, options)
end

function C:associateAgentKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAgentKnowledgeBase, input, options)
end

function C:createAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgent, input, options)
end

function C:createAgentActionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentActionGroup, input, options)
end

function C:createAgentAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentAlias, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlow, input, options)
end

function C:createFlowAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlowAlias, input, options)
end

function C:createFlowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlowVersion, input, options)
end

function C:createKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKnowledgeBase, input, options)
end

function C:createPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrompt, input, options)
end

function C:createPromptVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePromptVersion, input, options)
end

function C:deleteAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgent, input, options)
end

function C:deleteAgentActionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentActionGroup, input, options)
end

function C:deleteAgentAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentAlias, input, options)
end

function C:deleteAgentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentVersion, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlow, input, options)
end

function C:deleteFlowAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlowAlias, input, options)
end

function C:deleteFlowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlowVersion, input, options)
end

function C:deleteKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKnowledgeBase, input, options)
end

function C:deleteKnowledgeBaseDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKnowledgeBaseDocuments, input, options)
end

function C:deletePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrompt, input, options)
end

function C:disassociateAgentCollaborator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAgentCollaborator, input, options)
end

function C:disassociateAgentKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAgentKnowledgeBase, input, options)
end

function C:getAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgent, input, options)
end

function C:getAgentActionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentActionGroup, input, options)
end

function C:getAgentAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentAlias, input, options)
end

function C:getAgentCollaborator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentCollaborator, input, options)
end

function C:getAgentKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentKnowledgeBase, input, options)
end

function C:getAgentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentVersion, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlow, input, options)
end

function C:getFlowAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowAlias, input, options)
end

function C:getFlowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowVersion, input, options)
end

function C:getIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIngestionJob, input, options)
end

function C:getKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKnowledgeBase, input, options)
end

function C:getKnowledgeBaseDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKnowledgeBaseDocuments, input, options)
end

function C:getPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrompt, input, options)
end

function C:ingestKnowledgeBaseDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.IngestKnowledgeBaseDocuments, input, options)
end

function C:listAgentActionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentActionGroups, input, options)
end

function C:listAgentAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentAliases, input, options)
end

function C:listAgentCollaborators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentCollaborators, input, options)
end

function C:listAgentKnowledgeBases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentKnowledgeBases, input, options)
end

function C:listAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgents, input, options)
end

function C:listAgentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentVersions, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listFlowAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowAliases, input, options)
end

function C:listFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlows, input, options)
end

function C:listFlowVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowVersions, input, options)
end

function C:listIngestionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngestionJobs, input, options)
end

function C:listKnowledgeBaseDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKnowledgeBaseDocuments, input, options)
end

function C:listKnowledgeBases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKnowledgeBases, input, options)
end

function C:listPrompts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrompts, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:prepareAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PrepareAgent, input, options)
end

function C:prepareFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.PrepareFlow, input, options)
end

function C:startIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartIngestionJob, input, options)
end

function C:stopIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopIngestionJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgent, input, options)
end

function C:updateAgentActionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentActionGroup, input, options)
end

function C:updateAgentAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentAlias, input, options)
end

function C:updateAgentCollaborator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentCollaborator, input, options)
end

function C:updateAgentKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentKnowledgeBase, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlow, input, options)
end

function C:updateFlowAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowAlias, input, options)
end

function C:updateKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKnowledgeBase, input, options)
end

function C:updatePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrompt, input, options)
end

function C:validateFlowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateFlowDefinition, input, options)
end

return M
