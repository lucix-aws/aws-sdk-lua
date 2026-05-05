local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wisdom.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("wisdom.schemas")
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

return M
