local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotmanagedintegrations.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotmanagedintegrations.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotManagedIntegrations"
    cfg.signing_name = "iotmanagedintegrations"
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

function Client:createAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountAssociation",
        input_schema = types.CreateAccountAssociationInput,
        output_schema = types.CreateAccountAssociationOutput,
        http_method = "POST",
        http_path = "/account-associations",
    }, options)
end

function Client:createCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudConnector",
        input_schema = types.CreateCloudConnectorInput,
        output_schema = types.CreateCloudConnectorOutput,
        http_method = "POST",
        http_path = "/cloud-connectors",
    }, options)
end

function Client:createConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorDestination",
        input_schema = types.CreateConnectorDestinationInput,
        output_schema = types.CreateConnectorDestinationOutput,
        http_method = "POST",
        http_path = "/connector-destinations",
    }, options)
end

function Client:createCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "CreateCredentialLocker",
        input_schema = types.CreateCredentialLockerInput,
        output_schema = types.CreateCredentialLockerOutput,
        http_method = "POST",
        http_path = "/credential-lockers",
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

function Client:createEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventLogConfiguration",
        input_schema = types.CreateEventLogConfigurationInput,
        output_schema = types.CreateEventLogConfigurationOutput,
        http_method = "POST",
        http_path = "/event-log-configurations",
    }, options)
end

function Client:createManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedThing",
        input_schema = types.CreateManagedThingInput,
        output_schema = types.CreateManagedThingOutput,
        http_method = "POST",
        http_path = "/managed-things",
    }, options)
end

function Client:createNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationConfiguration",
        input_schema = types.CreateNotificationConfigurationInput,
        output_schema = types.CreateNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/notification-configurations",
    }, options)
end

function Client:createOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateOtaTask",
        input_schema = types.CreateOtaTaskInput,
        output_schema = types.CreateOtaTaskOutput,
        http_method = "POST",
        http_path = "/ota-tasks",
    }, options)
end

function Client:createOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateOtaTaskConfiguration",
        input_schema = types.CreateOtaTaskConfigurationInput,
        output_schema = types.CreateOtaTaskConfigurationOutput,
        http_method = "POST",
        http_path = "/ota-task-configurations",
    }, options)
end

function Client:createProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningProfile",
        input_schema = types.CreateProvisioningProfileInput,
        output_schema = types.CreateProvisioningProfileOutput,
        http_method = "POST",
        http_path = "/provisioning-profiles",
    }, options)
end

function Client:deleteAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAssociation",
        input_schema = types.DeleteAccountAssociationInput,
        output_schema = types.DeleteAccountAssociationOutput,
        http_method = "DELETE",
        http_path = "/account-associations/{AccountAssociationId}",
    }, options)
end

function Client:deleteCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudConnector",
        input_schema = types.DeleteCloudConnectorInput,
        output_schema = types.DeleteCloudConnectorOutput,
        http_method = "DELETE",
        http_path = "/cloud-connectors/{Identifier}",
    }, options)
end

function Client:deleteConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorDestination",
        input_schema = types.DeleteConnectorDestinationInput,
        output_schema = types.DeleteConnectorDestinationOutput,
        http_method = "DELETE",
        http_path = "/connector-destinations/{Identifier}",
    }, options)
end

function Client:deleteCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCredentialLocker",
        input_schema = types.DeleteCredentialLockerInput,
        output_schema = types.DeleteCredentialLockerOutput,
        http_method = "DELETE",
        http_path = "/credential-lockers/{Identifier}",
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

function Client:deleteEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventLogConfiguration",
        input_schema = types.DeleteEventLogConfigurationInput,
        output_schema = types.DeleteEventLogConfigurationOutput,
        http_method = "DELETE",
        http_path = "/event-log-configurations/{Id}",
    }, options)
end

function Client:deleteManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedThing",
        input_schema = types.DeleteManagedThingInput,
        output_schema = types.DeleteManagedThingOutput,
        http_method = "DELETE",
        http_path = "/managed-things/{Identifier}",
    }, options)
end

function Client:deleteNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationConfiguration",
        input_schema = types.DeleteNotificationConfigurationInput,
        output_schema = types.DeleteNotificationConfigurationOutput,
        http_method = "DELETE",
        http_path = "/notification-configurations/{EventType}",
    }, options)
end

function Client:deleteOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOtaTask",
        input_schema = types.DeleteOtaTaskInput,
        output_schema = types.DeleteOtaTaskOutput,
        http_method = "DELETE",
        http_path = "/ota-tasks/{Identifier}",
    }, options)
end

function Client:deleteOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOtaTaskConfiguration",
        input_schema = types.DeleteOtaTaskConfigurationInput,
        output_schema = types.DeleteOtaTaskConfigurationOutput,
        http_method = "DELETE",
        http_path = "/ota-task-configurations/{Identifier}",
    }, options)
end

function Client:deleteProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningProfile",
        input_schema = types.DeleteProvisioningProfileInput,
        output_schema = types.DeleteProvisioningProfileOutput,
        http_method = "DELETE",
        http_path = "/provisioning-profiles/{Identifier}",
    }, options)
end

function Client:deregisterAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAccountAssociation",
        input_schema = types.DeregisterAccountAssociationInput,
        output_schema = types.DeregisterAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/managed-thing-associations/deregister",
    }, options)
end

function Client:getAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountAssociation",
        input_schema = types.GetAccountAssociationInput,
        output_schema = types.GetAccountAssociationOutput,
        http_method = "GET",
        http_path = "/account-associations/{AccountAssociationId}",
    }, options)
end

function Client:getCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudConnector",
        input_schema = types.GetCloudConnectorInput,
        output_schema = types.GetCloudConnectorOutput,
        http_method = "GET",
        http_path = "/cloud-connectors/{Identifier}",
    }, options)
end

function Client:getConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorDestination",
        input_schema = types.GetConnectorDestinationInput,
        output_schema = types.GetConnectorDestinationOutput,
        http_method = "GET",
        http_path = "/connector-destinations/{Identifier}",
    }, options)
end

function Client:getCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentialLocker",
        input_schema = types.GetCredentialLockerInput,
        output_schema = types.GetCredentialLockerOutput,
        http_method = "GET",
        http_path = "/credential-lockers/{Identifier}",
    }, options)
end

function Client:getCustomEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomEndpoint",
        input_schema = types.GetCustomEndpointInput,
        output_schema = types.GetCustomEndpointOutput,
        http_method = "GET",
        http_path = "/custom-endpoint",
    }, options)
end

function Client:getDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultEncryptionConfiguration",
        input_schema = types.GetDefaultEncryptionConfigurationInput,
        output_schema = types.GetDefaultEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/encryption",
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

function Client:getDeviceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceDiscovery",
        input_schema = types.GetDeviceDiscoveryInput,
        output_schema = types.GetDeviceDiscoveryOutput,
        http_method = "GET",
        http_path = "/device-discoveries/{Identifier}",
    }, options)
end

function Client:getEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEventLogConfiguration",
        input_schema = types.GetEventLogConfigurationInput,
        output_schema = types.GetEventLogConfigurationOutput,
        http_method = "GET",
        http_path = "/event-log-configurations/{Id}",
    }, options)
end

function Client:getHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetHubConfiguration",
        input_schema = types.GetHubConfigurationInput,
        output_schema = types.GetHubConfigurationOutput,
        http_method = "GET",
        http_path = "/hub-configuration",
    }, options)
end

function Client:getManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThing",
        input_schema = types.GetManagedThingInput,
        output_schema = types.GetManagedThingOutput,
        http_method = "GET",
        http_path = "/managed-things/{Identifier}",
    }, options)
end

function Client:getManagedThingCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingCapabilities",
        input_schema = types.GetManagedThingCapabilitiesInput,
        output_schema = types.GetManagedThingCapabilitiesOutput,
        http_method = "GET",
        http_path = "/managed-things-capabilities/{Identifier}",
    }, options)
end

function Client:getManagedThingCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingCertificate",
        input_schema = types.GetManagedThingCertificateInput,
        output_schema = types.GetManagedThingCertificateOutput,
        http_method = "GET",
        http_path = "/managed-things-certificate/{Identifier}",
    }, options)
end

function Client:getManagedThingConnectivityData(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingConnectivityData",
        input_schema = types.GetManagedThingConnectivityDataInput,
        output_schema = types.GetManagedThingConnectivityDataOutput,
        http_method = "POST",
        http_path = "/managed-things-connectivity-data/{Identifier}",
    }, options)
end

function Client:getManagedThingMetaData(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingMetaData",
        input_schema = types.GetManagedThingMetaDataInput,
        output_schema = types.GetManagedThingMetaDataOutput,
        http_method = "GET",
        http_path = "/managed-things-metadata/{Identifier}",
    }, options)
end

function Client:getManagedThingState(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingState",
        input_schema = types.GetManagedThingStateInput,
        output_schema = types.GetManagedThingStateOutput,
        http_method = "GET",
        http_path = "/managed-thing-states/{ManagedThingId}",
    }, options)
end

function Client:getNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationConfiguration",
        input_schema = types.GetNotificationConfigurationInput,
        output_schema = types.GetNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/notification-configurations/{EventType}",
    }, options)
end

function Client:getOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "GetOtaTask",
        input_schema = types.GetOtaTaskInput,
        output_schema = types.GetOtaTaskOutput,
        http_method = "GET",
        http_path = "/ota-tasks/{Identifier}",
    }, options)
end

function Client:getOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetOtaTaskConfiguration",
        input_schema = types.GetOtaTaskConfigurationInput,
        output_schema = types.GetOtaTaskConfigurationOutput,
        http_method = "GET",
        http_path = "/ota-task-configurations/{Identifier}",
    }, options)
end

function Client:getProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisioningProfile",
        input_schema = types.GetProvisioningProfileInput,
        output_schema = types.GetProvisioningProfileOutput,
        http_method = "GET",
        http_path = "/provisioning-profiles/{Identifier}",
    }, options)
end

function Client:getRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRuntimeLogConfiguration",
        input_schema = types.GetRuntimeLogConfigurationInput,
        output_schema = types.GetRuntimeLogConfigurationOutput,
        http_method = "GET",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
    }, options)
end

function Client:getSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaVersion",
        input_schema = types.GetSchemaVersionInput,
        output_schema = types.GetSchemaVersionOutput,
        http_method = "GET",
        http_path = "/schema-versions/{Type}/{SchemaVersionedId}",
    }, options)
end

function Client:listAccountAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssociations",
        input_schema = types.ListAccountAssociationsInput,
        output_schema = types.ListAccountAssociationsOutput,
        http_method = "GET",
        http_path = "/account-associations",
    }, options)
end

function Client:listCloudConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudConnectors",
        input_schema = types.ListCloudConnectorsInput,
        output_schema = types.ListCloudConnectorsOutput,
        http_method = "GET",
        http_path = "/cloud-connectors",
    }, options)
end

function Client:listConnectorDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorDestinations",
        input_schema = types.ListConnectorDestinationsInput,
        output_schema = types.ListConnectorDestinationsOutput,
        http_method = "GET",
        http_path = "/connector-destinations",
    }, options)
end

function Client:listCredentialLockers(input, options)
    return self:invokeOperation(input, {
        name = "ListCredentialLockers",
        input_schema = types.ListCredentialLockersInput,
        output_schema = types.ListCredentialLockersOutput,
        http_method = "GET",
        http_path = "/credential-lockers",
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

function Client:listDeviceDiscoveries(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceDiscoveries",
        input_schema = types.ListDeviceDiscoveriesInput,
        output_schema = types.ListDeviceDiscoveriesOutput,
        http_method = "GET",
        http_path = "/device-discoveries",
    }, options)
end

function Client:listDiscoveredDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredDevices",
        input_schema = types.ListDiscoveredDevicesInput,
        output_schema = types.ListDiscoveredDevicesOutput,
        http_method = "GET",
        http_path = "/device-discoveries/{Identifier}/devices",
    }, options)
end

function Client:listEventLogConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventLogConfigurations",
        input_schema = types.ListEventLogConfigurationsInput,
        output_schema = types.ListEventLogConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-log-configurations",
    }, options)
end

function Client:listManagedThingAccountAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThingAccountAssociations",
        input_schema = types.ListManagedThingAccountAssociationsInput,
        output_schema = types.ListManagedThingAccountAssociationsOutput,
        http_method = "GET",
        http_path = "/managed-thing-associations",
    }, options)
end

function Client:listManagedThings(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThings",
        input_schema = types.ListManagedThingsInput,
        output_schema = types.ListManagedThingsOutput,
        http_method = "GET",
        http_path = "/managed-things",
    }, options)
end

function Client:listManagedThingSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThingSchemas",
        input_schema = types.ListManagedThingSchemasInput,
        output_schema = types.ListManagedThingSchemasOutput,
        http_method = "GET",
        http_path = "/managed-thing-schemas/{Identifier}",
    }, options)
end

function Client:listNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationConfigurations",
        input_schema = types.ListNotificationConfigurationsInput,
        output_schema = types.ListNotificationConfigurationsOutput,
        http_method = "GET",
        http_path = "/notification-configurations",
    }, options)
end

function Client:listOtaTaskConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTaskConfigurations",
        input_schema = types.ListOtaTaskConfigurationsInput,
        output_schema = types.ListOtaTaskConfigurationsOutput,
        http_method = "GET",
        http_path = "/ota-task-configurations",
    }, options)
end

function Client:listOtaTaskExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTaskExecutions",
        input_schema = types.ListOtaTaskExecutionsInput,
        output_schema = types.ListOtaTaskExecutionsOutput,
        http_method = "GET",
        http_path = "/ota-tasks/{Identifier}/devices",
    }, options)
end

function Client:listOtaTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTasks",
        input_schema = types.ListOtaTasksInput,
        output_schema = types.ListOtaTasksOutput,
        http_method = "GET",
        http_path = "/ota-tasks",
    }, options)
end

function Client:listProvisioningProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningProfiles",
        input_schema = types.ListProvisioningProfilesInput,
        output_schema = types.ListProvisioningProfilesOutput,
        http_method = "GET",
        http_path = "/provisioning-profiles",
    }, options)
end

function Client:listSchemaVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaVersions",
        input_schema = types.ListSchemaVersionsInput,
        output_schema = types.ListSchemaVersionsOutput,
        http_method = "GET",
        http_path = "/schema-versions/{Type}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:putDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultEncryptionConfiguration",
        input_schema = types.PutDefaultEncryptionConfigurationInput,
        output_schema = types.PutDefaultEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/encryption",
    }, options)
end

function Client:putHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutHubConfiguration",
        input_schema = types.PutHubConfigurationInput,
        output_schema = types.PutHubConfigurationOutput,
        http_method = "PUT",
        http_path = "/hub-configuration",
    }, options)
end

function Client:putRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutRuntimeLogConfiguration",
        input_schema = types.PutRuntimeLogConfigurationInput,
        output_schema = types.PutRuntimeLogConfigurationOutput,
        http_method = "PUT",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
    }, options)
end

function Client:registerAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAccountAssociation",
        input_schema = types.RegisterAccountAssociationInput,
        output_schema = types.RegisterAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/managed-thing-associations/register",
    }, options)
end

function Client:registerCustomEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCustomEndpoint",
        input_schema = types.RegisterCustomEndpointInput,
        output_schema = types.RegisterCustomEndpointOutput,
        http_method = "POST",
        http_path = "/custom-endpoint",
    }, options)
end

function Client:resetRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ResetRuntimeLogConfiguration",
        input_schema = types.ResetRuntimeLogConfigurationInput,
        output_schema = types.ResetRuntimeLogConfigurationOutput,
        http_method = "DELETE",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
    }, options)
end

function Client:sendConnectorEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendConnectorEvent",
        input_schema = types.SendConnectorEventInput,
        output_schema = types.SendConnectorEventOutput,
        http_method = "POST",
        http_path = "/connector-event/{ConnectorId}",
    }, options)
end

function Client:sendManagedThingCommand(input, options)
    return self:invokeOperation(input, {
        name = "SendManagedThingCommand",
        input_schema = types.SendManagedThingCommandInput,
        output_schema = types.SendManagedThingCommandOutput,
        http_method = "POST",
        http_path = "/managed-things-command/{ManagedThingId}",
    }, options)
end

function Client:startAccountAssociationRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartAccountAssociationRefresh",
        input_schema = types.StartAccountAssociationRefreshInput,
        output_schema = types.StartAccountAssociationRefreshOutput,
        http_method = "POST",
        http_path = "/account-associations/{AccountAssociationId}/refresh",
    }, options)
end

function Client:startDeviceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "StartDeviceDiscovery",
        input_schema = types.StartDeviceDiscoveryInput,
        output_schema = types.StartDeviceDiscoveryOutput,
        http_method = "POST",
        http_path = "/device-discoveries",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountAssociation",
        input_schema = types.UpdateAccountAssociationInput,
        output_schema = types.UpdateAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/account-associations/{AccountAssociationId}",
    }, options)
end

function Client:updateCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudConnector",
        input_schema = types.UpdateCloudConnectorInput,
        output_schema = types.UpdateCloudConnectorOutput,
        http_method = "PUT",
        http_path = "/cloud-connectors/{Identifier}",
    }, options)
end

function Client:updateConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorDestination",
        input_schema = types.UpdateConnectorDestinationInput,
        output_schema = types.UpdateConnectorDestinationOutput,
        http_method = "PUT",
        http_path = "/connector-destinations/{Identifier}",
    }, options)
end

function Client:updateDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDestination",
        input_schema = types.UpdateDestinationInput,
        output_schema = types.UpdateDestinationOutput,
        http_method = "PUT",
        http_path = "/destinations/{Name}",
    }, options)
end

function Client:updateEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventLogConfiguration",
        input_schema = types.UpdateEventLogConfigurationInput,
        output_schema = types.UpdateEventLogConfigurationOutput,
        http_method = "PATCH",
        http_path = "/event-log-configurations/{Id}",
    }, options)
end

function Client:updateManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedThing",
        input_schema = types.UpdateManagedThingInput,
        output_schema = types.UpdateManagedThingOutput,
        http_method = "PUT",
        http_path = "/managed-things/{Identifier}",
    }, options)
end

function Client:updateNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationConfiguration",
        input_schema = types.UpdateNotificationConfigurationInput,
        output_schema = types.UpdateNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/notification-configurations/{EventType}",
    }, options)
end

function Client:updateOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOtaTask",
        input_schema = types.UpdateOtaTaskInput,
        output_schema = types.UpdateOtaTaskOutput,
        http_method = "PUT",
        http_path = "/ota-tasks/{Identifier}",
    }, options)
end

return M
