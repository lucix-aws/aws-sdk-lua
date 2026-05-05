local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotwireless.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotwireless.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "iotwireless"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotwireless", signing_region = cfg.region } }
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

function Client:associateAwsAccountWithPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAwsAccountWithPartnerAccount",
        input_schema = schemas.AssociateAwsAccountWithPartnerAccountInput,
        output_schema = schemas.AssociateAwsAccountWithPartnerAccountOutput,
        http_method = "POST",
        http_path = "/partner-accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMulticastGroupWithFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMulticastGroupWithFuotaTask",
        input_schema = schemas.AssociateMulticastGroupWithFuotaTaskInput,
        output_schema = schemas.AssociateMulticastGroupWithFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}/multicast-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWirelessDeviceWithFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithFuotaTask",
        input_schema = schemas.AssociateWirelessDeviceWithFuotaTaskInput,
        output_schema = schemas.AssociateWirelessDeviceWithFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}/wireless-device",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWirelessDeviceWithMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithMulticastGroup",
        input_schema = schemas.AssociateWirelessDeviceWithMulticastGroupInput,
        output_schema = schemas.AssociateWirelessDeviceWithMulticastGroupOutput,
        http_method = "PUT",
        http_path = "/multicast-groups/{Id}/wireless-device",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWirelessDeviceWithThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessDeviceWithThing",
        input_schema = schemas.AssociateWirelessDeviceWithThingInput,
        output_schema = schemas.AssociateWirelessDeviceWithThingOutput,
        http_method = "PUT",
        http_path = "/wireless-devices/{Id}/thing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWirelessGatewayWithCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessGatewayWithCertificate",
        input_schema = schemas.AssociateWirelessGatewayWithCertificateInput,
        output_schema = schemas.AssociateWirelessGatewayWithCertificateOutput,
        http_method = "PUT",
        http_path = "/wireless-gateways/{Id}/certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWirelessGatewayWithThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWirelessGatewayWithThing",
        input_schema = schemas.AssociateWirelessGatewayWithThingInput,
        output_schema = schemas.AssociateWirelessGatewayWithThingOutput,
        http_method = "PUT",
        http_path = "/wireless-gateways/{Id}/thing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "CancelMulticastGroupSession",
        input_schema = schemas.CancelMulticastGroupSessionInput,
        output_schema = schemas.CancelMulticastGroupSessionOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateDestination",
        input_schema = schemas.CreateDestinationInput,
        output_schema = schemas.CreateDestinationOutput,
        http_method = "POST",
        http_path = "/destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeviceProfile",
        input_schema = schemas.CreateDeviceProfileInput,
        output_schema = schemas.CreateDeviceProfileOutput,
        http_method = "POST",
        http_path = "/device-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateFuotaTask",
        input_schema = schemas.CreateFuotaTaskInput,
        output_schema = schemas.CreateFuotaTaskOutput,
        http_method = "POST",
        http_path = "/fuota-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateMulticastGroup",
        input_schema = schemas.CreateMulticastGroupInput,
        output_schema = schemas.CreateMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkAnalyzerConfiguration",
        input_schema = schemas.CreateNetworkAnalyzerConfigurationInput,
        output_schema = schemas.CreateNetworkAnalyzerConfigurationOutput,
        http_method = "POST",
        http_path = "/network-analyzer-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceProfile",
        input_schema = schemas.CreateServiceProfileInput,
        output_schema = schemas.CreateServiceProfileOutput,
        http_method = "POST",
        http_path = "/service-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessDevice",
        input_schema = schemas.CreateWirelessDeviceInput,
        output_schema = schemas.CreateWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGateway",
        input_schema = schemas.CreateWirelessGatewayInput,
        output_schema = schemas.CreateWirelessGatewayOutput,
        http_method = "POST",
        http_path = "/wireless-gateways",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGatewayTask",
        input_schema = schemas.CreateWirelessGatewayTaskInput,
        output_schema = schemas.CreateWirelessGatewayTaskOutput,
        http_method = "POST",
        http_path = "/wireless-gateways/{Id}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateWirelessGatewayTaskDefinition",
        input_schema = schemas.CreateWirelessGatewayTaskDefinitionInput,
        output_schema = schemas.CreateWirelessGatewayTaskDefinitionOutput,
        http_method = "POST",
        http_path = "/wireless-gateway-task-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDestination",
        input_schema = schemas.DeleteDestinationInput,
        output_schema = schemas.DeleteDestinationOutput,
        http_method = "DELETE",
        http_path = "/destinations/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeviceProfile",
        input_schema = schemas.DeleteDeviceProfileInput,
        output_schema = schemas.DeleteDeviceProfileOutput,
        http_method = "DELETE",
        http_path = "/device-profiles/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFuotaTask",
        input_schema = schemas.DeleteFuotaTaskInput,
        output_schema = schemas.DeleteFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMulticastGroup",
        input_schema = schemas.DeleteMulticastGroupInput,
        output_schema = schemas.DeleteMulticastGroupOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkAnalyzerConfiguration",
        input_schema = schemas.DeleteNetworkAnalyzerConfigurationInput,
        output_schema = schemas.DeleteNetworkAnalyzerConfigurationOutput,
        http_method = "DELETE",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueuedMessages(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueuedMessages",
        input_schema = schemas.DeleteQueuedMessagesInput,
        output_schema = schemas.DeleteQueuedMessagesOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceProfile",
        input_schema = schemas.DeleteServiceProfileInput,
        output_schema = schemas.DeleteServiceProfileOutput,
        http_method = "DELETE",
        http_path = "/service-profiles/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessDevice",
        input_schema = schemas.DeleteWirelessDeviceInput,
        output_schema = schemas.DeleteWirelessDeviceOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessDeviceImportTask",
        input_schema = schemas.DeleteWirelessDeviceImportTaskInput,
        output_schema = schemas.DeleteWirelessDeviceImportTaskOutput,
        http_method = "DELETE",
        http_path = "/wireless_device_import_task/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGateway",
        input_schema = schemas.DeleteWirelessGatewayInput,
        output_schema = schemas.DeleteWirelessGatewayOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGatewayTask",
        input_schema = schemas.DeleteWirelessGatewayTaskInput,
        output_schema = schemas.DeleteWirelessGatewayTaskOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWirelessGatewayTaskDefinition",
        input_schema = schemas.DeleteWirelessGatewayTaskDefinitionInput,
        output_schema = schemas.DeleteWirelessGatewayTaskDefinitionOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateway-task-definitions/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterWirelessDevice",
        input_schema = schemas.DeregisterWirelessDeviceInput,
        output_schema = schemas.DeregisterWirelessDeviceOutput,
        http_method = "PATCH",
        http_path = "/wireless-devices/{Identifier}/deregister",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAwsAccountFromPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAwsAccountFromPartnerAccount",
        input_schema = schemas.DisassociateAwsAccountFromPartnerAccountInput,
        output_schema = schemas.DisassociateAwsAccountFromPartnerAccountOutput,
        http_method = "DELETE",
        http_path = "/partner-accounts/{PartnerAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMulticastGroupFromFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMulticastGroupFromFuotaTask",
        input_schema = schemas.DisassociateMulticastGroupFromFuotaTaskInput,
        output_schema = schemas.DisassociateMulticastGroupFromFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}/multicast-groups/{MulticastGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWirelessDeviceFromFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromFuotaTask",
        input_schema = schemas.DisassociateWirelessDeviceFromFuotaTaskInput,
        output_schema = schemas.DisassociateWirelessDeviceFromFuotaTaskOutput,
        http_method = "DELETE",
        http_path = "/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWirelessDeviceFromMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromMulticastGroup",
        input_schema = schemas.DisassociateWirelessDeviceFromMulticastGroupInput,
        output_schema = schemas.DisassociateWirelessDeviceFromMulticastGroupOutput,
        http_method = "DELETE",
        http_path = "/multicast-groups/{Id}/wireless-devices/{WirelessDeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWirelessDeviceFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessDeviceFromThing",
        input_schema = schemas.DisassociateWirelessDeviceFromThingInput,
        output_schema = schemas.DisassociateWirelessDeviceFromThingOutput,
        http_method = "DELETE",
        http_path = "/wireless-devices/{Id}/thing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWirelessGatewayFromCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessGatewayFromCertificate",
        input_schema = schemas.DisassociateWirelessGatewayFromCertificateInput,
        output_schema = schemas.DisassociateWirelessGatewayFromCertificateOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWirelessGatewayFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWirelessGatewayFromThing",
        input_schema = schemas.DisassociateWirelessGatewayFromThingInput,
        output_schema = schemas.DisassociateWirelessGatewayFromThingOutput,
        http_method = "DELETE",
        http_path = "/wireless-gateways/{Id}/thing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetDestination",
        input_schema = schemas.GetDestinationInput,
        output_schema = schemas.GetDestinationOutput,
        http_method = "GET",
        http_path = "/destinations/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeviceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceProfile",
        input_schema = schemas.GetDeviceProfileInput,
        output_schema = schemas.GetDeviceProfileOutput,
        http_method = "GET",
        http_path = "/device-profiles/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventConfigurationByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetEventConfigurationByResourceTypes",
        input_schema = schemas.GetEventConfigurationByResourceTypesInput,
        output_schema = schemas.GetEventConfigurationByResourceTypesOutput,
        http_method = "GET",
        http_path = "/event-configurations-resource-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "GetFuotaTask",
        input_schema = schemas.GetFuotaTaskInput,
        output_schema = schemas.GetFuotaTaskOutput,
        http_method = "GET",
        http_path = "/fuota-tasks/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogLevelsByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetLogLevelsByResourceTypes",
        input_schema = schemas.GetLogLevelsByResourceTypesInput,
        output_schema = schemas.GetLogLevelsByResourceTypesOutput,
        http_method = "GET",
        http_path = "/log-levels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricConfiguration",
        input_schema = schemas.GetMetricConfigurationInput,
        output_schema = schemas.GetMetricConfigurationOutput,
        http_method = "GET",
        http_path = "/metric-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetMetrics",
        input_schema = schemas.GetMetricsInput,
        output_schema = schemas.GetMetricsOutput,
        http_method = "POST",
        http_path = "/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetMulticastGroup",
        input_schema = schemas.GetMulticastGroupInput,
        output_schema = schemas.GetMulticastGroupOutput,
        http_method = "GET",
        http_path = "/multicast-groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "GetMulticastGroupSession",
        input_schema = schemas.GetMulticastGroupSessionInput,
        output_schema = schemas.GetMulticastGroupSessionOutput,
        http_method = "GET",
        http_path = "/multicast-groups/{Id}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkAnalyzerConfiguration",
        input_schema = schemas.GetNetworkAnalyzerConfigurationInput,
        output_schema = schemas.GetNetworkAnalyzerConfigurationOutput,
        http_method = "GET",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetPartnerAccount",
        input_schema = schemas.GetPartnerAccountInput,
        output_schema = schemas.GetPartnerAccountOutput,
        http_method = "GET",
        http_path = "/partner-accounts/{PartnerAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPosition(input, options)
    return self:invokeOperation(input, {
        name = "GetPosition",
        input_schema = schemas.GetPositionInput,
        output_schema = schemas.GetPositionOutput,
        http_method = "GET",
        http_path = "/positions/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPositionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetPositionConfiguration",
        input_schema = schemas.GetPositionConfigurationInput,
        output_schema = schemas.GetPositionConfigurationOutput,
        http_method = "GET",
        http_path = "/position-configurations/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPositionEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetPositionEstimate",
        input_schema = schemas.GetPositionEstimateInput,
        output_schema = schemas.GetPositionEstimateOutput,
        http_method = "POST",
        http_path = "/position-estimate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceEventConfiguration",
        input_schema = schemas.GetResourceEventConfigurationInput,
        output_schema = schemas.GetResourceEventConfigurationOutput,
        http_method = "GET",
        http_path = "/event-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceLogLevel",
        input_schema = schemas.GetResourceLogLevelInput,
        output_schema = schemas.GetResourceLogLevelOutput,
        http_method = "GET",
        http_path = "/log-levels/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePosition(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePosition",
        input_schema = schemas.GetResourcePositionInput,
        output_schema = schemas.GetResourcePositionOutput,
        http_method = "GET",
        http_path = "/resource-positions/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceEndpoint",
        input_schema = schemas.GetServiceEndpointInput,
        output_schema = schemas.GetServiceEndpointOutput,
        http_method = "GET",
        http_path = "/service-endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceProfile",
        input_schema = schemas.GetServiceProfileInput,
        output_schema = schemas.GetServiceProfileOutput,
        http_method = "GET",
        http_path = "/service-profiles/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDevice",
        input_schema = schemas.GetWirelessDeviceInput,
        output_schema = schemas.GetWirelessDeviceOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDeviceImportTask",
        input_schema = schemas.GetWirelessDeviceImportTaskInput,
        output_schema = schemas.GetWirelessDeviceImportTaskOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_task/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessDeviceStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessDeviceStatistics",
        input_schema = schemas.GetWirelessDeviceStatisticsInput,
        output_schema = schemas.GetWirelessDeviceStatisticsOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{WirelessDeviceId}/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGateway",
        input_schema = schemas.GetWirelessGatewayInput,
        output_schema = schemas.GetWirelessGatewayOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGatewayCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayCertificate",
        input_schema = schemas.GetWirelessGatewayCertificateInput,
        output_schema = schemas.GetWirelessGatewayCertificateOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGatewayFirmwareInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayFirmwareInformation",
        input_schema = schemas.GetWirelessGatewayFirmwareInformationInput,
        output_schema = schemas.GetWirelessGatewayFirmwareInformationOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/firmware-information",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGatewayStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayStatistics",
        input_schema = schemas.GetWirelessGatewayStatisticsInput,
        output_schema = schemas.GetWirelessGatewayStatisticsOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{WirelessGatewayId}/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGatewayTask(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayTask",
        input_schema = schemas.GetWirelessGatewayTaskInput,
        output_schema = schemas.GetWirelessGatewayTaskOutput,
        http_method = "GET",
        http_path = "/wireless-gateways/{Id}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWirelessGatewayTaskDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetWirelessGatewayTaskDefinition",
        input_schema = schemas.GetWirelessGatewayTaskDefinitionInput,
        output_schema = schemas.GetWirelessGatewayTaskDefinitionOutput,
        http_method = "GET",
        http_path = "/wireless-gateway-task-definitions/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListDestinations",
        input_schema = schemas.ListDestinationsInput,
        output_schema = schemas.ListDestinationsOutput,
        http_method = "GET",
        http_path = "/destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceProfiles",
        input_schema = schemas.ListDeviceProfilesInput,
        output_schema = schemas.ListDeviceProfilesOutput,
        http_method = "GET",
        http_path = "/device-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevicesForWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicesForWirelessDeviceImportTask",
        input_schema = schemas.ListDevicesForWirelessDeviceImportTaskInput,
        output_schema = schemas.ListDevicesForWirelessDeviceImportTaskOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventConfigurations",
        input_schema = schemas.ListEventConfigurationsInput,
        output_schema = schemas.ListEventConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFuotaTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListFuotaTasks",
        input_schema = schemas.ListFuotaTasksInput,
        output_schema = schemas.ListFuotaTasksOutput,
        http_method = "GET",
        http_path = "/fuota-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMulticastGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListMulticastGroups",
        input_schema = schemas.ListMulticastGroupsInput,
        output_schema = schemas.ListMulticastGroupsOutput,
        http_method = "GET",
        http_path = "/multicast-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMulticastGroupsByFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "ListMulticastGroupsByFuotaTask",
        input_schema = schemas.ListMulticastGroupsByFuotaTaskInput,
        output_schema = schemas.ListMulticastGroupsByFuotaTaskOutput,
        http_method = "GET",
        http_path = "/fuota-tasks/{Id}/multicast-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkAnalyzerConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkAnalyzerConfigurations",
        input_schema = schemas.ListNetworkAnalyzerConfigurationsInput,
        output_schema = schemas.ListNetworkAnalyzerConfigurationsOutput,
        http_method = "GET",
        http_path = "/network-analyzer-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartnerAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerAccounts",
        input_schema = schemas.ListPartnerAccountsInput,
        output_schema = schemas.ListPartnerAccountsOutput,
        http_method = "GET",
        http_path = "/partner-accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPositionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListPositionConfigurations",
        input_schema = schemas.ListPositionConfigurationsInput,
        output_schema = schemas.ListPositionConfigurationsOutput,
        http_method = "GET",
        http_path = "/position-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueuedMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListQueuedMessages",
        input_schema = schemas.ListQueuedMessagesInput,
        output_schema = schemas.ListQueuedMessagesOutput,
        http_method = "GET",
        http_path = "/wireless-devices/{Id}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceProfiles",
        input_schema = schemas.ListServiceProfilesInput,
        output_schema = schemas.ListServiceProfilesOutput,
        http_method = "GET",
        http_path = "/service-profiles",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWirelessDeviceImportTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessDeviceImportTasks",
        input_schema = schemas.ListWirelessDeviceImportTasksInput,
        output_schema = schemas.ListWirelessDeviceImportTasksOutput,
        http_method = "GET",
        http_path = "/wireless_device_import_tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWirelessDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessDevices",
        input_schema = schemas.ListWirelessDevicesInput,
        output_schema = schemas.ListWirelessDevicesOutput,
        http_method = "GET",
        http_path = "/wireless-devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWirelessGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessGateways",
        input_schema = schemas.ListWirelessGatewaysInput,
        output_schema = schemas.ListWirelessGatewaysOutput,
        http_method = "GET",
        http_path = "/wireless-gateways",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWirelessGatewayTaskDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListWirelessGatewayTaskDefinitions",
        input_schema = schemas.ListWirelessGatewayTaskDefinitionsInput,
        output_schema = schemas.ListWirelessGatewayTaskDefinitionsOutput,
        http_method = "GET",
        http_path = "/wireless-gateway-task-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPositionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutPositionConfiguration",
        input_schema = schemas.PutPositionConfigurationInput,
        output_schema = schemas.PutPositionConfigurationOutput,
        http_method = "PUT",
        http_path = "/position-configurations/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceLogLevel",
        input_schema = schemas.PutResourceLogLevelInput,
        output_schema = schemas.PutResourceLogLevelOutput,
        http_method = "PUT",
        http_path = "/log-levels/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetAllResourceLogLevels(input, options)
    return self:invokeOperation(input, {
        name = "ResetAllResourceLogLevels",
        input_schema = schemas.ResetAllResourceLogLevelsInput,
        output_schema = schemas.ResetAllResourceLogLevelsOutput,
        http_method = "DELETE",
        http_path = "/log-levels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetResourceLogLevel(input, options)
    return self:invokeOperation(input, {
        name = "ResetResourceLogLevel",
        input_schema = schemas.ResetResourceLogLevelInput,
        output_schema = schemas.ResetResourceLogLevelOutput,
        http_method = "DELETE",
        http_path = "/log-levels/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDataToMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "SendDataToMulticastGroup",
        input_schema = schemas.SendDataToMulticastGroupInput,
        output_schema = schemas.SendDataToMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups/{Id}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDataToWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "SendDataToWirelessDevice",
        input_schema = schemas.SendDataToWirelessDeviceInput,
        output_schema = schemas.SendDataToWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices/{Id}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBulkAssociateWirelessDeviceWithMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "StartBulkAssociateWirelessDeviceWithMulticastGroup",
        input_schema = schemas.StartBulkAssociateWirelessDeviceWithMulticastGroupInput,
        output_schema = schemas.StartBulkAssociateWirelessDeviceWithMulticastGroupOutput,
        http_method = "PATCH",
        http_path = "/multicast-groups/{Id}/bulk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBulkDisassociateWirelessDeviceFromMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "StartBulkDisassociateWirelessDeviceFromMulticastGroup",
        input_schema = schemas.StartBulkDisassociateWirelessDeviceFromMulticastGroupInput,
        output_schema = schemas.StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput,
        http_method = "POST",
        http_path = "/multicast-groups/{Id}/bulk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "StartFuotaTask",
        input_schema = schemas.StartFuotaTaskInput,
        output_schema = schemas.StartFuotaTaskOutput,
        http_method = "PUT",
        http_path = "/fuota-tasks/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMulticastGroupSession(input, options)
    return self:invokeOperation(input, {
        name = "StartMulticastGroupSession",
        input_schema = schemas.StartMulticastGroupSessionInput,
        output_schema = schemas.StartMulticastGroupSessionOutput,
        http_method = "PUT",
        http_path = "/multicast-groups/{Id}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSingleWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSingleWirelessDeviceImportTask",
        input_schema = schemas.StartSingleWirelessDeviceImportTaskInput,
        output_schema = schemas.StartSingleWirelessDeviceImportTaskOutput,
        http_method = "POST",
        http_path = "/wireless_single_device_import_task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "StartWirelessDeviceImportTask",
        input_schema = schemas.StartWirelessDeviceImportTaskInput,
        output_schema = schemas.StartWirelessDeviceImportTaskOutput,
        http_method = "POST",
        http_path = "/wireless_device_import_task",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "TestWirelessDevice",
        input_schema = schemas.TestWirelessDeviceInput,
        output_schema = schemas.TestWirelessDeviceOutput,
        http_method = "POST",
        http_path = "/wireless-devices/{Id}/test",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDestination",
        input_schema = schemas.UpdateDestinationInput,
        output_schema = schemas.UpdateDestinationOutput,
        http_method = "PATCH",
        http_path = "/destinations/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventConfigurationByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventConfigurationByResourceTypes",
        input_schema = schemas.UpdateEventConfigurationByResourceTypesInput,
        output_schema = schemas.UpdateEventConfigurationByResourceTypesOutput,
        http_method = "PATCH",
        http_path = "/event-configurations-resource-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFuotaTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFuotaTask",
        input_schema = schemas.UpdateFuotaTaskInput,
        output_schema = schemas.UpdateFuotaTaskOutput,
        http_method = "PATCH",
        http_path = "/fuota-tasks/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLogLevelsByResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLogLevelsByResourceTypes",
        input_schema = schemas.UpdateLogLevelsByResourceTypesInput,
        output_schema = schemas.UpdateLogLevelsByResourceTypesOutput,
        http_method = "POST",
        http_path = "/log-levels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMetricConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMetricConfiguration",
        input_schema = schemas.UpdateMetricConfigurationInput,
        output_schema = schemas.UpdateMetricConfigurationOutput,
        http_method = "PUT",
        http_path = "/metric-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMulticastGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMulticastGroup",
        input_schema = schemas.UpdateMulticastGroupInput,
        output_schema = schemas.UpdateMulticastGroupOutput,
        http_method = "PATCH",
        http_path = "/multicast-groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkAnalyzerConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkAnalyzerConfiguration",
        input_schema = schemas.UpdateNetworkAnalyzerConfigurationInput,
        output_schema = schemas.UpdateNetworkAnalyzerConfigurationOutput,
        http_method = "PATCH",
        http_path = "/network-analyzer-configurations/{ConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePartnerAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnerAccount",
        input_schema = schemas.UpdatePartnerAccountInput,
        output_schema = schemas.UpdatePartnerAccountOutput,
        http_method = "PATCH",
        http_path = "/partner-accounts/{PartnerAccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePosition(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePosition",
        input_schema = schemas.UpdatePositionInput,
        output_schema = schemas.UpdatePositionOutput,
        http_method = "PATCH",
        http_path = "/positions/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceEventConfiguration",
        input_schema = schemas.UpdateResourceEventConfigurationInput,
        output_schema = schemas.UpdateResourceEventConfigurationOutput,
        http_method = "PATCH",
        http_path = "/event-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourcePosition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourcePosition",
        input_schema = schemas.UpdateResourcePositionInput,
        output_schema = schemas.UpdateResourcePositionOutput,
        http_method = "PATCH",
        http_path = "/resource-positions/{ResourceIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWirelessDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessDevice",
        input_schema = schemas.UpdateWirelessDeviceInput,
        output_schema = schemas.UpdateWirelessDeviceOutput,
        http_method = "PATCH",
        http_path = "/wireless-devices/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWirelessDeviceImportTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessDeviceImportTask",
        input_schema = schemas.UpdateWirelessDeviceImportTaskInput,
        output_schema = schemas.UpdateWirelessDeviceImportTaskOutput,
        http_method = "PATCH",
        http_path = "/wireless_device_import_task/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWirelessGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWirelessGateway",
        input_schema = schemas.UpdateWirelessGatewayInput,
        output_schema = schemas.UpdateWirelessGatewayOutput,
        http_method = "PATCH",
        http_path = "/wireless-gateways/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
