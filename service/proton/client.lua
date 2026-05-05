local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("proton.endpoint_rules")
local schemas = require("proton.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsProton20200720"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "proton", signing_region = cfg.region } }
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

function Client:acceptEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptEnvironmentAccountConnection",
        input_schema = schemas.AcceptEnvironmentAccountConnectionInput,
        output_schema = schemas.AcceptEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelComponentDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelComponentDeployment",
        input_schema = schemas.CancelComponentDeploymentInput,
        output_schema = schemas.CancelComponentDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelEnvironmentDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelEnvironmentDeployment",
        input_schema = schemas.CancelEnvironmentDeploymentInput,
        output_schema = schemas.CancelEnvironmentDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelServiceInstanceDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelServiceInstanceDeployment",
        input_schema = schemas.CancelServiceInstanceDeploymentInput,
        output_schema = schemas.CancelServiceInstanceDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelServicePipelineDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelServicePipelineDeployment",
        input_schema = schemas.CancelServicePipelineDeploymentInput,
        output_schema = schemas.CancelServicePipelineDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = schemas.CreateComponentInput,
        output_schema = schemas.CreateComponentOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentAccountConnection",
        input_schema = schemas.CreateEnvironmentAccountConnectionInput,
        output_schema = schemas.CreateEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentTemplate",
        input_schema = schemas.CreateEnvironmentTemplateInput,
        output_schema = schemas.CreateEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentTemplateVersion",
        input_schema = schemas.CreateEnvironmentTemplateVersionInput,
        output_schema = schemas.CreateEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = schemas.CreateRepositoryInput,
        output_schema = schemas.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = schemas.CreateServiceInput,
        output_schema = schemas.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceInstance",
        input_schema = schemas.CreateServiceInstanceInput,
        output_schema = schemas.CreateServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceSyncConfig",
        input_schema = schemas.CreateServiceSyncConfigInput,
        output_schema = schemas.CreateServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceTemplate",
        input_schema = schemas.CreateServiceTemplateInput,
        output_schema = schemas.CreateServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceTemplateVersion",
        input_schema = schemas.CreateServiceTemplateVersionInput,
        output_schema = schemas.CreateServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateSyncConfig",
        input_schema = schemas.CreateTemplateSyncConfigInput,
        output_schema = schemas.CreateTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = schemas.DeleteComponentInput,
        output_schema = schemas.DeleteComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = schemas.DeleteDeploymentInput,
        output_schema = schemas.DeleteDeploymentOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentAccountConnection",
        input_schema = schemas.DeleteEnvironmentAccountConnectionInput,
        output_schema = schemas.DeleteEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentTemplate",
        input_schema = schemas.DeleteEnvironmentTemplateInput,
        output_schema = schemas.DeleteEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentTemplateVersion",
        input_schema = schemas.DeleteEnvironmentTemplateVersionInput,
        output_schema = schemas.DeleteEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = schemas.DeleteRepositoryInput,
        output_schema = schemas.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = schemas.DeleteServiceInput,
        output_schema = schemas.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceSyncConfig",
        input_schema = schemas.DeleteServiceSyncConfigInput,
        output_schema = schemas.DeleteServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceTemplate",
        input_schema = schemas.DeleteServiceTemplateInput,
        output_schema = schemas.DeleteServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceTemplateVersion",
        input_schema = schemas.DeleteServiceTemplateVersionInput,
        output_schema = schemas.DeleteServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateSyncConfig",
        input_schema = schemas.DeleteTemplateSyncConfigInput,
        output_schema = schemas.DeleteTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = schemas.GetComponentInput,
        output_schema = schemas.GetComponentOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentAccountConnection",
        input_schema = schemas.GetEnvironmentAccountConnectionInput,
        output_schema = schemas.GetEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentTemplate",
        input_schema = schemas.GetEnvironmentTemplateInput,
        output_schema = schemas.GetEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentTemplateVersion",
        input_schema = schemas.GetEnvironmentTemplateVersionInput,
        output_schema = schemas.GetEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetRepository",
        input_schema = schemas.GetRepositoryInput,
        output_schema = schemas.GetRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepositorySyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositorySyncStatus",
        input_schema = schemas.GetRepositorySyncStatusInput,
        output_schema = schemas.GetRepositorySyncStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcesSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesSummary",
        input_schema = schemas.GetResourcesSummaryInput,
        output_schema = schemas.GetResourcesSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = schemas.GetServiceInput,
        output_schema = schemas.GetServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceInstance",
        input_schema = schemas.GetServiceInstanceInput,
        output_schema = schemas.GetServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceInstanceSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceInstanceSyncStatus",
        input_schema = schemas.GetServiceInstanceSyncStatusInput,
        output_schema = schemas.GetServiceInstanceSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSyncBlockerSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSyncBlockerSummary",
        input_schema = schemas.GetServiceSyncBlockerSummaryInput,
        output_schema = schemas.GetServiceSyncBlockerSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSyncConfig",
        input_schema = schemas.GetServiceSyncConfigInput,
        output_schema = schemas.GetServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceTemplate",
        input_schema = schemas.GetServiceTemplateInput,
        output_schema = schemas.GetServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceTemplateVersion",
        input_schema = schemas.GetServiceTemplateVersionInput,
        output_schema = schemas.GetServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSyncConfig",
        input_schema = schemas.GetTemplateSyncConfigInput,
        output_schema = schemas.GetTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSyncStatus",
        input_schema = schemas.GetTemplateSyncStatusInput,
        output_schema = schemas.GetTemplateSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponentOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentOutputs",
        input_schema = schemas.ListComponentOutputsInput,
        output_schema = schemas.ListComponentOutputsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponentProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentProvisionedResources",
        input_schema = schemas.ListComponentProvisionedResourcesInput,
        output_schema = schemas.ListComponentProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentAccountConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentAccountConnections",
        input_schema = schemas.ListEnvironmentAccountConnectionsInput,
        output_schema = schemas.ListEnvironmentAccountConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentOutputs",
        input_schema = schemas.ListEnvironmentOutputsInput,
        output_schema = schemas.ListEnvironmentOutputsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentProvisionedResources",
        input_schema = schemas.ListEnvironmentProvisionedResourcesInput,
        output_schema = schemas.ListEnvironmentProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentTemplates",
        input_schema = schemas.ListEnvironmentTemplatesInput,
        output_schema = schemas.ListEnvironmentTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentTemplateVersions",
        input_schema = schemas.ListEnvironmentTemplateVersionsInput,
        output_schema = schemas.ListEnvironmentTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositories",
        input_schema = schemas.ListRepositoriesInput,
        output_schema = schemas.ListRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRepositorySyncDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositorySyncDefinitions",
        input_schema = schemas.ListRepositorySyncDefinitionsInput,
        output_schema = schemas.ListRepositorySyncDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceInstanceOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstanceOutputs",
        input_schema = schemas.ListServiceInstanceOutputsInput,
        output_schema = schemas.ListServiceInstanceOutputsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceInstanceProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstanceProvisionedResources",
        input_schema = schemas.ListServiceInstanceProvisionedResourcesInput,
        output_schema = schemas.ListServiceInstanceProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstances",
        input_schema = schemas.ListServiceInstancesInput,
        output_schema = schemas.ListServiceInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServicePipelineOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListServicePipelineOutputs",
        input_schema = schemas.ListServicePipelineOutputsInput,
        output_schema = schemas.ListServicePipelineOutputsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServicePipelineProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListServicePipelineProvisionedResources",
        input_schema = schemas.ListServicePipelineProvisionedResourcesInput,
        output_schema = schemas.ListServicePipelineProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceTemplates",
        input_schema = schemas.ListServiceTemplatesInput,
        output_schema = schemas.ListServiceTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceTemplateVersions",
        input_schema = schemas.ListServiceTemplateVersionsInput,
        output_schema = schemas.ListServiceTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyResourceDeploymentStatusChange(input, options)
    return self:invokeOperation(input, {
        name = "NotifyResourceDeploymentStatusChange",
        input_schema = schemas.NotifyResourceDeploymentStatusChangeInput,
        output_schema = schemas.NotifyResourceDeploymentStatusChangeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectEnvironmentAccountConnection",
        input_schema = schemas.RejectEnvironmentAccountConnectionInput,
        output_schema = schemas.RejectEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = schemas.UpdateAccountSettingsInput,
        output_schema = schemas.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = schemas.UpdateComponentInput,
        output_schema = schemas.UpdateComponentOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentAccountConnection",
        input_schema = schemas.UpdateEnvironmentAccountConnectionInput,
        output_schema = schemas.UpdateEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentTemplate",
        input_schema = schemas.UpdateEnvironmentTemplateInput,
        output_schema = schemas.UpdateEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentTemplateVersion",
        input_schema = schemas.UpdateEnvironmentTemplateVersionInput,
        output_schema = schemas.UpdateEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = schemas.UpdateServiceInput,
        output_schema = schemas.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceInstance",
        input_schema = schemas.UpdateServiceInstanceInput,
        output_schema = schemas.UpdateServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServicePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServicePipeline",
        input_schema = schemas.UpdateServicePipelineInput,
        output_schema = schemas.UpdateServicePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSyncBlocker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSyncBlocker",
        input_schema = schemas.UpdateServiceSyncBlockerInput,
        output_schema = schemas.UpdateServiceSyncBlockerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSyncConfig",
        input_schema = schemas.UpdateServiceSyncConfigInput,
        output_schema = schemas.UpdateServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceTemplate",
        input_schema = schemas.UpdateServiceTemplateInput,
        output_schema = schemas.UpdateServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceTemplateVersion",
        input_schema = schemas.UpdateServiceTemplateVersionInput,
        output_schema = schemas.UpdateServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateSyncConfig",
        input_schema = schemas.UpdateTemplateSyncConfigInput,
        output_schema = schemas.UpdateTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
