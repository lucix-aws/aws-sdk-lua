



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("redshift.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("redshift.schemas")
local traits = require("smithy.traits")
local types = require("redshift.types")
local sdk_defaults = require("aws.sdk_defaults")



















































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RedshiftServiceVersion20121201"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift", signing_region = c.region } }
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

function C:acceptReservedNodeExchange(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptReservedNodeExchange, input, options)
end

function C:addPartner(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPartner, input, options)
end

function C:associateDataShareConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDataShareConsumer, input, options)
end

function C:authorizeClusterSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeClusterSecurityGroupIngress, input, options)
end

function C:authorizeDataShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeDataShare, input, options)
end

function C:authorizeEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeEndpointAccess, input, options)
end

function C:authorizeSnapshotAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeSnapshotAccess, input, options)
end

function C:batchDeleteClusterSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteClusterSnapshots, input, options)
end

function C:batchModifyClusterSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchModifyClusterSnapshots, input, options)
end

function C:cancelResize(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelResize, input, options)
end

function C:copyClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyClusterSnapshot, input, options)
end

function C:createAuthenticationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAuthenticationProfile, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterParameterGroup, input, options)
end

function C:createClusterSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterSecurityGroup, input, options)
end

function C:createClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterSnapshot, input, options)
end

function C:createClusterSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterSubnetGroup, input, options)
end

function C:createCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomDomainAssociation, input, options)
end

function C:createEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpointAccess, input, options)
end

function C:createEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventSubscription, input, options)
end

function C:createHsmClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHsmClientCertificate, input, options)
end

function C:createHsmConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHsmConfiguration, input, options)
end

function C:createIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegration, input, options)
end

function C:createRedshiftIdcApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRedshiftIdcApplication, input, options)
end

function C:createScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScheduledAction, input, options)
end

function C:createSnapshotCopyGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshotCopyGrant, input, options)
end

function C:createSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshotSchedule, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:createUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsageLimit, input, options)
end

function C:deauthorizeDataShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeauthorizeDataShare, input, options)
end

function C:deleteAuthenticationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuthenticationProfile, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterParameterGroup, input, options)
end

function C:deleteClusterSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterSecurityGroup, input, options)
end

function C:deleteClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterSnapshot, input, options)
end

function C:deleteClusterSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterSubnetGroup, input, options)
end

function C:deleteCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomDomainAssociation, input, options)
end

function C:deleteEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpointAccess, input, options)
end

function C:deleteEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventSubscription, input, options)
end

function C:deleteHsmClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHsmClientCertificate, input, options)
end

function C:deleteHsmConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHsmConfiguration, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deletePartner(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartner, input, options)
end

function C:deleteRedshiftIdcApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRedshiftIdcApplication, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledAction, input, options)
end

function C:deleteSnapshotCopyGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshotCopyGrant, input, options)
end

function C:deleteSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshotSchedule, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsageLimit, input, options)
end

function C:deregisterNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterNamespace, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeAuthenticationProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuthenticationProfiles, input, options)
end

function C:describeClusterDbRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterDbRevisions, input, options)
end

function C:describeClusterParameterGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterParameterGroups, input, options)
end

function C:describeClusterParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterParameters, input, options)
end

function C:describeClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusters, input, options)
end

function C:describeClusterSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterSecurityGroups, input, options)
end

function C:describeClusterSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterSnapshots, input, options)
end

function C:describeClusterSubnetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterSubnetGroups, input, options)
end

function C:describeClusterTracks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterTracks, input, options)
end

function C:describeClusterVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterVersions, input, options)
end

function C:describeCustomDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomDomainAssociations, input, options)
end

function C:describeDataShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataShares, input, options)
end

function C:describeDataSharesForConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSharesForConsumer, input, options)
end

function C:describeDataSharesForProducer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSharesForProducer, input, options)
end

function C:describeDefaultClusterParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDefaultClusterParameters, input, options)
end

function C:describeEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointAccess, input, options)
end

function C:describeEndpointAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointAuthorization, input, options)
end

function C:describeEventCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventCategories, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeEventSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventSubscriptions, input, options)
end

function C:describeHsmClientCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHsmClientCertificates, input, options)
end

function C:describeHsmConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHsmConfigurations, input, options)
end

function C:describeInboundIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInboundIntegrations, input, options)
end

function C:describeIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIntegrations, input, options)
end

function C:describeLoggingStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoggingStatus, input, options)
end

function C:describeNodeConfigurationOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNodeConfigurationOptions, input, options)
end

function C:describeOrderableClusterOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrderableClusterOptions, input, options)
end

function C:describePartners(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePartners, input, options)
end

function C:describeRedshiftIdcApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRedshiftIdcApplications, input, options)
end

function C:describeReservedNodeExchangeStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedNodeExchangeStatus, input, options)
end

function C:describeReservedNodeOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedNodeOfferings, input, options)
end

function C:describeReservedNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedNodes, input, options)
end

function C:describeResize(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResize, input, options)
end

function C:describeScheduledActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledActions, input, options)
end

function C:describeSnapshotCopyGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshotCopyGrants, input, options)
end

function C:describeSnapshotSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshotSchedules, input, options)
end

function C:describeStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStorage, input, options)
end

function C:describeTableRestoreStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTableRestoreStatus, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeUsageLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUsageLimits, input, options)
end

function C:disableLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableLogging, input, options)
end

function C:disableSnapshotCopy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSnapshotCopy, input, options)
end

function C:disassociateDataShareConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDataShareConsumer, input, options)
end

function C:enableLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableLogging, input, options)
end

function C:enableSnapshotCopy(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSnapshotCopy, input, options)
end

function C:failoverPrimaryCompute(input, options)
   return self:invokeOperation(schemas.Service, schemas.FailoverPrimaryCompute, input, options)
end

function C:getClusterCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClusterCredentials, input, options)
end

function C:getClusterCredentialsWithIAM(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClusterCredentialsWithIAM, input, options)
end

function C:getIdentityCenterAuthToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityCenterAuthToken, input, options)
end

function C:getReservedNodeExchangeConfigurationOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservedNodeExchangeConfigurationOptions, input, options)
end

function C:getReservedNodeExchangeOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservedNodeExchangeOfferings, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:modifyAquaConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyAquaConfiguration, input, options)
end

function C:modifyAuthenticationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyAuthenticationProfile, input, options)
end

function C:modifyCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCluster, input, options)
end

function C:modifyClusterDbRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterDbRevision, input, options)
end

function C:modifyClusterIamRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterIamRoles, input, options)
end

function C:modifyClusterMaintenance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterMaintenance, input, options)
end

function C:modifyClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterParameterGroup, input, options)
end

function C:modifyClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterSnapshot, input, options)
end

function C:modifyClusterSnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterSnapshotSchedule, input, options)
end

function C:modifyClusterSubnetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClusterSubnetGroup, input, options)
end

function C:modifyCustomDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCustomDomainAssociation, input, options)
end

function C:modifyEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEndpointAccess, input, options)
end

function C:modifyEventSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEventSubscription, input, options)
end

function C:modifyIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIntegration, input, options)
end

function C:modifyLakehouseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLakehouseConfiguration, input, options)
end

function C:modifyRedshiftIdcApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyRedshiftIdcApplication, input, options)
end

function C:modifyScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyScheduledAction, input, options)
end

function C:modifySnapshotCopyRetentionPeriod(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySnapshotCopyRetentionPeriod, input, options)
end

function C:modifySnapshotSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySnapshotSchedule, input, options)
end

function C:modifyUsageLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyUsageLimit, input, options)
end

function C:pauseCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.PauseCluster, input, options)
end

function C:purchaseReservedNodeOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedNodeOffering, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:rebootCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootCluster, input, options)
end

function C:registerNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterNamespace, input, options)
end

function C:rejectDataShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectDataShare, input, options)
end

function C:resetClusterParameterGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetClusterParameterGroup, input, options)
end

function C:resizeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResizeCluster, input, options)
end

function C:restoreFromClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreFromClusterSnapshot, input, options)
end

function C:restoreTableFromClusterSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreTableFromClusterSnapshot, input, options)
end

function C:resumeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeCluster, input, options)
end

function C:revokeClusterSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeClusterSecurityGroupIngress, input, options)
end

function C:revokeEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeEndpointAccess, input, options)
end

function C:revokeSnapshotAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSnapshotAccess, input, options)
end

function C:rotateEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.RotateEncryptionKey, input, options)
end

function C:updatePartnerStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePartnerStatus, input, options)
end

return M
