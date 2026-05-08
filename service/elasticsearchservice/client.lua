



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elasticsearchservice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("elasticsearchservice.schemas")
local traits = require("smithy.traits")
local types = require("elasticsearchservice.types")
local sdk_defaults = require("aws.sdk_defaults")

























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonElasticsearchService2015"
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

function C:acceptInboundCrossClusterSearchConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInboundCrossClusterSearchConnection, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:associatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePackage, input, options)
end

function C:authorizeVpcEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeVpcEndpointAccess, input, options)
end

function C:cancelDomainConfigChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDomainConfigChange, input, options)
end

function C:cancelElasticsearchServiceSoftwareUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelElasticsearchServiceSoftwareUpdate, input, options)
end

function C:createElasticsearchDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateElasticsearchDomain, input, options)
end

function C:createOutboundCrossClusterSearchConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOutboundCrossClusterSearchConnection, input, options)
end

function C:createPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackage, input, options)
end

function C:createVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpoint, input, options)
end

function C:deleteElasticsearchDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteElasticsearchDomain, input, options)
end

function C:deleteElasticsearchServiceRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteElasticsearchServiceRole, input, options)
end

function C:deleteInboundCrossClusterSearchConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInboundCrossClusterSearchConnection, input, options)
end

function C:deleteOutboundCrossClusterSearchConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOutboundCrossClusterSearchConnection, input, options)
end

function C:deletePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackage, input, options)
end

function C:deleteVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpoint, input, options)
end

function C:describeDomainAutoTunes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainAutoTunes, input, options)
end

function C:describeDomainChangeProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainChangeProgress, input, options)
end

function C:describeElasticsearchDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeElasticsearchDomain, input, options)
end

function C:describeElasticsearchDomainConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeElasticsearchDomainConfig, input, options)
end

function C:describeElasticsearchDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeElasticsearchDomains, input, options)
end

function C:describeElasticsearchInstanceTypeLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeElasticsearchInstanceTypeLimits, input, options)
end

function C:describeInboundCrossClusterSearchConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInboundCrossClusterSearchConnections, input, options)
end

function C:describeOutboundCrossClusterSearchConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOutboundCrossClusterSearchConnections, input, options)
end

function C:describePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePackages, input, options)
end

function C:describeReservedElasticsearchInstanceOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedElasticsearchInstanceOfferings, input, options)
end

function C:describeReservedElasticsearchInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedElasticsearchInstances, input, options)
end

function C:describeVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpoints, input, options)
end

function C:dissociatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DissociatePackage, input, options)
end

function C:getCompatibleElasticsearchVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCompatibleElasticsearchVersions, input, options)
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

function C:listDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainNames, input, options)
end

function C:listDomainsForPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainsForPackage, input, options)
end

function C:listElasticsearchInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListElasticsearchInstanceTypes, input, options)
end

function C:listElasticsearchVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListElasticsearchVersions, input, options)
end

function C:listPackagesForDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackagesForDomain, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
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

function C:purchaseReservedElasticsearchInstanceOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedElasticsearchInstanceOffering, input, options)
end

function C:rejectInboundCrossClusterSearchConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectInboundCrossClusterSearchConnection, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:revokeVpcEndpointAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeVpcEndpointAccess, input, options)
end

function C:startElasticsearchServiceSoftwareUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartElasticsearchServiceSoftwareUpdate, input, options)
end

function C:updateElasticsearchDomainConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateElasticsearchDomainConfig, input, options)
end

function C:updatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackage, input, options)
end

function C:updateVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcEndpoint, input, options)
end

function C:upgradeElasticsearchDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeElasticsearchDomain, input, options)
end

return M
