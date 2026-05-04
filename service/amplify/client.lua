local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amplify.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("amplify.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Amplify"
    cfg.signing_name = "amplify"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = types.CreateAppInput,
        output_schema = types.CreateAppOutput,
        http_method = "POST",
        http_path = "/apps",
    }, options)
end

function Client:createBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendEnvironment",
        input_schema = types.CreateBackendEnvironmentInput,
        output_schema = types.CreateBackendEnvironmentOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/backendenvironments",
    }, options)
end

function Client:createBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateBranch",
        input_schema = types.CreateBranchInput,
        output_schema = types.CreateBranchOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches",
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}/deployments",
    }, options)
end

function Client:createDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainAssociation",
        input_schema = types.CreateDomainAssociationInput,
        output_schema = types.CreateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/domains",
    }, options)
end

function Client:createWebhook(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebhook",
        input_schema = types.CreateWebhookInput,
        output_schema = types.CreateWebhookOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/webhooks",
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}",
    }, options)
end

function Client:deleteBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendEnvironment",
        input_schema = types.DeleteBackendEnvironmentInput,
        output_schema = types.DeleteBackendEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/backendenvironments/{environmentName}",
    }, options)
end

function Client:deleteBranch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBranch",
        input_schema = types.DeleteBranchInput,
        output_schema = types.DeleteBranchOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}",
    }, options)
end

function Client:deleteDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainAssociation",
        input_schema = types.DeleteDomainAssociationInput,
        output_schema = types.DeleteDomainAssociationOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/domains/{domainName}",
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}",
    }, options)
end

function Client:deleteWebhook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebhook",
        input_schema = types.DeleteWebhookInput,
        output_schema = types.DeleteWebhookOutput,
        http_method = "DELETE",
        http_path = "/webhooks/{webhookId}",
    }, options)
end

function Client:generateAccessLogs(input, options)
    return self:invokeOperation(input, {
        name = "GenerateAccessLogs",
        input_schema = types.GenerateAccessLogsInput,
        output_schema = types.GenerateAccessLogsOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/accesslogs",
    }, options)
end

function Client:getApp(input, options)
    return self:invokeOperation(input, {
        name = "GetApp",
        input_schema = types.GetAppInput,
        output_schema = types.GetAppOutput,
        http_method = "GET",
        http_path = "/apps/{appId}",
    }, options)
end

function Client:getArtifactUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetArtifactUrl",
        input_schema = types.GetArtifactUrlInput,
        output_schema = types.GetArtifactUrlOutput,
        http_method = "GET",
        http_path = "/artifacts/{artifactId}",
    }, options)
end

function Client:getBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendEnvironment",
        input_schema = types.GetBackendEnvironmentInput,
        output_schema = types.GetBackendEnvironmentOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/backendenvironments/{environmentName}",
    }, options)
end

function Client:getBranch(input, options)
    return self:invokeOperation(input, {
        name = "GetBranch",
        input_schema = types.GetBranchInput,
        output_schema = types.GetBranchOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}",
    }, options)
end

function Client:getDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainAssociation",
        input_schema = types.GetDomainAssociationInput,
        output_schema = types.GetDomainAssociationOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/domains/{domainName}",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}",
    }, options)
end

function Client:getWebhook(input, options)
    return self:invokeOperation(input, {
        name = "GetWebhook",
        input_schema = types.GetWebhookInput,
        output_schema = types.GetWebhookOutput,
        http_method = "GET",
        http_path = "/webhooks/{webhookId}",
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = types.ListAppsInput,
        output_schema = types.ListAppsOutput,
        http_method = "GET",
        http_path = "/apps",
    }, options)
end

function Client:listArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListArtifacts",
        input_schema = types.ListArtifactsInput,
        output_schema = types.ListArtifactsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts",
    }, options)
end

function Client:listBackendEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListBackendEnvironments",
        input_schema = types.ListBackendEnvironmentsInput,
        output_schema = types.ListBackendEnvironmentsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/backendenvironments",
    }, options)
end

function Client:listBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListBranches",
        input_schema = types.ListBranchesInput,
        output_schema = types.ListBranchesOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches",
    }, options)
end

function Client:listDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainAssociations",
        input_schema = types.ListDomainAssociationsInput,
        output_schema = types.ListDomainAssociationsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/domains",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listWebhooks(input, options)
    return self:invokeOperation(input, {
        name = "ListWebhooks",
        input_schema = types.ListWebhooksInput,
        output_schema = types.ListWebhooksOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/webhooks",
    }, options)
end

function Client:startDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartDeployment",
        input_schema = types.StartDeploymentInput,
        output_schema = types.StartDeploymentOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}/deployments/start",
    }, options)
end

function Client:startJob(input, options)
    return self:invokeOperation(input, {
        name = "StartJob",
        input_schema = types.StartJobInput,
        output_schema = types.StartJobOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}/jobs",
    }, options)
end

function Client:stopJob(input, options)
    return self:invokeOperation(input, {
        name = "StopJob",
        input_schema = types.StopJobInput,
        output_schema = types.StopJobOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApp",
        input_schema = types.UpdateAppInput,
        output_schema = types.UpdateAppOutput,
        http_method = "POST",
        http_path = "/apps/{appId}",
    }, options)
end

function Client:updateBranch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBranch",
        input_schema = types.UpdateBranchInput,
        output_schema = types.UpdateBranchOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}",
    }, options)
end

function Client:updateDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainAssociation",
        input_schema = types.UpdateDomainAssociationInput,
        output_schema = types.UpdateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/domains/{domainName}",
    }, options)
end

function Client:updateWebhook(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebhook",
        input_schema = types.UpdateWebhookInput,
        output_schema = types.UpdateWebhookOutput,
        http_method = "POST",
        http_path = "/webhooks/{webhookId}",
    }, options)
end

return M
