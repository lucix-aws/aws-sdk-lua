



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("directconnect.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("directconnect.schemas")
local traits = require("smithy.traits")
local types = require("directconnect.types")
local sdk_defaults = require("aws.sdk_defaults")





































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "OvertureService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "directconnect", signing_region = c.region } }
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

function C:acceptDirectConnectGatewayAssociationProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptDirectConnectGatewayAssociationProposal, input, options)
end

function C:allocateConnectionOnInterconnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateConnectionOnInterconnect, input, options)
end

function C:allocateHostedConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateHostedConnection, input, options)
end

function C:allocatePrivateVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocatePrivateVirtualInterface, input, options)
end

function C:allocatePublicVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocatePublicVirtualInterface, input, options)
end

function C:allocateTransitVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateTransitVirtualInterface, input, options)
end

function C:associateConnectionWithLag(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateConnectionWithLag, input, options)
end

function C:associateHostedConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateHostedConnection, input, options)
end

function C:associateMacSecKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMacSecKey, input, options)
end

function C:associateVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateVirtualInterface, input, options)
end

function C:confirmConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmConnection, input, options)
end

function C:confirmCustomerAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmCustomerAgreement, input, options)
end

function C:confirmPrivateVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmPrivateVirtualInterface, input, options)
end

function C:confirmPublicVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmPublicVirtualInterface, input, options)
end

function C:confirmTransitVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmTransitVirtualInterface, input, options)
end

function C:createBGPPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBGPPeer, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createDirectConnectGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectConnectGateway, input, options)
end

function C:createDirectConnectGatewayAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectConnectGatewayAssociation, input, options)
end

function C:createDirectConnectGatewayAssociationProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectConnectGatewayAssociationProposal, input, options)
end

function C:createInterconnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInterconnect, input, options)
end

function C:createLag(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLag, input, options)
end

function C:createPrivateVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrivateVirtualInterface, input, options)
end

function C:createPublicVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePublicVirtualInterface, input, options)
end

function C:createTransitVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitVirtualInterface, input, options)
end

function C:deleteBGPPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBGPPeer, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteDirectConnectGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectConnectGateway, input, options)
end

function C:deleteDirectConnectGatewayAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectConnectGatewayAssociation, input, options)
end

function C:deleteDirectConnectGatewayAssociationProposal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectConnectGatewayAssociationProposal, input, options)
end

function C:deleteInterconnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInterconnect, input, options)
end

function C:deleteLag(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLag, input, options)
end

function C:deleteVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualInterface, input, options)
end

function C:describeConnectionLoa(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionLoa, input, options)
end

function C:describeConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnections, input, options)
end

function C:describeConnectionsOnInterconnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionsOnInterconnect, input, options)
end

function C:describeCustomerMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomerMetadata, input, options)
end

function C:describeDirectConnectGatewayAssociationProposals(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectConnectGatewayAssociationProposals, input, options)
end

function C:describeDirectConnectGatewayAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectConnectGatewayAssociations, input, options)
end

function C:describeDirectConnectGatewayAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectConnectGatewayAttachments, input, options)
end

function C:describeDirectConnectGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDirectConnectGateways, input, options)
end

function C:describeHostedConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHostedConnections, input, options)
end

function C:describeInterconnectLoa(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInterconnectLoa, input, options)
end

function C:describeInterconnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInterconnects, input, options)
end

function C:describeLags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLags, input, options)
end

function C:describeLoa(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoa, input, options)
end

function C:describeLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocations, input, options)
end

function C:describeRouterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouterConfiguration, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeVirtualGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualGateways, input, options)
end

function C:describeVirtualInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualInterfaces, input, options)
end

function C:disassociateConnectionFromLag(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateConnectionFromLag, input, options)
end

function C:disassociateMacSecKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMacSecKey, input, options)
end

function C:listVirtualInterfaceTestHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualInterfaceTestHistory, input, options)
end

function C:startBgpFailoverTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBgpFailoverTest, input, options)
end

function C:stopBgpFailoverTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBgpFailoverTest, input, options)
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

function C:updateDirectConnectGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectConnectGateway, input, options)
end

function C:updateDirectConnectGatewayAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDirectConnectGatewayAssociation, input, options)
end

function C:updateLag(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLag, input, options)
end

function C:updateVirtualInterfaceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVirtualInterfaceAttributes, input, options)
end

return M
