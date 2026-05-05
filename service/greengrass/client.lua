local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("greengrass.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("greengrass.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociateRoleToGroupInput,
        output_schema = schemas.AssociateRoleToGroupOutput,
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
        input_schema = schemas.AssociateServiceRoleToAccountInput,
        output_schema = schemas.AssociateServiceRoleToAccountOutput,
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
        input_schema = schemas.CreateConnectorDefinitionInput,
        output_schema = schemas.CreateConnectorDefinitionOutput,
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
        input_schema = schemas.CreateConnectorDefinitionVersionInput,
        output_schema = schemas.CreateConnectorDefinitionVersionOutput,
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
        input_schema = schemas.CreateCoreDefinitionInput,
        output_schema = schemas.CreateCoreDefinitionOutput,
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
        input_schema = schemas.CreateCoreDefinitionVersionInput,
        output_schema = schemas.CreateCoreDefinitionVersionOutput,
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
        input_schema = schemas.CreateDeploymentInput,
        output_schema = schemas.CreateDeploymentOutput,
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
        input_schema = schemas.CreateDeviceDefinitionInput,
        output_schema = schemas.CreateDeviceDefinitionOutput,
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
        input_schema = schemas.CreateDeviceDefinitionVersionInput,
        output_schema = schemas.CreateDeviceDefinitionVersionOutput,
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
        input_schema = schemas.CreateFunctionDefinitionInput,
        output_schema = schemas.CreateFunctionDefinitionOutput,
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
        input_schema = schemas.CreateFunctionDefinitionVersionInput,
        output_schema = schemas.CreateFunctionDefinitionVersionOutput,
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
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
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
        input_schema = schemas.CreateGroupCertificateAuthorityInput,
        output_schema = schemas.CreateGroupCertificateAuthorityOutput,
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
        input_schema = schemas.CreateGroupVersionInput,
        output_schema = schemas.CreateGroupVersionOutput,
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
        input_schema = schemas.CreateLoggerDefinitionInput,
        output_schema = schemas.CreateLoggerDefinitionOutput,
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
        input_schema = schemas.CreateLoggerDefinitionVersionInput,
        output_schema = schemas.CreateLoggerDefinitionVersionOutput,
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
        input_schema = schemas.CreateResourceDefinitionInput,
        output_schema = schemas.CreateResourceDefinitionOutput,
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
        input_schema = schemas.CreateResourceDefinitionVersionInput,
        output_schema = schemas.CreateResourceDefinitionVersionOutput,
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
        input_schema = schemas.CreateSoftwareUpdateJobInput,
        output_schema = schemas.CreateSoftwareUpdateJobOutput,
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
        input_schema = schemas.CreateSubscriptionDefinitionInput,
        output_schema = schemas.CreateSubscriptionDefinitionOutput,
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
        input_schema = schemas.CreateSubscriptionDefinitionVersionInput,
        output_schema = schemas.CreateSubscriptionDefinitionVersionOutput,
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
        input_schema = schemas.DeleteConnectorDefinitionInput,
        output_schema = schemas.DeleteConnectorDefinitionOutput,
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
        input_schema = schemas.DeleteCoreDefinitionInput,
        output_schema = schemas.DeleteCoreDefinitionOutput,
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
        input_schema = schemas.DeleteDeviceDefinitionInput,
        output_schema = schemas.DeleteDeviceDefinitionOutput,
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
        input_schema = schemas.DeleteFunctionDefinitionInput,
        output_schema = schemas.DeleteFunctionDefinitionOutput,
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
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
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
        input_schema = schemas.DeleteLoggerDefinitionInput,
        output_schema = schemas.DeleteLoggerDefinitionOutput,
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
        input_schema = schemas.DeleteResourceDefinitionInput,
        output_schema = schemas.DeleteResourceDefinitionOutput,
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
        input_schema = schemas.DeleteSubscriptionDefinitionInput,
        output_schema = schemas.DeleteSubscriptionDefinitionOutput,
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
        input_schema = schemas.DisassociateRoleFromGroupInput,
        output_schema = schemas.DisassociateRoleFromGroupOutput,
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
        input_schema = schemas.DisassociateServiceRoleFromAccountInput,
        output_schema = schemas.DisassociateServiceRoleFromAccountOutput,
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
        input_schema = schemas.GetAssociatedRoleInput,
        output_schema = schemas.GetAssociatedRoleOutput,
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
        input_schema = schemas.GetBulkDeploymentStatusInput,
        output_schema = schemas.GetBulkDeploymentStatusOutput,
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
        input_schema = schemas.GetConnectivityInfoInput,
        output_schema = schemas.GetConnectivityInfoOutput,
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
        input_schema = schemas.GetConnectorDefinitionInput,
        output_schema = schemas.GetConnectorDefinitionOutput,
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
        input_schema = schemas.GetConnectorDefinitionVersionInput,
        output_schema = schemas.GetConnectorDefinitionVersionOutput,
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
        input_schema = schemas.GetCoreDefinitionInput,
        output_schema = schemas.GetCoreDefinitionOutput,
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
        input_schema = schemas.GetCoreDefinitionVersionInput,
        output_schema = schemas.GetCoreDefinitionVersionOutput,
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
        input_schema = schemas.GetDeploymentStatusInput,
        output_schema = schemas.GetDeploymentStatusOutput,
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
        input_schema = schemas.GetDeviceDefinitionInput,
        output_schema = schemas.GetDeviceDefinitionOutput,
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
        input_schema = schemas.GetDeviceDefinitionVersionInput,
        output_schema = schemas.GetDeviceDefinitionVersionOutput,
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
        input_schema = schemas.GetFunctionDefinitionInput,
        output_schema = schemas.GetFunctionDefinitionOutput,
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
        input_schema = schemas.GetFunctionDefinitionVersionInput,
        output_schema = schemas.GetFunctionDefinitionVersionOutput,
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
        input_schema = schemas.GetGroupInput,
        output_schema = schemas.GetGroupOutput,
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
        input_schema = schemas.GetGroupCertificateAuthorityInput,
        output_schema = schemas.GetGroupCertificateAuthorityOutput,
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
        input_schema = schemas.GetGroupCertificateConfigurationInput,
        output_schema = schemas.GetGroupCertificateConfigurationOutput,
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
        input_schema = schemas.GetGroupVersionInput,
        output_schema = schemas.GetGroupVersionOutput,
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
        input_schema = schemas.GetLoggerDefinitionInput,
        output_schema = schemas.GetLoggerDefinitionOutput,
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
        input_schema = schemas.GetLoggerDefinitionVersionInput,
        output_schema = schemas.GetLoggerDefinitionVersionOutput,
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
        input_schema = schemas.GetResourceDefinitionInput,
        output_schema = schemas.GetResourceDefinitionOutput,
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
        input_schema = schemas.GetResourceDefinitionVersionInput,
        output_schema = schemas.GetResourceDefinitionVersionOutput,
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
        input_schema = schemas.GetServiceRoleForAccountInput,
        output_schema = schemas.GetServiceRoleForAccountOutput,
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
        input_schema = schemas.GetSubscriptionDefinitionInput,
        output_schema = schemas.GetSubscriptionDefinitionOutput,
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
        input_schema = schemas.GetSubscriptionDefinitionVersionInput,
        output_schema = schemas.GetSubscriptionDefinitionVersionOutput,
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
        input_schema = schemas.GetThingRuntimeConfigurationInput,
        output_schema = schemas.GetThingRuntimeConfigurationOutput,
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
        input_schema = schemas.ListBulkDeploymentDetailedReportsInput,
        output_schema = schemas.ListBulkDeploymentDetailedReportsOutput,
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
        input_schema = schemas.ListBulkDeploymentsInput,
        output_schema = schemas.ListBulkDeploymentsOutput,
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
        input_schema = schemas.ListConnectorDefinitionsInput,
        output_schema = schemas.ListConnectorDefinitionsOutput,
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
        input_schema = schemas.ListConnectorDefinitionVersionsInput,
        output_schema = schemas.ListConnectorDefinitionVersionsOutput,
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
        input_schema = schemas.ListCoreDefinitionsInput,
        output_schema = schemas.ListCoreDefinitionsOutput,
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
        input_schema = schemas.ListCoreDefinitionVersionsInput,
        output_schema = schemas.ListCoreDefinitionVersionsOutput,
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
        input_schema = schemas.ListDeploymentsInput,
        output_schema = schemas.ListDeploymentsOutput,
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
        input_schema = schemas.ListDeviceDefinitionsInput,
        output_schema = schemas.ListDeviceDefinitionsOutput,
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
        input_schema = schemas.ListDeviceDefinitionVersionsInput,
        output_schema = schemas.ListDeviceDefinitionVersionsOutput,
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
        input_schema = schemas.ListFunctionDefinitionsInput,
        output_schema = schemas.ListFunctionDefinitionsOutput,
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
        input_schema = schemas.ListFunctionDefinitionVersionsInput,
        output_schema = schemas.ListFunctionDefinitionVersionsOutput,
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
        input_schema = schemas.ListGroupCertificateAuthoritiesInput,
        output_schema = schemas.ListGroupCertificateAuthoritiesOutput,
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
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
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
        input_schema = schemas.ListGroupVersionsInput,
        output_schema = schemas.ListGroupVersionsOutput,
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
        input_schema = schemas.ListLoggerDefinitionsInput,
        output_schema = schemas.ListLoggerDefinitionsOutput,
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
        input_schema = schemas.ListLoggerDefinitionVersionsInput,
        output_schema = schemas.ListLoggerDefinitionVersionsOutput,
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
        input_schema = schemas.ListResourceDefinitionsInput,
        output_schema = schemas.ListResourceDefinitionsOutput,
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
        input_schema = schemas.ListResourceDefinitionVersionsInput,
        output_schema = schemas.ListResourceDefinitionVersionsOutput,
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
        input_schema = schemas.ListSubscriptionDefinitionsInput,
        output_schema = schemas.ListSubscriptionDefinitionsOutput,
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
        input_schema = schemas.ListSubscriptionDefinitionVersionsInput,
        output_schema = schemas.ListSubscriptionDefinitionVersionsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ResetDeploymentsInput,
        output_schema = schemas.ResetDeploymentsOutput,
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
        input_schema = schemas.StartBulkDeploymentInput,
        output_schema = schemas.StartBulkDeploymentOutput,
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
        input_schema = schemas.StopBulkDeploymentInput,
        output_schema = schemas.StopBulkDeploymentOutput,
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

function Client:updateConnectivityInfo(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectivityInfo",
        input_schema = schemas.UpdateConnectivityInfoInput,
        output_schema = schemas.UpdateConnectivityInfoOutput,
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
        input_schema = schemas.UpdateConnectorDefinitionInput,
        output_schema = schemas.UpdateConnectorDefinitionOutput,
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
        input_schema = schemas.UpdateCoreDefinitionInput,
        output_schema = schemas.UpdateCoreDefinitionOutput,
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
        input_schema = schemas.UpdateDeviceDefinitionInput,
        output_schema = schemas.UpdateDeviceDefinitionOutput,
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
        input_schema = schemas.UpdateFunctionDefinitionInput,
        output_schema = schemas.UpdateFunctionDefinitionOutput,
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
        input_schema = schemas.UpdateGroupInput,
        output_schema = schemas.UpdateGroupOutput,
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
        input_schema = schemas.UpdateGroupCertificateConfigurationInput,
        output_schema = schemas.UpdateGroupCertificateConfigurationOutput,
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
        input_schema = schemas.UpdateLoggerDefinitionInput,
        output_schema = schemas.UpdateLoggerDefinitionOutput,
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
        input_schema = schemas.UpdateResourceDefinitionInput,
        output_schema = schemas.UpdateResourceDefinitionOutput,
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
        input_schema = schemas.UpdateSubscriptionDefinitionInput,
        output_schema = schemas.UpdateSubscriptionDefinitionOutput,
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
        input_schema = schemas.UpdateThingRuntimeConfigurationInput,
        output_schema = schemas.UpdateThingRuntimeConfigurationOutput,
        http_method = "PUT",
        http_path = "/greengrass/things/{ThingName}/runtimeconfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
