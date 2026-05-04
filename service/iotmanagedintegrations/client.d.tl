local types = require("iotmanagedintegrations.types")

local record Client
    createAccountAssociation: function(Client, types.CreateAccountAssociationInput): types.CreateAccountAssociationOutput, table
    createCloudConnector: function(Client, types.CreateCloudConnectorInput): types.CreateCloudConnectorOutput, table
    createConnectorDestination: function(Client, types.CreateConnectorDestinationInput): types.CreateConnectorDestinationOutput, table
    createCredentialLocker: function(Client, types.CreateCredentialLockerInput): types.CreateCredentialLockerOutput, table
    createDestination: function(Client, types.CreateDestinationInput): types.CreateDestinationOutput, table
    createEventLogConfiguration: function(Client, types.CreateEventLogConfigurationInput): types.CreateEventLogConfigurationOutput, table
    createManagedThing: function(Client, types.CreateManagedThingInput): types.CreateManagedThingOutput, table
    createNotificationConfiguration: function(Client, types.CreateNotificationConfigurationInput): types.CreateNotificationConfigurationOutput, table
    createOtaTask: function(Client, types.CreateOtaTaskInput): types.CreateOtaTaskOutput, table
    createOtaTaskConfiguration: function(Client, types.CreateOtaTaskConfigurationInput): types.CreateOtaTaskConfigurationOutput, table
    createProvisioningProfile: function(Client, types.CreateProvisioningProfileInput): types.CreateProvisioningProfileOutput, table
    deleteAccountAssociation: function(Client, types.DeleteAccountAssociationInput): types.DeleteAccountAssociationOutput, table
    deleteCloudConnector: function(Client, types.DeleteCloudConnectorInput): types.DeleteCloudConnectorOutput, table
    deleteConnectorDestination: function(Client, types.DeleteConnectorDestinationInput): types.DeleteConnectorDestinationOutput, table
    deleteCredentialLocker: function(Client, types.DeleteCredentialLockerInput): types.DeleteCredentialLockerOutput, table
    deleteDestination: function(Client, types.DeleteDestinationInput): types.DeleteDestinationOutput, table
    deleteEventLogConfiguration: function(Client, types.DeleteEventLogConfigurationInput): types.DeleteEventLogConfigurationOutput, table
    deleteManagedThing: function(Client, types.DeleteManagedThingInput): types.DeleteManagedThingOutput, table
    deleteNotificationConfiguration: function(Client, types.DeleteNotificationConfigurationInput): types.DeleteNotificationConfigurationOutput, table
    deleteOtaTask: function(Client, types.DeleteOtaTaskInput): types.DeleteOtaTaskOutput, table
    deleteOtaTaskConfiguration: function(Client, types.DeleteOtaTaskConfigurationInput): types.DeleteOtaTaskConfigurationOutput, table
    deleteProvisioningProfile: function(Client, types.DeleteProvisioningProfileInput): types.DeleteProvisioningProfileOutput, table
    deregisterAccountAssociation: function(Client, types.DeregisterAccountAssociationInput): types.DeregisterAccountAssociationOutput, table
    getAccountAssociation: function(Client, types.GetAccountAssociationInput): types.GetAccountAssociationOutput, table
    getCloudConnector: function(Client, types.GetCloudConnectorInput): types.GetCloudConnectorOutput, table
    getConnectorDestination: function(Client, types.GetConnectorDestinationInput): types.GetConnectorDestinationOutput, table
    getCredentialLocker: function(Client, types.GetCredentialLockerInput): types.GetCredentialLockerOutput, table
    getCustomEndpoint: function(Client, types.GetCustomEndpointInput): types.GetCustomEndpointOutput, table
    getDefaultEncryptionConfiguration: function(Client, types.GetDefaultEncryptionConfigurationInput): types.GetDefaultEncryptionConfigurationOutput, table
    getDestination: function(Client, types.GetDestinationInput): types.GetDestinationOutput, table
    getDeviceDiscovery: function(Client, types.GetDeviceDiscoveryInput): types.GetDeviceDiscoveryOutput, table
    getEventLogConfiguration: function(Client, types.GetEventLogConfigurationInput): types.GetEventLogConfigurationOutput, table
    getHubConfiguration: function(Client, types.GetHubConfigurationInput): types.GetHubConfigurationOutput, table
    getManagedThing: function(Client, types.GetManagedThingInput): types.GetManagedThingOutput, table
    getManagedThingCapabilities: function(Client, types.GetManagedThingCapabilitiesInput): types.GetManagedThingCapabilitiesOutput, table
    getManagedThingCertificate: function(Client, types.GetManagedThingCertificateInput): types.GetManagedThingCertificateOutput, table
    getManagedThingConnectivityData: function(Client, types.GetManagedThingConnectivityDataInput): types.GetManagedThingConnectivityDataOutput, table
    getManagedThingMetaData: function(Client, types.GetManagedThingMetaDataInput): types.GetManagedThingMetaDataOutput, table
    getManagedThingState: function(Client, types.GetManagedThingStateInput): types.GetManagedThingStateOutput, table
    getNotificationConfiguration: function(Client, types.GetNotificationConfigurationInput): types.GetNotificationConfigurationOutput, table
    getOtaTask: function(Client, types.GetOtaTaskInput): types.GetOtaTaskOutput, table
    getOtaTaskConfiguration: function(Client, types.GetOtaTaskConfigurationInput): types.GetOtaTaskConfigurationOutput, table
    getProvisioningProfile: function(Client, types.GetProvisioningProfileInput): types.GetProvisioningProfileOutput, table
    getRuntimeLogConfiguration: function(Client, types.GetRuntimeLogConfigurationInput): types.GetRuntimeLogConfigurationOutput, table
    getSchemaVersion: function(Client, types.GetSchemaVersionInput): types.GetSchemaVersionOutput, table
    listAccountAssociations: function(Client, types.ListAccountAssociationsInput): types.ListAccountAssociationsOutput, table
    listCloudConnectors: function(Client, types.ListCloudConnectorsInput): types.ListCloudConnectorsOutput, table
    listConnectorDestinations: function(Client, types.ListConnectorDestinationsInput): types.ListConnectorDestinationsOutput, table
    listCredentialLockers: function(Client, types.ListCredentialLockersInput): types.ListCredentialLockersOutput, table
    listDestinations: function(Client, types.ListDestinationsInput): types.ListDestinationsOutput, table
    listDeviceDiscoveries: function(Client, types.ListDeviceDiscoveriesInput): types.ListDeviceDiscoveriesOutput, table
    listDiscoveredDevices: function(Client, types.ListDiscoveredDevicesInput): types.ListDiscoveredDevicesOutput, table
    listEventLogConfigurations: function(Client, types.ListEventLogConfigurationsInput): types.ListEventLogConfigurationsOutput, table
    listManagedThingAccountAssociations: function(Client, types.ListManagedThingAccountAssociationsInput): types.ListManagedThingAccountAssociationsOutput, table
    listManagedThings: function(Client, types.ListManagedThingsInput): types.ListManagedThingsOutput, table
    listManagedThingSchemas: function(Client, types.ListManagedThingSchemasInput): types.ListManagedThingSchemasOutput, table
    listNotificationConfigurations: function(Client, types.ListNotificationConfigurationsInput): types.ListNotificationConfigurationsOutput, table
    listOtaTaskConfigurations: function(Client, types.ListOtaTaskConfigurationsInput): types.ListOtaTaskConfigurationsOutput, table
    listOtaTaskExecutions: function(Client, types.ListOtaTaskExecutionsInput): types.ListOtaTaskExecutionsOutput, table
    listOtaTasks: function(Client, types.ListOtaTasksInput): types.ListOtaTasksOutput, table
    listProvisioningProfiles: function(Client, types.ListProvisioningProfilesInput): types.ListProvisioningProfilesOutput, table
    listSchemaVersions: function(Client, types.ListSchemaVersionsInput): types.ListSchemaVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putDefaultEncryptionConfiguration: function(Client, types.PutDefaultEncryptionConfigurationInput): types.PutDefaultEncryptionConfigurationOutput, table
    putHubConfiguration: function(Client, types.PutHubConfigurationInput): types.PutHubConfigurationOutput, table
    putRuntimeLogConfiguration: function(Client, types.PutRuntimeLogConfigurationInput): types.PutRuntimeLogConfigurationOutput, table
    registerAccountAssociation: function(Client, types.RegisterAccountAssociationInput): types.RegisterAccountAssociationOutput, table
    registerCustomEndpoint: function(Client, types.RegisterCustomEndpointInput): types.RegisterCustomEndpointOutput, table
    resetRuntimeLogConfiguration: function(Client, types.ResetRuntimeLogConfigurationInput): types.ResetRuntimeLogConfigurationOutput, table
    sendConnectorEvent: function(Client, types.SendConnectorEventInput): types.SendConnectorEventOutput, table
    sendManagedThingCommand: function(Client, types.SendManagedThingCommandInput): types.SendManagedThingCommandOutput, table
    startAccountAssociationRefresh: function(Client, types.StartAccountAssociationRefreshInput): types.StartAccountAssociationRefreshOutput, table
    startDeviceDiscovery: function(Client, types.StartDeviceDiscoveryInput): types.StartDeviceDiscoveryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccountAssociation: function(Client, types.UpdateAccountAssociationInput): types.UpdateAccountAssociationOutput, table
    updateCloudConnector: function(Client, types.UpdateCloudConnectorInput): types.UpdateCloudConnectorOutput, table
    updateConnectorDestination: function(Client, types.UpdateConnectorDestinationInput): types.UpdateConnectorDestinationOutput, table
    updateDestination: function(Client, types.UpdateDestinationInput): types.UpdateDestinationOutput, table
    updateEventLogConfiguration: function(Client, types.UpdateEventLogConfigurationInput): types.UpdateEventLogConfigurationOutput, table
    updateManagedThing: function(Client, types.UpdateManagedThingInput): types.UpdateManagedThingOutput, table
    updateNotificationConfiguration: function(Client, types.UpdateNotificationConfigurationInput): types.UpdateNotificationConfigurationOutput, table
    updateOtaTask: function(Client, types.UpdateOtaTaskInput): types.UpdateOtaTaskOutput, table
end

local record M
    new: function(table): Client
end

return M
