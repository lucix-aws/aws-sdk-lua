local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("redshiftserverless.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("redshiftserverless.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RedshiftServerless"
    cfg.signing_name = "redshiftserverless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:convertRecoveryPointToSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ConvertRecoveryPointToSnapshot",
        input_schema = types.ConvertRecoveryPointToSnapshotInput,
        output_schema = types.ConvertRecoveryPointToSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDomainAssociation",
        input_schema = types.CreateCustomDomainAssociationInput,
        output_schema = types.CreateCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpointAccess",
        input_schema = types.CreateEndpointAccessInput,
        output_schema = types.CreateEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamespace",
        input_schema = types.CreateNamespaceInput,
        output_schema = types.CreateNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createReservation(input, options)
    return self:invokeOperation(input, {
        name = "CreateReservation",
        input_schema = types.CreateReservationInput,
        output_schema = types.CreateReservationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledAction",
        input_schema = types.CreateScheduledActionInput,
        output_schema = types.CreateScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshotCopyConfiguration",
        input_schema = types.CreateSnapshotCopyConfigurationInput,
        output_schema = types.CreateSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageLimit",
        input_schema = types.CreateUsageLimitInput,
        output_schema = types.CreateUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkgroup",
        input_schema = types.CreateWorkgroupInput,
        output_schema = types.CreateWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDomainAssociation",
        input_schema = types.DeleteCustomDomainAssociationInput,
        output_schema = types.DeleteCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpointAccess",
        input_schema = types.DeleteEndpointAccessInput,
        output_schema = types.DeleteEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = types.DeleteNamespaceInput,
        output_schema = types.DeleteNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = types.DeleteScheduledActionInput,
        output_schema = types.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshotCopyConfiguration",
        input_schema = types.DeleteSnapshotCopyConfigurationInput,
        output_schema = types.DeleteSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageLimit",
        input_schema = types.DeleteUsageLimitInput,
        output_schema = types.DeleteUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkgroup",
        input_schema = types.DeleteWorkgroupInput,
        output_schema = types.DeleteWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentials",
        input_schema = types.GetCredentialsInput,
        output_schema = types.GetCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomDomainAssociation",
        input_schema = types.GetCustomDomainAssociationInput,
        output_schema = types.GetCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpointAccess",
        input_schema = types.GetEndpointAccessInput,
        output_schema = types.GetEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityCenterAuthToken(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityCenterAuthToken",
        input_schema = types.GetIdentityCenterAuthTokenInput,
        output_schema = types.GetIdentityCenterAuthTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespace",
        input_schema = types.GetNamespaceInput,
        output_schema = types.GetNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPoint",
        input_schema = types.GetRecoveryPointInput,
        output_schema = types.GetRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getReservation(input, options)
    return self:invokeOperation(input, {
        name = "GetReservation",
        input_schema = types.GetReservationInput,
        output_schema = types.GetReservationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getReservationOffering(input, options)
    return self:invokeOperation(input, {
        name = "GetReservationOffering",
        input_schema = types.GetReservationOfferingInput,
        output_schema = types.GetReservationOfferingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduledAction",
        input_schema = types.GetScheduledActionInput,
        output_schema = types.GetScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshot",
        input_schema = types.GetSnapshotInput,
        output_schema = types.GetSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTableRestoreStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRestoreStatus",
        input_schema = types.GetTableRestoreStatusInput,
        output_schema = types.GetTableRestoreStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrack(input, options)
    return self:invokeOperation(input, {
        name = "GetTrack",
        input_schema = types.GetTrackInput,
        output_schema = types.GetTrackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageLimit",
        input_schema = types.GetUsageLimitInput,
        output_schema = types.GetUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkgroup",
        input_schema = types.GetWorkgroupInput,
        output_schema = types.GetWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCustomDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomDomainAssociations",
        input_schema = types.ListCustomDomainAssociationsInput,
        output_schema = types.ListCustomDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpointAccess",
        input_schema = types.ListEndpointAccessInput,
        output_schema = types.ListEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listManagedWorkgroups(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedWorkgroups",
        input_schema = types.ListManagedWorkgroupsInput,
        output_schema = types.ListManagedWorkgroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = types.ListNamespacesInput,
        output_schema = types.ListNamespacesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPoints",
        input_schema = types.ListRecoveryPointsInput,
        output_schema = types.ListRecoveryPointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReservationOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListReservationOfferings",
        input_schema = types.ListReservationOfferingsInput,
        output_schema = types.ListReservationOfferingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListReservations",
        input_schema = types.ListReservationsInput,
        output_schema = types.ListReservationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledActions",
        input_schema = types.ListScheduledActionsInput,
        output_schema = types.ListScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSnapshotCopyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshotCopyConfigurations",
        input_schema = types.ListSnapshotCopyConfigurationsInput,
        output_schema = types.ListSnapshotCopyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshots",
        input_schema = types.ListSnapshotsInput,
        output_schema = types.ListSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTableRestoreStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListTableRestoreStatus",
        input_schema = types.ListTableRestoreStatusInput,
        output_schema = types.ListTableRestoreStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTracks(input, options)
    return self:invokeOperation(input, {
        name = "ListTracks",
        input_schema = types.ListTracksInput,
        output_schema = types.ListTracksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUsageLimits(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageLimits",
        input_schema = types.ListUsageLimitsInput,
        output_schema = types.ListUsageLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWorkgroups(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkgroups",
        input_schema = types.ListWorkgroupsInput,
        output_schema = types.ListWorkgroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreFromRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromRecoveryPoint",
        input_schema = types.RestoreFromRecoveryPointInput,
        output_schema = types.RestoreFromRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromSnapshot",
        input_schema = types.RestoreFromSnapshotInput,
        output_schema = types.RestoreFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreTableFromRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromRecoveryPoint",
        input_schema = types.RestoreTableFromRecoveryPointInput,
        output_schema = types.RestoreTableFromRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreTableFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromSnapshot",
        input_schema = types.RestoreTableFromSnapshotInput,
        output_schema = types.RestoreTableFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomDomainAssociation",
        input_schema = types.UpdateCustomDomainAssociationInput,
        output_schema = types.UpdateCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointAccess",
        input_schema = types.UpdateEndpointAccessInput,
        output_schema = types.UpdateEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLakehouseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLakehouseConfiguration",
        input_schema = types.UpdateLakehouseConfigurationInput,
        output_schema = types.UpdateLakehouseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNamespace",
        input_schema = types.UpdateNamespaceInput,
        output_schema = types.UpdateNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAction",
        input_schema = types.UpdateScheduledActionInput,
        output_schema = types.UpdateScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshot",
        input_schema = types.UpdateSnapshotInput,
        output_schema = types.UpdateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshotCopyConfiguration",
        input_schema = types.UpdateSnapshotCopyConfigurationInput,
        output_schema = types.UpdateSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsageLimit",
        input_schema = types.UpdateUsageLimitInput,
        output_schema = types.UpdateUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkgroup",
        input_schema = types.UpdateWorkgroupInput,
        output_schema = types.UpdateWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
