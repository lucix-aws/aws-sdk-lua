local types = require("qconnect.types")

local record Client
    activateMessageTemplate: function(Client, types.ActivateMessageTemplateInput): types.ActivateMessageTemplateOutput, table
    createAIAgent: function(Client, types.CreateAIAgentInput): types.CreateAIAgentOutput, table
    createAIAgentVersion: function(Client, types.CreateAIAgentVersionInput): types.CreateAIAgentVersionOutput, table
    createAIGuardrail: function(Client, types.CreateAIGuardrailInput): types.CreateAIGuardrailOutput, table
    createAIGuardrailVersion: function(Client, types.CreateAIGuardrailVersionInput): types.CreateAIGuardrailVersionOutput, table
    createAIPrompt: function(Client, types.CreateAIPromptInput): types.CreateAIPromptOutput, table
    createAIPromptVersion: function(Client, types.CreateAIPromptVersionInput): types.CreateAIPromptVersionOutput, table
    createAssistant: function(Client, types.CreateAssistantInput): types.CreateAssistantOutput, table
    createAssistantAssociation: function(Client, types.CreateAssistantAssociationInput): types.CreateAssistantAssociationOutput, table
    createContent: function(Client, types.CreateContentInput): types.CreateContentOutput, table
    createContentAssociation: function(Client, types.CreateContentAssociationInput): types.CreateContentAssociationOutput, table
    createKnowledgeBase: function(Client, types.CreateKnowledgeBaseInput): types.CreateKnowledgeBaseOutput, table
    createMessageTemplate: function(Client, types.CreateMessageTemplateInput): types.CreateMessageTemplateOutput, table
    createMessageTemplateAttachment: function(Client, types.CreateMessageTemplateAttachmentInput): types.CreateMessageTemplateAttachmentOutput, table
    createMessageTemplateVersion: function(Client, types.CreateMessageTemplateVersionInput): types.CreateMessageTemplateVersionOutput, table
    createQuickResponse: function(Client, types.CreateQuickResponseInput): types.CreateQuickResponseOutput, table
    createSession: function(Client, types.CreateSessionInput): types.CreateSessionOutput, table
    deactivateMessageTemplate: function(Client, types.DeactivateMessageTemplateInput): types.DeactivateMessageTemplateOutput, table
    deleteAIAgent: function(Client, types.DeleteAIAgentInput): types.DeleteAIAgentOutput, table
    deleteAIAgentVersion: function(Client, types.DeleteAIAgentVersionInput): types.DeleteAIAgentVersionOutput, table
    deleteAIGuardrail: function(Client, types.DeleteAIGuardrailInput): types.DeleteAIGuardrailOutput, table
    deleteAIGuardrailVersion: function(Client, types.DeleteAIGuardrailVersionInput): types.DeleteAIGuardrailVersionOutput, table
    deleteAIPrompt: function(Client, types.DeleteAIPromptInput): types.DeleteAIPromptOutput, table
    deleteAIPromptVersion: function(Client, types.DeleteAIPromptVersionInput): types.DeleteAIPromptVersionOutput, table
    deleteAssistant: function(Client, types.DeleteAssistantInput): types.DeleteAssistantOutput, table
    deleteAssistantAssociation: function(Client, types.DeleteAssistantAssociationInput): types.DeleteAssistantAssociationOutput, table
    deleteContent: function(Client, types.DeleteContentInput): types.DeleteContentOutput, table
    deleteContentAssociation: function(Client, types.DeleteContentAssociationInput): types.DeleteContentAssociationOutput, table
    deleteImportJob: function(Client, types.DeleteImportJobInput): types.DeleteImportJobOutput, table
    deleteKnowledgeBase: function(Client, types.DeleteKnowledgeBaseInput): types.DeleteKnowledgeBaseOutput, table
    deleteMessageTemplate: function(Client, types.DeleteMessageTemplateInput): types.DeleteMessageTemplateOutput, table
    deleteMessageTemplateAttachment: function(Client, types.DeleteMessageTemplateAttachmentInput): types.DeleteMessageTemplateAttachmentOutput, table
    deleteQuickResponse: function(Client, types.DeleteQuickResponseInput): types.DeleteQuickResponseOutput, table
    getAIAgent: function(Client, types.GetAIAgentInput): types.GetAIAgentOutput, table
    getAIGuardrail: function(Client, types.GetAIGuardrailInput): types.GetAIGuardrailOutput, table
    getAIPrompt: function(Client, types.GetAIPromptInput): types.GetAIPromptOutput, table
    getAssistant: function(Client, types.GetAssistantInput): types.GetAssistantOutput, table
    getAssistantAssociation: function(Client, types.GetAssistantAssociationInput): types.GetAssistantAssociationOutput, table
    getContent: function(Client, types.GetContentInput): types.GetContentOutput, table
    getContentAssociation: function(Client, types.GetContentAssociationInput): types.GetContentAssociationOutput, table
    getContentSummary: function(Client, types.GetContentSummaryInput): types.GetContentSummaryOutput, table
    getImportJob: function(Client, types.GetImportJobInput): types.GetImportJobOutput, table
    getKnowledgeBase: function(Client, types.GetKnowledgeBaseInput): types.GetKnowledgeBaseOutput, table
    getMessageTemplate: function(Client, types.GetMessageTemplateInput): types.GetMessageTemplateOutput, table
    getNextMessage: function(Client, types.GetNextMessageInput): types.GetNextMessageOutput, table
    getQuickResponse: function(Client, types.GetQuickResponseInput): types.GetQuickResponseOutput, table
    getRecommendations: function(Client, types.GetRecommendationsInput): types.GetRecommendationsOutput, table
    getSession: function(Client, types.GetSessionInput): types.GetSessionOutput, table
    listAIAgents: function(Client, types.ListAIAgentsInput): types.ListAIAgentsOutput, table
    listAIAgentVersions: function(Client, types.ListAIAgentVersionsInput): types.ListAIAgentVersionsOutput, table
    listAIGuardrails: function(Client, types.ListAIGuardrailsInput): types.ListAIGuardrailsOutput, table
    listAIGuardrailVersions: function(Client, types.ListAIGuardrailVersionsInput): types.ListAIGuardrailVersionsOutput, table
    listAIPrompts: function(Client, types.ListAIPromptsInput): types.ListAIPromptsOutput, table
    listAIPromptVersions: function(Client, types.ListAIPromptVersionsInput): types.ListAIPromptVersionsOutput, table
    listAssistantAssociations: function(Client, types.ListAssistantAssociationsInput): types.ListAssistantAssociationsOutput, table
    listAssistants: function(Client, types.ListAssistantsInput): types.ListAssistantsOutput, table
    listContentAssociations: function(Client, types.ListContentAssociationsInput): types.ListContentAssociationsOutput, table
    listContents: function(Client, types.ListContentsInput): types.ListContentsOutput, table
    listImportJobs: function(Client, types.ListImportJobsInput): types.ListImportJobsOutput, table
    listKnowledgeBases: function(Client, types.ListKnowledgeBasesInput): types.ListKnowledgeBasesOutput, table
    listMessages: function(Client, types.ListMessagesInput): types.ListMessagesOutput, table
    listMessageTemplates: function(Client, types.ListMessageTemplatesInput): types.ListMessageTemplatesOutput, table
    listMessageTemplateVersions: function(Client, types.ListMessageTemplateVersionsInput): types.ListMessageTemplateVersionsOutput, table
    listQuickResponses: function(Client, types.ListQuickResponsesInput): types.ListQuickResponsesOutput, table
    listSpans: function(Client, types.ListSpansInput): types.ListSpansOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    notifyRecommendationsReceived: function(Client, types.NotifyRecommendationsReceivedInput): types.NotifyRecommendationsReceivedOutput, table
    putFeedback: function(Client, types.PutFeedbackInput): types.PutFeedbackOutput, table
    queryAssistant: function(Client, types.QueryAssistantInput): types.QueryAssistantOutput, table
    removeAssistantAIAgent: function(Client, types.RemoveAssistantAIAgentInput): types.RemoveAssistantAIAgentOutput, table
    removeKnowledgeBaseTemplateUri: function(Client, types.RemoveKnowledgeBaseTemplateUriInput): types.RemoveKnowledgeBaseTemplateUriOutput, table
    renderMessageTemplate: function(Client, types.RenderMessageTemplateInput): types.RenderMessageTemplateOutput, table
    retrieve: function(Client, types.RetrieveInput): types.RetrieveOutput, table
    searchContent: function(Client, types.SearchContentInput): types.SearchContentOutput, table
    searchMessageTemplates: function(Client, types.SearchMessageTemplatesInput): types.SearchMessageTemplatesOutput, table
    searchQuickResponses: function(Client, types.SearchQuickResponsesInput): types.SearchQuickResponsesOutput, table
    searchSessions: function(Client, types.SearchSessionsInput): types.SearchSessionsOutput, table
    sendMessage: function(Client, types.SendMessageInput): types.SendMessageOutput, table
    startContentUpload: function(Client, types.StartContentUploadInput): types.StartContentUploadOutput, table
    startImportJob: function(Client, types.StartImportJobInput): types.StartImportJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAIAgent: function(Client, types.UpdateAIAgentInput): types.UpdateAIAgentOutput, table
    updateAIGuardrail: function(Client, types.UpdateAIGuardrailInput): types.UpdateAIGuardrailOutput, table
    updateAIPrompt: function(Client, types.UpdateAIPromptInput): types.UpdateAIPromptOutput, table
    updateAssistantAIAgent: function(Client, types.UpdateAssistantAIAgentInput): types.UpdateAssistantAIAgentOutput, table
    updateContent: function(Client, types.UpdateContentInput): types.UpdateContentOutput, table
    updateKnowledgeBaseTemplateUri: function(Client, types.UpdateKnowledgeBaseTemplateUriInput): types.UpdateKnowledgeBaseTemplateUriOutput, table
    updateMessageTemplate: function(Client, types.UpdateMessageTemplateInput): types.UpdateMessageTemplateOutput, table
    updateMessageTemplateMetadata: function(Client, types.UpdateMessageTemplateMetadataInput): types.UpdateMessageTemplateMetadataOutput, table
    updateQuickResponse: function(Client, types.UpdateQuickResponseInput): types.UpdateQuickResponseOutput, table
    updateSession: function(Client, types.UpdateSessionInput): types.UpdateSessionOutput, table
    updateSessionData: function(Client, types.UpdateSessionDataInput): types.UpdateSessionDataOutput, table
end

local record M
    new: function(table): Client
end

return M
