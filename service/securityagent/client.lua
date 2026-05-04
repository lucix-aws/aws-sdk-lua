local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securityagent.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("securityagent.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityAgent"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securityagent", signing_region = cfg.region } }
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

function Client:addArtifact(input, options)
    return self:invokeOperation(input, {
        name = "AddArtifact",
        input_schema = types.AddArtifactInput,
        output_schema = types.AddArtifactOutput,
        http_method = "POST",
        http_path = "/AddArtifact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeletePentests(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeletePentests",
        input_schema = types.BatchDeletePentestsInput,
        output_schema = types.BatchDeletePentestsOutput,
        http_method = "POST",
        http_path = "/BatchDeletePentests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAgentSpaces(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAgentSpaces",
        input_schema = types.BatchGetAgentSpacesInput,
        output_schema = types.BatchGetAgentSpacesOutput,
        http_method = "POST",
        http_path = "/BatchGetAgentSpaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetArtifactMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetArtifactMetadata",
        input_schema = types.BatchGetArtifactMetadataInput,
        output_schema = types.BatchGetArtifactMetadataOutput,
        http_method = "POST",
        http_path = "/BatchGetArtifactMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFindings",
        input_schema = types.BatchGetFindingsInput,
        output_schema = types.BatchGetFindingsOutput,
        http_method = "POST",
        http_path = "/BatchGetFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetPentestJobs(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPentestJobs",
        input_schema = types.BatchGetPentestJobsInput,
        output_schema = types.BatchGetPentestJobsOutput,
        http_method = "POST",
        http_path = "/BatchGetPentestJobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetPentestJobTasks(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPentestJobTasks",
        input_schema = types.BatchGetPentestJobTasksInput,
        output_schema = types.BatchGetPentestJobTasksOutput,
        http_method = "POST",
        http_path = "/BatchGetPentestJobTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetPentests(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPentests",
        input_schema = types.BatchGetPentestsInput,
        output_schema = types.BatchGetPentestsOutput,
        http_method = "POST",
        http_path = "/BatchGetPentests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetTargetDomains(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTargetDomains",
        input_schema = types.BatchGetTargetDomainsInput,
        output_schema = types.BatchGetTargetDomainsOutput,
        http_method = "POST",
        http_path = "/BatchGetTargetDomains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentSpace",
        input_schema = types.CreateAgentSpaceInput,
        output_schema = types.CreateAgentSpaceOutput,
        http_method = "POST",
        http_path = "/CreateAgentSpace",
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
        http_path = "/CreateApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = types.CreateIntegrationInput,
        output_schema = types.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/CreateIntegration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembership",
        input_schema = types.CreateMembershipInput,
        output_schema = types.CreateMembershipOutput,
        http_method = "POST",
        http_path = "/CreateMembership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPentest(input, options)
    return self:invokeOperation(input, {
        name = "CreatePentest",
        input_schema = types.CreatePentestInput,
        output_schema = types.CreatePentestOutput,
        http_method = "POST",
        http_path = "/CreatePentest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTargetDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateTargetDomain",
        input_schema = types.CreateTargetDomainInput,
        output_schema = types.CreateTargetDomainOutput,
        http_method = "POST",
        http_path = "/CreateTargetDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgentSpace",
        input_schema = types.DeleteAgentSpaceInput,
        output_schema = types.DeleteAgentSpaceOutput,
        http_method = "POST",
        http_path = "/DeleteAgentSpace",
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
        http_method = "POST",
        http_path = "/DeleteApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArtifact",
        input_schema = types.DeleteArtifactInput,
        output_schema = types.DeleteArtifactOutput,
        http_method = "POST",
        http_path = "/DeleteArtifact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/DeleteIntegration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembership",
        input_schema = types.DeleteMembershipInput,
        output_schema = types.DeleteMembershipOutput,
        http_method = "POST",
        http_path = "/DeleteMembership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTargetDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTargetDomain",
        input_schema = types.DeleteTargetDomainInput,
        output_schema = types.DeleteTargetDomainOutput,
        http_method = "POST",
        http_path = "/DeleteTargetDomain",
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
        http_method = "POST",
        http_path = "/GetApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getArtifact(input, options)
    return self:invokeOperation(input, {
        name = "GetArtifact",
        input_schema = types.GetArtifactInput,
        output_schema = types.GetArtifactOutput,
        http_method = "POST",
        http_path = "/GetArtifact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = types.GetIntegrationInput,
        output_schema = types.GetIntegrationOutput,
        http_method = "POST",
        http_path = "/GetIntegration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initiateProviderRegistration(input, options)
    return self:invokeOperation(input, {
        name = "InitiateProviderRegistration",
        input_schema = types.InitiateProviderRegistrationInput,
        output_schema = types.InitiateProviderRegistrationOutput,
        http_method = "POST",
        http_path = "/oauth2/provider/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentSpaces",
        input_schema = types.ListAgentSpacesInput,
        output_schema = types.ListAgentSpacesOutput,
        http_method = "POST",
        http_path = "/ListAgentSpaces",
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
        http_method = "POST",
        http_path = "/ListApplications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListArtifacts",
        input_schema = types.ListArtifactsInput,
        output_schema = types.ListArtifactsOutput,
        http_method = "POST",
        http_path = "/ListArtifacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoveredEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredEndpoints",
        input_schema = types.ListDiscoveredEndpointsInput,
        output_schema = types.ListDiscoveredEndpointsOutput,
        http_method = "POST",
        http_path = "/ListDiscoveredEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListFindings",
        input_schema = types.ListFindingsInput,
        output_schema = types.ListFindingsOutput,
        http_method = "POST",
        http_path = "/ListFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntegratedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegratedResources",
        input_schema = types.ListIntegratedResourcesInput,
        output_schema = types.ListIntegratedResourcesOutput,
        http_method = "POST",
        http_path = "/ListIntegratedResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegrations",
        input_schema = types.ListIntegrationsInput,
        output_schema = types.ListIntegrationsOutput,
        http_method = "POST",
        http_path = "/ListIntegrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberships",
        input_schema = types.ListMembershipsInput,
        output_schema = types.ListMembershipsOutput,
        http_method = "POST",
        http_path = "/ListMemberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPentestJobsForPentest(input, options)
    return self:invokeOperation(input, {
        name = "ListPentestJobsForPentest",
        input_schema = types.ListPentestJobsForPentestInput,
        output_schema = types.ListPentestJobsForPentestOutput,
        http_method = "POST",
        http_path = "/ListPentestJobsForPentest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPentestJobTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListPentestJobTasks",
        input_schema = types.ListPentestJobTasksInput,
        output_schema = types.ListPentestJobTasksOutput,
        http_method = "POST",
        http_path = "/ListPentestJobTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPentests(input, options)
    return self:invokeOperation(input, {
        name = "ListPentests",
        input_schema = types.ListPentestsInput,
        output_schema = types.ListPentestsOutput,
        http_method = "POST",
        http_path = "/ListPentests",
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

function Client:listTargetDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetDomains",
        input_schema = types.ListTargetDomainsInput,
        output_schema = types.ListTargetDomainsOutput,
        http_method = "POST",
        http_path = "/ListTargetDomains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCodeRemediation(input, options)
    return self:invokeOperation(input, {
        name = "StartCodeRemediation",
        input_schema = types.StartCodeRemediationInput,
        output_schema = types.StartCodeRemediationOutput,
        http_method = "POST",
        http_path = "/StartCodeRemediation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPentestJob(input, options)
    return self:invokeOperation(input, {
        name = "StartPentestJob",
        input_schema = types.StartPentestJobInput,
        output_schema = types.StartPentestJobOutput,
        http_method = "POST",
        http_path = "/StartPentestJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopPentestJob(input, options)
    return self:invokeOperation(input, {
        name = "StopPentestJob",
        input_schema = types.StopPentestJobInput,
        output_schema = types.StopPentestJobOutput,
        http_method = "POST",
        http_path = "/StopPentestJob",
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

function Client:updateAgentSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentSpace",
        input_schema = types.UpdateAgentSpaceInput,
        output_schema = types.UpdateAgentSpaceOutput,
        http_method = "POST",
        http_path = "/UpdateAgentSpace",
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
        http_method = "POST",
        http_path = "/UpdateApplication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFinding(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFinding",
        input_schema = types.UpdateFindingInput,
        output_schema = types.UpdateFindingOutput,
        http_method = "POST",
        http_path = "/UpdateFinding",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIntegratedResources(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegratedResources",
        input_schema = types.UpdateIntegratedResourcesInput,
        output_schema = types.UpdateIntegratedResourcesOutput,
        http_method = "POST",
        http_path = "/UpdateIntegratedResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePentest(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePentest",
        input_schema = types.UpdatePentestInput,
        output_schema = types.UpdatePentestOutput,
        http_method = "POST",
        http_path = "/UpdatePentest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTargetDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTargetDomain",
        input_schema = types.UpdateTargetDomainInput,
        output_schema = types.UpdateTargetDomainOutput,
        http_method = "POST",
        http_path = "/UpdateTargetDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyTargetDomain(input, options)
    return self:invokeOperation(input, {
        name = "VerifyTargetDomain",
        input_schema = types.VerifyTargetDomainInput,
        output_schema = types.VerifyTargetDomainOutput,
        http_method = "POST",
        http_path = "/VerifyTargetDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
