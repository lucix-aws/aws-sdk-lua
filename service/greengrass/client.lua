



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("greengrass.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("greengrass.schemas")
local traits = require("smithy.traits")
local types = require("greengrass.types")
local sdk_defaults = require("aws.sdk_defaults")


































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Greengrass"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "greengrass", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateRoleToGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateRoleToGroup, input, options)
end

function C:associateServiceRoleToAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateServiceRoleToAccount, input, options)
end

function C:createConnectorDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectorDefinition, input, options)
end

function C:createConnectorDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectorDefinitionVersion, input, options)
end

function C:createCoreDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoreDefinition, input, options)
end

function C:createCoreDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoreDefinitionVersion, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createDeviceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeviceDefinition, input, options)
end

function C:createDeviceDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeviceDefinitionVersion, input, options)
end

function C:createFunctionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunctionDefinition, input, options)
end

function C:createFunctionDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunctionDefinitionVersion, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createGroupCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroupCertificateAuthority, input, options)
end

function C:createGroupVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroupVersion, input, options)
end

function C:createLoggerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoggerDefinition, input, options)
end

function C:createLoggerDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoggerDefinitionVersion, input, options)
end

function C:createResourceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceDefinition, input, options)
end

function C:createResourceDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceDefinitionVersion, input, options)
end

function C:createSoftwareUpdateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSoftwareUpdateJob, input, options)
end

function C:createSubscriptionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriptionDefinition, input, options)
end

function C:createSubscriptionDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriptionDefinitionVersion, input, options)
end

function C:deleteConnectorDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectorDefinition, input, options)
end

function C:deleteCoreDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoreDefinition, input, options)
end

function C:deleteDeviceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeviceDefinition, input, options)
end

function C:deleteFunctionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunctionDefinition, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteLoggerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoggerDefinition, input, options)
end

function C:deleteResourceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceDefinition, input, options)
end

function C:deleteSubscriptionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriptionDefinition, input, options)
end

function C:disassociateRoleFromGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRoleFromGroup, input, options)
end

function C:disassociateServiceRoleFromAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateServiceRoleFromAccount, input, options)
end

function C:getAssociatedRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociatedRole, input, options)
end

function C:getBulkDeploymentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBulkDeploymentStatus, input, options)
end

function C:getConnectivityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectivityInfo, input, options)
end

function C:getConnectorDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectorDefinition, input, options)
end

function C:getConnectorDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectorDefinitionVersion, input, options)
end

function C:getCoreDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreDefinition, input, options)
end

function C:getCoreDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreDefinitionVersion, input, options)
end

function C:getDeploymentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentStatus, input, options)
end

function C:getDeviceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceDefinition, input, options)
end

function C:getDeviceDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceDefinitionVersion, input, options)
end

function C:getFunctionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionDefinition, input, options)
end

function C:getFunctionDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunctionDefinitionVersion, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getGroupCertificateAuthority(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupCertificateAuthority, input, options)
end

function C:getGroupCertificateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupCertificateConfiguration, input, options)
end

function C:getGroupVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupVersion, input, options)
end

function C:getLoggerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggerDefinition, input, options)
end

function C:getLoggerDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggerDefinitionVersion, input, options)
end

function C:getResourceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceDefinition, input, options)
end

function C:getResourceDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceDefinitionVersion, input, options)
end

function C:getServiceRoleForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceRoleForAccount, input, options)
end

function C:getSubscriptionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionDefinition, input, options)
end

function C:getSubscriptionDefinitionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionDefinitionVersion, input, options)
end

function C:getThingRuntimeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThingRuntimeConfiguration, input, options)
end

function C:listBulkDeploymentDetailedReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBulkDeploymentDetailedReports, input, options)
end

function C:listBulkDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBulkDeployments, input, options)
end

function C:listConnectorDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorDefinitions, input, options)
end

function C:listConnectorDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorDefinitionVersions, input, options)
end

function C:listCoreDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreDefinitions, input, options)
end

function C:listCoreDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreDefinitionVersions, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listDeviceDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceDefinitions, input, options)
end

function C:listDeviceDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceDefinitionVersions, input, options)
end

function C:listFunctionDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionDefinitions, input, options)
end

function C:listFunctionDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctionDefinitionVersions, input, options)
end

function C:listGroupCertificateAuthorities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupCertificateAuthorities, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listGroupVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupVersions, input, options)
end

function C:listLoggerDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoggerDefinitions, input, options)
end

function C:listLoggerDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoggerDefinitionVersions, input, options)
end

function C:listResourceDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceDefinitions, input, options)
end

function C:listResourceDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceDefinitionVersions, input, options)
end

function C:listSubscriptionDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionDefinitions, input, options)
end

function C:listSubscriptionDefinitionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionDefinitionVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:resetDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetDeployments, input, options)
end

function C:startBulkDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBulkDeployment, input, options)
end

function C:stopBulkDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBulkDeployment, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnectivityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectivityInfo, input, options)
end

function C:updateConnectorDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectorDefinition, input, options)
end

function C:updateCoreDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCoreDefinition, input, options)
end

function C:updateDeviceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeviceDefinition, input, options)
end

function C:updateFunctionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunctionDefinition, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateGroupCertificateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroupCertificateConfiguration, input, options)
end

function C:updateLoggerDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoggerDefinition, input, options)
end

function C:updateResourceDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceDefinition, input, options)
end

function C:updateSubscriptionDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriptionDefinition, input, options)
end

function C:updateThingRuntimeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThingRuntimeConfiguration, input, options)
end

return M
