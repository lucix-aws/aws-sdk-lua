local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codebuild.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("codebuild.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeBuild_20161006"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codebuild", signing_region = cfg.region } }
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

function Client:batchDeleteBuilds(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteBuilds",
        input_schema = types.BatchDeleteBuildsInput,
        output_schema = types.BatchDeleteBuildsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetBuildBatches(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetBuildBatches",
        input_schema = types.BatchGetBuildBatchesInput,
        output_schema = types.BatchGetBuildBatchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetBuilds(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetBuilds",
        input_schema = types.BatchGetBuildsInput,
        output_schema = types.BatchGetBuildsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetCommandExecutions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCommandExecutions",
        input_schema = types.BatchGetCommandExecutionsInput,
        output_schema = types.BatchGetCommandExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetFleets(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFleets",
        input_schema = types.BatchGetFleetsInput,
        output_schema = types.BatchGetFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetProjects(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetProjects",
        input_schema = types.BatchGetProjectsInput,
        output_schema = types.BatchGetProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetReportGroups(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetReportGroups",
        input_schema = types.BatchGetReportGroupsInput,
        output_schema = types.BatchGetReportGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetReports(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetReports",
        input_schema = types.BatchGetReportsInput,
        output_schema = types.BatchGetReportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSandboxes(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSandboxes",
        input_schema = types.BatchGetSandboxesInput,
        output_schema = types.BatchGetSandboxesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReportGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateReportGroup",
        input_schema = types.CreateReportGroupInput,
        output_schema = types.CreateReportGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebhook(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebhook",
        input_schema = types.CreateWebhookInput,
        output_schema = types.CreateWebhookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBuildBatch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBuildBatch",
        input_schema = types.DeleteBuildBatchInput,
        output_schema = types.DeleteBuildBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = types.DeleteFleetInput,
        output_schema = types.DeleteFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReport",
        input_schema = types.DeleteReportInput,
        output_schema = types.DeleteReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReportGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReportGroup",
        input_schema = types.DeleteReportGroupInput,
        output_schema = types.DeleteReportGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSourceCredentials(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSourceCredentials",
        input_schema = types.DeleteSourceCredentialsInput,
        output_schema = types.DeleteSourceCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebhook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebhook",
        input_schema = types.DeleteWebhookInput,
        output_schema = types.DeleteWebhookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCodeCoverages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCodeCoverages",
        input_schema = types.DescribeCodeCoveragesInput,
        output_schema = types.DescribeCodeCoveragesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestCases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestCases",
        input_schema = types.DescribeTestCasesInput,
        output_schema = types.DescribeTestCasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReportGroupTrend(input, options)
    return self:invokeOperation(input, {
        name = "GetReportGroupTrend",
        input_schema = types.GetReportGroupTrendInput,
        output_schema = types.GetReportGroupTrendOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importSourceCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ImportSourceCredentials",
        input_schema = types.ImportSourceCredentialsInput,
        output_schema = types.ImportSourceCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invalidateProjectCache(input, options)
    return self:invokeOperation(input, {
        name = "InvalidateProjectCache",
        input_schema = types.InvalidateProjectCacheInput,
        output_schema = types.InvalidateProjectCacheOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuildBatches(input, options)
    return self:invokeOperation(input, {
        name = "ListBuildBatches",
        input_schema = types.ListBuildBatchesInput,
        output_schema = types.ListBuildBatchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuildBatchesForProject(input, options)
    return self:invokeOperation(input, {
        name = "ListBuildBatchesForProject",
        input_schema = types.ListBuildBatchesForProjectInput,
        output_schema = types.ListBuildBatchesForProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuilds(input, options)
    return self:invokeOperation(input, {
        name = "ListBuilds",
        input_schema = types.ListBuildsInput,
        output_schema = types.ListBuildsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuildsForProject(input, options)
    return self:invokeOperation(input, {
        name = "ListBuildsForProject",
        input_schema = types.ListBuildsForProjectInput,
        output_schema = types.ListBuildsForProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommandExecutionsForSandbox(input, options)
    return self:invokeOperation(input, {
        name = "ListCommandExecutionsForSandbox",
        input_schema = types.ListCommandExecutionsForSandboxInput,
        output_schema = types.ListCommandExecutionsForSandboxOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCuratedEnvironmentImages(input, options)
    return self:invokeOperation(input, {
        name = "ListCuratedEnvironmentImages",
        input_schema = types.ListCuratedEnvironmentImagesInput,
        output_schema = types.ListCuratedEnvironmentImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListFleets",
        input_schema = types.ListFleetsInput,
        output_schema = types.ListFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReportGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListReportGroups",
        input_schema = types.ListReportGroupsInput,
        output_schema = types.ListReportGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReports(input, options)
    return self:invokeOperation(input, {
        name = "ListReports",
        input_schema = types.ListReportsInput,
        output_schema = types.ListReportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReportsForReportGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListReportsForReportGroup",
        input_schema = types.ListReportsForReportGroupInput,
        output_schema = types.ListReportsForReportGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSandboxes(input, options)
    return self:invokeOperation(input, {
        name = "ListSandboxes",
        input_schema = types.ListSandboxesInput,
        output_schema = types.ListSandboxesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSandboxesForProject(input, options)
    return self:invokeOperation(input, {
        name = "ListSandboxesForProject",
        input_schema = types.ListSandboxesForProjectInput,
        output_schema = types.ListSandboxesForProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSharedProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListSharedProjects",
        input_schema = types.ListSharedProjectsInput,
        output_schema = types.ListSharedProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSharedReportGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListSharedReportGroups",
        input_schema = types.ListSharedReportGroupsInput,
        output_schema = types.ListSharedReportGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceCredentials",
        input_schema = types.ListSourceCredentialsInput,
        output_schema = types.ListSourceCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryBuild(input, options)
    return self:invokeOperation(input, {
        name = "RetryBuild",
        input_schema = types.RetryBuildInput,
        output_schema = types.RetryBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryBuildBatch(input, options)
    return self:invokeOperation(input, {
        name = "RetryBuildBatch",
        input_schema = types.RetryBuildBatchInput,
        output_schema = types.RetryBuildBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBuild(input, options)
    return self:invokeOperation(input, {
        name = "StartBuild",
        input_schema = types.StartBuildInput,
        output_schema = types.StartBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBuildBatch(input, options)
    return self:invokeOperation(input, {
        name = "StartBuildBatch",
        input_schema = types.StartBuildBatchInput,
        output_schema = types.StartBuildBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartCommandExecution",
        input_schema = types.StartCommandExecutionInput,
        output_schema = types.StartCommandExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSandbox(input, options)
    return self:invokeOperation(input, {
        name = "StartSandbox",
        input_schema = types.StartSandboxInput,
        output_schema = types.StartSandboxOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSandboxConnection(input, options)
    return self:invokeOperation(input, {
        name = "StartSandboxConnection",
        input_schema = types.StartSandboxConnectionInput,
        output_schema = types.StartSandboxConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBuild(input, options)
    return self:invokeOperation(input, {
        name = "StopBuild",
        input_schema = types.StopBuildInput,
        output_schema = types.StopBuildOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBuildBatch(input, options)
    return self:invokeOperation(input, {
        name = "StopBuildBatch",
        input_schema = types.StopBuildBatchInput,
        output_schema = types.StopBuildBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSandbox(input, options)
    return self:invokeOperation(input, {
        name = "StopSandbox",
        input_schema = types.StopSandboxInput,
        output_schema = types.StopSandboxOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleet",
        input_schema = types.UpdateFleetInput,
        output_schema = types.UpdateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProjectVisibility(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProjectVisibility",
        input_schema = types.UpdateProjectVisibilityInput,
        output_schema = types.UpdateProjectVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReportGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReportGroup",
        input_schema = types.UpdateReportGroupInput,
        output_schema = types.UpdateReportGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebhook(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebhook",
        input_schema = types.UpdateWebhookInput,
        output_schema = types.UpdateWebhookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
