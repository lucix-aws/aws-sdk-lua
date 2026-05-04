local types = require("redshiftserverless.types")

local record Client
    convertRecoveryPointToSnapshot: function(Client, types.ConvertRecoveryPointToSnapshotInput): types.ConvertRecoveryPointToSnapshotOutput, table
    createCustomDomainAssociation: function(Client, types.CreateCustomDomainAssociationInput): types.CreateCustomDomainAssociationOutput, table
    createEndpointAccess: function(Client, types.CreateEndpointAccessInput): types.CreateEndpointAccessOutput, table
    createNamespace: function(Client, types.CreateNamespaceInput): types.CreateNamespaceOutput, table
    createReservation: function(Client, types.CreateReservationInput): types.CreateReservationOutput, table
    createScheduledAction: function(Client, types.CreateScheduledActionInput): types.CreateScheduledActionOutput, table
    createSnapshot: function(Client, types.CreateSnapshotInput): types.CreateSnapshotOutput, table
    createSnapshotCopyConfiguration: function(Client, types.CreateSnapshotCopyConfigurationInput): types.CreateSnapshotCopyConfigurationOutput, table
    createUsageLimit: function(Client, types.CreateUsageLimitInput): types.CreateUsageLimitOutput, table
    createWorkgroup: function(Client, types.CreateWorkgroupInput): types.CreateWorkgroupOutput, table
    deleteCustomDomainAssociation: function(Client, types.DeleteCustomDomainAssociationInput): types.DeleteCustomDomainAssociationOutput, table
    deleteEndpointAccess: function(Client, types.DeleteEndpointAccessInput): types.DeleteEndpointAccessOutput, table
    deleteNamespace: function(Client, types.DeleteNamespaceInput): types.DeleteNamespaceOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteScheduledAction: function(Client, types.DeleteScheduledActionInput): types.DeleteScheduledActionOutput, table
    deleteSnapshot: function(Client, types.DeleteSnapshotInput): types.DeleteSnapshotOutput, table
    deleteSnapshotCopyConfiguration: function(Client, types.DeleteSnapshotCopyConfigurationInput): types.DeleteSnapshotCopyConfigurationOutput, table
    deleteUsageLimit: function(Client, types.DeleteUsageLimitInput): types.DeleteUsageLimitOutput, table
    deleteWorkgroup: function(Client, types.DeleteWorkgroupInput): types.DeleteWorkgroupOutput, table
    getCredentials: function(Client, types.GetCredentialsInput): types.GetCredentialsOutput, table
    getCustomDomainAssociation: function(Client, types.GetCustomDomainAssociationInput): types.GetCustomDomainAssociationOutput, table
    getEndpointAccess: function(Client, types.GetEndpointAccessInput): types.GetEndpointAccessOutput, table
    getIdentityCenterAuthToken: function(Client, types.GetIdentityCenterAuthTokenInput): types.GetIdentityCenterAuthTokenOutput, table
    getNamespace: function(Client, types.GetNamespaceInput): types.GetNamespaceOutput, table
    getRecoveryPoint: function(Client, types.GetRecoveryPointInput): types.GetRecoveryPointOutput, table
    getReservation: function(Client, types.GetReservationInput): types.GetReservationOutput, table
    getReservationOffering: function(Client, types.GetReservationOfferingInput): types.GetReservationOfferingOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    getScheduledAction: function(Client, types.GetScheduledActionInput): types.GetScheduledActionOutput, table
    getSnapshot: function(Client, types.GetSnapshotInput): types.GetSnapshotOutput, table
    getTableRestoreStatus: function(Client, types.GetTableRestoreStatusInput): types.GetTableRestoreStatusOutput, table
    getTrack: function(Client, types.GetTrackInput): types.GetTrackOutput, table
    getUsageLimit: function(Client, types.GetUsageLimitInput): types.GetUsageLimitOutput, table
    getWorkgroup: function(Client, types.GetWorkgroupInput): types.GetWorkgroupOutput, table
    listCustomDomainAssociations: function(Client, types.ListCustomDomainAssociationsInput): types.ListCustomDomainAssociationsOutput, table
    listEndpointAccess: function(Client, types.ListEndpointAccessInput): types.ListEndpointAccessOutput, table
    listManagedWorkgroups: function(Client, types.ListManagedWorkgroupsInput): types.ListManagedWorkgroupsOutput, table
    listNamespaces: function(Client, types.ListNamespacesInput): types.ListNamespacesOutput, table
    listRecoveryPoints: function(Client, types.ListRecoveryPointsInput): types.ListRecoveryPointsOutput, table
    listReservationOfferings: function(Client, types.ListReservationOfferingsInput): types.ListReservationOfferingsOutput, table
    listReservations: function(Client, types.ListReservationsInput): types.ListReservationsOutput, table
    listScheduledActions: function(Client, types.ListScheduledActionsInput): types.ListScheduledActionsOutput, table
    listSnapshotCopyConfigurations: function(Client, types.ListSnapshotCopyConfigurationsInput): types.ListSnapshotCopyConfigurationsOutput, table
    listSnapshots: function(Client, types.ListSnapshotsInput): types.ListSnapshotsOutput, table
    listTableRestoreStatus: function(Client, types.ListTableRestoreStatusInput): types.ListTableRestoreStatusOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTracks: function(Client, types.ListTracksInput): types.ListTracksOutput, table
    listUsageLimits: function(Client, types.ListUsageLimitsInput): types.ListUsageLimitsOutput, table
    listWorkgroups: function(Client, types.ListWorkgroupsInput): types.ListWorkgroupsOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    restoreFromRecoveryPoint: function(Client, types.RestoreFromRecoveryPointInput): types.RestoreFromRecoveryPointOutput, table
    restoreFromSnapshot: function(Client, types.RestoreFromSnapshotInput): types.RestoreFromSnapshotOutput, table
    restoreTableFromRecoveryPoint: function(Client, types.RestoreTableFromRecoveryPointInput): types.RestoreTableFromRecoveryPointOutput, table
    restoreTableFromSnapshot: function(Client, types.RestoreTableFromSnapshotInput): types.RestoreTableFromSnapshotOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCustomDomainAssociation: function(Client, types.UpdateCustomDomainAssociationInput): types.UpdateCustomDomainAssociationOutput, table
    updateEndpointAccess: function(Client, types.UpdateEndpointAccessInput): types.UpdateEndpointAccessOutput, table
    updateLakehouseConfiguration: function(Client, types.UpdateLakehouseConfigurationInput): types.UpdateLakehouseConfigurationOutput, table
    updateNamespace: function(Client, types.UpdateNamespaceInput): types.UpdateNamespaceOutput, table
    updateScheduledAction: function(Client, types.UpdateScheduledActionInput): types.UpdateScheduledActionOutput, table
    updateSnapshot: function(Client, types.UpdateSnapshotInput): types.UpdateSnapshotOutput, table
    updateSnapshotCopyConfiguration: function(Client, types.UpdateSnapshotCopyConfigurationInput): types.UpdateSnapshotCopyConfigurationOutput, table
    updateUsageLimit: function(Client, types.UpdateUsageLimitInput): types.UpdateUsageLimitOutput, table
    updateWorkgroup: function(Client, types.UpdateWorkgroupInput): types.UpdateWorkgroupOutput, table
end

local record M
    new: function(table): Client
end

return M
