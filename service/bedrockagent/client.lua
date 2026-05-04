local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockagent.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockagent.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockAgentBuildTimeLambda"
    cfg.signing_name = "amazonbedrockagentbuildtimelambda"
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

function Client:associateAgentCollaborator(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAgentCollaborator",
        input_schema = types.AssociateAgentCollaboratorInput,
        output_schema = types.AssociateAgentCollaboratorOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/",
    }, options)
end

function Client:associateAgentKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAgentKnowledgeBase",
        input_schema = types.AssociateAgentKnowledgeBaseInput,
        output_schema = types.AssociateAgentKnowledgeBaseOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/",
    }, options)
end

function Client:createAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgent",
        input_schema = types.CreateAgentInput,
        output_schema = types.CreateAgentOutput,
        http_method = "PUT",
        http_path = "/agents/",
    }, options)
end

function Client:createAgentActionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentActionGroup",
        input_schema = types.CreateAgentActionGroupInput,
        output_schema = types.CreateAgentActionGroupOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/",
    }, options)
end

function Client:createAgentAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentAlias",
        input_schema = types.CreateAgentAliasInput,
        output_schema = types.CreateAgentAliasOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentaliases/",
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/",
    }, options)
end

function Client:createFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlow",
        input_schema = types.CreateFlowInput,
        output_schema = types.CreateFlowOutput,
        http_method = "POST",
        http_path = "/flows/",
    }, options)
end

function Client:createFlowAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowAlias",
        input_schema = types.CreateFlowAliasInput,
        output_schema = types.CreateFlowAliasOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/aliases",
    }, options)
end

function Client:createFlowVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowVersion",
        input_schema = types.CreateFlowVersionInput,
        output_schema = types.CreateFlowVersionOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/versions",
    }, options)
end

function Client:createKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "CreateKnowledgeBase",
        input_schema = types.CreateKnowledgeBaseInput,
        output_schema = types.CreateKnowledgeBaseOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/",
    }, options)
end

function Client:createPrompt(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrompt",
        input_schema = types.CreatePromptInput,
        output_schema = types.CreatePromptOutput,
        http_method = "POST",
        http_path = "/prompts/",
    }, options)
end

function Client:createPromptVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePromptVersion",
        input_schema = types.CreatePromptVersionInput,
        output_schema = types.CreatePromptVersionOutput,
        http_method = "POST",
        http_path = "/prompts/{promptIdentifier}/versions",
    }, options)
end

function Client:deleteAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgent",
        input_schema = types.DeleteAgentInput,
        output_schema = types.DeleteAgentOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/",
    }, options)
end

function Client:deleteAgentActionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentActionGroup",
        input_schema = types.DeleteAgentActionGroupInput,
        output_schema = types.DeleteAgentActionGroupOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/",
    }, options)
end

function Client:deleteAgentAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentAlias",
        input_schema = types.DeleteAgentAliasInput,
        output_schema = types.DeleteAgentAliasOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentaliases/{agentAliasId}/",
    }, options)
end

function Client:deleteAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentVersion",
        input_schema = types.DeleteAgentVersionInput,
        output_schema = types.DeleteAgentVersionOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/",
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}",
    }, options)
end

function Client:deleteFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlow",
        input_schema = types.DeleteFlowInput,
        output_schema = types.DeleteFlowOutput,
        http_method = "DELETE",
        http_path = "/flows/{flowIdentifier}/",
    }, options)
end

function Client:deleteFlowAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowAlias",
        input_schema = types.DeleteFlowAliasInput,
        output_schema = types.DeleteFlowAliasOutput,
        http_method = "DELETE",
        http_path = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}",
    }, options)
end

function Client:deleteFlowVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowVersion",
        input_schema = types.DeleteFlowVersionInput,
        output_schema = types.DeleteFlowVersionOutput,
        http_method = "DELETE",
        http_path = "/flows/{flowIdentifier}/versions/{flowVersion}/",
    }, options)
end

function Client:deleteKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKnowledgeBase",
        input_schema = types.DeleteKnowledgeBaseInput,
        output_schema = types.DeleteKnowledgeBaseOutput,
        http_method = "DELETE",
        http_path = "/knowledgebases/{knowledgeBaseId}",
    }, options)
end

function Client:deleteKnowledgeBaseDocuments(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKnowledgeBaseDocuments",
        input_schema = types.DeleteKnowledgeBaseDocumentsInput,
        output_schema = types.DeleteKnowledgeBaseDocumentsOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/deleteDocuments",
    }, options)
end

function Client:deletePrompt(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrompt",
        input_schema = types.DeletePromptInput,
        output_schema = types.DeletePromptOutput,
        http_method = "DELETE",
        http_path = "/prompts/{promptIdentifier}/",
    }, options)
end

function Client:disassociateAgentCollaborator(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAgentCollaborator",
        input_schema = types.DisassociateAgentCollaboratorInput,
        output_schema = types.DisassociateAgentCollaboratorOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/",
    }, options)
end

function Client:disassociateAgentKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAgentKnowledgeBase",
        input_schema = types.DisassociateAgentKnowledgeBaseInput,
        output_schema = types.DisassociateAgentKnowledgeBaseOutput,
        http_method = "DELETE",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/",
    }, options)
end

function Client:getAgent(input, options)
    return self:invokeOperation(input, {
        name = "GetAgent",
        input_schema = types.GetAgentInput,
        output_schema = types.GetAgentOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/",
    }, options)
end

function Client:getAgentActionGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentActionGroup",
        input_schema = types.GetAgentActionGroupInput,
        output_schema = types.GetAgentActionGroupOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/",
    }, options)
end

function Client:getAgentAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentAlias",
        input_schema = types.GetAgentAliasInput,
        output_schema = types.GetAgentAliasOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentaliases/{agentAliasId}/",
    }, options)
end

function Client:getAgentCollaborator(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentCollaborator",
        input_schema = types.GetAgentCollaboratorInput,
        output_schema = types.GetAgentCollaboratorOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/",
    }, options)
end

function Client:getAgentKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentKnowledgeBase",
        input_schema = types.GetAgentKnowledgeBaseInput,
        output_schema = types.GetAgentKnowledgeBaseOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/",
    }, options)
end

function Client:getAgentVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAgentVersion",
        input_schema = types.GetAgentVersionInput,
        output_schema = types.GetAgentVersionOutput,
        http_method = "GET",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/",
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}",
    }, options)
end

function Client:getFlow(input, options)
    return self:invokeOperation(input, {
        name = "GetFlow",
        input_schema = types.GetFlowInput,
        output_schema = types.GetFlowOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/",
    }, options)
end

function Client:getFlowAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowAlias",
        input_schema = types.GetFlowAliasInput,
        output_schema = types.GetFlowAliasOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}",
    }, options)
end

function Client:getFlowVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowVersion",
        input_schema = types.GetFlowVersionInput,
        output_schema = types.GetFlowVersionOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/versions/{flowVersion}/",
    }, options)
end

function Client:getIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestionJob",
        input_schema = types.GetIngestionJobInput,
        output_schema = types.GetIngestionJobOutput,
        http_method = "GET",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}",
    }, options)
end

function Client:getKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "GetKnowledgeBase",
        input_schema = types.GetKnowledgeBaseInput,
        output_schema = types.GetKnowledgeBaseOutput,
        http_method = "GET",
        http_path = "/knowledgebases/{knowledgeBaseId}",
    }, options)
end

function Client:getKnowledgeBaseDocuments(input, options)
    return self:invokeOperation(input, {
        name = "GetKnowledgeBaseDocuments",
        input_schema = types.GetKnowledgeBaseDocumentsInput,
        output_schema = types.GetKnowledgeBaseDocumentsOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents/getDocuments",
    }, options)
end

function Client:getPrompt(input, options)
    return self:invokeOperation(input, {
        name = "GetPrompt",
        input_schema = types.GetPromptInput,
        output_schema = types.GetPromptOutput,
        http_method = "GET",
        http_path = "/prompts/{promptIdentifier}/",
    }, options)
end

function Client:ingestKnowledgeBaseDocuments(input, options)
    return self:invokeOperation(input, {
        name = "IngestKnowledgeBaseDocuments",
        input_schema = types.IngestKnowledgeBaseDocumentsInput,
        output_schema = types.IngestKnowledgeBaseDocumentsOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents",
    }, options)
end

function Client:listAgentActionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentActionGroups",
        input_schema = types.ListAgentActionGroupsInput,
        output_schema = types.ListAgentActionGroupsOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/",
    }, options)
end

function Client:listAgentAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentAliases",
        input_schema = types.ListAgentAliasesInput,
        output_schema = types.ListAgentAliasesOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentaliases/",
    }, options)
end

function Client:listAgentCollaborators(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentCollaborators",
        input_schema = types.ListAgentCollaboratorsInput,
        output_schema = types.ListAgentCollaboratorsOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/",
    }, options)
end

function Client:listAgentKnowledgeBases(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentKnowledgeBases",
        input_schema = types.ListAgentKnowledgeBasesInput,
        output_schema = types.ListAgentKnowledgeBasesOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/",
    }, options)
end

function Client:listAgents(input, options)
    return self:invokeOperation(input, {
        name = "ListAgents",
        input_schema = types.ListAgentsInput,
        output_schema = types.ListAgentsOutput,
        http_method = "POST",
        http_path = "/agents/",
    }, options)
end

function Client:listAgentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentVersions",
        input_schema = types.ListAgentVersionsInput,
        output_schema = types.ListAgentVersionsOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/agentversions/",
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/",
    }, options)
end

function Client:listFlowAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowAliases",
        input_schema = types.ListFlowAliasesInput,
        output_schema = types.ListFlowAliasesOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/aliases",
    }, options)
end

function Client:listFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListFlows",
        input_schema = types.ListFlowsInput,
        output_schema = types.ListFlowsOutput,
        http_method = "GET",
        http_path = "/flows/",
    }, options)
end

function Client:listFlowVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowVersions",
        input_schema = types.ListFlowVersionsInput,
        output_schema = types.ListFlowVersionsOutput,
        http_method = "GET",
        http_path = "/flows/{flowIdentifier}/versions",
    }, options)
end

function Client:listIngestionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestionJobs",
        input_schema = types.ListIngestionJobsInput,
        output_schema = types.ListIngestionJobsOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/",
    }, options)
end

function Client:listKnowledgeBaseDocuments(input, options)
    return self:invokeOperation(input, {
        name = "ListKnowledgeBaseDocuments",
        input_schema = types.ListKnowledgeBaseDocumentsInput,
        output_schema = types.ListKnowledgeBaseDocumentsOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/documents",
    }, options)
end

function Client:listKnowledgeBases(input, options)
    return self:invokeOperation(input, {
        name = "ListKnowledgeBases",
        input_schema = types.ListKnowledgeBasesInput,
        output_schema = types.ListKnowledgeBasesOutput,
        http_method = "POST",
        http_path = "/knowledgebases/",
    }, options)
end

function Client:listPrompts(input, options)
    return self:invokeOperation(input, {
        name = "ListPrompts",
        input_schema = types.ListPromptsInput,
        output_schema = types.ListPromptsOutput,
        http_method = "GET",
        http_path = "/prompts/",
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

function Client:prepareAgent(input, options)
    return self:invokeOperation(input, {
        name = "PrepareAgent",
        input_schema = types.PrepareAgentInput,
        output_schema = types.PrepareAgentOutput,
        http_method = "POST",
        http_path = "/agents/{agentId}/",
    }, options)
end

function Client:prepareFlow(input, options)
    return self:invokeOperation(input, {
        name = "PrepareFlow",
        input_schema = types.PrepareFlowInput,
        output_schema = types.PrepareFlowOutput,
        http_method = "POST",
        http_path = "/flows/{flowIdentifier}/",
    }, options)
end

function Client:startIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartIngestionJob",
        input_schema = types.StartIngestionJobInput,
        output_schema = types.StartIngestionJobOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/",
    }, options)
end

function Client:stopIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopIngestionJob",
        input_schema = types.StopIngestionJobInput,
        output_schema = types.StopIngestionJobOutput,
        http_method = "POST",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}/ingestionjobs/{ingestionJobId}/stop",
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

function Client:updateAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgent",
        input_schema = types.UpdateAgentInput,
        output_schema = types.UpdateAgentOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/",
    }, options)
end

function Client:updateAgentActionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentActionGroup",
        input_schema = types.UpdateAgentActionGroupInput,
        output_schema = types.UpdateAgentActionGroupOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/",
    }, options)
end

function Client:updateAgentAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentAlias",
        input_schema = types.UpdateAgentAliasInput,
        output_schema = types.UpdateAgentAliasOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentaliases/{agentAliasId}/",
    }, options)
end

function Client:updateAgentCollaborator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentCollaborator",
        input_schema = types.UpdateAgentCollaboratorInput,
        output_schema = types.UpdateAgentCollaboratorOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/agentcollaborators/{collaboratorId}/",
    }, options)
end

function Client:updateAgentKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentKnowledgeBase",
        input_schema = types.UpdateAgentKnowledgeBaseInput,
        output_schema = types.UpdateAgentKnowledgeBaseOutput,
        http_method = "PUT",
        http_path = "/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/",
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/{knowledgeBaseId}/datasources/{dataSourceId}",
    }, options)
end

function Client:updateFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlow",
        input_schema = types.UpdateFlowInput,
        output_schema = types.UpdateFlowOutput,
        http_method = "PUT",
        http_path = "/flows/{flowIdentifier}/",
    }, options)
end

function Client:updateFlowAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowAlias",
        input_schema = types.UpdateFlowAliasInput,
        output_schema = types.UpdateFlowAliasOutput,
        http_method = "PUT",
        http_path = "/flows/{flowIdentifier}/aliases/{aliasIdentifier}",
    }, options)
end

function Client:updateKnowledgeBase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKnowledgeBase",
        input_schema = types.UpdateKnowledgeBaseInput,
        output_schema = types.UpdateKnowledgeBaseOutput,
        http_method = "PUT",
        http_path = "/knowledgebases/{knowledgeBaseId}",
    }, options)
end

function Client:updatePrompt(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrompt",
        input_schema = types.UpdatePromptInput,
        output_schema = types.UpdatePromptOutput,
        http_method = "PUT",
        http_path = "/prompts/{promptIdentifier}/",
    }, options)
end

function Client:validateFlowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "ValidateFlowDefinition",
        input_schema = types.ValidateFlowDefinitionInput,
        output_schema = types.ValidateFlowDefinitionOutput,
        http_method = "POST",
        http_path = "/flows/validate-definition",
    }, options)
end

return M
