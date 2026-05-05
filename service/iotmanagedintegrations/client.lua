local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotmanagedintegrations.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("iotmanagedintegrations.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotManagedIntegrations"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotmanagedintegrations", signing_region = cfg.region } }
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

function Client:createAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountAssociation",
        input_schema = schemas.CreateAccountAssociationInput,
        output_schema = schemas.CreateAccountAssociationOutput,
        http_method = "POST",
        http_path = "/account-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudConnector",
        input_schema = schemas.CreateCloudConnectorInput,
        output_schema = schemas.CreateCloudConnectorOutput,
        http_method = "POST",
        http_path = "/cloud-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorDestination",
        input_schema = schemas.CreateConnectorDestinationInput,
        output_schema = schemas.CreateConnectorDestinationOutput,
        http_method = "POST",
        http_path = "/connector-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "CreateCredentialLocker",
        input_schema = schemas.CreateCredentialLockerInput,
        output_schema = schemas.CreateCredentialLockerOutput,
        http_method = "POST",
        http_path = "/credential-lockers",
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

function Client:createEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventLogConfiguration",
        input_schema = schemas.CreateEventLogConfigurationInput,
        output_schema = schemas.CreateEventLogConfigurationOutput,
        http_method = "POST",
        http_path = "/event-log-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedThing",
        input_schema = schemas.CreateManagedThingInput,
        output_schema = schemas.CreateManagedThingOutput,
        http_method = "POST",
        http_path = "/managed-things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationConfiguration",
        input_schema = schemas.CreateNotificationConfigurationInput,
        output_schema = schemas.CreateNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/notification-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateOtaTask",
        input_schema = schemas.CreateOtaTaskInput,
        output_schema = schemas.CreateOtaTaskOutput,
        http_method = "POST",
        http_path = "/ota-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateOtaTaskConfiguration",
        input_schema = schemas.CreateOtaTaskConfigurationInput,
        output_schema = schemas.CreateOtaTaskConfigurationOutput,
        http_method = "POST",
        http_path = "/ota-task-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningProfile",
        input_schema = schemas.CreateProvisioningProfileInput,
        output_schema = schemas.CreateProvisioningProfileOutput,
        http_method = "POST",
        http_path = "/provisioning-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAssociation",
        input_schema = schemas.DeleteAccountAssociationInput,
        output_schema = schemas.DeleteAccountAssociationOutput,
        http_method = "DELETE",
        http_path = "/account-associations/{AccountAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudConnector",
        input_schema = schemas.DeleteCloudConnectorInput,
        output_schema = schemas.DeleteCloudConnectorOutput,
        http_method = "DELETE",
        http_path = "/cloud-connectors/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorDestination",
        input_schema = schemas.DeleteConnectorDestinationInput,
        output_schema = schemas.DeleteConnectorDestinationOutput,
        http_method = "DELETE",
        http_path = "/connector-destinations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCredentialLocker",
        input_schema = schemas.DeleteCredentialLockerInput,
        output_schema = schemas.DeleteCredentialLockerOutput,
        http_method = "DELETE",
        http_path = "/credential-lockers/{Identifier}",
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

function Client:deleteEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventLogConfiguration",
        input_schema = schemas.DeleteEventLogConfigurationInput,
        output_schema = schemas.DeleteEventLogConfigurationOutput,
        http_method = "DELETE",
        http_path = "/event-log-configurations/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedThing",
        input_schema = schemas.DeleteManagedThingInput,
        output_schema = schemas.DeleteManagedThingOutput,
        http_method = "DELETE",
        http_path = "/managed-things/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationConfiguration",
        input_schema = schemas.DeleteNotificationConfigurationInput,
        output_schema = schemas.DeleteNotificationConfigurationOutput,
        http_method = "DELETE",
        http_path = "/notification-configurations/{EventType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOtaTask",
        input_schema = schemas.DeleteOtaTaskInput,
        output_schema = schemas.DeleteOtaTaskOutput,
        http_method = "DELETE",
        http_path = "/ota-tasks/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOtaTaskConfiguration",
        input_schema = schemas.DeleteOtaTaskConfigurationInput,
        output_schema = schemas.DeleteOtaTaskConfigurationOutput,
        http_method = "DELETE",
        http_path = "/ota-task-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningProfile",
        input_schema = schemas.DeleteProvisioningProfileInput,
        output_schema = schemas.DeleteProvisioningProfileOutput,
        http_method = "DELETE",
        http_path = "/provisioning-profiles/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAccountAssociation",
        input_schema = schemas.DeregisterAccountAssociationInput,
        output_schema = schemas.DeregisterAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/managed-thing-associations/deregister",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountAssociation",
        input_schema = schemas.GetAccountAssociationInput,
        output_schema = schemas.GetAccountAssociationOutput,
        http_method = "GET",
        http_path = "/account-associations/{AccountAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudConnector",
        input_schema = schemas.GetCloudConnectorInput,
        output_schema = schemas.GetCloudConnectorOutput,
        http_method = "GET",
        http_path = "/cloud-connectors/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorDestination",
        input_schema = schemas.GetConnectorDestinationInput,
        output_schema = schemas.GetConnectorDestinationOutput,
        http_method = "GET",
        http_path = "/connector-destinations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCredentialLocker(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentialLocker",
        input_schema = schemas.GetCredentialLockerInput,
        output_schema = schemas.GetCredentialLockerOutput,
        http_method = "GET",
        http_path = "/credential-lockers/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomEndpoint",
        input_schema = schemas.GetCustomEndpointInput,
        output_schema = schemas.GetCustomEndpointOutput,
        http_method = "GET",
        http_path = "/custom-endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultEncryptionConfiguration",
        input_schema = schemas.GetDefaultEncryptionConfigurationInput,
        output_schema = schemas.GetDefaultEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/encryption",
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

function Client:getDeviceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceDiscovery",
        input_schema = schemas.GetDeviceDiscoveryInput,
        output_schema = schemas.GetDeviceDiscoveryOutput,
        http_method = "GET",
        http_path = "/device-discoveries/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEventLogConfiguration",
        input_schema = schemas.GetEventLogConfigurationInput,
        output_schema = schemas.GetEventLogConfigurationOutput,
        http_method = "GET",
        http_path = "/event-log-configurations/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetHubConfiguration",
        input_schema = schemas.GetHubConfigurationInput,
        output_schema = schemas.GetHubConfigurationOutput,
        http_method = "GET",
        http_path = "/hub-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThing",
        input_schema = schemas.GetManagedThingInput,
        output_schema = schemas.GetManagedThingOutput,
        http_method = "GET",
        http_path = "/managed-things/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThingCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingCapabilities",
        input_schema = schemas.GetManagedThingCapabilitiesInput,
        output_schema = schemas.GetManagedThingCapabilitiesOutput,
        http_method = "GET",
        http_path = "/managed-things-capabilities/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThingCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingCertificate",
        input_schema = schemas.GetManagedThingCertificateInput,
        output_schema = schemas.GetManagedThingCertificateOutput,
        http_method = "GET",
        http_path = "/managed-things-certificate/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThingConnectivityData(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingConnectivityData",
        input_schema = schemas.GetManagedThingConnectivityDataInput,
        output_schema = schemas.GetManagedThingConnectivityDataOutput,
        http_method = "POST",
        http_path = "/managed-things-connectivity-data/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThingMetaData(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingMetaData",
        input_schema = schemas.GetManagedThingMetaDataInput,
        output_schema = schemas.GetManagedThingMetaDataOutput,
        http_method = "GET",
        http_path = "/managed-things-metadata/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedThingState(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedThingState",
        input_schema = schemas.GetManagedThingStateInput,
        output_schema = schemas.GetManagedThingStateOutput,
        http_method = "GET",
        http_path = "/managed-thing-states/{ManagedThingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationConfiguration",
        input_schema = schemas.GetNotificationConfigurationInput,
        output_schema = schemas.GetNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/notification-configurations/{EventType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "GetOtaTask",
        input_schema = schemas.GetOtaTaskInput,
        output_schema = schemas.GetOtaTaskOutput,
        http_method = "GET",
        http_path = "/ota-tasks/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOtaTaskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetOtaTaskConfiguration",
        input_schema = schemas.GetOtaTaskConfigurationInput,
        output_schema = schemas.GetOtaTaskConfigurationOutput,
        http_method = "GET",
        http_path = "/ota-task-configurations/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProvisioningProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisioningProfile",
        input_schema = schemas.GetProvisioningProfileInput,
        output_schema = schemas.GetProvisioningProfileOutput,
        http_method = "GET",
        http_path = "/provisioning-profiles/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRuntimeLogConfiguration",
        input_schema = schemas.GetRuntimeLogConfigurationInput,
        output_schema = schemas.GetRuntimeLogConfigurationOutput,
        http_method = "GET",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaVersion",
        input_schema = schemas.GetSchemaVersionInput,
        output_schema = schemas.GetSchemaVersionOutput,
        http_method = "GET",
        http_path = "/schema-versions/{Type}/{SchemaVersionedId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssociations",
        input_schema = schemas.ListAccountAssociationsInput,
        output_schema = schemas.ListAccountAssociationsOutput,
        http_method = "GET",
        http_path = "/account-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudConnectors",
        input_schema = schemas.ListCloudConnectorsInput,
        output_schema = schemas.ListCloudConnectorsOutput,
        http_method = "GET",
        http_path = "/cloud-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectorDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorDestinations",
        input_schema = schemas.ListConnectorDestinationsInput,
        output_schema = schemas.ListConnectorDestinationsOutput,
        http_method = "GET",
        http_path = "/connector-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCredentialLockers(input, options)
    return self:invokeOperation(input, {
        name = "ListCredentialLockers",
        input_schema = schemas.ListCredentialLockersInput,
        output_schema = schemas.ListCredentialLockersOutput,
        http_method = "GET",
        http_path = "/credential-lockers",
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

function Client:listDeviceDiscoveries(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceDiscoveries",
        input_schema = schemas.ListDeviceDiscoveriesInput,
        output_schema = schemas.ListDeviceDiscoveriesOutput,
        http_method = "GET",
        http_path = "/device-discoveries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoveredDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredDevices",
        input_schema = schemas.ListDiscoveredDevicesInput,
        output_schema = schemas.ListDiscoveredDevicesOutput,
        http_method = "GET",
        http_path = "/device-discoveries/{Identifier}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventLogConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventLogConfigurations",
        input_schema = schemas.ListEventLogConfigurationsInput,
        output_schema = schemas.ListEventLogConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-log-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedThingAccountAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThingAccountAssociations",
        input_schema = schemas.ListManagedThingAccountAssociationsInput,
        output_schema = schemas.ListManagedThingAccountAssociationsOutput,
        http_method = "GET",
        http_path = "/managed-thing-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedThings(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThings",
        input_schema = schemas.ListManagedThingsInput,
        output_schema = schemas.ListManagedThingsOutput,
        http_method = "GET",
        http_path = "/managed-things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedThingSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedThingSchemas",
        input_schema = schemas.ListManagedThingSchemasInput,
        output_schema = schemas.ListManagedThingSchemasOutput,
        http_method = "GET",
        http_path = "/managed-thing-schemas/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotificationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListNotificationConfigurations",
        input_schema = schemas.ListNotificationConfigurationsInput,
        output_schema = schemas.ListNotificationConfigurationsOutput,
        http_method = "GET",
        http_path = "/notification-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOtaTaskConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTaskConfigurations",
        input_schema = schemas.ListOtaTaskConfigurationsInput,
        output_schema = schemas.ListOtaTaskConfigurationsOutput,
        http_method = "GET",
        http_path = "/ota-task-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOtaTaskExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTaskExecutions",
        input_schema = schemas.ListOtaTaskExecutionsInput,
        output_schema = schemas.ListOtaTaskExecutionsOutput,
        http_method = "GET",
        http_path = "/ota-tasks/{Identifier}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOtaTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListOtaTasks",
        input_schema = schemas.ListOtaTasksInput,
        output_schema = schemas.ListOtaTasksOutput,
        http_method = "GET",
        http_path = "/ota-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisioningProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningProfiles",
        input_schema = schemas.ListProvisioningProfilesInput,
        output_schema = schemas.ListProvisioningProfilesOutput,
        http_method = "GET",
        http_path = "/provisioning-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemaVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaVersions",
        input_schema = schemas.ListSchemaVersionsInput,
        output_schema = schemas.ListSchemaVersionsOutput,
        http_method = "GET",
        http_path = "/schema-versions/{Type}",
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

function Client:putDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultEncryptionConfiguration",
        input_schema = schemas.PutDefaultEncryptionConfigurationInput,
        output_schema = schemas.PutDefaultEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutHubConfiguration",
        input_schema = schemas.PutHubConfigurationInput,
        output_schema = schemas.PutHubConfigurationOutput,
        http_method = "PUT",
        http_path = "/hub-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutRuntimeLogConfiguration",
        input_schema = schemas.PutRuntimeLogConfigurationInput,
        output_schema = schemas.PutRuntimeLogConfigurationOutput,
        http_method = "PUT",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAccountAssociation",
        input_schema = schemas.RegisterAccountAssociationInput,
        output_schema = schemas.RegisterAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/managed-thing-associations/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCustomEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCustomEndpoint",
        input_schema = schemas.RegisterCustomEndpointInput,
        output_schema = schemas.RegisterCustomEndpointOutput,
        http_method = "POST",
        http_path = "/custom-endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetRuntimeLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ResetRuntimeLogConfiguration",
        input_schema = schemas.ResetRuntimeLogConfigurationInput,
        output_schema = schemas.ResetRuntimeLogConfigurationOutput,
        http_method = "DELETE",
        http_path = "/runtime-log-configurations/{ManagedThingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendConnectorEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendConnectorEvent",
        input_schema = schemas.SendConnectorEventInput,
        output_schema = schemas.SendConnectorEventOutput,
        http_method = "POST",
        http_path = "/connector-event/{ConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendManagedThingCommand(input, options)
    return self:invokeOperation(input, {
        name = "SendManagedThingCommand",
        input_schema = schemas.SendManagedThingCommandInput,
        output_schema = schemas.SendManagedThingCommandOutput,
        http_method = "POST",
        http_path = "/managed-things-command/{ManagedThingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAccountAssociationRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartAccountAssociationRefresh",
        input_schema = schemas.StartAccountAssociationRefreshInput,
        output_schema = schemas.StartAccountAssociationRefreshOutput,
        http_method = "POST",
        http_path = "/account-associations/{AccountAssociationId}/refresh",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeviceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "StartDeviceDiscovery",
        input_schema = schemas.StartDeviceDiscoveryInput,
        output_schema = schemas.StartDeviceDiscoveryOutput,
        http_method = "POST",
        http_path = "/device-discoveries",
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

function Client:updateAccountAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountAssociation",
        input_schema = schemas.UpdateAccountAssociationInput,
        output_schema = schemas.UpdateAccountAssociationOutput,
        http_method = "PUT",
        http_path = "/account-associations/{AccountAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCloudConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudConnector",
        input_schema = schemas.UpdateCloudConnectorInput,
        output_schema = schemas.UpdateCloudConnectorOutput,
        http_method = "PUT",
        http_path = "/cloud-connectors/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectorDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorDestination",
        input_schema = schemas.UpdateConnectorDestinationInput,
        output_schema = schemas.UpdateConnectorDestinationOutput,
        http_method = "PUT",
        http_path = "/connector-destinations/{Identifier}",
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
        http_method = "PUT",
        http_path = "/destinations/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventLogConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventLogConfiguration",
        input_schema = schemas.UpdateEventLogConfigurationInput,
        output_schema = schemas.UpdateEventLogConfigurationOutput,
        http_method = "PATCH",
        http_path = "/event-log-configurations/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateManagedThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedThing",
        input_schema = schemas.UpdateManagedThingInput,
        output_schema = schemas.UpdateManagedThingOutput,
        http_method = "PUT",
        http_path = "/managed-things/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationConfiguration",
        input_schema = schemas.UpdateNotificationConfigurationInput,
        output_schema = schemas.UpdateNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/notification-configurations/{EventType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOtaTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOtaTask",
        input_schema = schemas.UpdateOtaTaskInput,
        output_schema = schemas.UpdateOtaTaskOutput,
        http_method = "PUT",
        http_path = "/ota-tasks/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
