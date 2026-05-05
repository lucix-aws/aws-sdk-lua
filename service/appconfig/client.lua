local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appconfig.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("appconfig.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonAppConfig"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appconfig", signing_region = cfg.region } }
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

function Client:createConfigurationProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationProfile",
        input_schema = schemas.CreateConfigurationProfileInput,
        output_schema = schemas.CreateConfigurationProfileOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/configurationprofiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeploymentStrategy(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeploymentStrategy",
        input_schema = schemas.CreateDeploymentStrategyInput,
        output_schema = schemas.CreateDeploymentStrategyOutput,
        http_method = "POST",
        http_path = "/deploymentstrategies",
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
        http_path = "/applications/{ApplicationId}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExtension(input, options)
    return self:invokeOperation(input, {
        name = "CreateExtension",
        input_schema = schemas.CreateExtensionInput,
        output_schema = schemas.CreateExtensionOutput,
        http_method = "POST",
        http_path = "/extensions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExtensionAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateExtensionAssociation",
        input_schema = schemas.CreateExtensionAssociationInput,
        output_schema = schemas.CreateExtensionAssociationOutput,
        http_method = "POST",
        http_path = "/extensionassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHostedConfigurationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateHostedConfigurationVersion",
        input_schema = schemas.CreateHostedConfigurationVersionInput,
        output_schema = schemas.CreateHostedConfigurationVersionOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
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
        http_path = "/applications/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationProfile",
        input_schema = schemas.DeleteConfigurationProfileInput,
        output_schema = schemas.DeleteConfigurationProfileOutput,
        http_method = "DELETE",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeploymentStrategy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeploymentStrategy",
        input_schema = schemas.DeleteDeploymentStrategyInput,
        output_schema = schemas.DeleteDeploymentStrategyOutput,
        http_method = "DELETE",
        http_path = "/deployementstrategies/{DeploymentStrategyId}",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExtension(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExtension",
        input_schema = schemas.DeleteExtensionInput,
        output_schema = schemas.DeleteExtensionOutput,
        http_method = "DELETE",
        http_path = "/extensions/{ExtensionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExtensionAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExtensionAssociation",
        input_schema = schemas.DeleteExtensionAssociationInput,
        output_schema = schemas.DeleteExtensionAssociationOutput,
        http_method = "DELETE",
        http_path = "/extensionassociations/{ExtensionAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHostedConfigurationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHostedConfigurationVersion",
        input_schema = schemas.DeleteHostedConfigurationVersionInput,
        output_schema = schemas.DeleteHostedConfigurationVersionOutput,
        http_method = "DELETE",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
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
        http_method = "GET",
        http_path = "/settings",
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
        http_path = "/applications/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguration",
        input_schema = schemas.GetConfigurationInput,
        output_schema = schemas.GetConfigurationOutput,
        http_method = "GET",
        http_path = "/applications/{Application}/environments/{Environment}/configurations/{Configuration}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationProfile",
        input_schema = schemas.GetConfigurationProfileInput,
        output_schema = schemas.GetConfigurationProfileOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentStrategy(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentStrategy",
        input_schema = schemas.GetDeploymentStrategyInput,
        output_schema = schemas.GetDeploymentStrategyOutput,
        http_method = "GET",
        http_path = "/deploymentstrategies/{DeploymentStrategyId}",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExtension(input, options)
    return self:invokeOperation(input, {
        name = "GetExtension",
        input_schema = schemas.GetExtensionInput,
        output_schema = schemas.GetExtensionOutput,
        http_method = "GET",
        http_path = "/extensions/{ExtensionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExtensionAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetExtensionAssociation",
        input_schema = schemas.GetExtensionAssociationInput,
        output_schema = schemas.GetExtensionAssociationOutput,
        http_method = "GET",
        http_path = "/extensionassociations/{ExtensionAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostedConfigurationVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedConfigurationVersion",
        input_schema = schemas.GetHostedConfigurationVersionInput,
        output_schema = schemas.GetHostedConfigurationVersionOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
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

function Client:listConfigurationProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationProfiles",
        input_schema = schemas.ListConfigurationProfilesInput,
        output_schema = schemas.ListConfigurationProfilesOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/configurationprofiles",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentStrategies(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentStrategies",
        input_schema = schemas.ListDeploymentStrategiesInput,
        output_schema = schemas.ListDeploymentStrategiesOutput,
        http_method = "GET",
        http_path = "/deploymentstrategies",
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
        http_path = "/applications/{ApplicationId}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExtensionAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListExtensionAssociations",
        input_schema = schemas.ListExtensionAssociationsInput,
        output_schema = schemas.ListExtensionAssociationsOutput,
        http_method = "GET",
        http_path = "/extensionassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExtensions(input, options)
    return self:invokeOperation(input, {
        name = "ListExtensions",
        input_schema = schemas.ListExtensionsInput,
        output_schema = schemas.ListExtensionsOutput,
        http_method = "GET",
        http_path = "/extensions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostedConfigurationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedConfigurationVersions",
        input_schema = schemas.ListHostedConfigurationVersionsInput,
        output_schema = schemas.ListHostedConfigurationVersionsOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopDeployment",
        input_schema = schemas.StopDeploymentInput,
        output_schema = schemas.StopDeploymentOutput,
        http_method = "DELETE",
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "PATCH",
        http_path = "/settings",
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
        http_path = "/applications/{ApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationProfile",
        input_schema = schemas.UpdateConfigurationProfileInput,
        output_schema = schemas.UpdateConfigurationProfileOutput,
        http_method = "PATCH",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeploymentStrategy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeploymentStrategy",
        input_schema = schemas.UpdateDeploymentStrategyInput,
        output_schema = schemas.UpdateDeploymentStrategyOutput,
        http_method = "PATCH",
        http_path = "/deploymentstrategies/{DeploymentStrategyId}",
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
        http_path = "/applications/{ApplicationId}/environments/{EnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExtension(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExtension",
        input_schema = schemas.UpdateExtensionInput,
        output_schema = schemas.UpdateExtensionOutput,
        http_method = "PATCH",
        http_path = "/extensions/{ExtensionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExtensionAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExtensionAssociation",
        input_schema = schemas.UpdateExtensionAssociationInput,
        output_schema = schemas.UpdateExtensionAssociationOutput,
        http_method = "PATCH",
        http_path = "/extensionassociations/{ExtensionAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ValidateConfiguration",
        input_schema = schemas.ValidateConfigurationInput,
        output_schema = schemas.ValidateConfigurationOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
