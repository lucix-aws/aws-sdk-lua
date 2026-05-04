local types = require("forecast.types")

local record Client
    createAutoPredictor: function(Client, types.CreateAutoPredictorInput): types.CreateAutoPredictorOutput, table
    createDataset: function(Client, types.CreateDatasetInput): types.CreateDatasetOutput, table
    createDatasetGroup: function(Client, types.CreateDatasetGroupInput): types.CreateDatasetGroupOutput, table
    createDatasetImportJob: function(Client, types.CreateDatasetImportJobInput): types.CreateDatasetImportJobOutput, table
    createExplainability: function(Client, types.CreateExplainabilityInput): types.CreateExplainabilityOutput, table
    createExplainabilityExport: function(Client, types.CreateExplainabilityExportInput): types.CreateExplainabilityExportOutput, table
    createForecast: function(Client, types.CreateForecastInput): types.CreateForecastOutput, table
    createForecastExportJob: function(Client, types.CreateForecastExportJobInput): types.CreateForecastExportJobOutput, table
    createMonitor: function(Client, types.CreateMonitorInput): types.CreateMonitorOutput, table
    createPredictor: function(Client, types.CreatePredictorInput): types.CreatePredictorOutput, table
    createPredictorBacktestExportJob: function(Client, types.CreatePredictorBacktestExportJobInput): types.CreatePredictorBacktestExportJobOutput, table
    createWhatIfAnalysis: function(Client, types.CreateWhatIfAnalysisInput): types.CreateWhatIfAnalysisOutput, table
    createWhatIfForecast: function(Client, types.CreateWhatIfForecastInput): types.CreateWhatIfForecastOutput, table
    createWhatIfForecastExport: function(Client, types.CreateWhatIfForecastExportInput): types.CreateWhatIfForecastExportOutput, table
    deleteDataset: function(Client, types.DeleteDatasetInput): types.DeleteDatasetOutput, table
    deleteDatasetGroup: function(Client, types.DeleteDatasetGroupInput): types.DeleteDatasetGroupOutput, table
    deleteDatasetImportJob: function(Client, types.DeleteDatasetImportJobInput): types.DeleteDatasetImportJobOutput, table
    deleteExplainability: function(Client, types.DeleteExplainabilityInput): types.DeleteExplainabilityOutput, table
    deleteExplainabilityExport: function(Client, types.DeleteExplainabilityExportInput): types.DeleteExplainabilityExportOutput, table
    deleteForecast: function(Client, types.DeleteForecastInput): types.DeleteForecastOutput, table
    deleteForecastExportJob: function(Client, types.DeleteForecastExportJobInput): types.DeleteForecastExportJobOutput, table
    deleteMonitor: function(Client, types.DeleteMonitorInput): types.DeleteMonitorOutput, table
    deletePredictor: function(Client, types.DeletePredictorInput): types.DeletePredictorOutput, table
    deletePredictorBacktestExportJob: function(Client, types.DeletePredictorBacktestExportJobInput): types.DeletePredictorBacktestExportJobOutput, table
    deleteResourceTree: function(Client, types.DeleteResourceTreeInput): types.DeleteResourceTreeOutput, table
    deleteWhatIfAnalysis: function(Client, types.DeleteWhatIfAnalysisInput): types.DeleteWhatIfAnalysisOutput, table
    deleteWhatIfForecast: function(Client, types.DeleteWhatIfForecastInput): types.DeleteWhatIfForecastOutput, table
    deleteWhatIfForecastExport: function(Client, types.DeleteWhatIfForecastExportInput): types.DeleteWhatIfForecastExportOutput, table
    describeAutoPredictor: function(Client, types.DescribeAutoPredictorInput): types.DescribeAutoPredictorOutput, table
    describeDataset: function(Client, types.DescribeDatasetInput): types.DescribeDatasetOutput, table
    describeDatasetGroup: function(Client, types.DescribeDatasetGroupInput): types.DescribeDatasetGroupOutput, table
    describeDatasetImportJob: function(Client, types.DescribeDatasetImportJobInput): types.DescribeDatasetImportJobOutput, table
    describeExplainability: function(Client, types.DescribeExplainabilityInput): types.DescribeExplainabilityOutput, table
    describeExplainabilityExport: function(Client, types.DescribeExplainabilityExportInput): types.DescribeExplainabilityExportOutput, table
    describeForecast: function(Client, types.DescribeForecastInput): types.DescribeForecastOutput, table
    describeForecastExportJob: function(Client, types.DescribeForecastExportJobInput): types.DescribeForecastExportJobOutput, table
    describeMonitor: function(Client, types.DescribeMonitorInput): types.DescribeMonitorOutput, table
    describePredictor: function(Client, types.DescribePredictorInput): types.DescribePredictorOutput, table
    describePredictorBacktestExportJob: function(Client, types.DescribePredictorBacktestExportJobInput): types.DescribePredictorBacktestExportJobOutput, table
    describeWhatIfAnalysis: function(Client, types.DescribeWhatIfAnalysisInput): types.DescribeWhatIfAnalysisOutput, table
    describeWhatIfForecast: function(Client, types.DescribeWhatIfForecastInput): types.DescribeWhatIfForecastOutput, table
    describeWhatIfForecastExport: function(Client, types.DescribeWhatIfForecastExportInput): types.DescribeWhatIfForecastExportOutput, table
    getAccuracyMetrics: function(Client, types.GetAccuracyMetricsInput): types.GetAccuracyMetricsOutput, table
    listDatasetGroups: function(Client, types.ListDatasetGroupsInput): types.ListDatasetGroupsOutput, table
    listDatasetImportJobs: function(Client, types.ListDatasetImportJobsInput): types.ListDatasetImportJobsOutput, table
    listDatasets: function(Client, types.ListDatasetsInput): types.ListDatasetsOutput, table
    listExplainabilities: function(Client, types.ListExplainabilitiesInput): types.ListExplainabilitiesOutput, table
    listExplainabilityExports: function(Client, types.ListExplainabilityExportsInput): types.ListExplainabilityExportsOutput, table
    listForecastExportJobs: function(Client, types.ListForecastExportJobsInput): types.ListForecastExportJobsOutput, table
    listForecasts: function(Client, types.ListForecastsInput): types.ListForecastsOutput, table
    listMonitorEvaluations: function(Client, types.ListMonitorEvaluationsInput): types.ListMonitorEvaluationsOutput, table
    listMonitors: function(Client, types.ListMonitorsInput): types.ListMonitorsOutput, table
    listPredictorBacktestExportJobs: function(Client, types.ListPredictorBacktestExportJobsInput): types.ListPredictorBacktestExportJobsOutput, table
    listPredictors: function(Client, types.ListPredictorsInput): types.ListPredictorsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWhatIfAnalyses: function(Client, types.ListWhatIfAnalysesInput): types.ListWhatIfAnalysesOutput, table
    listWhatIfForecastExports: function(Client, types.ListWhatIfForecastExportsInput): types.ListWhatIfForecastExportsOutput, table
    listWhatIfForecasts: function(Client, types.ListWhatIfForecastsInput): types.ListWhatIfForecastsOutput, table
    resumeResource: function(Client, types.ResumeResourceInput): types.ResumeResourceOutput, table
    stopResource: function(Client, types.StopResourceInput): types.StopResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDatasetGroup: function(Client, types.UpdateDatasetGroupInput): types.UpdateDatasetGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
