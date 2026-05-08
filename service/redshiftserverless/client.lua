



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("redshiftserverless.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("redshiftserverless.schemas")
local traits = require("smithy.traits")
local types = require("redshiftserverless.types")
local sdk_defaults = require("aws.sdk_defaults")







































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RedshiftServerless"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift-serverless", signing_region = c.region } }
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

function C:convertRecoveryPointToSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConvertRecoveryPointToSnapshot, input, options)
end

function C:createCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomDomainAssociation, input, options)
end

function C:createEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpointAccess, input, options)
end

function C:createNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNamespace, input, options)
end

function C:createReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReservation, input, options)
end

function C:createScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScheduledAction, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createSnapshotCopyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshotCopyConfiguration, input, options)
end

function C:createUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsageLimit, input, options)
end

function C:createWorkgroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkgroup, input, options)
end

function C:deleteCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomDomainAssociation, input, options)
end

function C:deleteEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpointAccess, input, options)
end

function C:deleteNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamespace, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledAction, input, options)
end

function C:deleteSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshot, input, options)
end

function C:deleteSnapshotCopyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshotCopyConfiguration, input, options)
end

function C:deleteUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsageLimit, input, options)
end

function C:deleteWorkgroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkgroup, input, options)
end

function C:getCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCredentials, input, options)
end

function C:getCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomDomainAssociation, input, options)
end

function C:getEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEndpointAccess, input, options)
end

function C:getIdentityCenterAuthToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityCenterAuthToken, input, options)
end

function C:getNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNamespace, input, options)
end

function C:getRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecoveryPoint, input, options)
end

function C:getReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservation, input, options)
end

function C:getReservationOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservationOffering, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetScheduledAction, input, options)
end

function C:getSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnapshot, input, options)
end

function C:getTableRestoreStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableRestoreStatus, input, options)
end

function C:getTrack(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrack, input, options)
end

function C:getUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageLimit, input, options)
end

function C:getWorkgroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkgroup, input, options)
end

function C:listCustomDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomDomainAssociations, input, options)
end

function C:listEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpointAccess, input, options)
end

function C:listManagedWorkgroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedWorkgroups, input, options)
end

function C:listNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNamespaces, input, options)
end

function C:listRecoveryPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecoveryPoints, input, options)
end

function C:listReservationOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReservationOfferings, input, options)
end

function C:listReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReservations, input, options)
end

function C:listScheduledActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScheduledActions, input, options)
end

function C:listSnapshotCopyConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSnapshotCopyConfigurations, input, options)
end

function C:listSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSnapshots, input, options)
end

function C:listTableRestoreStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTableRestoreStatus, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTracks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTracks, input, options)
end

function C:listUsageLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsageLimits, input, options)
end

function C:listWorkgroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkgroups, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:restoreFromRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreFromRecoveryPoint, input, options)
end

function C:restoreFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreFromSnapshot, input, options)
end

function C:restoreTableFromRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreTableFromRecoveryPoint, input, options)
end

function C:restoreTableFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreTableFromSnapshot, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomDomainAssociation, input, options)
end

function C:updateEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpointAccess, input, options)
end

function C:updateLakehouseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLakehouseConfiguration, input, options)
end

function C:updateNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNamespace, input, options)
end

function C:updateScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScheduledAction, input, options)
end

function C:updateSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSnapshot, input, options)
end

function C:updateSnapshotCopyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSnapshotCopyConfiguration, input, options)
end

function C:updateUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUsageLimit, input, options)
end

function C:updateWorkgroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkgroup, input, options)
end

return M
