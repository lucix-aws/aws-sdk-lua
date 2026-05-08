



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("qconnect.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("qconnect.schemas")
local traits = require("smithy.traits")
local types = require("qconnect.types")
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

function C:activateMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateMessageTemplate, input, options)
end

function C:createAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIAgent, input, options)
end

function C:createAIAgentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIAgentVersion, input, options)
end

function C:createAIGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIGuardrail, input, options)
end

function C:createAIGuardrailVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIGuardrailVersion, input, options)
end

function C:createAIPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIPrompt, input, options)
end

function C:createAIPromptVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIPromptVersion, input, options)
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

function C:createContentAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContentAssociation, input, options)
end

function C:createKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKnowledgeBase, input, options)
end

function C:createMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMessageTemplate, input, options)
end

function C:createMessageTemplateAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMessageTemplateAttachment, input, options)
end

function C:createMessageTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMessageTemplateVersion, input, options)
end

function C:createQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQuickResponse, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:deactivateMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateMessageTemplate, input, options)
end

function C:deleteAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIAgent, input, options)
end

function C:deleteAIAgentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIAgentVersion, input, options)
end

function C:deleteAIGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIGuardrail, input, options)
end

function C:deleteAIGuardrailVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIGuardrailVersion, input, options)
end

function C:deleteAIPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIPrompt, input, options)
end

function C:deleteAIPromptVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIPromptVersion, input, options)
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

function C:deleteContentAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContentAssociation, input, options)
end

function C:deleteImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImportJob, input, options)
end

function C:deleteKnowledgeBase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKnowledgeBase, input, options)
end

function C:deleteMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessageTemplate, input, options)
end

function C:deleteMessageTemplateAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessageTemplateAttachment, input, options)
end

function C:deleteQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQuickResponse, input, options)
end

function C:getAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAIAgent, input, options)
end

function C:getAIGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAIGuardrail, input, options)
end

function C:getAIPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAIPrompt, input, options)
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

function C:getContentAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContentAssociation, input, options)
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

function C:getMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMessageTemplate, input, options)
end

function C:getNextMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNextMessage, input, options)
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

function C:listAIAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIAgents, input, options)
end

function C:listAIAgentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIAgentVersions, input, options)
end

function C:listAIGuardrails(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIGuardrails, input, options)
end

function C:listAIGuardrailVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIGuardrailVersions, input, options)
end

function C:listAIPrompts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIPrompts, input, options)
end

function C:listAIPromptVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIPromptVersions, input, options)
end

function C:listAssistantAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssistantAssociations, input, options)
end

function C:listAssistants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssistants, input, options)
end

function C:listContentAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContentAssociations, input, options)
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

function C:listMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMessages, input, options)
end

function C:listMessageTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMessageTemplates, input, options)
end

function C:listMessageTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMessageTemplateVersions, input, options)
end

function C:listQuickResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuickResponses, input, options)
end

function C:listSpans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpans, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:notifyRecommendationsReceived(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyRecommendationsReceived, input, options)
end

function C:putFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFeedback, input, options)
end

function C:queryAssistant(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryAssistant, input, options)
end

function C:removeAssistantAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAssistantAIAgent, input, options)
end

function C:removeKnowledgeBaseTemplateUri(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveKnowledgeBaseTemplateUri, input, options)
end

function C:renderMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenderMessageTemplate, input, options)
end

function C:retrieve(input, options)
   return self:invokeOperation(schemas.Service, schemas.Retrieve, input, options)
end

function C:searchContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContent, input, options)
end

function C:searchMessageTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchMessageTemplates, input, options)
end

function C:searchQuickResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchQuickResponses, input, options)
end

function C:searchSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSessions, input, options)
end

function C:sendMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMessage, input, options)
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

function C:updateAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAIAgent, input, options)
end

function C:updateAIGuardrail(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAIGuardrail, input, options)
end

function C:updateAIPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAIPrompt, input, options)
end

function C:updateAssistantAIAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssistantAIAgent, input, options)
end

function C:updateContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContent, input, options)
end

function C:updateKnowledgeBaseTemplateUri(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKnowledgeBaseTemplateUri, input, options)
end

function C:updateMessageTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMessageTemplate, input, options)
end

function C:updateMessageTemplateMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMessageTemplateMetadata, input, options)
end

function C:updateQuickResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuickResponse, input, options)
end

function C:updateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSession, input, options)
end

function C:updateSessionData(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSessionData, input, options)
end

return M
