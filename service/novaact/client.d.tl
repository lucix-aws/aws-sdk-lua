local types = require("novaact.types")

local record Client
    createAct: function(Client, types.CreateActInput): types.CreateActOutput, table
    createSession: function(Client, types.CreateSessionInput): types.CreateSessionOutput, table
    createWorkflowDefinition: function(Client, types.CreateWorkflowDefinitionInput): types.CreateWorkflowDefinitionOutput, table
    createWorkflowRun: function(Client, types.CreateWorkflowRunInput): types.CreateWorkflowRunOutput, table
    deleteWorkflowDefinition: function(Client, types.DeleteWorkflowDefinitionInput): types.DeleteWorkflowDefinitionOutput, table
    deleteWorkflowRun: function(Client, types.DeleteWorkflowRunInput): types.DeleteWorkflowRunOutput, table
    getWorkflowDefinition: function(Client, types.GetWorkflowDefinitionInput): types.GetWorkflowDefinitionOutput, table
    getWorkflowRun: function(Client, types.GetWorkflowRunInput): types.GetWorkflowRunOutput, table
    invokeActStep: function(Client, types.InvokeActStepInput): types.InvokeActStepOutput, table
    listActs: function(Client, types.ListActsInput): types.ListActsOutput, table
    listModels: function(Client, types.ListModelsInput): types.ListModelsOutput, table
    listSessions: function(Client, types.ListSessionsInput): types.ListSessionsOutput, table
    listWorkflowDefinitions: function(Client, types.ListWorkflowDefinitionsInput): types.ListWorkflowDefinitionsOutput, table
    listWorkflowRuns: function(Client, types.ListWorkflowRunsInput): types.ListWorkflowRunsOutput, table
    updateAct: function(Client, types.UpdateActInput): types.UpdateActOutput, table
    updateWorkflowRun: function(Client, types.UpdateWorkflowRunInput): types.UpdateWorkflowRunOutput, table
end

local record M
    new: function(table): Client
end

return M
