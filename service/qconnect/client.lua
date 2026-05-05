local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("qconnect.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("qconnect.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WisdomService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wisdom", signing_region = cfg.region } }
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

function Client:activateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ActivateMessageTemplate",
        input_schema = schemas.ActivateMessageTemplateInput,
        output_schema = schemas.ActivateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/activate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIAgent",
        input_schema = schemas.CreateAIAgentInput,
        output_schema = schemas.CreateAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIAgentVersion",
        input_schema = schemas.CreateAIAgentVersionInput,
        output_schema = schemas.CreateAIAgentVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIGuardrail",
        input_schema = schemas.CreateAIGuardrailInput,
        output_schema = schemas.CreateAIGuardrailOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIGuardrailVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIGuardrailVersion",
        input_schema = schemas.CreateAIGuardrailVersionInput,
        output_schema = schemas.CreateAIGuardrailVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIPrompt",
        input_schema = schemas.CreateAIPromptInput,
        output_schema = schemas.CreateAIPromptOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIPromptVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIPromptVersion",
        input_schema = schemas.CreateAIPromptVersionInput,
        output_schema = schemas.CreateAIPromptVersionOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssistant(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssistant",
        input_schema = schemas.CreateAssistantInput,
        output_schema = schemas.CreateAssistantOutput,
        http_method = "POST",
        http_path = "/assistants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssistantAssociation",
        input_schema = schemas.CreateAssistantAssociationInput,
        output_schema = schemas.CreateAssistantAssociationOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContent(input, options)
    return self:invokeOperation(input, {
        name = "CreateContent",
        input_schema = schemas.CreateContentInput,
        output_schema = schemas.CreateContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateContentAssociation",
        input_schema = schemas.CreateContentAssociationInput,
        output_schema = schemas.CreateContentAssociationOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKnowledgeBase",
        input_schema = schemas.CreateKnowledgeBaseInput,
        output_schema = schemas.CreateKnowledgeBaseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplate",
        input_schema = schemas.CreateMessageTemplateInput,
        output_schema = schemas.CreateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMessageTemplateAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplateAttachment",
        input_schema = schemas.CreateMessageTemplateAttachmentInput,
        output_schema = schemas.CreateMessageTemplateAttachmentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMessageTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateMessageTemplateVersion",
        input_schema = schemas.CreateMessageTemplateVersionInput,
        output_schema = schemas.CreateMessageTemplateVersionOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuickResponse",
        input_schema = schemas.CreateQuickResponseInput,
        output_schema = schemas.CreateQuickResponseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses",
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
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateMessageTemplate",
        input_schema = schemas.DeactivateMessageTemplateInput,
        output_schema = schemas.DeactivateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/deactivate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIAgent",
        input_schema = schemas.DeleteAIAgentInput,
        output_schema = schemas.DeleteAIAgentOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIAgentVersion",
        input_schema = schemas.DeleteAIAgentVersionInput,
        output_schema = schemas.DeleteAIAgentVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions/{versionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIGuardrail",
        input_schema = schemas.DeleteAIGuardrailInput,
        output_schema = schemas.DeleteAIGuardrailOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIGuardrailVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIGuardrailVersion",
        input_schema = schemas.DeleteAIGuardrailVersionInput,
        output_schema = schemas.DeleteAIGuardrailVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions/{versionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIPrompt",
        input_schema = schemas.DeleteAIPromptInput,
        output_schema = schemas.DeleteAIPromptOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIPromptVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIPromptVersion",
        input_schema = schemas.DeleteAIPromptVersionInput,
        output_schema = schemas.DeleteAIPromptVersionOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions/{versionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssistant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssistant",
        input_schema = schemas.DeleteAssistantInput,
        output_schema = schemas.DeleteAssistantOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssistantAssociation",
        input_schema = schemas.DeleteAssistantAssociationInput,
        output_schema = schemas.DeleteAssistantAssociationOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/associations/{assistantAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContent",
        input_schema = schemas.DeleteContentInput,
        output_schema = schemas.DeleteContentOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContentAssociation",
        input_schema = schemas.DeleteContentAssociationInput,
        output_schema = schemas.DeleteContentAssociationOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImportJob",
        input_schema = schemas.DeleteImportJobInput,
        output_schema = schemas.DeleteImportJobOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKnowledgeBase",
        input_schema = schemas.DeleteKnowledgeBaseInput,
        output_schema = schemas.DeleteKnowledgeBaseOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessageTemplate",
        input_schema = schemas.DeleteMessageTemplateInput,
        output_schema = schemas.DeleteMessageTemplateOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessageTemplateAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessageTemplateAttachment",
        input_schema = schemas.DeleteMessageTemplateAttachmentInput,
        output_schema = schemas.DeleteMessageTemplateAttachmentOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/attachments/{attachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuickResponse",
        input_schema = schemas.DeleteQuickResponseInput,
        output_schema = schemas.DeleteQuickResponseOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "GetAIAgent",
        input_schema = schemas.GetAIAgentInput,
        output_schema = schemas.GetAIAgentOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "GetAIGuardrail",
        input_schema = schemas.GetAIGuardrailInput,
        output_schema = schemas.GetAIGuardrailOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "GetAIPrompt",
        input_schema = schemas.GetAIPromptInput,
        output_schema = schemas.GetAIPromptOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssistant(input, options)
    return self:invokeOperation(input, {
        name = "GetAssistant",
        input_schema = schemas.GetAssistantInput,
        output_schema = schemas.GetAssistantOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssistantAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetAssistantAssociation",
        input_schema = schemas.GetAssistantAssociationInput,
        output_schema = schemas.GetAssistantAssociationOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/associations/{assistantAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContent(input, options)
    return self:invokeOperation(input, {
        name = "GetContent",
        input_schema = schemas.GetContentInput,
        output_schema = schemas.GetContentOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContentAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetContentAssociation",
        input_schema = schemas.GetContentAssociationInput,
        output_schema = schemas.GetContentAssociationOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations/{contentAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContentSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetContentSummary",
        input_schema = schemas.GetContentSummaryInput,
        output_schema = schemas.GetContentSummaryOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = schemas.GetImportJobInput,
        output_schema = schemas.GetImportJobOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "GetKnowledgeBase",
        input_schema = schemas.GetKnowledgeBaseInput,
        output_schema = schemas.GetKnowledgeBaseOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetMessageTemplate",
        input_schema = schemas.GetMessageTemplateInput,
        output_schema = schemas.GetMessageTemplateOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNextMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetNextMessage",
        input_schema = schemas.GetNextMessageInput,
        output_schema = schemas.GetNextMessageOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/messages/next",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetQuickResponse",
        input_schema = schemas.GetQuickResponseInput,
        output_schema = schemas.GetQuickResponseOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendations",
        input_schema = schemas.GetRecommendationsInput,
        output_schema = schemas.GetRecommendationsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations",
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
        http_path = "/assistants/{assistantId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIAgents(input, options)
    return self:invokeOperation(input, {
        name = "ListAIAgents",
        input_schema = schemas.ListAIAgentsInput,
        output_schema = schemas.ListAIAgentsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIAgentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIAgentVersions",
        input_schema = schemas.ListAIAgentVersionsInput,
        output_schema = schemas.ListAIAgentVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIGuardrails(input, options)
    return self:invokeOperation(input, {
        name = "ListAIGuardrails",
        input_schema = schemas.ListAIGuardrailsInput,
        output_schema = schemas.ListAIGuardrailsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIGuardrailVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIGuardrailVersions",
        input_schema = schemas.ListAIGuardrailVersionsInput,
        output_schema = schemas.ListAIGuardrailVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIPrompts(input, options)
    return self:invokeOperation(input, {
        name = "ListAIPrompts",
        input_schema = schemas.ListAIPromptsInput,
        output_schema = schemas.ListAIPromptsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIPromptVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAIPromptVersions",
        input_schema = schemas.ListAIPromptVersionsInput,
        output_schema = schemas.ListAIPromptVersionsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssistantAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssistantAssociations",
        input_schema = schemas.ListAssistantAssociationsInput,
        output_schema = schemas.ListAssistantAssociationsOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssistants(input, options)
    return self:invokeOperation(input, {
        name = "ListAssistants",
        input_schema = schemas.ListAssistantsInput,
        output_schema = schemas.ListAssistantsOutput,
        http_method = "GET",
        http_path = "/assistants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContentAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListContentAssociations",
        input_schema = schemas.ListContentAssociationsInput,
        output_schema = schemas.ListContentAssociationsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContents(input, options)
    return self:invokeOperation(input, {
        name = "ListContents",
        input_schema = schemas.ListContentsInput,
        output_schema = schemas.ListContentsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListImportJobs",
        input_schema = schemas.ListImportJobsInput,
        output_schema = schemas.ListImportJobsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKnowledgeBases(input, options)
    return self:invokeOperation(input, {
        name = "ListKnowledgeBases",
        input_schema = schemas.ListKnowledgeBasesInput,
        output_schema = schemas.ListKnowledgeBasesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListMessages",
        input_schema = schemas.ListMessagesInput,
        output_schema = schemas.ListMessagesOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/messages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMessageTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListMessageTemplates",
        input_schema = schemas.ListMessageTemplatesInput,
        output_schema = schemas.ListMessageTemplatesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMessageTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListMessageTemplateVersions",
        input_schema = schemas.ListMessageTemplateVersionsInput,
        output_schema = schemas.ListMessageTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQuickResponses(input, options)
    return self:invokeOperation(input, {
        name = "ListQuickResponses",
        input_schema = schemas.ListQuickResponsesInput,
        output_schema = schemas.ListQuickResponsesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpans(input, options)
    return self:invokeOperation(input, {
        name = "ListSpans",
        input_schema = schemas.ListSpansInput,
        output_schema = schemas.ListSpansOutput,
        http_method = "GET",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/spans",
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

function Client:notifyRecommendationsReceived(input, options)
    return self:invokeOperation(input, {
        name = "NotifyRecommendationsReceived",
        input_schema = schemas.NotifyRecommendationsReceivedInput,
        output_schema = schemas.NotifyRecommendationsReceivedOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = schemas.PutFeedbackInput,
        output_schema = schemas.PutFeedbackOutput,
        http_method = "PUT",
        http_path = "/assistants/{assistantId}/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:queryAssistant(input, options)
    return self:invokeOperation(input, {
        name = "QueryAssistant",
        input_schema = schemas.QueryAssistantInput,
        output_schema = schemas.QueryAssistantOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/query",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAssistantAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAssistantAIAgent",
        input_schema = schemas.RemoveAssistantAIAgentInput,
        output_schema = schemas.RemoveAssistantAIAgentOutput,
        http_method = "DELETE",
        http_path = "/assistants/{assistantId}/aiagentConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeKnowledgeBaseTemplateUri(input, options)
    return self:invokeOperation(input, {
        name = "RemoveKnowledgeBaseTemplateUri",
        input_schema = schemas.RemoveKnowledgeBaseTemplateUriInput,
        output_schema = schemas.RemoveKnowledgeBaseTemplateUriOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/templateUri",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:renderMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "RenderMessageTemplate",
        input_schema = schemas.RenderMessageTemplateInput,
        output_schema = schemas.RenderMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/render",
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
        http_path = "/assistants/{assistantId}/retrieve",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchContent(input, options)
    return self:invokeOperation(input, {
        name = "SearchContent",
        input_schema = schemas.SearchContentInput,
        output_schema = schemas.SearchContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchMessageTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchMessageTemplates",
        input_schema = schemas.SearchMessageTemplatesInput,
        output_schema = schemas.SearchMessageTemplatesOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search/messageTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchQuickResponses(input, options)
    return self:invokeOperation(input, {
        name = "SearchQuickResponses",
        input_schema = schemas.SearchQuickResponsesInput,
        output_schema = schemas.SearchQuickResponsesOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search/quickResponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSessions(input, options)
    return self:invokeOperation(input, {
        name = "SearchSessions",
        input_schema = schemas.SearchSessionsInput,
        output_schema = schemas.SearchSessionsOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/searchSessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = schemas.SendMessageInput,
        output_schema = schemas.SendMessageOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/message",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContentUpload(input, options)
    return self:invokeOperation(input, {
        name = "StartContentUpload",
        input_schema = schemas.StartContentUploadInput,
        output_schema = schemas.StartContentUploadOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/upload",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartImportJob",
        input_schema = schemas.StartImportJobInput,
        output_schema = schemas.StartImportJobOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/importJobs",
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

function Client:updateAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIAgent",
        input_schema = schemas.UpdateAIAgentInput,
        output_schema = schemas.UpdateAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagents/{aiAgentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAIGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIGuardrail",
        input_schema = schemas.UpdateAIGuardrailInput,
        output_schema = schemas.UpdateAIGuardrailOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiguardrails/{aiGuardrailId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAIPrompt(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAIPrompt",
        input_schema = schemas.UpdateAIPromptInput,
        output_schema = schemas.UpdateAIPromptOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiprompts/{aiPromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssistantAIAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssistantAIAgent",
        input_schema = schemas.UpdateAssistantAIAgentInput,
        output_schema = schemas.UpdateAssistantAIAgentOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/aiagentConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContent",
        input_schema = schemas.UpdateContentInput,
        output_schema = schemas.UpdateContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKnowledgeBaseTemplateUri(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKnowledgeBaseTemplateUri",
        input_schema = schemas.UpdateKnowledgeBaseTemplateUriInput,
        output_schema = schemas.UpdateKnowledgeBaseTemplateUriOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/templateUri",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMessageTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMessageTemplate",
        input_schema = schemas.UpdateMessageTemplateInput,
        output_schema = schemas.UpdateMessageTemplateOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMessageTemplateMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMessageTemplateMetadata",
        input_schema = schemas.UpdateMessageTemplateMetadataInput,
        output_schema = schemas.UpdateMessageTemplateMetadataOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/messageTemplates/{messageTemplateId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickResponse",
        input_schema = schemas.UpdateQuickResponseInput,
        output_schema = schemas.UpdateQuickResponseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
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
        http_method = "POST",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSessionData(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSessionData",
        input_schema = schemas.UpdateSessionDataInput,
        output_schema = schemas.UpdateSessionDataOutput,
        http_method = "PATCH",
        http_path = "/assistants/{assistantId}/sessions/{sessionId}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
