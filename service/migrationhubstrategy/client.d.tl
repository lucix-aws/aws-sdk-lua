local types = require("migrationhubstrategy.types")

local record Client
    getApplicationComponentDetails: function(Client, types.GetApplicationComponentDetailsInput): types.GetApplicationComponentDetailsOutput, table
    getApplicationComponentStrategies: function(Client, types.GetApplicationComponentStrategiesInput): types.GetApplicationComponentStrategiesOutput, table
    getAssessment: function(Client, types.GetAssessmentInput): types.GetAssessmentOutput, table
    getImportFileTask: function(Client, types.GetImportFileTaskInput): types.GetImportFileTaskOutput, table
    getLatestAssessmentId: function(Client, types.GetLatestAssessmentIdInput): types.GetLatestAssessmentIdOutput, table
    getPortfolioPreferences: function(Client, types.GetPortfolioPreferencesInput): types.GetPortfolioPreferencesOutput, table
    getPortfolioSummary: function(Client, types.GetPortfolioSummaryInput): types.GetPortfolioSummaryOutput, table
    getRecommendationReportDetails: function(Client, types.GetRecommendationReportDetailsInput): types.GetRecommendationReportDetailsOutput, table
    getServerDetails: function(Client, types.GetServerDetailsInput): types.GetServerDetailsOutput, table
    getServerStrategies: function(Client, types.GetServerStrategiesInput): types.GetServerStrategiesOutput, table
    listAnalyzableServers: function(Client, types.ListAnalyzableServersInput): types.ListAnalyzableServersOutput, table
    listApplicationComponents: function(Client, types.ListApplicationComponentsInput): types.ListApplicationComponentsOutput, table
    listCollectors: function(Client, types.ListCollectorsInput): types.ListCollectorsOutput, table
    listImportFileTask: function(Client, types.ListImportFileTaskInput): types.ListImportFileTaskOutput, table
    listServers: function(Client, types.ListServersInput): types.ListServersOutput, table
    putPortfolioPreferences: function(Client, types.PutPortfolioPreferencesInput): types.PutPortfolioPreferencesOutput, table
    startAssessment: function(Client, types.StartAssessmentInput): types.StartAssessmentOutput, table
    startImportFileTask: function(Client, types.StartImportFileTaskInput): types.StartImportFileTaskOutput, table
    startRecommendationReportGeneration: function(Client, types.StartRecommendationReportGenerationInput): types.StartRecommendationReportGenerationOutput, table
    stopAssessment: function(Client, types.StopAssessmentInput): types.StopAssessmentOutput, table
    updateApplicationComponentConfig: function(Client, types.UpdateApplicationComponentConfigInput): types.UpdateApplicationComponentConfigOutput, table
    updateServerConfig: function(Client, types.UpdateServerConfigInput): types.UpdateServerConfigOutput, table
end

local record M
    new: function(table): Client
end

return M
