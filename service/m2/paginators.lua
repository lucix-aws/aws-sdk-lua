local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApplicationVersions.
function M.pages_list_application_versions(client, input)
    return paginator.pages(client, "listApplicationVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applicationVersions",
    })
end

--- Returns an item iterator for listApplicationVersions.
function M.items_list_application_versions(client, input)
    return paginator.items(client, "listApplicationVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applicationVersions",
    })
end

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns a page iterator for listBatchJobDefinitions.
function M.pages_list_batch_job_definitions(client, input)
    return paginator.pages(client, "listBatchJobDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchJobDefinitions",
    })
end

--- Returns an item iterator for listBatchJobDefinitions.
function M.items_list_batch_job_definitions(client, input)
    return paginator.items(client, "listBatchJobDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchJobDefinitions",
    })
end

--- Returns a page iterator for listBatchJobExecutions.
function M.pages_list_batch_job_executions(client, input)
    return paginator.pages(client, "listBatchJobExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchJobExecutions",
    })
end

--- Returns an item iterator for listBatchJobExecutions.
function M.items_list_batch_job_executions(client, input)
    return paginator.items(client, "listBatchJobExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchJobExecutions",
    })
end

--- Returns a page iterator for listDataSetExportHistory.
function M.pages_list_data_set_export_history(client, input)
    return paginator.pages(client, "listDataSetExportHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSetExportTasks",
    })
end

--- Returns an item iterator for listDataSetExportHistory.
function M.items_list_data_set_export_history(client, input)
    return paginator.items(client, "listDataSetExportHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSetExportTasks",
    })
end

--- Returns a page iterator for listDataSetImportHistory.
function M.pages_list_data_set_import_history(client, input)
    return paginator.pages(client, "listDataSetImportHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSetImportTasks",
    })
end

--- Returns an item iterator for listDataSetImportHistory.
function M.items_list_data_set_import_history(client, input)
    return paginator.items(client, "listDataSetImportHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSetImportTasks",
    })
end

--- Returns a page iterator for listDataSets.
function M.pages_list_data_sets(client, input)
    return paginator.pages(client, "listDataSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSets",
    })
end

--- Returns an item iterator for listDataSets.
function M.items_list_data_sets(client, input)
    return paginator.items(client, "listDataSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSets",
    })
end

--- Returns a page iterator for listDeployments.
function M.pages_list_deployments(client, input)
    return paginator.pages(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns an item iterator for listDeployments.
function M.items_list_deployments(client, input)
    return paginator.items(client, "listDeployments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "deployments",
    })
end

--- Returns a page iterator for listEngineVersions.
function M.pages_list_engine_versions(client, input)
    return paginator.pages(client, "listEngineVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "engineVersions",
    })
end

--- Returns an item iterator for listEngineVersions.
function M.items_list_engine_versions(client, input)
    return paginator.items(client, "listEngineVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "engineVersions",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

return M
