local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wisdom.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("wisdom.types")

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

function Client:createKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKnowledgeBase",
        input_schema = types.CreateKnowledgeBaseInput,
        output_schema = types.CreateKnowledgeBaseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases",
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

function Client:deleteQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuickResponse",
        input_schema = types.DeleteQuickResponseInput,
        output_schema = types.DeleteQuickResponseOutput,
        http_method = "DELETE",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
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

function Client:listQuickResponses(input, options)
    return self:invokeOperation(input, {
        name = "ListQuickResponses",
        input_schema = types.ListQuickResponsesInput,
        output_schema = types.ListQuickResponsesOutput,
        http_method = "GET",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses",
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

function Client:queryAssistant(input, options)
    return self:invokeOperation(input, {
        name = "QueryAssistant",
        input_schema = types.QueryAssistantInput,
        output_schema = types.QueryAssistantOutput,
        http_method = "POST",
        http_path = "/assistants/{assistantId}/query",
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

function Client:searchContent(input, options)
    return self:invokeOperation(input, {
        name = "SearchContent",
        input_schema = types.SearchContentInput,
        output_schema = types.SearchContentOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/search",
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

function Client:updateQuickResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickResponse",
        input_schema = types.UpdateQuickResponseInput,
        output_schema = types.UpdateQuickResponseOutput,
        http_method = "POST",
        http_path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}",
    }, options)
end

return M
