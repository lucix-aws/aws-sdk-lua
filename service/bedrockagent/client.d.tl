local types = require("bedrockagent.types")

local record Client
    associateAgentCollaborator: function(Client, types.AssociateAgentCollaboratorInput): types.AssociateAgentCollaboratorOutput, table
    associateAgentKnowledgeBase: function(Client, types.AssociateAgentKnowledgeBaseInput): types.AssociateAgentKnowledgeBaseOutput, table
    createAgent: function(Client, types.CreateAgentInput): types.CreateAgentOutput, table
    createAgentActionGroup: function(Client, types.CreateAgentActionGroupInput): types.CreateAgentActionGroupOutput, table
    createAgentAlias: function(Client, types.CreateAgentAliasInput): types.CreateAgentAliasOutput, table
    createDataSource: function(Client, types.CreateDataSourceInput): types.CreateDataSourceOutput, table
    createFlow: function(Client, types.CreateFlowInput): types.CreateFlowOutput, table
    createFlowAlias: function(Client, types.CreateFlowAliasInput): types.CreateFlowAliasOutput, table
    createFlowVersion: function(Client, types.CreateFlowVersionInput): types.CreateFlowVersionOutput, table
    createKnowledgeBase: function(Client, types.CreateKnowledgeBaseInput): types.CreateKnowledgeBaseOutput, table
    createPrompt: function(Client, types.CreatePromptInput): types.CreatePromptOutput, table
    createPromptVersion: function(Client, types.CreatePromptVersionInput): types.CreatePromptVersionOutput, table
    deleteAgent: function(Client, types.DeleteAgentInput): types.DeleteAgentOutput, table
    deleteAgentActionGroup: function(Client, types.DeleteAgentActionGroupInput): types.DeleteAgentActionGroupOutput, table
    deleteAgentAlias: function(Client, types.DeleteAgentAliasInput): types.DeleteAgentAliasOutput, table
    deleteAgentVersion: function(Client, types.DeleteAgentVersionInput): types.DeleteAgentVersionOutput, table
    deleteDataSource: function(Client, types.DeleteDataSourceInput): types.DeleteDataSourceOutput, table
    deleteFlow: function(Client, types.DeleteFlowInput): types.DeleteFlowOutput, table
    deleteFlowAlias: function(Client, types.DeleteFlowAliasInput): types.DeleteFlowAliasOutput, table
    deleteFlowVersion: function(Client, types.DeleteFlowVersionInput): types.DeleteFlowVersionOutput, table
    deleteKnowledgeBase: function(Client, types.DeleteKnowledgeBaseInput): types.DeleteKnowledgeBaseOutput, table
    deleteKnowledgeBaseDocuments: function(Client, types.DeleteKnowledgeBaseDocumentsInput): types.DeleteKnowledgeBaseDocumentsOutput, table
    deletePrompt: function(Client, types.DeletePromptInput): types.DeletePromptOutput, table
    disassociateAgentCollaborator: function(Client, types.DisassociateAgentCollaboratorInput): types.DisassociateAgentCollaboratorOutput, table
    disassociateAgentKnowledgeBase: function(Client, types.DisassociateAgentKnowledgeBaseInput): types.DisassociateAgentKnowledgeBaseOutput, table
    getAgent: function(Client, types.GetAgentInput): types.GetAgentOutput, table
    getAgentActionGroup: function(Client, types.GetAgentActionGroupInput): types.GetAgentActionGroupOutput, table
    getAgentAlias: function(Client, types.GetAgentAliasInput): types.GetAgentAliasOutput, table
    getAgentCollaborator: function(Client, types.GetAgentCollaboratorInput): types.GetAgentCollaboratorOutput, table
    getAgentKnowledgeBase: function(Client, types.GetAgentKnowledgeBaseInput): types.GetAgentKnowledgeBaseOutput, table
    getAgentVersion: function(Client, types.GetAgentVersionInput): types.GetAgentVersionOutput, table
    getDataSource: function(Client, types.GetDataSourceInput): types.GetDataSourceOutput, table
    getFlow: function(Client, types.GetFlowInput): types.GetFlowOutput, table
    getFlowAlias: function(Client, types.GetFlowAliasInput): types.GetFlowAliasOutput, table
    getFlowVersion: function(Client, types.GetFlowVersionInput): types.GetFlowVersionOutput, table
    getIngestionJob: function(Client, types.GetIngestionJobInput): types.GetIngestionJobOutput, table
    getKnowledgeBase: function(Client, types.GetKnowledgeBaseInput): types.GetKnowledgeBaseOutput, table
    getKnowledgeBaseDocuments: function(Client, types.GetKnowledgeBaseDocumentsInput): types.GetKnowledgeBaseDocumentsOutput, table
    getPrompt: function(Client, types.GetPromptInput): types.GetPromptOutput, table
    ingestKnowledgeBaseDocuments: function(Client, types.IngestKnowledgeBaseDocumentsInput): types.IngestKnowledgeBaseDocumentsOutput, table
    listAgentActionGroups: function(Client, types.ListAgentActionGroupsInput): types.ListAgentActionGroupsOutput, table
    listAgentAliases: function(Client, types.ListAgentAliasesInput): types.ListAgentAliasesOutput, table
    listAgentCollaborators: function(Client, types.ListAgentCollaboratorsInput): types.ListAgentCollaboratorsOutput, table
    listAgentKnowledgeBases: function(Client, types.ListAgentKnowledgeBasesInput): types.ListAgentKnowledgeBasesOutput, table
    listAgents: function(Client, types.ListAgentsInput): types.ListAgentsOutput, table
    listAgentVersions: function(Client, types.ListAgentVersionsInput): types.ListAgentVersionsOutput, table
    listDataSources: function(Client, types.ListDataSourcesInput): types.ListDataSourcesOutput, table
    listFlowAliases: function(Client, types.ListFlowAliasesInput): types.ListFlowAliasesOutput, table
    listFlows: function(Client, types.ListFlowsInput): types.ListFlowsOutput, table
    listFlowVersions: function(Client, types.ListFlowVersionsInput): types.ListFlowVersionsOutput, table
    listIngestionJobs: function(Client, types.ListIngestionJobsInput): types.ListIngestionJobsOutput, table
    listKnowledgeBaseDocuments: function(Client, types.ListKnowledgeBaseDocumentsInput): types.ListKnowledgeBaseDocumentsOutput, table
    listKnowledgeBases: function(Client, types.ListKnowledgeBasesInput): types.ListKnowledgeBasesOutput, table
    listPrompts: function(Client, types.ListPromptsInput): types.ListPromptsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    prepareAgent: function(Client, types.PrepareAgentInput): types.PrepareAgentOutput, table
    prepareFlow: function(Client, types.PrepareFlowInput): types.PrepareFlowOutput, table
    startIngestionJob: function(Client, types.StartIngestionJobInput): types.StartIngestionJobOutput, table
    stopIngestionJob: function(Client, types.StopIngestionJobInput): types.StopIngestionJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAgent: function(Client, types.UpdateAgentInput): types.UpdateAgentOutput, table
    updateAgentActionGroup: function(Client, types.UpdateAgentActionGroupInput): types.UpdateAgentActionGroupOutput, table
    updateAgentAlias: function(Client, types.UpdateAgentAliasInput): types.UpdateAgentAliasOutput, table
    updateAgentCollaborator: function(Client, types.UpdateAgentCollaboratorInput): types.UpdateAgentCollaboratorOutput, table
    updateAgentKnowledgeBase: function(Client, types.UpdateAgentKnowledgeBaseInput): types.UpdateAgentKnowledgeBaseOutput, table
    updateDataSource: function(Client, types.UpdateDataSourceInput): types.UpdateDataSourceOutput, table
    updateFlow: function(Client, types.UpdateFlowInput): types.UpdateFlowOutput, table
    updateFlowAlias: function(Client, types.UpdateFlowAliasInput): types.UpdateFlowAliasOutput, table
    updateKnowledgeBase: function(Client, types.UpdateKnowledgeBaseInput): types.UpdateKnowledgeBaseOutput, table
    updatePrompt: function(Client, types.UpdatePromptInput): types.UpdatePromptOutput, table
    validateFlowDefinition: function(Client, types.ValidateFlowDefinitionInput): types.ValidateFlowDefinitionOutput, table
end

local record M
    new: function(table): Client
end

return M
