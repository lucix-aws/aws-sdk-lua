



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotwireless.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotwireless.schemas")
local traits = require("smithy.traits")
local types = require("iotwireless.types")
local sdk_defaults = require("aws.sdk_defaults")






















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "iotwireless"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotwireless", signing_region = c.region } }
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

function C:associateAwsAccountWithPartnerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAwsAccountWithPartnerAccount, input, options)
end

function C:associateMulticastGroupWithFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMulticastGroupWithFuotaTask, input, options)
end

function C:associateWirelessDeviceWithFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWirelessDeviceWithFuotaTask, input, options)
end

function C:associateWirelessDeviceWithMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWirelessDeviceWithMulticastGroup, input, options)
end

function C:associateWirelessDeviceWithThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWirelessDeviceWithThing, input, options)
end

function C:associateWirelessGatewayWithCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWirelessGatewayWithCertificate, input, options)
end

function C:associateWirelessGatewayWithThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWirelessGatewayWithThing, input, options)
end

function C:cancelMulticastGroupSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMulticastGroupSession, input, options)
end

function C:createDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDestination, input, options)
end

function C:createDeviceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeviceProfile, input, options)
end

function C:createFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFuotaTask, input, options)
end

function C:createMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMulticastGroup, input, options)
end

function C:createNetworkAnalyzerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkAnalyzerConfiguration, input, options)
end

function C:createServiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceProfile, input, options)
end

function C:createWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWirelessDevice, input, options)
end

function C:createWirelessGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWirelessGateway, input, options)
end

function C:createWirelessGatewayTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWirelessGatewayTask, input, options)
end

function C:createWirelessGatewayTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWirelessGatewayTaskDefinition, input, options)
end

function C:deleteDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDestination, input, options)
end

function C:deleteDeviceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeviceProfile, input, options)
end

function C:deleteFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFuotaTask, input, options)
end

function C:deleteMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMulticastGroup, input, options)
end

function C:deleteNetworkAnalyzerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkAnalyzerConfiguration, input, options)
end

function C:deleteQueuedMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueuedMessages, input, options)
end

function C:deleteServiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceProfile, input, options)
end

function C:deleteWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWirelessDevice, input, options)
end

function C:deleteWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWirelessDeviceImportTask, input, options)
end

function C:deleteWirelessGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWirelessGateway, input, options)
end

function C:deleteWirelessGatewayTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWirelessGatewayTask, input, options)
end

function C:deleteWirelessGatewayTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWirelessGatewayTaskDefinition, input, options)
end

function C:deregisterWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterWirelessDevice, input, options)
end

function C:disassociateAwsAccountFromPartnerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAwsAccountFromPartnerAccount, input, options)
end

function C:disassociateMulticastGroupFromFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMulticastGroupFromFuotaTask, input, options)
end

function C:disassociateWirelessDeviceFromFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWirelessDeviceFromFuotaTask, input, options)
end

function C:disassociateWirelessDeviceFromMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWirelessDeviceFromMulticastGroup, input, options)
end

function C:disassociateWirelessDeviceFromThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWirelessDeviceFromThing, input, options)
end

function C:disassociateWirelessGatewayFromCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWirelessGatewayFromCertificate, input, options)
end

function C:disassociateWirelessGatewayFromThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWirelessGatewayFromThing, input, options)
end

function C:getDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDestination, input, options)
end

function C:getDeviceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceProfile, input, options)
end

function C:getEventConfigurationByResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventConfigurationByResourceTypes, input, options)
end

function C:getFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFuotaTask, input, options)
end

function C:getLogLevelsByResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogLevelsByResourceTypes, input, options)
end

function C:getMetricConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricConfiguration, input, options)
end

function C:getMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetrics, input, options)
end

function C:getMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMulticastGroup, input, options)
end

function C:getMulticastGroupSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMulticastGroupSession, input, options)
end

function C:getNetworkAnalyzerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkAnalyzerConfiguration, input, options)
end

function C:getPartnerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartnerAccount, input, options)
end

function C:getPosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPosition, input, options)
end

function C:getPositionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPositionConfiguration, input, options)
end

function C:getPositionEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPositionEstimate, input, options)
end

function C:getResourceEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceEventConfiguration, input, options)
end

function C:getResourceLogLevel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceLogLevel, input, options)
end

function C:getResourcePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePosition, input, options)
end

function C:getServiceEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceEndpoint, input, options)
end

function C:getServiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceProfile, input, options)
end

function C:getWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessDevice, input, options)
end

function C:getWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessDeviceImportTask, input, options)
end

function C:getWirelessDeviceStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessDeviceStatistics, input, options)
end

function C:getWirelessGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGateway, input, options)
end

function C:getWirelessGatewayCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGatewayCertificate, input, options)
end

function C:getWirelessGatewayFirmwareInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGatewayFirmwareInformation, input, options)
end

function C:getWirelessGatewayStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGatewayStatistics, input, options)
end

function C:getWirelessGatewayTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGatewayTask, input, options)
end

function C:getWirelessGatewayTaskDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWirelessGatewayTaskDefinition, input, options)
end

function C:listDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDestinations, input, options)
end

function C:listDeviceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceProfiles, input, options)
end

function C:listDevicesForWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevicesForWirelessDeviceImportTask, input, options)
end

function C:listEventConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventConfigurations, input, options)
end

function C:listFuotaTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFuotaTasks, input, options)
end

function C:listMulticastGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMulticastGroups, input, options)
end

function C:listMulticastGroupsByFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMulticastGroupsByFuotaTask, input, options)
end

function C:listNetworkAnalyzerConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkAnalyzerConfigurations, input, options)
end

function C:listPartnerAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartnerAccounts, input, options)
end

function C:listPositionConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPositionConfigurations, input, options)
end

function C:listQueuedMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueuedMessages, input, options)
end

function C:listServiceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceProfiles, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWirelessDeviceImportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWirelessDeviceImportTasks, input, options)
end

function C:listWirelessDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWirelessDevices, input, options)
end

function C:listWirelessGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWirelessGateways, input, options)
end

function C:listWirelessGatewayTaskDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWirelessGatewayTaskDefinitions, input, options)
end

function C:putPositionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPositionConfiguration, input, options)
end

function C:putResourceLogLevel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourceLogLevel, input, options)
end

function C:resetAllResourceLogLevels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetAllResourceLogLevels, input, options)
end

function C:resetResourceLogLevel(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetResourceLogLevel, input, options)
end

function C:sendDataToMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDataToMulticastGroup, input, options)
end

function C:sendDataToWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDataToWirelessDevice, input, options)
end

function C:startBulkAssociateWirelessDeviceWithMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBulkAssociateWirelessDeviceWithMulticastGroup, input, options)
end

function C:startBulkDisassociateWirelessDeviceFromMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBulkDisassociateWirelessDeviceFromMulticastGroup, input, options)
end

function C:startFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFuotaTask, input, options)
end

function C:startMulticastGroupSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMulticastGroupSession, input, options)
end

function C:startSingleWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSingleWirelessDeviceImportTask, input, options)
end

function C:startWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWirelessDeviceImportTask, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestWirelessDevice, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDestination, input, options)
end

function C:updateEventConfigurationByResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventConfigurationByResourceTypes, input, options)
end

function C:updateFuotaTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFuotaTask, input, options)
end

function C:updateLogLevelsByResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLogLevelsByResourceTypes, input, options)
end

function C:updateMetricConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMetricConfiguration, input, options)
end

function C:updateMulticastGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMulticastGroup, input, options)
end

function C:updateNetworkAnalyzerConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkAnalyzerConfiguration, input, options)
end

function C:updatePartnerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePartnerAccount, input, options)
end

function C:updatePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePosition, input, options)
end

function C:updateResourceEventConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceEventConfiguration, input, options)
end

function C:updateResourcePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourcePosition, input, options)
end

function C:updateWirelessDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWirelessDevice, input, options)
end

function C:updateWirelessDeviceImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWirelessDeviceImportTask, input, options)
end

function C:updateWirelessGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWirelessGateway, input, options)
end

return M
