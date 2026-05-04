local types = require("migrationhuborchestrator.types")

local record Client
    createTemplate: function(Client, types.CreateTemplateInput): types.CreateTemplateOutput, table
    createWorkflow: function(Client, types.CreateWorkflowInput): types.CreateWorkflowOutput, table
    createWorkflowStep: function(Client, types.CreateWorkflowStepInput): types.CreateWorkflowStepOutput, table
    createWorkflowStepGroup: function(Client, types.CreateWorkflowStepGroupInput): types.CreateWorkflowStepGroupOutput, table
    deleteTemplate: function(Client, types.DeleteTemplateInput): types.DeleteTemplateOutput, table
    deleteWorkflow: function(Client, types.DeleteWorkflowInput): types.DeleteWorkflowOutput, table
    deleteWorkflowStep: function(Client, types.DeleteWorkflowStepInput): types.DeleteWorkflowStepOutput, table
    deleteWorkflowStepGroup: function(Client, types.DeleteWorkflowStepGroupInput): types.DeleteWorkflowStepGroupOutput, table
    getTemplate: function(Client, types.GetTemplateInput): types.GetTemplateOutput, table
    getTemplateStep: function(Client, types.GetTemplateStepInput): types.GetTemplateStepOutput, table
    getTemplateStepGroup: function(Client, types.GetTemplateStepGroupInput): types.GetTemplateStepGroupOutput, table
    getWorkflow: function(Client, types.GetWorkflowInput): types.GetWorkflowOutput, table
    getWorkflowStep: function(Client, types.GetWorkflowStepInput): types.GetWorkflowStepOutput, table
    getWorkflowStepGroup: function(Client, types.GetWorkflowStepGroupInput): types.GetWorkflowStepGroupOutput, table
    listPlugins: function(Client, types.ListPluginsInput): types.ListPluginsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTemplates: function(Client, types.ListTemplatesInput): types.ListTemplatesOutput, table
    listTemplateStepGroups: function(Client, types.ListTemplateStepGroupsInput): types.ListTemplateStepGroupsOutput, table
    listTemplateSteps: function(Client, types.ListTemplateStepsInput): types.ListTemplateStepsOutput, table
    listWorkflows: function(Client, types.ListWorkflowsInput): types.ListWorkflowsOutput, table
    listWorkflowStepGroups: function(Client, types.ListWorkflowStepGroupsInput): types.ListWorkflowStepGroupsOutput, table
    listWorkflowSteps: function(Client, types.ListWorkflowStepsInput): types.ListWorkflowStepsOutput, table
    retryWorkflowStep: function(Client, types.RetryWorkflowStepInput): types.RetryWorkflowStepOutput, table
    startWorkflow: function(Client, types.StartWorkflowInput): types.StartWorkflowOutput, table
    stopWorkflow: function(Client, types.StopWorkflowInput): types.StopWorkflowOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateTemplate: function(Client, types.UpdateTemplateInput): types.UpdateTemplateOutput, table
    updateWorkflow: function(Client, types.UpdateWorkflowInput): types.UpdateWorkflowOutput, table
    updateWorkflowStep: function(Client, types.UpdateWorkflowStepInput): types.UpdateWorkflowStepOutput, table
    updateWorkflowStepGroup: function(Client, types.UpdateWorkflowStepGroupInput): types.UpdateWorkflowStepGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
