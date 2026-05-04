local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("qconnect.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("qconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WisdomService"
    cfg.signing_name = "wisdom"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:activateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ActivateMessageTemplate",
        input_schema = types.ActivateMessageTemplateInput,
        output_schema = types.ActivateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate",
    }, options)
end

function Client:createAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIAgent",
        input_schema = types.CreateAIAgentInput,
        output_schema = types.CreateAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents",
    }, options)
end

function Client:createAIAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIAgentVersion",
        input_schema = types.CreateAIAgentVersionInput,
        output_schema = types.CreateAIAgentVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions",
    }, options)
end

function Client:createAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIGuardrail",
        input_schema = types.CreateAIGuardrailInput,
        output_schema = types.CreateAIGuardrailOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails",
    }, options)
end

function Client:createAIGuardrailVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIGuardrailVersion",
        input_schema = types.CreateAIGuardrailVersionInput,
        output_schema = types.CreateAIGuardrailVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions",
    }, options)
end

function Client:createAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIPrompt",
        input_schema = types.CreateAIPromptInput,
        output_schema = types.CreateAIPromptOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts",
    }, options)
end

function Client:createAIPromptVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIPromptVersion",
        input_schema = types.CreateAIPromptVersionInput,
        output_schema = types.CreateAIPromptVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions",
    }, options)
end

function Client:createAssistant(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssistant",
        input_schema = types.CreateAssistantInput,
        output_schema = types.CreateAssistantOutput,
        http_method = "POST",
        http_path = "/assistants",
    }, options)
end

function Client:createAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssistantAssociation",
        input_schema = types.CreateAssistantAssociationInput,
        output_schema = types.CreateAssistantAssociationOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/associations",
    }, options)
end

function Client:createContent(input, options)
    return self:invokeOperation(input, {
        name = "CreateContent",
        input_schema = types.CreateContentInput,
        output_schema = types.CreateContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents",
    }, options)
end

function Client:createContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateContentAssociation",
        input_schema = types.CreateContentAssociationInput,
        output_schema = types.CreateContentAssociationOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations",
    }, options)
end

function Client:createKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKnowledgeBase",
        input_schema = types.CreateKnowledgeBaseInput,
        output_schema = types.CreateKnowledgeBaseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases",
    }, options)
end

function Client:createMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplate",
        input_schema = types.CreateMessageTemplateInput,
        output_schema = types.CreateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates",
    }, options)
end

function Client:createMessageTemplateAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplateAttachment",
        input_schema = types.CreateMessageTemplateAttachmentInput,
        output_schema = types.CreateMessageTemplateAttachmentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments",
    }, options)
end

function Client:createMessageTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplateVersion",
        input_schema = types.CreateMessageTemplateVersionInput,
        output_schema = types.CreateMessageTemplateVersionOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions",
    }, options)
end

function Client:createQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuickResponse",
        input_schema = types.CreateQuickResponseInput,
        output_schema = types.CreateQuickResponseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses",
    }, options)
end

function Client:createSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateSession",
        input_schema = types.CreateSessionInput,
        output_schema = types.CreateSessionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions",
    }, options)
end

function Client:deactivateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateMessageTemplate",
        input_schema = types.DeactivateMessageTemplateInput,
        output_schema = types.DeactivateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate",
    }, options)
end

function Client:deleteAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIAgent",
        input_schema = types.DeleteAIAgentInput,
        output_schema = types.DeleteAIAgentOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
    }, options)
end

function Client:deleteAIAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIAgentVersion",
        input_schema = types.DeleteAIAgentVersionInput,
        output_schema = types.DeleteAIAgentVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}",
    }, options)
end

function Client:deleteAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIGuardrail",
        input_schema = types.DeleteAIGuardrailInput,
        output_schema = types.DeleteAIGuardrailOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
    }, options)
end

function Client:deleteAIGuardrailVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIGuardrailVersion",
        input_schema = types.DeleteAIGuardrailVersionInput,
        output_schema = types.DeleteAIGuardrailVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}",
    }, options)
end

function Client:deleteAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIPrompt",
        input_schema = types.DeleteAIPromptInput,
        output_schema = types.DeleteAIPromptOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
    }, options)
end

function Client:deleteAIPromptVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIPromptVersion",
        input_schema = types.DeleteAIPromptVersionInput,
        output_schema = types.DeleteAIPromptVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}",
    }, options)
end

function Client:deleteAssistant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssistant",
        input_schema = types.DeleteAssistantInput,
        output_schema = types.DeleteAssistantOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}",
    }, options)
end

function Client:deleteAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssistantAssociation",
        input_schema = types.DeleteAssistantAssociationInput,
        output_schema = types.DeleteAssistantAssociationOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/associations/{assistantAssociationId}",
    }, options)
end

function Client:deleteContent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContent",
        input_schema = types.DeleteContentInput,
        output_schema = types.DeleteContentOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
    }, options)
end

function Client:deleteContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContentAssociation",
        input_schema = types.DeleteContentAssociationInput,
        output_schema = types.DeleteContentAssociationOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}",
    }, options)
end

function Client:deleteImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImportJob",
        input_schema = types.DeleteImportJobInput,
        output_schema = types.DeleteImportJobOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}",
    }, options)
end

function Client:deleteKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKnowledgeBase",
        input_schema = types.DeleteKnowledgeBaseInput,
        output_schema = types.DeleteKnowledgeBaseOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}",
    }, options)
end

function Client:deleteMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessageTemplate",
        input_schema = types.DeleteMessageTemplateInput,
        output_schema = types.DeleteMessageTemplateOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
    }, options)
end

function Client:deleteMessageTemplateAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessageTemplateAttachment",
        input_schema = types.DeleteMessageTemplateAttachmentInput,
        output_schema = types.DeleteMessageTemplateAttachmentOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}",
    }, options)
end

function Client:deleteQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuickResponse",
        input_schema = types.DeleteQuickResponseInput,
        output_schema = types.DeleteQuickResponseOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
    }, options)
end

function Client:getAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "GetAIAgent",
        input_schema = types.GetAIAgentInput,
        output_schema = types.GetAIAgentOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
    }, options)
end

function Client:getAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "GetAIGuardrail",
        input_schema = types.GetAIGuardrailInput,
        output_schema = types.GetAIGuardrailOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
    }, options)
end

function Client:getAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "GetAIPrompt",
        input_schema = types.GetAIPromptInput,
        output_schema = types.GetAIPromptOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
    }, options)
end

function Client:getAssistant(input, options)
    return self:invokeOperation(input, {
        name = "GetAssistant",
        input_schema = types.GetAssistantInput,
        output_schema = types.GetAssistantOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}",
    }, options)
end

function Client:getAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetAssistantAssociation",
        input_schema = types.GetAssistantAssociationInput,
        output_schema = types.GetAssistantAssociationOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/associations/{assistantAssociationId}",
    }, options)
end

function Client:getContent(input, options)
    return self:invokeOperation(input, {
        name = "GetContent",
        input_schema = types.GetContentInput,
        output_schema = types.GetContentOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
    }, options)
end

function Client:getContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetContentAssociation",
        input_schema = types.GetContentAssociationInput,
        output_schema = types.GetContentAssociationOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}",
    }, options)
end

function Client:getContentSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetContentSummary",
        input_schema = types.GetContentSummaryInput,
        output_schema = types.GetContentSummaryOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary",
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = types.GetImportJobInput,
        output_schema = types.GetImportJobOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}",
    }, options)
end

function Client:getKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "GetKnowledgeBase",
        input_schema = types.GetKnowledgeBaseInput,
        output_schema = types.GetKnowledgeBaseOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}",
    }, options)
end

function Client:getMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetMessageTemplate",
        input_schema = types.GetMessageTemplateInput,
        output_schema = types.GetMessageTemplateOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
    }, options)
end

function Client:getNextMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetNextMessage",
        input_schema = types.GetNextMessageInput,
        output_schema = types.GetNextMessageOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/messages/next",
    }, options)
end

function Client:getQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetQuickResponse",
        input_schema = types.GetQuickResponseInput,
        output_schema = types.GetQuickResponseOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
    }, options)
end

function Client:getRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendations",
        input_schema = types.GetRecommendationsInput,
        output_schema = types.GetRecommendationsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}",
    }, options)
end

function Client:listAIAgents(input, options)
    return self:invokeOperation(input, {
        name = "ListAIAgents",
        input_schema = types.ListAIAgentsInput,
        output_schema = types.ListAIAgentsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents",
    }, options)
end

function Client:listAIAgentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIAgentVersions",
        input_schema = types.ListAIAgentVersionsInput,
        output_schema = types.ListAIAgentVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions",
    }, options)
end

function Client:listAIGuardrails(input, options)
    return self:invokeOperation(input, {
        name = "ListAIGuardrails",
        input_schema = types.ListAIGuardrailsInput,
        output_schema = types.ListAIGuardrailsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails",
    }, options)
end

function Client:listAIGuardrailVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIGuardrailVersions",
        input_schema = types.ListAIGuardrailVersionsInput,
        output_schema = types.ListAIGuardrailVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions",
    }, options)
end

function Client:listAIPrompts(input, options)
    return self:invokeOperation(input, {
        name = "ListAIPrompts",
        input_schema = types.ListAIPromptsInput,
        output_schema = types.ListAIPromptsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts",
    }, options)
end

function Client:listAIPromptVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIPromptVersions",
        input_schema = types.ListAIPromptVersionsInput,
        output_schema = types.ListAIPromptVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions",
    }, options)
end

function Client:listAssistantAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssistantAssociations",
        input_schema = types.ListAssistantAssociationsInput,
        output_schema = types.ListAssistantAssociationsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/associations",
    }, options)
end

function Client:listAssistants(input, options)
    return self:invokeOperation(input, {
        name = "ListAssistants",
        input_schema = types.ListAssistantsInput,
        output_schema = types.ListAssistantsOutput,
        http_method = "GET",
        http_path = "/assistants",
    }, options)
end

function Client:listContentAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListContentAssociations",
        input_schema = types.ListContentAssociationsInput,
        output_schema = types.ListContentAssociationsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations",
    }, options)
end

function Client:listContents(input, options)
    return self:invokeOperation(input, {
        name = "ListContents",
        input_schema = types.ListContentsInput,
        output_schema = types.ListContentsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents",
    }, options)
end

function Client:listImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListImportJobs",
        input_schema = types.ListImportJobsInput,
        output_schema = types.ListImportJobsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs",
    }, options)
end

function Client:listKnowledgeBases(input, options)
    return self:invokeOperation(input, {
        name = "ListKnowledgeBases",
        input_schema = types.ListKnowledgeBasesInput,
        output_schema = types.ListKnowledgeBasesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases",
    }, options)
end

function Client:listMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListMessages",
        input_schema = types.ListMessagesInput,
        output_schema = types.ListMessagesOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/messages",
    }, options)
end

function Client:listMessageTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListMessageTemplates",
        input_schema = types.ListMessageTemplatesInput,
        output_schema = types.ListMessageTemplatesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates",
    }, options)
end

function Client:listMessageTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListMessageTemplateVersions",
        input_schema = types.ListMessageTemplateVersionsInput,
        output_schema = types.ListMessageTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions",
    }, options)
end

function Client:listQuickResponses(input, options)
    return self:invokeOperation(input, {
        name = "ListQuickResponses",
        input_schema = types.ListQuickResponsesInput,
        output_schema = types.ListQuickResponsesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses",
    }, options)
end

function Client:listSpans(input, options)
    return self:invokeOperation(input, {
        name = "ListSpans",
        input_schema = types.ListSpansInput,
        output_schema = types.ListSpansOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/spans",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:notifyRecommendationsReceived(input, options)
    return self:invokeOperation(input, {
        name = "NotifyRecommendationsReceived",
        input_schema = types.NotifyRecommendationsReceivedInput,
        output_schema = types.NotifyRecommendationsReceivedOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify",
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = types.PutFeedbackInput,
        output_schema = types.PutFeedbackOutput,
        http_method = "PUT",
        http_path = "/assistants/{assistantId}/feedback",
    }, options)
end

function Client:queryAssistant(input, options)
    return self:invokeOperation(input, {
        name = "QueryAssistant",
        input_schema = types.QueryAssistantInput,
        output_schema = types.QueryAssistantOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/query",
    }, options)
end

function Client:removeAssistantAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAssistantAIAgent",
        input_schema = types.RemoveAssistantAIAgentInput,
        output_schema = types.RemoveAssistantAIAgentOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagentConfiguration",
    }, options)
end

function Client:removeKnowledgeBaseTemplateUri(input, options)
    return self:invokeOperation(input, {
        name = "RemoveKnowledgeBaseTemplateUri",
        input_schema = types.RemoveKnowledgeBaseTemplateUriInput,
        output_schema = types.RemoveKnowledgeBaseTemplateUriOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/templateUri",
    }, options)
end

function Client:renderMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "RenderMessageTemplate",
        input_schema = types.RenderMessageTemplateInput,
        output_schema = types.RenderMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render",
    }, options)
end

function Client:retrieve(input, options)
    return self:invokeOperation(input, {
        name = "Retrieve",
        input_schema = types.RetrieveInput,
        output_schema = types.RetrieveOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/retrieve",
    }, options)
end

function Client:searchContent(input, options)
    return self:invokeOperation(input, {
        name = "SearchContent",
        input_schema = types.SearchContentInput,
        output_schema = types.SearchContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search",
    }, options)
end

function Client:searchMessageTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchMessageTemplates",
        input_schema = types.SearchMessageTemplatesInput,
        output_schema = types.SearchMessageTemplatesOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates",
    }, options)
end

function Client:searchQuickResponses(input, options)
    return self:invokeOperation(input, {
        name = "SearchQuickResponses",
        input_schema = types.SearchQuickResponsesInput,
        output_schema = types.SearchQuickResponsesOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search/quickResponses",
    }, options)
end

function Client:searchSessions(input, options)
    return self:invokeOperation(input, {
        name = "SearchSessions",
        input_schema = types.SearchSessionsInput,
        output_schema = types.SearchSessionsOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/searchSessions",
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = types.SendMessageInput,
        output_schema = types.SendMessageOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/message",
    }, options)
end

function Client:startContentUpload(input, options)
    return self:invokeOperation(input, {
        name = "StartContentUpload",
        input_schema = types.StartContentUploadInput,
        output_schema = types.StartContentUploadOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/upload",
    }, options)
end

function Client:startImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartImportJob",
        input_schema = types.StartImportJobInput,
        output_schema = types.StartImportJobOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIAgent",
        input_schema = types.UpdateAIAgentInput,
        output_schema = types.UpdateAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
    }, options)
end

function Client:updateAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIGuardrail",
        input_schema = types.UpdateAIGuardrailInput,
        output_schema = types.UpdateAIGuardrailOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
    }, options)
end

function Client:updateAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIPrompt",
        input_schema = types.UpdateAIPromptInput,
        output_schema = types.UpdateAIPromptOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
    }, options)
end

function Client:updateAssistantAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssistantAIAgent",
        input_schema = types.UpdateAssistantAIAgentInput,
        output_schema = types.UpdateAssistantAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagentConfiguration",
    }, options)
end

function Client:updateContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContent",
        input_schema = types.UpdateContentInput,
        output_schema = types.UpdateContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
    }, options)
end

function Client:updateKnowledgeBaseTemplateUri(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKnowledgeBaseTemplateUri",
        input_schema = types.UpdateKnowledgeBaseTemplateUriInput,
        output_schema = types.UpdateKnowledgeBaseTemplateUriOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/templateUri",
    }, options)
end

function Client:updateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMessageTemplate",
        input_schema = types.UpdateMessageTemplateInput,
        output_schema = types.UpdateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
    }, options)
end

function Client:updateMessageTemplateMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMessageTemplateMetadata",
        input_schema = types.UpdateMessageTemplateMetadataInput,
        output_schema = types.UpdateMessageTemplateMetadataOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata",
    }, options)
end

function Client:updateQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickResponse",
        input_schema = types.UpdateQuickResponseInput,
        output_schema = types.UpdateQuickResponseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
    }, options)
end

function Client:updateSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSession",
        input_schema = types.UpdateSessionInput,
        output_schema = types.UpdateSessionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}",
    }, options)
end

function Client:updateSessionData(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSessionData",
        input_schema = types.UpdateSessionDataInput,
        output_schema = types.UpdateSessionDataOutput,
        http_method = "PATCH",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/data",
    }, options)
end

return M
