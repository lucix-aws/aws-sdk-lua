local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotwireless.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotwireless.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "iotwireless"
    cfg.signing_name = "iotwireless"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateAwsAccountWithPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAwsAccountWithPartnerAccount",
        input_schema = types.AssociateAwsAccountWithPartnerAccountInput,
        output_schema = types.AssociateAwsAccountWithPartnerAccountOutput,
        http_method = "POST",
        http_path = "/partner-accounts",
    }, options)
end

function Client:associateMulticastGroupWithFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMulticastGroupWithFuotaTask",
        input_schema = types.AssociateMulticastGroupWithFuotaTaskInput,
        output_schema = types.AssociateMulticastGroupWithFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}/multicast-group",
    }, options)
end

function Client:associateWirelessDeviceWithFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithFuotaTask",
        input_schema = types.AssociateWirelessDeviceWithFuotaTaskInput,
        output_schema = types.AssociateWirelessDeviceWithFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}/wireless-device",
    }, options)
end

function Client:associateWirelessDeviceWithMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithMulticastGroup",
        input_schema = types.AssociateWirelessDeviceWithMulticastGroupInput,
        output_schema = types.AssociateWirelessDeviceWithMulticastGroupOutput,
        http_method = "PUT",
        http_path = "/multicast-groups/{Id}/wireless-device",
    }, options)
end

function Client:associateWirelessDeviceWithThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithThing",
        input_schema = types.AssociateWirelessDeviceWithThingInput,
        output_schema = types.AssociateWirelessDeviceWithThingOutput,
        http_method = "PUT",
        http_path = "/wireless-devices/{Id}/thing",
    }, options)
end

function Client:associateWirelessGatewayWithCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessGatewayWithCertificate",
        input_schema = types.AssociateWirelessGatewayWithCertificateInput,
        output_schema = types.AssociateWirelessGatewayWithCertificateOutput,
        http_method = "PUT",
        http_path = "/wireless-gateways/{Id}/certificate",
    }, options)
end

function Client:associateWirelessGatewayWithThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessGatewayWithThing",
        input_schema = types.AssociateWirelessGatewayWithThingInput,
        output_schema = types.AssociateWirelessGatewayWithThingOutput,
        http_method = "PUT",
        http_path = "/wireless-gateways/{Id}/thing",
    }, options)
end

function Client:cancelMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "CancelMulticastGroupSession",
        input_schema = types.CancelMulticastGroupSessionInput,
        output_schema = types.CancelMulticastGroupSessionOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}/session",
    }, options)
end

function Client:createDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateDestination",
        input_schema = types.CreateDestinationInput,
        output_schema = types.CreateDestinationOutput,
        http_method = "POST",
        http_path = "/destinations",
    }, options)
end

function Client:createDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeviceProfile",
        input_schema = types.CreateDeviceProfileInput,
        output_schema = types.CreateDeviceProfileOutput,
        http_method = "POST",
        http_path = "/device-profiles",
    }, options)
end

function Client:createFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateFuotaTask",
        input_schema = types.CreateFuotaTaskInput,
        output_schema = types.CreateFuotaTaskOutput,
        http_method = "POST",
        http_path = "/fuota-tasks",
    }, options)
end

function Client:createMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateMulticastGroup",
        input_schema = types.CreateMulticastGroupInput,
        output_schema = types.CreateMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups",
    }, options)
end

function Client:createNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkAnalyzerConfiguration",
        input_schema = types.CreateNetworkAnalyzerConfigurationInput,
        output_schema = types.CreateNetworkAnalyzerConfigurationOutput,
        http_method = "POST",
        http_path = "/network-analyzer-configurations",
    }, options)
end

function Client:createServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceProfile",
        input_schema = types.CreateServiceProfileInput,
        output_schema = types.CreateServiceProfileOutput,
        http_method = "POST",
        http_path = "/service-profiles",
    }, options)
end

function Client:createWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessDevice",
        input_schema = types.CreateWirelessDeviceInput,
        output_schema = types.CreateWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices",
    }, options)
end

function Client:createWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGateway",
        input_schema = types.CreateWirelessGatewayInput,
        output_schema = types.CreateWirelessGatewayOutput,
        http_method = "POST",
        http_path = "/wireless-gateways",
    }, options)
end

function Client:createWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGatewayTask",
        input_schema = types.CreateWirelessGatewayTaskInput,
        output_schema = types.CreateWirelessGatewayTaskOutput,
        http_method = "POST",
        http_path = "/wireless-gateways/{Id}/tasks",
    }, options)
end

function Client:createWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGatewayTaskDefinition",
        input_schema = types.CreateWirelessGatewayTaskDefinitionInput,
        output_schema = types.CreateWirelessGatewayTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/wireless-gateway-task-definitions",
    }, options)
end

function Client:deleteDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDestination",
        input_schema = types.DeleteDestinationInput,
        output_schema = types.DeleteDestinationOutput,
        http_method = "DELETE",
        http_path = "/destinations/{Name}",
    }, options)
end

function Client:deleteDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeviceProfile",
        input_schema = types.DeleteDeviceProfileInput,
        output_schema = types.DeleteDeviceProfileOutput,
        http_method = "DELETE",
        http_path = "/device-profiles/{Id}",
    }, options)
end

function Client:deleteFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFuotaTask",
        input_schema = types.DeleteFuotaTaskInput,
        output_schema = types.DeleteFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}",
    }, options)
end

function Client:deleteMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMulticastGroup",
        input_schema = types.DeleteMulticastGroupInput,
        output_schema = types.DeleteMulticastGroupOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}",
    }, options)
end

function Client:deleteNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkAnalyzerConfiguration",
        input_schema = types.DeleteNetworkAnalyzerConfigurationInput,
        output_schema = types.DeleteNetworkAnalyzerConfigurationOutput,
        http_method = "DELETE",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
    }, options)
end

function Client:deleteQueuedMessages(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueuedMessages",
        input_schema = types.DeleteQueuedMessagesInput,
        output_schema = types.DeleteQueuedMessagesOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}/data",
    }, options)
end

function Client:deleteServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceProfile",
        input_schema = types.DeleteServiceProfileInput,
        output_schema = types.DeleteServiceProfileOutput,
        http_method = "DELETE",
        http_path = "/service-profiles/{Id}",
    }, options)
end

function Client:deleteWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessDevice",
        input_schema = types.DeleteWirelessDeviceInput,
        output_schema = types.DeleteWirelessDeviceOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}",
    }, options)
end

function Client:deleteWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessDeviceImportTask",
        input_schema = types.DeleteWirelessDeviceImportTaskInput,
        output_schema = types.DeleteWirelessDeviceImportTaskOutput,
        http_method = "DELETE",
        http_path = "/wireless_device_import_task/{Id}",
    }, options)
end

function Client:deleteWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGateway",
        input_schema = types.DeleteWirelessGatewayInput,
        output_schema = types.DeleteWirelessGatewayOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}",
    }, options)
end

function Client:deleteWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGatewayTask",
        input_schema = types.DeleteWirelessGatewayTaskInput,
        output_schema = types.DeleteWirelessGatewayTaskOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/tasks",
    }, options)
end

function Client:deleteWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGatewayTaskDefinition",
        input_schema = types.DeleteWirelessGatewayTaskDefinitionInput,
        output_schema = types.DeleteWirelessGatewayTaskDefinitionOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateway-task-definitions/{Id}",
    }, options)
end

function Client:deregisterWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterWirelessDevice",
        input_schema = types.DeregisterWirelessDeviceInput,
        output_schema = types.DeregisterWirelessDeviceOutput,
        http_method = "PATCH",
        http_path = "/wireless-devices/{Identifier}/deregister",
    }, options)
end

function Client:disassociateAwsAccountFromPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAwsAccountFromPartnerAccount",
        input_schema = types.DisassociateAwsAccountFromPartnerAccountInput,
        output_schema = types.DisassociateAwsAccountFromPartnerAccountOutput,
        http_method = "DELETE",
        http_path = "/partner-accounts/{PartnerAccountId}",
    }, options)
end

function Client:disassociateMulticastGroupFromFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMulticastGroupFromFuotaTask",
        input_schema = types.DisassociateMulticastGroupFromFuotaTaskInput,
        output_schema = types.DisassociateMulticastGroupFromFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}/multicast-groups/{MulticastGroupId}",
    }, options)
end

function Client:disassociateWirelessDeviceFromFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromFuotaTask",
        input_schema = types.DisassociateWirelessDeviceFromFuotaTaskInput,
        output_schema = types.DisassociateWirelessDeviceFromFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}",
    }, options)
end

function Client:disassociateWirelessDeviceFromMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromMulticastGroup",
        input_schema = types.DisassociateWirelessDeviceFromMulticastGroupInput,
        output_schema = types.DisassociateWirelessDeviceFromMulticastGroupOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}/wireless-devices/{WirelessDeviceId}",
    }, options)
end

function Client:disassociateWirelessDeviceFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromThing",
        input_schema = types.DisassociateWirelessDeviceFromThingInput,
        output_schema = types.DisassociateWirelessDeviceFromThingOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}/thing",
    }, options)
end

function Client:disassociateWirelessGatewayFromCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessGatewayFromCertificate",
        input_schema = types.DisassociateWirelessGatewayFromCertificateInput,
        output_schema = types.DisassociateWirelessGatewayFromCertificateOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/certificate",
    }, options)
end

function Client:disassociateWirelessGatewayFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessGatewayFromThing",
        input_schema = types.DisassociateWirelessGatewayFromThingInput,
        output_schema = types.DisassociateWirelessGatewayFromThingOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/thing",
    }, options)
end

function Client:getDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetDestination",
        input_schema = types.GetDestinationInput,
        output_schema = types.GetDestinationOutput,
        http_method = "GET",
        http_path = "/destinations/{Name}",
    }, options)
end

function Client:getDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceProfile",
        input_schema = types.GetDeviceProfileInput,
        output_schema = types.GetDeviceProfileOutput,
        http_method = "GET",
        http_path = "/device-profiles/{Id}",
    }, options)
end

function Client:getEventConfigurationByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEventConfigurationByResourceTypes",
        input_schema = types.GetEventConfigurationByResourceTypesInput,
        output_schema = types.GetEventConfigurationByResourceTypesOutput,
        http_method = "GET",
        http_path = "/event-configurations-resource-types",
    }, options)
end

function Client:getFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "GetFuotaTask",
        input_schema = types.GetFuotaTaskInput,
        output_schema = types.GetFuotaTaskOutput,
        http_method = "GET",
        http_path = "/fuota-tasks/{Id}",
    }, options)
end

function Client:getLogLevelsByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetLogLevelsByResourceTypes",
        input_schema = types.GetLogLevelsByResourceTypesInput,
        output_schema = types.GetLogLevelsByResourceTypesOutput,
        http_method = "GET",
        http_path = "/log-levels",
    }, options)
end

function Client:getMetricConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricConfiguration",
        input_schema = types.GetMetricConfigurationInput,
        output_schema = types.GetMetricConfigurationOutput,
        http_method = "GET",
        http_path = "/metric-configuration",
    }, options)
end

function Client:getMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetMetrics",
        input_schema = types.GetMetricsInput,
        output_schema = types.GetMetricsOutput,
        http_method = "POST",
        http_path = "/metrics",
    }, options)
end

function Client:getMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetMulticastGroup",
        input_schema = types.GetMulticastGroupInput,
        output_schema = types.GetMulticastGroupOutput,
        http_method = "GET",
        http_path = "/multicast-groups/{Id}",
    }, options)
end

function Client:getMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "GetMulticastGroupSession",
        input_schema = types.GetMulticastGroupSessionInput,
        output_schema = types.GetMulticastGroupSessionOutput,
        http_method = "GET",
        http_path = "/multicast-groups/{Id}/session",
    }, options)
end

function Client:getNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkAnalyzerConfiguration",
        input_schema = types.GetNetworkAnalyzerConfigurationInput,
        output_schema = types.GetNetworkAnalyzerConfigurationOutput,
        http_method = "GET",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
    }, options)
end

function Client:getPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetPartnerAccount",
        input_schema = types.GetPartnerAccountInput,
        output_schema = types.GetPartnerAccountOutput,
        http_method = "GET",
        http_path = "/partner-accounts/{PartnerAccountId}",
    }, options)
end

function Client:getPosition(input, options)
    return self:invokeOperation(input, {
        name = "GetPosition",
        input_schema = types.GetPositionInput,
        output_schema = types.GetPositionOutput,
        http_method = "GET",
        http_path = "/positions/{ResourceIdentifier}",
    }, options)
end

function Client:getPositionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetPositionConfiguration",
        input_schema = types.GetPositionConfigurationInput,
        output_schema = types.GetPositionConfigurationOutput,
        http_method = "GET",
        http_path = "/position-configurations/{ResourceIdentifier}",
    }, options)
end

function Client:getPositionEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetPositionEstimate",
        input_schema = types.GetPositionEstimateInput,
        output_schema = types.GetPositionEstimateOutput,
        http_method = "POST",
        http_path = "/position-estimate",
    }, options)
end

function Client:getResourceEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceEventConfiguration",
        input_schema = types.GetResourceEventConfigurationInput,
        output_schema = types.GetResourceEventConfigurationOutput,
        http_method = "GET",
        http_path = "/event-configurations/{Identifier}",
    }, options)
end

function Client:getResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceLogLevel",
        input_schema = types.GetResourceLogLevelInput,
        output_schema = types.GetResourceLogLevelOutput,
        http_method = "GET",
        http_path = "/log-levels/{ResourceIdentifier}",
    }, options)
end

function Client:getResourcePosition(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePosition",
        input_schema = types.GetResourcePositionInput,
        output_schema = types.GetResourcePositionOutput,
        http_method = "GET",
        http_path = "/resource-positions/{ResourceIdentifier}",
    }, options)
end

function Client:getServiceEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceEndpoint",
        input_schema = types.GetServiceEndpointInput,
        output_schema = types.GetServiceEndpointOutput,
        http_method = "GET",
        http_path = "/service-endpoint",
    }, options)
end

function Client:getServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceProfile",
        input_schema = types.GetServiceProfileInput,
        output_schema = types.GetServiceProfileOutput,
        http_method = "GET",
        http_path = "/service-profiles/{Id}",
    }, options)
end

function Client:getWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDevice",
        input_schema = types.GetWirelessDeviceInput,
        output_schema = types.GetWirelessDeviceOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{Identifier}",
    }, options)
end

function Client:getWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDeviceImportTask",
        input_schema = types.GetWirelessDeviceImportTaskInput,
        output_schema = types.GetWirelessDeviceImportTaskOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_task/{Id}",
    }, options)
end

function Client:getWirelessDeviceStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDeviceStatistics",
        input_schema = types.GetWirelessDeviceStatisticsInput,
        output_schema = types.GetWirelessDeviceStatisticsOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{WirelessDeviceId}/statistics",
    }, options)
end

function Client:getWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGateway",
        input_schema = types.GetWirelessGatewayInput,
        output_schema = types.GetWirelessGatewayOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Identifier}",
    }, options)
end

function Client:getWirelessGatewayCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayCertificate",
        input_schema = types.GetWirelessGatewayCertificateInput,
        output_schema = types.GetWirelessGatewayCertificateOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/certificate",
    }, options)
end

function Client:getWirelessGatewayFirmwareInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayFirmwareInformation",
        input_schema = types.GetWirelessGatewayFirmwareInformationInput,
        output_schema = types.GetWirelessGatewayFirmwareInformationOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/firmware-information",
    }, options)
end

function Client:getWirelessGatewayStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayStatistics",
        input_schema = types.GetWirelessGatewayStatisticsInput,
        output_schema = types.GetWirelessGatewayStatisticsOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{WirelessGatewayId}/statistics",
    }, options)
end

function Client:getWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayTask",
        input_schema = types.GetWirelessGatewayTaskInput,
        output_schema = types.GetWirelessGatewayTaskOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/tasks",
    }, options)
end

function Client:getWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayTaskDefinition",
        input_schema = types.GetWirelessGatewayTaskDefinitionInput,
        output_schema = types.GetWirelessGatewayTaskDefinitionOutput,
        http_method = "GET",
        http_path = "/wireless-gateway-task-definitions/{Id}",
    }, options)
end

function Client:listDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListDestinations",
        input_schema = types.ListDestinationsInput,
        output_schema = types.ListDestinationsOutput,
        http_method = "GET",
        http_path = "/destinations",
    }, options)
end

function Client:listDeviceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceProfiles",
        input_schema = types.ListDeviceProfilesInput,
        output_schema = types.ListDeviceProfilesOutput,
        http_method = "GET",
        http_path = "/device-profiles",
    }, options)
end

function Client:listDevicesForWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicesForWirelessDeviceImportTask",
        input_schema = types.ListDevicesForWirelessDeviceImportTaskInput,
        output_schema = types.ListDevicesForWirelessDeviceImportTaskOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_task",
    }, options)
end

function Client:listEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventConfigurations",
        input_schema = types.ListEventConfigurationsInput,
        output_schema = types.ListEventConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-configurations",
    }, options)
end

function Client:listFuotaTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListFuotaTasks",
        input_schema = types.ListFuotaTasksInput,
        output_schema = types.ListFuotaTasksOutput,
        http_method = "GET",
        http_path = "/fuota-tasks",
    }, options)
end

function Client:listMulticastGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListMulticastGroups",
        input_schema = types.ListMulticastGroupsInput,
        output_schema = types.ListMulticastGroupsOutput,
        http_method = "GET",
        http_path = "/multicast-groups",
    }, options)
end

function Client:listMulticastGroupsByFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "ListMulticastGroupsByFuotaTask",
        input_schema = types.ListMulticastGroupsByFuotaTaskInput,
        output_schema = types.ListMulticastGroupsByFuotaTaskOutput,
        http_method = "GET",
        http_path = "/fuota-tasks/{Id}/multicast-groups",
    }, options)
end

function Client:listNetworkAnalyzerConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkAnalyzerConfigurations",
        input_schema = types.ListNetworkAnalyzerConfigurationsInput,
        output_schema = types.ListNetworkAnalyzerConfigurationsOutput,
        http_method = "GET",
        http_path = "/network-analyzer-configurations",
    }, options)
end

function Client:listPartnerAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerAccounts",
        input_schema = types.ListPartnerAccountsInput,
        output_schema = types.ListPartnerAccountsOutput,
        http_method = "GET",
        http_path = "/partner-accounts",
    }, options)
end

function Client:listPositionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListPositionConfigurations",
        input_schema = types.ListPositionConfigurationsInput,
        output_schema = types.ListPositionConfigurationsOutput,
        http_method = "GET",
        http_path = "/position-configurations",
    }, options)
end

function Client:listQueuedMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListQueuedMessages",
        input_schema = types.ListQueuedMessagesInput,
        output_schema = types.ListQueuedMessagesOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{Id}/data",
    }, options)
end

function Client:listServiceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceProfiles",
        input_schema = types.ListServiceProfilesInput,
        output_schema = types.ListServiceProfilesOutput,
        http_method = "GET",
        http_path = "/service-profiles",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:listWirelessDeviceImportTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessDeviceImportTasks",
        input_schema = types.ListWirelessDeviceImportTasksInput,
        output_schema = types.ListWirelessDeviceImportTasksOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_tasks",
    }, options)
end

function Client:listWirelessDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessDevices",
        input_schema = types.ListWirelessDevicesInput,
        output_schema = types.ListWirelessDevicesOutput,
        http_method = "GET",
        http_path = "/wireless-devices",
    }, options)
end

function Client:listWirelessGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessGateways",
        input_schema = types.ListWirelessGatewaysInput,
        output_schema = types.ListWirelessGatewaysOutput,
        http_method = "GET",
        http_path = "/wireless-gateways",
    }, options)
end

function Client:listWirelessGatewayTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessGatewayTaskDefinitions",
        input_schema = types.ListWirelessGatewayTaskDefinitionsInput,
        output_schema = types.ListWirelessGatewayTaskDefinitionsOutput,
        http_method = "GET",
        http_path = "/wireless-gateway-task-definitions",
    }, options)
end

function Client:putPositionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutPositionConfiguration",
        input_schema = types.PutPositionConfigurationInput,
        output_schema = types.PutPositionConfigurationOutput,
        http_method = "PUT",
        http_path = "/position-configurations/{ResourceIdentifier}",
    }, options)
end

function Client:putResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceLogLevel",
        input_schema = types.PutResourceLogLevelInput,
        output_schema = types.PutResourceLogLevelOutput,
        http_method = "PUT",
        http_path = "/log-levels/{ResourceIdentifier}",
    }, options)
end

function Client:resetAllResourceLogLevels(input, options)
    return self:invokeOperation(input, {
        name = "ResetAllResourceLogLevels",
        input_schema = types.ResetAllResourceLogLevelsInput,
        output_schema = types.ResetAllResourceLogLevelsOutput,
        http_method = "DELETE",
        http_path = "/log-levels",
    }, options)
end

function Client:resetResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "ResetResourceLogLevel",
        input_schema = types.ResetResourceLogLevelInput,
        output_schema = types.ResetResourceLogLevelOutput,
        http_method = "DELETE",
        http_path = "/log-levels/{ResourceIdentifier}",
    }, options)
end

function Client:sendDataToMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "SendDataToMulticastGroup",
        input_schema = types.SendDataToMulticastGroupInput,
        output_schema = types.SendDataToMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups/{Id}/data",
    }, options)
end

function Client:sendDataToWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "SendDataToWirelessDevice",
        input_schema = types.SendDataToWirelessDeviceInput,
        output_schema = types.SendDataToWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices/{Id}/data",
    }, options)
end

function Client:startBulkAssociateWirelessDeviceWithMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "StartBulkAssociateWirelessDeviceWithMulticastGroup",
        input_schema = types.StartBulkAssociateWirelessDeviceWithMulticastGroupInput,
        output_schema = types.StartBulkAssociateWirelessDeviceWithMulticastGroupOutput,
        http_method = "PATCH",
        http_path = "/multicast-groups/{Id}/bulk",
    }, options)
end

function Client:startBulkDisassociateWirelessDeviceFromMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "StartBulkDisassociateWirelessDeviceFromMulticastGroup",
        input_schema = types.StartBulkDisassociateWirelessDeviceFromMulticastGroupInput,
        output_schema = types.StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups/{Id}/bulk",
    }, options)
end

function Client:startFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "StartFuotaTask",
        input_schema = types.StartFuotaTaskInput,
        output_schema = types.StartFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}",
    }, options)
end

function Client:startMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "StartMulticastGroupSession",
        input_schema = types.StartMulticastGroupSessionInput,
        output_schema = types.StartMulticastGroupSessionOutput,
        http_method = "PUT",
        http_path = "/multicast-groups/{Id}/session",
    }, options)
end

function Client:startSingleWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSingleWirelessDeviceImportTask",
        input_schema = types.StartSingleWirelessDeviceImportTaskInput,
        output_schema = types.StartSingleWirelessDeviceImportTaskOutput,
        http_method = "POST",
        http_path = "/wireless_single_device_import_task",
    }, options)
end

function Client:startWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartWirelessDeviceImportTask",
        input_schema = types.StartWirelessDeviceImportTaskInput,
        output_schema = types.StartWirelessDeviceImportTaskOutput,
        http_method = "POST",
        http_path = "/wireless_device_import_task",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
    }, options)
end

function Client:testWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "TestWirelessDevice",
        input_schema = types.TestWirelessDeviceInput,
        output_schema = types.TestWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices/{Id}/test",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags",
    }, options)
end

function Client:updateDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDestination",
        input_schema = types.UpdateDestinationInput,
        output_schema = types.UpdateDestinationOutput,
        http_method = "PATCH",
        http_path = "/destinations/{Name}",
    }, options)
end

function Client:updateEventConfigurationByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventConfigurationByResourceTypes",
        input_schema = types.UpdateEventConfigurationByResourceTypesInput,
        output_schema = types.UpdateEventConfigurationByResourceTypesOutput,
        http_method = "PATCH",
        http_path = "/event-configurations-resource-types",
    }, options)
end

function Client:updateFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFuotaTask",
        input_schema = types.UpdateFuotaTaskInput,
        output_schema = types.UpdateFuotaTaskOutput,
        http_method = "PATCH",
        http_path = "/fuota-tasks/{Id}",
    }, options)
end

function Client:updateLogLevelsByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLogLevelsByResourceTypes",
        input_schema = types.UpdateLogLevelsByResourceTypesInput,
        output_schema = types.UpdateLogLevelsByResourceTypesOutput,
        http_method = "POST",
        http_path = "/log-levels",
    }, options)
end

function Client:updateMetricConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMetricConfiguration",
        input_schema = types.UpdateMetricConfigurationInput,
        output_schema = types.UpdateMetricConfigurationOutput,
        http_method = "PUT",
        http_path = "/metric-configuration",
    }, options)
end

function Client:updateMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMulticastGroup",
        input_schema = types.UpdateMulticastGroupInput,
        output_schema = types.UpdateMulticastGroupOutput,
        http_method = "PATCH",
        http_path = "/multicast-groups/{Id}",
    }, options)
end

function Client:updateNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkAnalyzerConfiguration",
        input_schema = types.UpdateNetworkAnalyzerConfigurationInput,
        output_schema = types.UpdateNetworkAnalyzerConfigurationOutput,
        http_method = "PATCH",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
    }, options)
end

function Client:updatePartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnerAccount",
        input_schema = types.UpdatePartnerAccountInput,
        output_schema = types.UpdatePartnerAccountOutput,
        http_method = "PATCH",
        http_path = "/partner-accounts/{PartnerAccountId}",
    }, options)
end

function Client:updatePosition(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePosition",
        input_schema = types.UpdatePositionInput,
        output_schema = types.UpdatePositionOutput,
        http_method = "PATCH",
        http_path = "/positions/{ResourceIdentifier}",
    }, options)
end

function Client:updateResourceEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceEventConfiguration",
        input_schema = types.UpdateResourceEventConfigurationInput,
        output_schema = types.UpdateResourceEventConfigurationOutput,
        http_method = "PATCH",
        http_path = "/event-configurations/{Identifier}",
    }, options)
end

function Client:updateResourcePosition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourcePosition",
        input_schema = types.UpdateResourcePositionInput,
        output_schema = types.UpdateResourcePositionOutput,
        http_method = "PATCH",
        http_path = "/resource-positions/{ResourceIdentifier}",
    }, options)
end

function Client:updateWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessDevice",
        input_schema = types.UpdateWirelessDeviceInput,
        output_schema = types.UpdateWirelessDeviceOutput,
        http_method = "PATCH",
        http_path = "/wireless-devices/{Id}",
    }, options)
end

function Client:updateWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessDeviceImportTask",
        input_schema = types.UpdateWirelessDeviceImportTaskInput,
        output_schema = types.UpdateWirelessDeviceImportTaskOutput,
        http_method = "PATCH",
        http_path = "/wireless_device_import_task/{Id}",
    }, options)
end

function Client:updateWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessGateway",
        input_schema = types.UpdateWirelessGatewayInput,
        output_schema = types.UpdateWirelessGatewayOutput,
        http_method = "PATCH",
        http_path = "/wireless-gateways/{Id}",
    }, options)
end

return M
