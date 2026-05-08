



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("networkmanager.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("networkmanager.schemas")
local traits = require("smithy.traits")
local types = require("networkmanager.types")
local sdk_defaults = require("aws.sdk_defaults")





































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "NetworkManager"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "networkmanager", signing_region = c.region } }
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

function C:acceptAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAttachment, input, options)
end

function C:associateConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateConnectPeer, input, options)
end

function C:associateCustomerGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateCustomerGateway, input, options)
end

function C:associateLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLink, input, options)
end

function C:associateTransitGatewayConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTransitGatewayConnectPeer, input, options)
end

function C:createConnectAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectAttachment, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectPeer, input, options)
end

function C:createCoreNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoreNetwork, input, options)
end

function C:createCoreNetworkPrefixListAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoreNetworkPrefixListAssociation, input, options)
end

function C:createDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDevice, input, options)
end

function C:createDirectConnectGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectConnectGatewayAttachment, input, options)
end

function C:createGlobalNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlobalNetwork, input, options)
end

function C:createLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLink, input, options)
end

function C:createSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSite, input, options)
end

function C:createSiteToSiteVpnAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSiteToSiteVpnAttachment, input, options)
end

function C:createTransitGatewayPeering(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayPeering, input, options)
end

function C:createTransitGatewayRouteTableAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayRouteTableAttachment, input, options)
end

function C:createVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcAttachment, input, options)
end

function C:deleteAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttachment, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectPeer, input, options)
end

function C:deleteCoreNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoreNetwork, input, options)
end

function C:deleteCoreNetworkPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoreNetworkPolicyVersion, input, options)
end

function C:deleteCoreNetworkPrefixListAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoreNetworkPrefixListAssociation, input, options)
end

function C:deleteDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevice, input, options)
end

function C:deleteGlobalNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlobalNetwork, input, options)
end

function C:deleteLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLink, input, options)
end

function C:deletePeering(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePeering, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSite, input, options)
end

function C:deregisterTransitGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTransitGateway, input, options)
end

function C:describeGlobalNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalNetworks, input, options)
end

function C:disassociateConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateConnectPeer, input, options)
end

function C:disassociateCustomerGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateCustomerGateway, input, options)
end

function C:disassociateLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLink, input, options)
end

function C:disassociateTransitGatewayConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTransitGatewayConnectPeer, input, options)
end

function C:executeCoreNetworkChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteCoreNetworkChangeSet, input, options)
end

function C:getConnectAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectAttachment, input, options)
end

function C:getConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnections, input, options)
end

function C:getConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectPeer, input, options)
end

function C:getConnectPeerAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectPeerAssociations, input, options)
end

function C:getCoreNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreNetwork, input, options)
end

function C:getCoreNetworkChangeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreNetworkChangeEvents, input, options)
end

function C:getCoreNetworkChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreNetworkChangeSet, input, options)
end

function C:getCoreNetworkPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoreNetworkPolicy, input, options)
end

function C:getCustomerGatewayAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomerGatewayAssociations, input, options)
end

function C:getDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevices, input, options)
end

function C:getDirectConnectGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDirectConnectGatewayAttachment, input, options)
end

function C:getLinkAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLinkAssociations, input, options)
end

function C:getLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLinks, input, options)
end

function C:getNetworkResourceCounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkResourceCounts, input, options)
end

function C:getNetworkResourceRelationships(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkResourceRelationships, input, options)
end

function C:getNetworkResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkResources, input, options)
end

function C:getNetworkRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkRoutes, input, options)
end

function C:getNetworkTelemetry(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkTelemetry, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getRouteAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteAnalysis, input, options)
end

function C:getSites(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSites, input, options)
end

function C:getSiteToSiteVpnAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSiteToSiteVpnAttachment, input, options)
end

function C:getTransitGatewayConnectPeerAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayConnectPeerAssociations, input, options)
end

function C:getTransitGatewayPeering(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayPeering, input, options)
end

function C:getTransitGatewayRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayRegistrations, input, options)
end

function C:getTransitGatewayRouteTableAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayRouteTableAttachment, input, options)
end

function C:getVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcAttachment, input, options)
end

function C:listAttachmentRoutingPolicyAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachmentRoutingPolicyAssociations, input, options)
end

function C:listAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachments, input, options)
end

function C:listConnectPeers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectPeers, input, options)
end

function C:listCoreNetworkPolicyVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreNetworkPolicyVersions, input, options)
end

function C:listCoreNetworkPrefixListAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreNetworkPrefixListAssociations, input, options)
end

function C:listCoreNetworkRoutingInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreNetworkRoutingInformation, input, options)
end

function C:listCoreNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoreNetworks, input, options)
end

function C:listOrganizationServiceAccessStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationServiceAccessStatus, input, options)
end

function C:listPeerings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPeerings, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAttachmentRoutingPolicyLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAttachmentRoutingPolicyLabel, input, options)
end

function C:putCoreNetworkPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCoreNetworkPolicy, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerTransitGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTransitGateway, input, options)
end

function C:rejectAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectAttachment, input, options)
end

function C:removeAttachmentRoutingPolicyLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAttachmentRoutingPolicyLabel, input, options)
end

function C:restoreCoreNetworkPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreCoreNetworkPolicyVersion, input, options)
end

function C:startOrganizationServiceAccessUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOrganizationServiceAccessUpdate, input, options)
end

function C:startRouteAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRouteAnalysis, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnection, input, options)
end

function C:updateCoreNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCoreNetwork, input, options)
end

function C:updateDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevice, input, options)
end

function C:updateDirectConnectGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectConnectGatewayAttachment, input, options)
end

function C:updateGlobalNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalNetwork, input, options)
end

function C:updateLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLink, input, options)
end

function C:updateNetworkResourceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkResourceMetadata, input, options)
end

function C:updateSite(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSite, input, options)
end

function C:updateVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcAttachment, input, options)
end

return M
