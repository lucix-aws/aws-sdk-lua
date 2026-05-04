local types = require("bedrockdataautomation.types")

local record Client
    copyBlueprintStage: function(Client, types.CopyBlueprintStageInput): types.CopyBlueprintStageOutput, table
    createBlueprint: function(Client, types.CreateBlueprintInput): types.CreateBlueprintOutput, table
    createBlueprintVersion: function(Client, types.CreateBlueprintVersionInput): types.CreateBlueprintVersionOutput, table
    createDataAutomationLibrary: function(Client, types.CreateDataAutomationLibraryInput): types.CreateDataAutomationLibraryOutput, table
    createDataAutomationProject: function(Client, types.CreateDataAutomationProjectInput): types.CreateDataAutomationProjectOutput, table
    deleteBlueprint: function(Client, types.DeleteBlueprintInput): types.DeleteBlueprintOutput, table
    deleteDataAutomationLibrary: function(Client, types.DeleteDataAutomationLibraryInput): types.DeleteDataAutomationLibraryOutput, table
    deleteDataAutomationProject: function(Client, types.DeleteDataAutomationProjectInput): types.DeleteDataAutomationProjectOutput, table
    getBlueprint: function(Client, types.GetBlueprintInput): types.GetBlueprintOutput, table
    getBlueprintOptimizationStatus: function(Client, types.GetBlueprintOptimizationStatusInput): types.GetBlueprintOptimizationStatusOutput, table
    getDataAutomationLibrary: function(Client, types.GetDataAutomationLibraryInput): types.GetDataAutomationLibraryOutput, table
    getDataAutomationLibraryEntity: function(Client, types.GetDataAutomationLibraryEntityInput): types.GetDataAutomationLibraryEntityOutput, table
    getDataAutomationLibraryIngestionJob: function(Client, types.GetDataAutomationLibraryIngestionJobInput): types.GetDataAutomationLibraryIngestionJobOutput, table
    getDataAutomationProject: function(Client, types.GetDataAutomationProjectInput): types.GetDataAutomationProjectOutput, table
    invokeBlueprintOptimizationAsync: function(Client, types.InvokeBlueprintOptimizationAsyncInput): types.InvokeBlueprintOptimizationAsyncOutput, table
    invokeDataAutomationLibraryIngestionJob: function(Client, types.InvokeDataAutomationLibraryIngestionJobInput): types.InvokeDataAutomationLibraryIngestionJobOutput, table
    listBlueprints: function(Client, types.ListBlueprintsInput): types.ListBlueprintsOutput, table
    listDataAutomationLibraries: function(Client, types.ListDataAutomationLibrariesInput): types.ListDataAutomationLibrariesOutput, table
    listDataAutomationLibraryEntities: function(Client, types.ListDataAutomationLibraryEntitiesInput): types.ListDataAutomationLibraryEntitiesOutput, table
    listDataAutomationLibraryIngestionJobs: function(Client, types.ListDataAutomationLibraryIngestionJobsInput): types.ListDataAutomationLibraryIngestionJobsOutput, table
    listDataAutomationProjects: function(Client, types.ListDataAutomationProjectsInput): types.ListDataAutomationProjectsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateBlueprint: function(Client, types.UpdateBlueprintInput): types.UpdateBlueprintOutput, table
    updateDataAutomationLibrary: function(Client, types.UpdateDataAutomationLibraryInput): types.UpdateDataAutomationLibraryOutput, table
    updateDataAutomationProject: function(Client, types.UpdateDataAutomationProjectInput): types.UpdateDataAutomationProjectOutput, table
end

local record M
    new: function(table): Client
end

return M
