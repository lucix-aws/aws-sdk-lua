local types = require("route53recoveryreadiness.types")

local record Client
    createCell: function(Client, types.CreateCellInput): types.CreateCellOutput, table
    createCrossAccountAuthorization: function(Client, types.CreateCrossAccountAuthorizationInput): types.CreateCrossAccountAuthorizationOutput, table
    createReadinessCheck: function(Client, types.CreateReadinessCheckInput): types.CreateReadinessCheckOutput, table
    createRecoveryGroup: function(Client, types.CreateRecoveryGroupInput): types.CreateRecoveryGroupOutput, table
    createResourceSet: function(Client, types.CreateResourceSetInput): types.CreateResourceSetOutput, table
    deleteCell: function(Client, types.DeleteCellInput): types.DeleteCellOutput, table
    deleteCrossAccountAuthorization: function(Client, types.DeleteCrossAccountAuthorizationInput): types.DeleteCrossAccountAuthorizationOutput, table
    deleteReadinessCheck: function(Client, types.DeleteReadinessCheckInput): types.DeleteReadinessCheckOutput, table
    deleteRecoveryGroup: function(Client, types.DeleteRecoveryGroupInput): types.DeleteRecoveryGroupOutput, table
    deleteResourceSet: function(Client, types.DeleteResourceSetInput): types.DeleteResourceSetOutput, table
    getArchitectureRecommendations: function(Client, types.GetArchitectureRecommendationsInput): types.GetArchitectureRecommendationsOutput, table
    getCell: function(Client, types.GetCellInput): types.GetCellOutput, table
    getCellReadinessSummary: function(Client, types.GetCellReadinessSummaryInput): types.GetCellReadinessSummaryOutput, table
    getReadinessCheck: function(Client, types.GetReadinessCheckInput): types.GetReadinessCheckOutput, table
    getReadinessCheckResourceStatus: function(Client, types.GetReadinessCheckResourceStatusInput): types.GetReadinessCheckResourceStatusOutput, table
    getReadinessCheckStatus: function(Client, types.GetReadinessCheckStatusInput): types.GetReadinessCheckStatusOutput, table
    getRecoveryGroup: function(Client, types.GetRecoveryGroupInput): types.GetRecoveryGroupOutput, table
    getRecoveryGroupReadinessSummary: function(Client, types.GetRecoveryGroupReadinessSummaryInput): types.GetRecoveryGroupReadinessSummaryOutput, table
    getResourceSet: function(Client, types.GetResourceSetInput): types.GetResourceSetOutput, table
    listCells: function(Client, types.ListCellsInput): types.ListCellsOutput, table
    listCrossAccountAuthorizations: function(Client, types.ListCrossAccountAuthorizationsInput): types.ListCrossAccountAuthorizationsOutput, table
    listReadinessChecks: function(Client, types.ListReadinessChecksInput): types.ListReadinessChecksOutput, table
    listRecoveryGroups: function(Client, types.ListRecoveryGroupsInput): types.ListRecoveryGroupsOutput, table
    listResourceSets: function(Client, types.ListResourceSetsInput): types.ListResourceSetsOutput, table
    listRules: function(Client, types.ListRulesInput): types.ListRulesOperationOutput, table
    listTagsForResources: function(Client, types.ListTagsForResourcesInput): types.ListTagsForResourcesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCell: function(Client, types.UpdateCellInput): types.UpdateCellOutput, table
    updateReadinessCheck: function(Client, types.UpdateReadinessCheckInput): types.UpdateReadinessCheckOutput, table
    updateRecoveryGroup: function(Client, types.UpdateRecoveryGroupInput): types.UpdateRecoveryGroupOutput, table
    updateResourceSet: function(Client, types.UpdateResourceSetInput): types.UpdateResourceSetOutput, table
end

local record M
    new: function(table): Client
end

return M
