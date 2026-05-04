local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appconfig.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appconfig.types")

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
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
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
        input_schema = types.CreateConfigurationProfileInput,
        output_schema = types.CreateConfigurationProfileOutput,
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
        input_schema = types.CreateDeploymentStrategyInput,
        output_schema = types.CreateDeploymentStrategyOutput,
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
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
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
        input_schema = types.CreateExtensionInput,
        output_schema = types.CreateExtensionOutput,
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
        input_schema = types.CreateExtensionAssociationInput,
        output_schema = types.CreateExtensionAssociationOutput,
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
        input_schema = types.CreateHostedConfigurationVersionInput,
        output_schema = types.CreateHostedConfigurationVersionOutput,
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
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
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
        input_schema = types.DeleteConfigurationProfileInput,
        output_schema = types.DeleteConfigurationProfileOutput,
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
        input_schema = types.DeleteDeploymentStrategyInput,
        output_schema = types.DeleteDeploymentStrategyOutput,
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
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
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
        input_schema = types.DeleteExtensionInput,
        output_schema = types.DeleteExtensionOutput,
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
        input_schema = types.DeleteExtensionAssociationInput,
        output_schema = types.DeleteExtensionAssociationOutput,
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
        input_schema = types.DeleteHostedConfigurationVersionInput,
        output_schema = types.DeleteHostedConfigurationVersionOutput,
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
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
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
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
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
        input_schema = types.GetConfigurationInput,
        output_schema = types.GetConfigurationOutput,
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
        input_schema = types.GetConfigurationProfileInput,
        output_schema = types.GetConfigurationProfileOutput,
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
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
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
        input_schema = types.GetDeploymentStrategyInput,
        output_schema = types.GetDeploymentStrategyOutput,
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
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
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
        input_schema = types.GetExtensionInput,
        output_schema = types.GetExtensionOutput,
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
        input_schema = types.GetExtensionAssociationInput,
        output_schema = types.GetExtensionAssociationOutput,
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
        input_schema = types.GetHostedConfigurationVersionInput,
        output_schema = types.GetHostedConfigurationVersionOutput,
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
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
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
        input_schema = types.ListConfigurationProfilesInput,
        output_schema = types.ListConfigurationProfilesOutput,
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
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
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
        input_schema = types.ListDeploymentStrategiesInput,
        output_schema = types.ListDeploymentStrategiesOutput,
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
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
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
        input_schema = types.ListExtensionAssociationsInput,
        output_schema = types.ListExtensionAssociationsOutput,
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
        input_schema = types.ListExtensionsInput,
        output_schema = types.ListExtensionsOutput,
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
        input_schema = types.ListHostedConfigurationVersionsInput,
        output_schema = types.ListHostedConfigurationVersionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.StartDeploymentInput,
        output_schema = types.StartDeploymentOutput,
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
        input_schema = types.StopDeploymentInput,
        output_schema = types.StopDeploymentOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
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
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
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
        input_schema = types.UpdateConfigurationProfileInput,
        output_schema = types.UpdateConfigurationProfileOutput,
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
        input_schema = types.UpdateDeploymentStrategyInput,
        output_schema = types.UpdateDeploymentStrategyOutput,
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
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
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
        input_schema = types.UpdateExtensionInput,
        output_schema = types.UpdateExtensionOutput,
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
        input_schema = types.UpdateExtensionAssociationInput,
        output_schema = types.UpdateExtensionAssociationOutput,
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
        input_schema = types.ValidateConfigurationInput,
        output_schema = types.ValidateConfigurationOutput,
        http_method = "POST",
        http_path = "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
