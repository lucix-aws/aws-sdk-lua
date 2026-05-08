



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wisdom.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("wisdom.schemas")
local traits = require("smithy.traits")
local types = require("wisdom.types")
local sdk_defaults = require("aws.sdk_defaults")















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WisdomService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wisdom", signing_region = c.region } }
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

function C:createAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssistant, input, options)
end

function C:createAssistantAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssistantAssociation, input, options)
end

function C:createContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContent, input, options)
end

function C:createKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKnowledgeBase, input, options)
end

function C:createQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQuickResponse, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:deleteAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssistant, input, options)
end

function C:deleteAssistantAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssistantAssociation, input, options)
end

function C:deleteContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContent, input, options)
end

function C:deleteImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImportJob, input, options)
end

function C:deleteKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKnowledgeBase, input, options)
end

function C:deleteQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQuickResponse, input, options)
end

function C:getAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssistant, input, options)
end

function C:getAssistantAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssistantAssociation, input, options)
end

function C:getContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContent, input, options)
end

function C:getContentSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContentSummary, input, options)
end

function C:getImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportJob, input, options)
end

function C:getKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKnowledgeBase, input, options)
end

function C:getQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQuickResponse, input, options)
end

function C:getRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendations, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:listAssistantAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssistantAssociations, input, options)
end

function C:listAssistants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssistants, input, options)
end

function C:listContents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContents, input, options)
end

function C:listImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportJobs, input, options)
end

function C:listKnowledgeBases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKnowledgeBases, input, options)
end

function C:listQuickResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuickResponses, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:notifyRecommendationsReceived(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyRecommendationsReceived, input, options)
end

function C:queryAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryAssistant, input, options)
end

function C:removeKnowledgeBaseTemplateUri(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveKnowledgeBaseTemplateUri, input, options)
end

function C:searchContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContent, input, options)
end

function C:searchQuickResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchQuickResponses, input, options)
end

function C:searchSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSessions, input, options)
end

function C:startContentUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContentUpload, input, options)
end

function C:startImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContent, input, options)
end

function C:updateKnowledgeBaseTemplateUri(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKnowledgeBaseTemplateUri, input, options)
end

function C:updateQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuickResponse, input, options)
end

return M
