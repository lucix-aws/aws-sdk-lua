local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("m2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("m2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsSupernovaControlPlaneService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "m2", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:cancelBatchJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelBatchJobExecution",
        input_schema = types.CancelBatchJobExecutionInput,
        output_schema = types.CancelBatchJobExecutionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/batch-job-executions/{executionId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSetExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSetExportTask",
        input_schema = types.CreateDataSetExportTaskInput,
        output_schema = types.CreateDataSetExportTaskOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/dataset-export-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSetImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSetImportTask",
        input_schema = types.CreateDataSetImportTaskInput,
        output_schema = types.CreateDataSetImportTaskOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/dataset-import-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationFromEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationFromEnvironment",
        input_schema = types.DeleteApplicationFromEnvironmentInput,
        output_schema = types.DeleteApplicationFromEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/environment/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationVersion",
        input_schema = types.GetApplicationVersionInput,
        output_schema = types.GetApplicationVersionOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/versions/{applicationVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBatchJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchJobExecution",
        input_schema = types.GetBatchJobExecutionInput,
        output_schema = types.GetBatchJobExecutionOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/batch-job-executions/{executionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSetDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSetDetails",
        input_schema = types.GetDataSetDetailsInput,
        output_schema = types.GetDataSetDetailsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/datasets/{dataSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSetExportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSetExportTask",
        input_schema = types.GetDataSetExportTaskInput,
        output_schema = types.GetDataSetExportTaskOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataset-export-tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSetImportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSetImportTask",
        input_schema = types.GetDataSetImportTaskInput,
        output_schema = types.GetDataSetImportTaskOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataset-import-tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSignedBluinsightsUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetSignedBluinsightsUrl",
        input_schema = types.GetSignedBluinsightsUrlInput,
        output_schema = types.GetSignedBluinsightsUrlOutput,
        http_method = "GET",
        http_path = "/signed-bi-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationVersions",
        input_schema = types.ListApplicationVersionsInput,
        output_schema = types.ListApplicationVersionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchJobDefinitions",
        input_schema = types.ListBatchJobDefinitionsInput,
        output_schema = types.ListBatchJobDefinitionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/batch-job-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchJobExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchJobExecutions",
        input_schema = types.ListBatchJobExecutionsInput,
        output_schema = types.ListBatchJobExecutionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/batch-job-executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchJobRestartPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchJobRestartPoints",
        input_schema = types.ListBatchJobRestartPointsInput,
        output_schema = types.ListBatchJobRestartPointsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/batch-job-executions/{executionId}/steps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSetExportHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSetExportHistory",
        input_schema = types.ListDataSetExportHistoryInput,
        output_schema = types.ListDataSetExportHistoryOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataset-export-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSetImportHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSetImportHistory",
        input_schema = types.ListDataSetImportHistoryInput,
        output_schema = types.ListDataSetImportHistoryOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataset-import-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSets",
        input_schema = types.ListDataSetsInput,
        output_schema = types.ListDataSetsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListEngineVersions",
        input_schema = types.ListEngineVersionsInput,
        output_schema = types.ListEngineVersionsOutput,
        http_method = "GET",
        http_path = "/engine-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApplication(input, options)
    return self:invokeOperation(input, {
        name = "StartApplication",
        input_schema = types.StartApplicationInput,
        output_schema = types.StartApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBatchJob(input, options)
    return self:invokeOperation(input, {
        name = "StartBatchJob",
        input_schema = types.StartBatchJobInput,
        output_schema = types.StartBatchJobOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/batch-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopApplication(input, options)
    return self:invokeOperation(input, {
        name = "StopApplication",
        input_schema = types.StopApplicationInput,
        output_schema = types.StopApplicationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
