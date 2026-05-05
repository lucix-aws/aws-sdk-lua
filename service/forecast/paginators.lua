local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDatasetGroups.
function M.pages_list_dataset_groups(client, input)
    return paginator.pages(client, "listDatasetGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetGroups",
    })
end

--- Returns an item iterator for listDatasetGroups.
function M.items_list_dataset_groups(client, input)
    return paginator.items(client, "listDatasetGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetGroups",
    })
end

--- Returns a page iterator for listDatasetImportJobs.
function M.pages_list_dataset_import_jobs(client, input)
    return paginator.pages(client, "listDatasetImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetImportJobs",
    })
end

--- Returns an item iterator for listDatasetImportJobs.
function M.items_list_dataset_import_jobs(client, input)
    return paginator.items(client, "listDatasetImportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DatasetImportJobs",
    })
end

--- Returns a page iterator for listDatasets.
function M.pages_list_datasets(client, input)
    return paginator.pages(client, "listDatasets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Datasets",
    })
end

--- Returns an item iterator for listDatasets.
function M.items_list_datasets(client, input)
    return paginator.items(client, "listDatasets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Datasets",
    })
end

--- Returns a page iterator for listExplainabilities.
function M.pages_list_explainabilities(client, input)
    return paginator.pages(client, "listExplainabilities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Explainabilities",
    })
end

--- Returns an item iterator for listExplainabilities.
function M.items_list_explainabilities(client, input)
    return paginator.items(client, "listExplainabilities", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Explainabilities",
    })
end

--- Returns a page iterator for listExplainabilityExports.
function M.pages_list_explainability_exports(client, input)
    return paginator.pages(client, "listExplainabilityExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExplainabilityExports",
    })
end

--- Returns an item iterator for listExplainabilityExports.
function M.items_list_explainability_exports(client, input)
    return paginator.items(client, "listExplainabilityExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExplainabilityExports",
    })
end

--- Returns a page iterator for listForecastExportJobs.
function M.pages_list_forecast_export_jobs(client, input)
    return paginator.pages(client, "listForecastExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ForecastExportJobs",
    })
end

--- Returns an item iterator for listForecastExportJobs.
function M.items_list_forecast_export_jobs(client, input)
    return paginator.items(client, "listForecastExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ForecastExportJobs",
    })
end

--- Returns a page iterator for listForecasts.
function M.pages_list_forecasts(client, input)
    return paginator.pages(client, "listForecasts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Forecasts",
    })
end

--- Returns an item iterator for listForecasts.
function M.items_list_forecasts(client, input)
    return paginator.items(client, "listForecasts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Forecasts",
    })
end

--- Returns a page iterator for listMonitorEvaluations.
function M.pages_list_monitor_evaluations(client, input)
    return paginator.pages(client, "listMonitorEvaluations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PredictorMonitorEvaluations",
    })
end

--- Returns an item iterator for listMonitorEvaluations.
function M.items_list_monitor_evaluations(client, input)
    return paginator.items(client, "listMonitorEvaluations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PredictorMonitorEvaluations",
    })
end

--- Returns a page iterator for listMonitors.
function M.pages_list_monitors(client, input)
    return paginator.pages(client, "listMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Monitors",
    })
end

--- Returns an item iterator for listMonitors.
function M.items_list_monitors(client, input)
    return paginator.items(client, "listMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Monitors",
    })
end

--- Returns a page iterator for listPredictorBacktestExportJobs.
function M.pages_list_predictor_backtest_export_jobs(client, input)
    return paginator.pages(client, "listPredictorBacktestExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PredictorBacktestExportJobs",
    })
end

--- Returns an item iterator for listPredictorBacktestExportJobs.
function M.items_list_predictor_backtest_export_jobs(client, input)
    return paginator.items(client, "listPredictorBacktestExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PredictorBacktestExportJobs",
    })
end

--- Returns a page iterator for listPredictors.
function M.pages_list_predictors(client, input)
    return paginator.pages(client, "listPredictors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Predictors",
    })
end

--- Returns an item iterator for listPredictors.
function M.items_list_predictors(client, input)
    return paginator.items(client, "listPredictors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Predictors",
    })
end

--- Returns a page iterator for listWhatIfAnalyses.
function M.pages_list_what_if_analyses(client, input)
    return paginator.pages(client, "listWhatIfAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfAnalyses",
    })
end

--- Returns an item iterator for listWhatIfAnalyses.
function M.items_list_what_if_analyses(client, input)
    return paginator.items(client, "listWhatIfAnalyses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfAnalyses",
    })
end

--- Returns a page iterator for listWhatIfForecastExports.
function M.pages_list_what_if_forecast_exports(client, input)
    return paginator.pages(client, "listWhatIfForecastExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfForecastExports",
    })
end

--- Returns an item iterator for listWhatIfForecastExports.
function M.items_list_what_if_forecast_exports(client, input)
    return paginator.items(client, "listWhatIfForecastExports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfForecastExports",
    })
end

--- Returns a page iterator for listWhatIfForecasts.
function M.pages_list_what_if_forecasts(client, input)
    return paginator.pages(client, "listWhatIfForecasts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfForecasts",
    })
end

--- Returns an item iterator for listWhatIfForecasts.
function M.items_list_what_if_forecasts(client, input)
    return paginator.items(client, "listWhatIfForecasts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WhatIfForecasts",
    })
end

return M
