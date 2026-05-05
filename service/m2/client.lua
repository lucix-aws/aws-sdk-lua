local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("m2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("m2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.CancelBatchJobExecutionInput,
        output_schema = schemas.CancelBatchJobExecutionOutput,
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
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
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
        input_schema = schemas.CreateDataSetExportTaskInput,
        output_schema = schemas.CreateDataSetExportTaskOutput,
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
        input_schema = schemas.CreateDataSetImportTaskInput,
        output_schema = schemas.CreateDataSetImportTaskOutput,
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
        input_schema = schemas.CreateDeploymentInput,
        output_schema = schemas.CreateDeploymentOutput,
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
        input_schema = schemas.CreateEnvironmentInput,
        output_schema = schemas.CreateEnvironmentOutput,
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
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
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
        input_schema = schemas.DeleteApplicationFromEnvironmentInput,
        output_schema = schemas.DeleteApplicationFromEnvironmentOutput,
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
        input_schema = schemas.DeleteEnvironmentInput,
        output_schema = schemas.DeleteEnvironmentOutput,
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
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
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
        input_schema = schemas.GetApplicationVersionInput,
        output_schema = schemas.GetApplicationVersionOutput,
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
        input_schema = schemas.GetBatchJobExecutionInput,
        output_schema = schemas.GetBatchJobExecutionOutput,
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
        input_schema = schemas.GetDataSetDetailsInput,
        output_schema = schemas.GetDataSetDetailsOutput,
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
        input_schema = schemas.GetDataSetExportTaskInput,
        output_schema = schemas.GetDataSetExportTaskOutput,
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
        input_schema = schemas.GetDataSetImportTaskInput,
        output_schema = schemas.GetDataSetImportTaskOutput,
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
        input_schema = schemas.GetDeploymentInput,
        output_schema = schemas.GetDeploymentOutput,
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
        input_schema = schemas.GetEnvironmentInput,
        output_schema = schemas.GetEnvironmentOutput,
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
        input_schema = schemas.GetSignedBluinsightsUrlInput,
        output_schema = schemas.GetSignedBluinsightsUrlOutput,
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
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
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
        input_schema = schemas.ListApplicationVersionsInput,
        output_schema = schemas.ListApplicationVersionsOutput,
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
        input_schema = schemas.ListBatchJobDefinitionsInput,
        output_schema = schemas.ListBatchJobDefinitionsOutput,
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
        input_schema = schemas.ListBatchJobExecutionsInput,
        output_schema = schemas.ListBatchJobExecutionsOutput,
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
        input_schema = schemas.ListBatchJobRestartPointsInput,
        output_schema = schemas.ListBatchJobRestartPointsOutput,
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
        input_schema = schemas.ListDataSetExportHistoryInput,
        output_schema = schemas.ListDataSetExportHistoryOutput,
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
        input_schema = schemas.ListDataSetImportHistoryInput,
        output_schema = schemas.ListDataSetImportHistoryOutput,
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
        input_schema = schemas.ListDataSetsInput,
        output_schema = schemas.ListDataSetsOutput,
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
        input_schema = schemas.ListDeploymentsInput,
        output_schema = schemas.ListDeploymentsOutput,
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
        input_schema = schemas.ListEngineVersionsInput,
        output_schema = schemas.ListEngineVersionsOutput,
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
        input_schema = schemas.ListEnvironmentsInput,
        output_schema = schemas.ListEnvironmentsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.StartApplicationInput,
        output_schema = schemas.StartApplicationOutput,
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
        input_schema = schemas.StartBatchJobInput,
        output_schema = schemas.StartBatchJobOutput,
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
        input_schema = schemas.StopApplicationInput,
        output_schema = schemas.StopApplicationOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
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
        input_schema = schemas.UpdateEnvironmentInput,
        output_schema = schemas.UpdateEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/environments/{environmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
