local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amplify.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amplify.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Amplify"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplify", signing_region = cfg.region } }
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

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = schemas.CreateAppInput,
        output_schema = schemas.CreateAppOutput,
        http_method = "POST",
        http_path = "/apps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackendEnvironment",
        input_schema = schemas.CreateBackendEnvironmentInput,
        output_schema = schemas.CreateBackendEnvironmentOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/backendenvironments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBranch(input, options)
    return self:invokeOperation(input, {
        name = "CreateBranch",
        input_schema = schemas.CreateBranchInput,
        output_schema = schemas.CreateBranchOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches",
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
        http_path = "/apps/{appId}/branches/{branchName}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainAssociation",
        input_schema = schemas.CreateDomainAssociationInput,
        output_schema = schemas.CreateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebhook(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebhook",
        input_schema = schemas.CreateWebhookInput,
        output_schema = schemas.CreateWebhookOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/webhooks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = schemas.DeleteAppInput,
        output_schema = schemas.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackendEnvironment",
        input_schema = schemas.DeleteBackendEnvironmentInput,
        output_schema = schemas.DeleteBackendEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/backendenvironments/{environmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBranch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBranch",
        input_schema = schemas.DeleteBranchInput,
        output_schema = schemas.DeleteBranchOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainAssociation",
        input_schema = schemas.DeleteDomainAssociationInput,
        output_schema = schemas.DeleteDomainAssociationOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/domains/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = schemas.DeleteJobInput,
        output_schema = schemas.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebhook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebhook",
        input_schema = schemas.DeleteWebhookInput,
        output_schema = schemas.DeleteWebhookOutput,
        http_method = "DELETE",
        http_path = "/webhooks/{webhookId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateAccessLogs(input, options)
    return self:invokeOperation(input, {
        name = "GenerateAccessLogs",
        input_schema = schemas.GenerateAccessLogsInput,
        output_schema = schemas.GenerateAccessLogsOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/accesslogs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApp(input, options)
    return self:invokeOperation(input, {
        name = "GetApp",
        input_schema = schemas.GetAppInput,
        output_schema = schemas.GetAppOutput,
        http_method = "GET",
        http_path = "/apps/{appId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getArtifactUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetArtifactUrl",
        input_schema = schemas.GetArtifactUrlInput,
        output_schema = schemas.GetArtifactUrlOutput,
        http_method = "GET",
        http_path = "/artifacts/{artifactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackendEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetBackendEnvironment",
        input_schema = schemas.GetBackendEnvironmentInput,
        output_schema = schemas.GetBackendEnvironmentOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/backendenvironments/{environmentName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBranch(input, options)
    return self:invokeOperation(input, {
        name = "GetBranch",
        input_schema = schemas.GetBranchInput,
        output_schema = schemas.GetBranchOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainAssociation",
        input_schema = schemas.GetDomainAssociationInput,
        output_schema = schemas.GetDomainAssociationOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/domains/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = schemas.GetJobInput,
        output_schema = schemas.GetJobOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWebhook(input, options)
    return self:invokeOperation(input, {
        name = "GetWebhook",
        input_schema = schemas.GetWebhookInput,
        output_schema = schemas.GetWebhookOutput,
        http_method = "GET",
        http_path = "/webhooks/{webhookId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = schemas.ListAppsInput,
        output_schema = schemas.ListAppsOutput,
        http_method = "GET",
        http_path = "/apps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListArtifacts",
        input_schema = schemas.ListArtifactsInput,
        output_schema = schemas.ListArtifactsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackendEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListBackendEnvironments",
        input_schema = schemas.ListBackendEnvironmentsInput,
        output_schema = schemas.ListBackendEnvironmentsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/backendenvironments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListBranches",
        input_schema = schemas.ListBranchesInput,
        output_schema = schemas.ListBranchesOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainAssociations",
        input_schema = schemas.ListDomainAssociationsInput,
        output_schema = schemas.ListDomainAssociationsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/branches/{branchName}/jobs",
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

function Client:listWebhooks(input, options)
    return self:invokeOperation(input, {
        name = "ListWebhooks",
        input_schema = schemas.ListWebhooksInput,
        output_schema = schemas.ListWebhooksOutput,
        http_method = "GET",
        http_path = "/apps/{appId}/webhooks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartDeployment",
        input_schema = schemas.StartDeploymentInput,
        output_schema = schemas.StartDeploymentOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}/deployments/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJob(input, options)
    return self:invokeOperation(input, {
        name = "StartJob",
        input_schema = schemas.StartJobInput,
        output_schema = schemas.StartJobOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopJob(input, options)
    return self:invokeOperation(input, {
        name = "StopJob",
        input_schema = schemas.StopJobInput,
        output_schema = schemas.StopJobOutput,
        http_method = "DELETE",
        http_path = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop",
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

function Client:updateApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApp",
        input_schema = schemas.UpdateAppInput,
        output_schema = schemas.UpdateAppOutput,
        http_method = "POST",
        http_path = "/apps/{appId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBranch(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBranch",
        input_schema = schemas.UpdateBranchInput,
        output_schema = schemas.UpdateBranchOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/branches/{branchName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainAssociation",
        input_schema = schemas.UpdateDomainAssociationInput,
        output_schema = schemas.UpdateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/apps/{appId}/domains/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebhook(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebhook",
        input_schema = schemas.UpdateWebhookInput,
        output_schema = schemas.UpdateWebhookOutput,
        http_method = "POST",
        http_path = "/webhooks/{webhookId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
