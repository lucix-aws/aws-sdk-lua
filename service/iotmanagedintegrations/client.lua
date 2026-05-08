



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotmanagedintegrations.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotmanagedintegrations.schemas")
local traits = require("smithy.traits")
local types = require("iotmanagedintegrations.types")
local sdk_defaults = require("aws.sdk_defaults")

























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "IotManagedIntegrations"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotmanagedintegrations", signing_region = c.region } }
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

function C:createAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountAssociation, input, options)
end

function C:createCloudConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudConnector, input, options)
end

function C:createConnectorDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectorDestination, input, options)
end

function C:createCredentialLocker(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCredentialLocker, input, options)
end

function C:createDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDestination, input, options)
end

function C:createEventLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventLogConfiguration, input, options)
end

function C:createManagedThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateManagedThing, input, options)
end

function C:createNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotificationConfiguration, input, options)
end

function C:createOtaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOtaTask, input, options)
end

function C:createOtaTaskConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOtaTaskConfiguration, input, options)
end

function C:createProvisioningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisioningProfile, input, options)
end

function C:deleteAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountAssociation, input, options)
end

function C:deleteCloudConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudConnector, input, options)
end

function C:deleteConnectorDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectorDestination, input, options)
end

function C:deleteCredentialLocker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCredentialLocker, input, options)
end

function C:deleteDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDestination, input, options)
end

function C:deleteEventLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventLogConfiguration, input, options)
end

function C:deleteManagedThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteManagedThing, input, options)
end

function C:deleteNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationConfiguration, input, options)
end

function C:deleteOtaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOtaTask, input, options)
end

function C:deleteOtaTaskConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOtaTaskConfiguration, input, options)
end

function C:deleteProvisioningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisioningProfile, input, options)
end

function C:deregisterAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterAccountAssociation, input, options)
end

function C:getAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountAssociation, input, options)
end

function C:getCloudConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudConnector, input, options)
end

function C:getConnectorDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectorDestination, input, options)
end

function C:getCredentialLocker(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCredentialLocker, input, options)
end

function C:getCustomEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomEndpoint, input, options)
end

function C:getDefaultEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultEncryptionConfiguration, input, options)
end

function C:getDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDestination, input, options)
end

function C:getDeviceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceDiscovery, input, options)
end

function C:getEventLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventLogConfiguration, input, options)
end

function C:getHubConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHubConfiguration, input, options)
end

function C:getManagedThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThing, input, options)
end

function C:getManagedThingCapabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThingCapabilities, input, options)
end

function C:getManagedThingCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThingCertificate, input, options)
end

function C:getManagedThingConnectivityData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThingConnectivityData, input, options)
end

function C:getManagedThingMetaData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThingMetaData, input, options)
end

function C:getManagedThingState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedThingState, input, options)
end

function C:getNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationConfiguration, input, options)
end

function C:getOtaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOtaTask, input, options)
end

function C:getOtaTaskConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOtaTaskConfiguration, input, options)
end

function C:getProvisioningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProvisioningProfile, input, options)
end

function C:getRuntimeLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRuntimeLogConfiguration, input, options)
end

function C:getSchemaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaVersion, input, options)
end

function C:listAccountAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssociations, input, options)
end

function C:listCloudConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudConnectors, input, options)
end

function C:listConnectorDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorDestinations, input, options)
end

function C:listCredentialLockers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCredentialLockers, input, options)
end

function C:listDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDestinations, input, options)
end

function C:listDeviceDiscoveries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceDiscoveries, input, options)
end

function C:listDiscoveredDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoveredDevices, input, options)
end

function C:listEventLogConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventLogConfigurations, input, options)
end

function C:listManagedThingAccountAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedThingAccountAssociations, input, options)
end

function C:listManagedThings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedThings, input, options)
end

function C:listManagedThingSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedThingSchemas, input, options)
end

function C:listNotificationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationConfigurations, input, options)
end

function C:listOtaTaskConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOtaTaskConfigurations, input, options)
end

function C:listOtaTaskExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOtaTaskExecutions, input, options)
end

function C:listOtaTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOtaTasks, input, options)
end

function C:listProvisioningProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisioningProfiles, input, options)
end

function C:listSchemaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemaVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putDefaultEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDefaultEncryptionConfiguration, input, options)
end

function C:putHubConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutHubConfiguration, input, options)
end

function C:putRuntimeLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRuntimeLogConfiguration, input, options)
end

function C:registerAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAccountAssociation, input, options)
end

function C:registerCustomEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCustomEndpoint, input, options)
end

function C:resetRuntimeLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetRuntimeLogConfiguration, input, options)
end

function C:sendConnectorEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendConnectorEvent, input, options)
end

function C:sendManagedThingCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendManagedThingCommand, input, options)
end

function C:startAccountAssociationRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAccountAssociationRefresh, input, options)
end

function C:startDeviceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeviceDiscovery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountAssociation, input, options)
end

function C:updateCloudConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCloudConnector, input, options)
end

function C:updateConnectorDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectorDestination, input, options)
end

function C:updateDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDestination, input, options)
end

function C:updateEventLogConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventLogConfiguration, input, options)
end

function C:updateManagedThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateManagedThing, input, options)
end

function C:updateNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationConfiguration, input, options)
end

function C:updateOtaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOtaTask, input, options)
end

return M
