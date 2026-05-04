local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("greengrass.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("greengrass.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Greengrass"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "greengrass", signing_region = cfg.region } }
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

function Client:associateRoleToGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateRoleToGroup",
        input_schema = types.AssociateRoleToGroupInput,
        output_schema = types.AssociateRoleToGroupOutput,
        http_method = "PUT",
        http_path = "/greengrass/groups/{GroupId}/role",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateServiceRoleToAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateServiceRoleToAccount",
        input_schema = types.AssociateServiceRoleToAccountInput,
        output_schema = types.AssociateServiceRoleToAccountOutput,
        http_method = "PUT",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectorDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorDefinition",
        input_schema = types.CreateConnectorDefinitionInput,
        output_schema = types.CreateConnectorDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectorDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorDefinitionVersion",
        input_schema = types.CreateConnectorDefinitionVersionInput,
        output_schema = types.CreateConnectorDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoreDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreDefinition",
        input_schema = types.CreateCoreDefinitionInput,
        output_schema = types.CreateCoreDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/cores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoreDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreDefinitionVersion",
        input_schema = types.CreateCoreDefinitionVersionInput,
        output_schema = types.CreateCoreDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions",
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
        http_path = "/greengrass/groups/{GroupId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeviceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeviceDefinition",
        input_schema = types.CreateDeviceDefinitionInput,
        output_schema = types.CreateDeviceDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeviceDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeviceDefinitionVersion",
        input_schema = types.CreateDeviceDefinitionVersionInput,
        output_schema = types.CreateDeviceDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunctionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunctionDefinition",
        input_schema = types.CreateFunctionDefinitionInput,
        output_schema = types.CreateFunctionDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunctionDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunctionDefinitionVersion",
        input_schema = types.CreateFunctionDefinitionVersionInput,
        output_schema = types.CreateFunctionDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/greengrass/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroupCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroupCertificateAuthority",
        input_schema = types.CreateGroupCertificateAuthorityInput,
        output_schema = types.CreateGroupCertificateAuthorityOutput,
        http_method = "POST",
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroupVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroupVersion",
        input_schema = types.CreateGroupVersionInput,
        output_schema = types.CreateGroupVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/groups/{GroupId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoggerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoggerDefinition",
        input_schema = types.CreateLoggerDefinitionInput,
        output_schema = types.CreateLoggerDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/loggers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoggerDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoggerDefinitionVersion",
        input_schema = types.CreateLoggerDefinitionVersionInput,
        output_schema = types.CreateLoggerDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceDefinition",
        input_schema = types.CreateResourceDefinitionInput,
        output_schema = types.CreateResourceDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceDefinitionVersion",
        input_schema = types.CreateResourceDefinitionVersionInput,
        output_schema = types.CreateResourceDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSoftwareUpdateJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateSoftwareUpdateJob",
        input_schema = types.CreateSoftwareUpdateJobInput,
        output_schema = types.CreateSoftwareUpdateJobOutput,
        http_method = "POST",
        http_path = "/greengrass/updates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriptionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionDefinition",
        input_schema = types.CreateSubscriptionDefinitionInput,
        output_schema = types.CreateSubscriptionDefinitionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriptionDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionDefinitionVersion",
        input_schema = types.CreateSubscriptionDefinitionVersionInput,
        output_schema = types.CreateSubscriptionDefinitionVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectorDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorDefinition",
        input_schema = types.DeleteConnectorDefinitionInput,
        output_schema = types.DeleteConnectorDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoreDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreDefinition",
        input_schema = types.DeleteCoreDefinitionInput,
        output_schema = types.DeleteCoreDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeviceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeviceDefinition",
        input_schema = types.DeleteDeviceDefinitionInput,
        output_schema = types.DeleteDeviceDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunctionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunctionDefinition",
        input_schema = types.DeleteFunctionDefinitionInput,
        output_schema = types.DeleteFunctionDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/greengrass/groups/{GroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoggerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoggerDefinition",
        input_schema = types.DeleteLoggerDefinitionInput,
        output_schema = types.DeleteLoggerDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceDefinition",
        input_schema = types.DeleteResourceDefinitionInput,
        output_schema = types.DeleteResourceDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriptionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionDefinition",
        input_schema = types.DeleteSubscriptionDefinitionInput,
        output_schema = types.DeleteSubscriptionDefinitionOutput,
        http_method = "DELETE",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRoleFromGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRoleFromGroup",
        input_schema = types.DisassociateRoleFromGroupInput,
        output_schema = types.DisassociateRoleFromGroupOutput,
        http_method = "DELETE",
        http_path = "/greengrass/groups/{GroupId}/role",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateServiceRoleFromAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateServiceRoleFromAccount",
        input_schema = types.DisassociateServiceRoleFromAccountInput,
        output_schema = types.DisassociateServiceRoleFromAccountOutput,
        http_method = "DELETE",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssociatedRole(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociatedRole",
        input_schema = types.GetAssociatedRoleInput,
        output_schema = types.GetAssociatedRoleOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/role",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBulkDeploymentStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetBulkDeploymentStatus",
        input_schema = types.GetBulkDeploymentStatusInput,
        output_schema = types.GetBulkDeploymentStatusOutput,
        http_method = "GET",
        http_path = "/greengrass/bulk/deployments/{BulkDeploymentId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectivityInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectivityInfo",
        input_schema = types.GetConnectivityInfoInput,
        output_schema = types.GetConnectivityInfoOutput,
        http_method = "GET",
        http_path = "/greengrass/things/{ThingName}/connectivityInfo",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectorDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorDefinition",
        input_schema = types.GetConnectorDefinitionInput,
        output_schema = types.GetConnectorDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectorDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorDefinitionVersion",
        input_schema = types.GetConnectorDefinitionVersionInput,
        output_schema = types.GetConnectorDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreDefinition",
        input_schema = types.GetCoreDefinitionInput,
        output_schema = types.GetCoreDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreDefinitionVersion",
        input_schema = types.GetCoreDefinitionVersionInput,
        output_schema = types.GetCoreDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentStatus",
        input_schema = types.GetDeploymentStatusInput,
        output_schema = types.GetDeploymentStatusOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeviceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceDefinition",
        input_schema = types.GetDeviceDefinitionInput,
        output_schema = types.GetDeviceDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeviceDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceDefinitionVersion",
        input_schema = types.GetDeviceDefinitionVersionInput,
        output_schema = types.GetDeviceDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionDefinition",
        input_schema = types.GetFunctionDefinitionInput,
        output_schema = types.GetFunctionDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunctionDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetFunctionDefinitionVersion",
        input_schema = types.GetFunctionDefinitionVersionInput,
        output_schema = types.GetFunctionDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupCertificateAuthority(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupCertificateAuthority",
        input_schema = types.GetGroupCertificateAuthorityInput,
        output_schema = types.GetGroupCertificateAuthorityOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupCertificateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupCertificateConfiguration",
        input_schema = types.GetGroupCertificateConfigurationInput,
        output_schema = types.GetGroupCertificateConfigurationOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupVersion",
        input_schema = types.GetGroupVersionInput,
        output_schema = types.GetGroupVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/versions/{GroupVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoggerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggerDefinition",
        input_schema = types.GetLoggerDefinitionInput,
        output_schema = types.GetLoggerDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoggerDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggerDefinitionVersion",
        input_schema = types.GetLoggerDefinitionVersionInput,
        output_schema = types.GetLoggerDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceDefinition",
        input_schema = types.GetResourceDefinitionInput,
        output_schema = types.GetResourceDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceDefinitionVersion",
        input_schema = types.GetResourceDefinitionVersionInput,
        output_schema = types.GetResourceDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceRoleForAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceRoleForAccount",
        input_schema = types.GetServiceRoleForAccountInput,
        output_schema = types.GetServiceRoleForAccountOutput,
        http_method = "GET",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionDefinition",
        input_schema = types.GetSubscriptionDefinitionInput,
        output_schema = types.GetSubscriptionDefinitionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionDefinitionVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionDefinitionVersion",
        input_schema = types.GetSubscriptionDefinitionVersionInput,
        output_schema = types.GetSubscriptionDefinitionVersionOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThingRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetThingRuntimeConfiguration",
        input_schema = types.GetThingRuntimeConfigurationInput,
        output_schema = types.GetThingRuntimeConfigurationOutput,
        http_method = "GET",
        http_path = "/greengrass/things/{ThingName}/runtimeconfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBulkDeploymentDetailedReports(input, options)
    return self:invokeOperation(input, {
        name = "ListBulkDeploymentDetailedReports",
        input_schema = types.ListBulkDeploymentDetailedReportsInput,
        output_schema = types.ListBulkDeploymentDetailedReportsOutput,
        http_method = "GET",
        http_path = "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBulkDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListBulkDeployments",
        input_schema = types.ListBulkDeploymentsInput,
        output_schema = types.ListBulkDeploymentsOutput,
        http_method = "GET",
        http_path = "/greengrass/bulk/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectorDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorDefinitions",
        input_schema = types.ListConnectorDefinitionsInput,
        output_schema = types.ListConnectorDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectorDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorDefinitionVersions",
        input_schema = types.ListConnectorDefinitionVersionsInput,
        output_schema = types.ListConnectorDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreDefinitions",
        input_schema = types.ListCoreDefinitionsInput,
        output_schema = types.ListCoreDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/cores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreDefinitionVersions",
        input_schema = types.ListCoreDefinitionVersionsInput,
        output_schema = types.ListCoreDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}/versions",
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
        http_path = "/greengrass/groups/{GroupId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceDefinitions",
        input_schema = types.ListDeviceDefinitionsInput,
        output_schema = types.ListDeviceDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceDefinitionVersions",
        input_schema = types.ListDeviceDefinitionVersionsInput,
        output_schema = types.ListDeviceDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionDefinitions",
        input_schema = types.ListFunctionDefinitionsInput,
        output_schema = types.ListFunctionDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctionDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctionDefinitionVersions",
        input_schema = types.ListFunctionDefinitionVersionsInput,
        output_schema = types.ListFunctionDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupCertificateAuthorities(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupCertificateAuthorities",
        input_schema = types.ListGroupCertificateAuthoritiesInput,
        output_schema = types.ListGroupCertificateAuthoritiesOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "GET",
        http_path = "/greengrass/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupVersions",
        input_schema = types.ListGroupVersionsInput,
        output_schema = types.ListGroupVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/groups/{GroupId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLoggerDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListLoggerDefinitions",
        input_schema = types.ListLoggerDefinitionsInput,
        output_schema = types.ListLoggerDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/loggers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLoggerDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListLoggerDefinitionVersions",
        input_schema = types.ListLoggerDefinitionVersionsInput,
        output_schema = types.ListLoggerDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceDefinitions",
        input_schema = types.ListResourceDefinitionsInput,
        output_schema = types.ListResourceDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceDefinitionVersions",
        input_schema = types.ListResourceDefinitionVersionsInput,
        output_schema = types.ListResourceDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptionDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionDefinitions",
        input_schema = types.ListSubscriptionDefinitionsInput,
        output_schema = types.ListSubscriptionDefinitionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptionDefinitionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionDefinitionVersions",
        input_schema = types.ListSubscriptionDefinitionVersionsInput,
        output_schema = types.ListSubscriptionDefinitionVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
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

function Client:resetDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ResetDeployments",
        input_schema = types.ResetDeploymentsInput,
        output_schema = types.ResetDeploymentsOutput,
        http_method = "POST",
        http_path = "/greengrass/groups/{GroupId}/deployments/$reset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBulkDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartBulkDeployment",
        input_schema = types.StartBulkDeploymentInput,
        output_schema = types.StartBulkDeploymentOutput,
        http_method = "POST",
        http_path = "/greengrass/bulk/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBulkDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopBulkDeployment",
        input_schema = types.StopBulkDeploymentInput,
        output_schema = types.StopBulkDeploymentOutput,
        http_method = "PUT",
        http_path = "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop",
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

function Client:updateConnectivityInfo(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectivityInfo",
        input_schema = types.UpdateConnectivityInfoInput,
        output_schema = types.UpdateConnectivityInfoOutput,
        http_method = "PUT",
        http_path = "/greengrass/things/{ThingName}/connectivityInfo",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectorDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorDefinition",
        input_schema = types.UpdateConnectorDefinitionInput,
        output_schema = types.UpdateConnectorDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCoreDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCoreDefinition",
        input_schema = types.UpdateCoreDefinitionInput,
        output_schema = types.UpdateCoreDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/cores/{CoreDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeviceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceDefinition",
        input_schema = types.UpdateDeviceDefinitionInput,
        output_schema = types.UpdateDeviceDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/devices/{DeviceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunctionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunctionDefinition",
        input_schema = types.UpdateFunctionDefinitionInput,
        output_schema = types.UpdateFunctionDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/functions/{FunctionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "PUT",
        http_path = "/greengrass/groups/{GroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroupCertificateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroupCertificateConfiguration",
        input_schema = types.UpdateGroupCertificateConfigurationInput,
        output_schema = types.UpdateGroupCertificateConfigurationOutput,
        http_method = "PUT",
        http_path = "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLoggerDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggerDefinition",
        input_schema = types.UpdateLoggerDefinitionInput,
        output_schema = types.UpdateLoggerDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/loggers/{LoggerDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceDefinition",
        input_schema = types.UpdateResourceDefinitionInput,
        output_schema = types.UpdateResourceDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/resources/{ResourceDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriptionDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionDefinition",
        input_schema = types.UpdateSubscriptionDefinitionInput,
        output_schema = types.UpdateSubscriptionDefinitionOutput,
        http_method = "PUT",
        http_path = "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThingRuntimeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingRuntimeConfiguration",
        input_schema = types.UpdateThingRuntimeConfigurationInput,
        output_schema = types.UpdateThingRuntimeConfigurationOutput,
        http_method = "PUT",
        http_path = "/greengrass/things/{ThingName}/runtimeconfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
