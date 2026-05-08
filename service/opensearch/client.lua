



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("opensearch.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("opensearch.schemas")
local traits = require("smithy.traits")
local types = require("opensearch.types")
local sdk_defaults = require("aws.sdk_defaults")






























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonOpenSearchService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "es", signing_region = c.region } }
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

function C:acceptInboundConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInboundConnection, input, options)
end

function C:addDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddDataSource, input, options)
end

function C:addDirectQueryDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddDirectQueryDataSource, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:associatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePackage, input, options)
end

function C:associatePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePackages, input, options)
end

function C:authorizeVpcEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeVpcEndpointAccess, input, options)
end

function C:cancelDomainConfigChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDomainConfigChange, input, options)
end

function C:cancelServiceSoftwareUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelServiceSoftwareUpdate, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createOutboundConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOutboundConnection, input, options)
end

function C:createPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackage, input, options)
end

function C:createVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpoint, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteDirectQueryDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectQueryDataSource, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteInboundConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInboundConnection, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deleteOutboundConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOutboundConnection, input, options)
end

function C:deletePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackage, input, options)
end

function C:deleteVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpoint, input, options)
end

function C:deregisterCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterCapability, input, options)
end

function C:describeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomain, input, options)
end

function C:describeDomainAutoTunes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainAutoTunes, input, options)
end

function C:describeDomainChangeProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainChangeProgress, input, options)
end

function C:describeDomainConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainConfig, input, options)
end

function C:describeDomainHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainHealth, input, options)
end

function C:describeDomainNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainNodes, input, options)
end

function C:describeDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomains, input, options)
end

function C:describeDryRunProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDryRunProgress, input, options)
end

function C:describeInboundConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInboundConnections, input, options)
end

function C:describeInsightDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInsightDetails, input, options)
end

function C:describeInstanceTypeLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceTypeLimits, input, options)
end

function C:describeOutboundConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOutboundConnections, input, options)
end

function C:describePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackages, input, options)
end

function C:describeReservedInstanceOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstanceOfferings, input, options)
end

function C:describeReservedInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstances, input, options)
end

function C:describeVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpoints, input, options)
end

function C:dissociatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DissociatePackage, input, options)
end

function C:dissociatePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DissociatePackages, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapability, input, options)
end

function C:getCompatibleVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCompatibleVersions, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getDefaultApplicationSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultApplicationSetting, input, options)
end

function C:getDirectQueryDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDirectQueryDataSource, input, options)
end

function C:getDomainMaintenanceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainMaintenanceStatus, input, options)
end

function C:getIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndex, input, options)
end

function C:getPackageVersionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackageVersionHistory, input, options)
end

function C:getUpgradeHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUpgradeHistory, input, options)
end

function C:getUpgradeStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUpgradeStatus, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listDirectQueryDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDirectQueryDataSources, input, options)
end

function C:listDomainMaintenances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainMaintenances, input, options)
end

function C:listDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainNames, input, options)
end

function C:listDomainsForPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainsForPackage, input, options)
end

function C:listInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInsights, input, options)
end

function C:listInstanceTypeDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceTypeDetails, input, options)
end

function C:listPackagesForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackagesForDomain, input, options)
end

function C:listScheduledActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScheduledActions, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVersions, input, options)
end

function C:listVpcEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcEndpointAccess, input, options)
end

function C:listVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcEndpoints, input, options)
end

function C:listVpcEndpointsForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcEndpointsForDomain, input, options)
end

function C:purchaseReservedInstanceOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedInstanceOffering, input, options)
end

function C:putDefaultApplicationSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDefaultApplicationSetting, input, options)
end

function C:registerCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCapability, input, options)
end

function C:rejectInboundConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectInboundConnection, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:revokeVpcEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeVpcEndpointAccess, input, options)
end

function C:rollbackServiceSoftwareUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RollbackServiceSoftwareUpdate, input, options)
end

function C:startDomainMaintenance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDomainMaintenance, input, options)
end

function C:startServiceSoftwareUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartServiceSoftwareUpdate, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateDirectQueryDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectQueryDataSource, input, options)
end

function C:updateDomainConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainConfig, input, options)
end

function C:updateIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndex, input, options)
end

function C:updatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackage, input, options)
end

function C:updatePackageScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageScope, input, options)
end

function C:updateScheduledAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScheduledAction, input, options)
end

function C:updateVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcEndpoint, input, options)
end

function C:upgradeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeDomain, input, options)
end

return M
