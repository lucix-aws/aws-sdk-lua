local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("redshiftserverless.endpoint_rules")
local schemas = require("redshiftserverless.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RedshiftServerless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift-serverless", signing_region = cfg.region } }
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

function Client:convertRecoveryPointToSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ConvertRecoveryPointToSnapshot",
        input_schema = schemas.ConvertRecoveryPointToSnapshotInput,
        output_schema = schemas.ConvertRecoveryPointToSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDomainAssociation",
        input_schema = schemas.CreateCustomDomainAssociationInput,
        output_schema = schemas.CreateCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpointAccess",
        input_schema = schemas.CreateEndpointAccessInput,
        output_schema = schemas.CreateEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamespace",
        input_schema = schemas.CreateNamespaceInput,
        output_schema = schemas.CreateNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReservation(input, options)
    return self:invokeOperation(input, {
        name = "CreateReservation",
        input_schema = schemas.CreateReservationInput,
        output_schema = schemas.CreateReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledAction",
        input_schema = schemas.CreateScheduledActionInput,
        output_schema = schemas.CreateScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = schemas.CreateSnapshotInput,
        output_schema = schemas.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshotCopyConfiguration",
        input_schema = schemas.CreateSnapshotCopyConfigurationInput,
        output_schema = schemas.CreateSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageLimit",
        input_schema = schemas.CreateUsageLimitInput,
        output_schema = schemas.CreateUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkgroup",
        input_schema = schemas.CreateWorkgroupInput,
        output_schema = schemas.CreateWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDomainAssociation",
        input_schema = schemas.DeleteCustomDomainAssociationInput,
        output_schema = schemas.DeleteCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpointAccess",
        input_schema = schemas.DeleteEndpointAccessInput,
        output_schema = schemas.DeleteEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = schemas.DeleteNamespaceInput,
        output_schema = schemas.DeleteNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = schemas.DeleteScheduledActionInput,
        output_schema = schemas.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = schemas.DeleteSnapshotInput,
        output_schema = schemas.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshotCopyConfiguration",
        input_schema = schemas.DeleteSnapshotCopyConfigurationInput,
        output_schema = schemas.DeleteSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageLimit",
        input_schema = schemas.DeleteUsageLimitInput,
        output_schema = schemas.DeleteUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkgroup",
        input_schema = schemas.DeleteWorkgroupInput,
        output_schema = schemas.DeleteWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentials",
        input_schema = schemas.GetCredentialsInput,
        output_schema = schemas.GetCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomDomainAssociation",
        input_schema = schemas.GetCustomDomainAssociationInput,
        output_schema = schemas.GetCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpointAccess",
        input_schema = schemas.GetEndpointAccessInput,
        output_schema = schemas.GetEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentityCenterAuthToken(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityCenterAuthToken",
        input_schema = schemas.GetIdentityCenterAuthTokenInput,
        output_schema = schemas.GetIdentityCenterAuthTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespace",
        input_schema = schemas.GetNamespaceInput,
        output_schema = schemas.GetNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPoint",
        input_schema = schemas.GetRecoveryPointInput,
        output_schema = schemas.GetRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservation(input, options)
    return self:invokeOperation(input, {
        name = "GetReservation",
        input_schema = schemas.GetReservationInput,
        output_schema = schemas.GetReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservationOffering(input, options)
    return self:invokeOperation(input, {
        name = "GetReservationOffering",
        input_schema = schemas.GetReservationOfferingInput,
        output_schema = schemas.GetReservationOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduledAction",
        input_schema = schemas.GetScheduledActionInput,
        output_schema = schemas.GetScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshot",
        input_schema = schemas.GetSnapshotInput,
        output_schema = schemas.GetSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableRestoreStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRestoreStatus",
        input_schema = schemas.GetTableRestoreStatusInput,
        output_schema = schemas.GetTableRestoreStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrack(input, options)
    return self:invokeOperation(input, {
        name = "GetTrack",
        input_schema = schemas.GetTrackInput,
        output_schema = schemas.GetTrackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageLimit",
        input_schema = schemas.GetUsageLimitInput,
        output_schema = schemas.GetUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkgroup",
        input_schema = schemas.GetWorkgroupInput,
        output_schema = schemas.GetWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomDomainAssociations",
        input_schema = schemas.ListCustomDomainAssociationsInput,
        output_schema = schemas.ListCustomDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpointAccess",
        input_schema = schemas.ListEndpointAccessInput,
        output_schema = schemas.ListEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedWorkgroups(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedWorkgroups",
        input_schema = schemas.ListManagedWorkgroupsInput,
        output_schema = schemas.ListManagedWorkgroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = schemas.ListNamespacesInput,
        output_schema = schemas.ListNamespacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPoints",
        input_schema = schemas.ListRecoveryPointsInput,
        output_schema = schemas.ListRecoveryPointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReservationOfferings(input, options)
    return self:invokeOperation(input, {
        name = "ListReservationOfferings",
        input_schema = schemas.ListReservationOfferingsInput,
        output_schema = schemas.ListReservationOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListReservations",
        input_schema = schemas.ListReservationsInput,
        output_schema = schemas.ListReservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledActions",
        input_schema = schemas.ListScheduledActionsInput,
        output_schema = schemas.ListScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSnapshotCopyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshotCopyConfigurations",
        input_schema = schemas.ListSnapshotCopyConfigurationsInput,
        output_schema = schemas.ListSnapshotCopyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshots",
        input_schema = schemas.ListSnapshotsInput,
        output_schema = schemas.ListSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTableRestoreStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListTableRestoreStatus",
        input_schema = schemas.ListTableRestoreStatusInput,
        output_schema = schemas.ListTableRestoreStatusOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTracks(input, options)
    return self:invokeOperation(input, {
        name = "ListTracks",
        input_schema = schemas.ListTracksInput,
        output_schema = schemas.ListTracksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsageLimits(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageLimits",
        input_schema = schemas.ListUsageLimitsInput,
        output_schema = schemas.ListUsageLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkgroups(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkgroups",
        input_schema = schemas.ListWorkgroupsInput,
        output_schema = schemas.ListWorkgroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreFromRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromRecoveryPoint",
        input_schema = schemas.RestoreFromRecoveryPointInput,
        output_schema = schemas.RestoreFromRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromSnapshot",
        input_schema = schemas.RestoreFromSnapshotInput,
        output_schema = schemas.RestoreFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreTableFromRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromRecoveryPoint",
        input_schema = schemas.RestoreTableFromRecoveryPointInput,
        output_schema = schemas.RestoreTableFromRecoveryPointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreTableFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromSnapshot",
        input_schema = schemas.RestoreTableFromSnapshotInput,
        output_schema = schemas.RestoreTableFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomDomainAssociation",
        input_schema = schemas.UpdateCustomDomainAssociationInput,
        output_schema = schemas.UpdateCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointAccess",
        input_schema = schemas.UpdateEndpointAccessInput,
        output_schema = schemas.UpdateEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLakehouseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLakehouseConfiguration",
        input_schema = schemas.UpdateLakehouseConfigurationInput,
        output_schema = schemas.UpdateLakehouseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNamespace",
        input_schema = schemas.UpdateNamespaceInput,
        output_schema = schemas.UpdateNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAction",
        input_schema = schemas.UpdateScheduledActionInput,
        output_schema = schemas.UpdateScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshot",
        input_schema = schemas.UpdateSnapshotInput,
        output_schema = schemas.UpdateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSnapshotCopyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSnapshotCopyConfiguration",
        input_schema = schemas.UpdateSnapshotCopyConfigurationInput,
        output_schema = schemas.UpdateSnapshotCopyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsageLimit",
        input_schema = schemas.UpdateUsageLimitInput,
        output_schema = schemas.UpdateUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkgroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkgroup",
        input_schema = schemas.UpdateWorkgroupInput,
        output_schema = schemas.UpdateWorkgroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
